extends Node
var deck_values = {
	"ace_of_spades": 
		{
		"number": 1,
		"face": "none",
		"colour": "black",
		"suit": "spades",
		},
	"two_of_spades": 
		{
		"number": 2,
		"face": "none",
		"colour": "black",
		"suit": "spades",
		},
	"three_of_spades": 
		{
		"number": 3,
		"face": "none",
		"colour": "black",
		"suit": "spades",
		},
	"four_of_spades": 
		{
		"number": 4,
		"face": "none",
		"colour": "black",
		"suit": "spades",
		},
	"five_of_spades": 
		{
		"number": 5,
		"face": "none",
		"colour": "black",
		"suit": "spades",
		},
	"six_of_spades": 
		{
		"number": 6,
		"face": "none",
		"colour": "black",
		"suit": "spades",
		},
	"seven_of_spades": 
		{
		"number": 7,
		"face": "none",
		"colour": "black",
		"suit": "spades",
		},
	"eight_of_spades": 
		{
		"number": 8,
		"face": "none",
		"colour": "black",
		"suit": "spades",
		},
	"nine_of_spades": 
		{
		"number": 9,
		"face": "none",
		"colour": "black",
		"suit": "spades",
		},
	"ten_of_spades": 
		{
		"number": 10,
		"face": "none",
		"colour": "black",
		"suit": "spades",
		},
	"jack_of_spades": 
		{
		"number": 10,
		"face": "jack",
		"colour": "black",
		"suit": "spades",
		},
	"queen_of_spades": 
		{
		"number": 10,
		"face": "queen",
		"colour": "black",
		"suit": "spades",
		},
	"king_of_spades": 
		{
		"number": 10,
		"face": "king",
		"colour": "black",
		"suit": "spades",
		},
	"ace_of_clubs": 
		{
		"number": 1,
		"face": "none",
		"colour": "black",
		"suit": "clubs",
		},
	"two_of_clubs": 
		{
		"number": 2,
		"face": "none",
		"colour": "black",
		"suit": "clubs",
		},
	"three_of_clubs": 
		{
		"number": 3,
		"face": "none",
		"colour": "black",
		"suit": "clubs",
		},
	"four_of_clubs": 
		{
		"number": 4,
		"face": "none",
		"colour": "black",
		"suit": "clubs",
		},
	"five_of_clubs": 
		{
		"number": 5,
		"face": "none",
		"colour": "black",
		"suit": "clubs",
		},
	"six_of_clubs": 
		{
		"number": 6,
		"face": "none",
		"colour": "black",
		"suit": "clubs",
		},
	"seven_of_clubs": 
		{
		"number": 7,
		"face": "none",
		"colour": "black",
		"suit": "clubs",
		"drawn": false		},
	"eight_of_clubs": 
		{
		"number": 8,
		"face": "none",
		"colour": "black",
		"suit": "clubs",
		},
	"nine_of_clubs": 
		{
		"number": 9,
		"face": "none",
		"colour": "black",
		"suit": "clubs",
		},
	"ten_of_clubs": 
		{
		"number": 10,
		"face": "none",
		"colour": "black",
		"suit": "clubs",
		},
	"jack_of_clubs": 
		{
		"number": 10,
		"face": "jack",
		"colour": "black",
		"suit": "clubs",
		},
	"queen_of_clubs": 
		{
		"number": 10,
		"face": "queen",
		"colour": "black",
		"suit": "clubs",
		},
	"king_of_clubs": 
		{
		"number": 10,
		"face": "king",
		"colour": "black",
		"suit": "clubs",
		},
	"ace_of_hearts": 
		{
		"number": 1,
		"face": "none",
		"colour": "red",
		"suit": "hearts",
		},
	"two_of_hearts": 
		{
		"number": 2,
		"face": "none",
		"colour": "red",
		"suit": "hearts",
		},
	"three_of_hearts": 
		{
		"number": 3,
		"face": "none",
		"colour": "red",
		"suit": "hearts",
		},
	"four_of_hearts": 
		{
		"number": 4,
		"face": "none",
		"colour": "red",
		"suit": "hearts",
		},
	"five_of_hearts": 
		{
		"number": 5,
		"face": "none",
		"colour": "red",
		"suit": "hearts",
		},
	"six_of_hearts": 
		{
		"number": 6,
		"face": "none",
		"colour": "red",
		"suit": "hearts",
		},
	"seven_of_hearts": 
		{
		"number": 7,
		"face": "none",
		"colour": "red",
		"suit": "hearts",
		},
	"eight_of_hearts": 
		{
		"number": 8,
		"face": "none",
		"colour": "red",
		"suit": "hearts",
		},
	"nine_of_hearts": 
		{
		"number": 9,
		"face": "none",
		"colour": "red",
		"suit": "hearts",
		},
	"ten_of_hearts": 
		{
		"number": 10,
		"face": "none",
		"colour": "red",
		"suit": "hearts",
		},
	"jack_of_hearts": 
		{
		"number": 10,
		"face": "jack",
		"colour": "red",
		"suit": "hearts",
		},
	"queen_of_hearts": 
		{
		"number": 10,
		"face": "queen",
		"colour": "red",
		"suit": "hearts",
		},
	"king_of_hearts": 
		{
		"number": 10,
		"face": "king",
		"colour": "red",
		"suit": "hearts",
		},
	"ace_of_diamonds": 
		{
		"number": 1,
		"face": "none",
		"colour": "red",
		"suit": "diamonds",
		},
	"two_of_diamonds": 
		{
		"number": 2,
		"face": "none",
		"colour": "red",
		"suit": "diamonds",
		},
	"three_of_diamonds": 
		{
		"number": 3,
		"face": "none",
		"colour": "red",
		"suit": "diamonds",
		},
	"four_of_diamonds": 
		{
		"number": 4,
		"face": "none",
		"colour": "red",
		"suit": "diamonds",
		},
	"five_of_diamonds": 
		{
		"number": 5,
		"face": "none",
		"colour": "red",
		"suit": "diamonds",
		},
	"six_of_diamonds": 
		{
		"number": 6,
		"face": "none",
		"colour": "red",
		"suit": "diamonds",
		},
	"seven_of_diamonds": 
		{
		"number": 7,
		"face": "none",
		"colour": "red",
		"suit": "diamonds",
		},
	"eight_of_diamonds": 
		{
		"number": 8,
		"face": "none",
		"colour": "red",
		"suit": "diamonds",
		},
	"nine_of_diamonds": 
		{
		"number": 9,
		"face": "none",
		"colour": "red",
		"suit": "diamonds",
		},
	"ten_of_diamonds": 
		{
		"number": 10,
		"face": "none",
		"colour": "red",
		"suit": "diamonds",
		},
	"jack_of_diamonds": 
		{
		"number": 10,
		"face": "jack",
		"colour": "red",
		"suit": "diamonds",
		},
	"queen_of_diamonds": 
		{
		"number": 10,
		"face": "queen",
		"colour": "red",
		"suit": "diamonds",
		},
	"king_of_diamonds": 
		{
		"number": 10,
		"face": "king",
		"colour": "red",
		"suit": "diamonds",
		},
	}

var deck = []

func _ready():
	shuffle()

func shuffle():
	deck.clear()
	for card in deck_values:
		deck.append(card)
	# I don't understand why, but shuffle works like a real deck shuffle; if you only do one riffle it's not very well randomised!
	deck.shuffle()
	deck.shuffle()
	deck.shuffle()
	deck.shuffle()
	deck.shuffle()
	deck.shuffle()
	deck.shuffle()
	print("deck shuffled")
