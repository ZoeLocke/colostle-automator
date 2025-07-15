extends Control
# Shorthands for objects
var options
var text_box
var shuffle_button
var draw_button
var clear_log_popup = preload("res://clear_log_popup.tscn")

func _ready():
	options = $MarginContainer/VBoxContainer/OptionButton
	text_box = $MarginContainer/VBoxContainer/TextBox
	shuffle_button = $MarginContainer/VBoxContainer/ButtonMarginContainer/HBoxContainer/ShuffleButton
	draw_button = $MarginContainer/VBoxContainer/ButtonMarginContainer/HBoxContainer/DrawButton
	
	# Set an initial selection for the dropdown
	options.select(1)

func draw_card():
	# Make sure there are still cards in the deck, if not shuffle it
	if Globals.deck.is_empty():
		text_box.append_text("[p align=center][color=dark_green][i]The deck was empty, you have shuffled the deck.[/i][/color][/p]\n\n")
		Globals.shuffle()
	# Get the option selected so we know what to return from the card
	var selected = options.get_selected_id()
	var lookup = options.get_item_text(selected)
	# "draw a card" by popping the last entry, this is used over pop_front as pop_front triggers a rebuild of indexes
	var card = Globals.deck.pop_back()
	# Write out the results
	text_box.append_text("[p align=center]You drew [b][color=%s]%s[/color][/b][/p]" % [card["Color"],card["Card"]])
	text_box.append_text("[p align=center][b]%s[/b]: %s.\n\n" % [lookup, card[lookup]])

func _on_draw_button_up() -> void:
	draw_card()
	Globals.first_result = false
	draw_button.release_focus()

func _on_shuffle_button_up() -> void:
	Globals.shuffle()
	text_box.append_text("[p align=center][color=dark_green][i]You have shuffled the deck[/i][/color][/p]\n\n")
	shuffle_button.release_focus()
	
func _on_clear_button_up() -> void:
	var popup = clear_log_popup.instantiate()
	add_child(popup)

func _on_option_button_item_selected(index: int) -> void:
	# Add a seperator when the table is changed
	if Globals.first_result == false: 
		text_box.add_hr(90,5,Color(0.25,0.25,0.25,1),1)
		text_box.append_text("\n\n")
		Globals.first_result = true
