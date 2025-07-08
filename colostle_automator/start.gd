extends AspectRatioContainer

func draw_card():
	# "draw a card" by popping the last entry, this is used over pop_front as pop_front triggers a rebuild of indexes
	var card = Globals.deck.pop_back()
	# Load the associated values block for the card
	var card_values = Globals.deck_values[card]
	$VBoxContainer/TextBoxContainer/TextBox.append_text("[p align=center]You drew [b][color=%s]%s[/color][/b][/p]" % [card_values["colour"],card])

func _on_draw_button_up() -> void:
	draw_card()

func _on_shuffle_button_up() -> void:
	Globals.shuffle()
	$VBoxContainer/TextBoxContainer/TextBox.append_text("[p align=center][color=green][i]You have shuffled the deck[/i][/color][/p]")
