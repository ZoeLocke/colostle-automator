extends Control

# Shorthands for objects
var options
var text_box
var shuffle_button
var draw_button
var content_container
var clear_log_popup = preload("res://clear_log_popup.tscn")
var lookup_popup = preload("res://popup.tscn")
# Holds the instantiated child for the lookup_popup
var popup
# Holds the instantiated child for the clear_popup
var clear_popup
# Flags if the mouse is over the main screen, used to close the popup if clicked outside of it's area
var mouseover
# Flags if there is currently a lookup popup open
var lookup_open = false
# Flags if there is currently a clear popup open
var clear_open = false
var ready_finished = false

func _ready():
	options = $MarginContainer/VBoxContainer/OptionButton
	text_box = $MarginContainer/VBoxContainer/TextBoxMarginContainer/TextBox
	shuffle_button = $MarginContainer/VBoxContainer/ButtonMarginContainer/HBoxContainer/ShuffleButton
	draw_button = $MarginContainer/VBoxContainer/ButtonMarginContainer/HBoxContainer/DrawButton
	content_container = $MarginContainer/VBoxContainer
	if not Globals.data_error.is_empty():
		text_box.append_text("[p align=center][color=red][b]%s[/b][/color][/p]\n\n" % Globals.data_error)
	ready_finished = true
#	resize_content()

func draw_card():
	# Make sure there are still cards in the deck, if not shuffle it
	if Globals.deck.is_empty():
		text_box.append_text("[p align=center][color=dark_green][i]The deck was empty, you have shuffled the deck.[/i][/color][/p]\n\n")
		Globals.shuffle()
	# "draw a card" by popping the last entry, this is used over pop_front as pop_front triggers a rebuild of indexes
	var card = Globals.deck.pop_back()
	# Write out the results
	# -- Convert face numbers stored as floats to strings
	var face_value
	if typeof(card["Face"]) == TYPE_FLOAT:
		face_value = str(int(card["Face"]))
	else:
		face_value = card["Face"]
	text_box.append_text("[p align=center][color=%s][b]%s[/b][font=res://resources/NotoColorEmoji-Regular.ttf]%s[/font][/color][/p]" % [card["Color"],face_value,card["Suit"]])
	text_box.append_text("[p align=center][b]%s[/b]: %s.\n\n" % [Globals.selected, card[Globals.selected]])

func open_lookup_popup():
	# Create the popup
	popup = lookup_popup.instantiate()
	add_child(popup)
	# Connect signals
	popup.reload_popup.connect(_on_lookup_popup_reload)
	popup.lookup_picked.connect(_on_lookup_picked)
	# Update state
	lookup_open = true
	# Align popup with textbox
	popup._set_size(text_box.get_size())
	popup._set_position(text_box.global_position)

	
func resize_content():
	# Sets the minimum size of various UI elements based on the viewport size, called when screen is resized
	const container_min_default = Vector2(640,1280)
	const button_min_deault = 52
	var viewport_targets = {1000: 1,1500: 1.5,2800: 2}
	var viewport_x = get_viewport().get_visible_rect().size[0]
	# Close the lookup if it's open to stop it from being weirdly positioned
	if lookup_open:
		popup.queue_free()
		lookup_open = false
	# Loop through target sizes
	for target in viewport_targets:
		# If the viewport x is smaller than the target, change UI container size and exit the entire loop
		if viewport_x <= target:
			var new_container_size = Vector2(container_min_default[0]*viewport_targets[target],container_min_default[1]*viewport_targets[target])
			var new_button_y = button_min_deault * viewport_targets[target]
			content_container.custom_minimum_size = new_container_size
			# Also loop through all the buttons to make them bigger
			for element in get_tree().get_nodes_in_group("ui_elements"):
				var button_size = element.custom_minimum_size
				button_size[1] = new_button_y
				element.custom_minimum_size = button_size
			break

func _on_lookup_picked():
	# Add a seperator when the table is changed
	if Globals.first_result == false: 
		text_box.add_hr(90,5,Color(0.25,0.25,0.25,1),1)
		text_box.append_text("\n\n")
		Globals.first_result = true
	$MarginContainer/VBoxContainer/OptionButton.text = Globals.selected
	lookup_open = false

func _on_draw_button_up() -> void:
	draw_card()
	# First result is a workaround of an annoying issue where I couldn't check if the text box was empty; I only want to draw a new line when a user changes the table they are drawing from if there is already data in the text box
	Globals.first_result = false

func _on_shuffle_button_up() -> void:
	Globals.shuffle()
	text_box.append_text("[p align=center][color=dark_green][i]You have shuffled the deck[/i][/color][/p]\n\n")
	
func _on_clear_button_up() -> void:
	clear_popup = clear_log_popup.instantiate()
	add_child(clear_popup)
	clear_popup.clear.connect(_on_clear_log)
	clear_popup.closed.connect(_on_close_clear)
	clear_open = true

func _on_clear_log():
	text_box.clear()
func _on_close_clear():
	clear_open = false
	
func _on_lookup_button_up() -> void:
	if not lookup_open:
		open_lookup_popup()
	
func _on_lookup_popup_reload():
	# Reloads the lookup popup
	popup.queue_free()
	open_lookup_popup()
	
# These functions work together to allow closing the lookup popup by clicking outside of it's area
#------------------------------------------------
# Detect if the mouse is over the main area (uses mouse stop function of the popup area to set to false if over the popup
func _on_mouse_entered() -> void:
	mouseover = true
func _on_mouse_exited() -> void:
	mouseover = false
# If the mouse is clicked while the mouse is over the main screen and the lookup is open
func _input(event):
	if event is InputEventMouseButton and event.button_index == 1 and event.pressed and mouseover and lookup_open:
		popup.queue_free()
		lookup_open = false
	if event is InputEventMouseButton and event.button_index == 1 and event.pressed and mouseover and clear_open:
		clear_popup.queue_free()
		clear_open = false
#------------------------------------------------

#func _notification(what):
	#if what == NOTIFICATION_RESIZED and ready_finished: resize_content()
func _notification(what):
	if what == NOTIFICATION_RESIZED and lookup_open: 
		popup.queue_free()
		lookup_open = false
