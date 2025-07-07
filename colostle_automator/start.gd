extends AspectRatioContainer

func draw_card():
	# Get deck as is
	var source = Globals.deck
	var deck = {}
	for card in source:
		if source[card]["drawn"] == false:
			deck[card] = source[card]
	print(deck)
			



func _on_button_button_up() -> void:
	draw_card()
