extends Control

# Shorthands for objects
var options
var text_box
var shuffle_button
var draw_button
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

func _ready():
	options = $MarginContainer/VBoxContainer/OptionButton
	text_box = $MarginContainer/VBoxContainer/TextBox
	shuffle_button = $MarginContainer/VBoxContainer/ButtonMarginContainer/HBoxContainer/ShuffleButton
	draw_button = $MarginContainer/VBoxContainer/ButtonMarginContainer/HBoxContainer/DrawButton
	for item in Globals.lookup_options:
		Globals.filter.append(item)

func draw_card():
	# Make sure there are still cards in the deck, if not shuffle it
	if Globals.deck.is_empty():
		text_box.append_text("[p align=center][color=dark_green][i]The deck was empty, you have shuffled the deck.[/i][/color][/p]\n\n")
		Globals.shuffle()
	# "draw a card" by popping the last entry, this is used over pop_front as pop_front triggers a rebuild of indexes
	var card = Globals.deck.pop_back()
	# Write out the results
	text_box.append_text("[p align=center][color=%s][b]%s[/b][font=res://resources/NotoColorEmoji-Regular.ttf]%s[/font][/color][/p]" % [card["Color"],card["Face"],card["Suit"]])
	text_box.append_text("[p align=center][b]%s[/b]: %s.\n\n" % [Globals.selected, card[Globals.selected]])

func open_lookup_popup():
	popup = lookup_popup.instantiate()
	add_child(popup)
	popup.reload_popup.connect(_on_lookup_popup_reload)
	popup.lookup_picked.connect(_on_lookup_picked)
	lookup_open = true

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
	open_lookup_popup()
	
func _on_lookup_popup_reload():
	# Reloads the lookup popup
	popup.queue_free()
	open_lookup_popup()

# These functions work together to allow closing the lookup popup by clicking outside of it's area
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
