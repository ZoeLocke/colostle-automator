extends Node
var deck = {
	"ace_of_spades": 
		{
		"number": 1,
		"face": "none",
		"colour": "black",
		"suit": "spades",
		"drawn": false
		},
	"two_of_spades": 
		{
		"number": 2,
		"face": "none",
		"colour": "black",
		"suit": "spades",
		"drawn": false
		},
	"three_of_spades": 
		{
		"number": 3,
		"face": "none",
		"colour": "black",
		"suit": "spades",
		"drawn": false
		},
	"four_of_spades": 
		{
		"number": 4,
		"face": "none",
		"colour": "black",
		"suit": "spades",
		"drawn": false
		},
	"five_of_spades": 
		{
		"number": 5,
		"face": "none",
		"colour": "black",
		"suit": "spades",
		"drawn": false
		},
	"six_of_spades": 
		{
		"number": 6,
		"face": "none",
		"colour": "black",
		"suit": "spades",
		"drawn": false
		},
	"seven_of_spades": 
		{
		"number": 7,
		"face": "none",
		"colour": "black",
		"suit": "spades",
		"drawn": false
		},
	"eight_of_spades": 
		{
		"number": 8,
		"face": "none",
		"colour": "black",
		"suit": "spades",
		"drawn": false
		},
	"nine_of_spades": 
		{
		"number": 9,
		"face": "none",
		"colour": "black",
		"suit": "spades",
		"drawn": false
		},
	"ten_of_spades": 
		{
		"number": 10,
		"face": "none",
		"colour": "black",
		"suit": "spades",
		"drawn": false
		},
	"jack_of_spades": 
		{
		"number": 10,
		"face": "jack",
		"colour": "black",
		"suit": "spades",
		"drawn": false
		},
	"queen_of_spades": 
		{
		"number": 10,
		"face": "queen",
		"colour": "black",
		"suit": "spades",
		"drawn": false
		},
	"king_of_spades": 
		{
		"number": 10,
		"face": "king",
		"colour": "black",
		"suit": "spades",
		"drawn": false
		},
	"ace_of_clubs": 
		{
		"number": 1,
		"face": "none",
		"colour": "black",
		"suit": "clubs",
		"drawn": false
		},
	"two_of_clubs": 
		{
		"number": 2,
		"face": "none",
		"colour": "black",
		"suit": "clubs",
		"drawn": false
		},
	"three_of_clubs": 
		{
		"number": 3,
		"face": "none",
		"colour": "black",
		"suit": "clubs",
		"drawn": false
		},
	"four_of_clubs": 
		{
		"number": 4,
		"face": "none",
		"colour": "black",
		"suit": "clubs",
		"drawn": false
		},
	"five_of_clubs": 
		{
		"number": 5,
		"face": "none",
		"colour": "black",
		"suit": "clubs",
		"drawn": false
		},
	"six_of_clubs": 
		{
		"number": 6,
		"face": "none",
		"colour": "black",
		"suit": "clubs",
		"drawn": false
		},
	"seven_of_clubs": 
		{
		"number": 7,
		"face": "none",
		"colour": "black",
		"suit": "clubs",
		"drawn": false
		},
	"eight_of_clubs": 
		{
		"number": 8,
		"face": "none",
		"colour": "black",
		"suit": "clubs",
		"drawn": false
		},
	"nine_of_clubs": 
		{
		"number": 9,
		"face": "none",
		"colour": "black",
		"suit": "clubs",
		"drawn": false
		},
	"ten_of_clubs": 
		{
		"number": 10,
		"face": "none",
		"colour": "black",
		"suit": "clubs",
		"drawn": false
		},
	"jack_of_clubs": 
		{
		"number": 10,
		"face": "jack",
		"colour": "black",
		"suit": "clubs",
		"drawn": false
		},
	"queen_of_clubs": 
		{
		"number": 10,
		"face": "queen",
		"colour": "black",
		"suit": "clubs",
		"drawn": false
		},
	"king_of_clubs": 
		{
		"number": 10,
		"face": "king",
		"colour": "black",
		"suit": "clubs",
		"drawn": false
		},
	"ace_of_hearts": 
		{
		"number": 1,
		"face": "none",
		"colour": "red",
		"suit": "hearts",
		"drawn": false
		},
	"two_of_hearts": 
		{
		"number": 2,
		"face": "none",
		"colour": "red",
		"suit": "hearts",
		"drawn": false
		},
	"three_of_hearts": 
		{
		"number": 3,
		"face": "none",
		"colour": "red",
		"suit": "hearts",
		"drawn": false
		},
	"four_of_hearts": 
		{
		"number": 4,
		"face": "none",
		"colour": "red",
		"suit": "hearts",
		"drawn": false
		},
	"five_of_hearts": 
		{
		"number": 5,
		"face": "none",
		"colour": "red",
		"suit": "hearts",
		"drawn": false
		},
	"six_of_hearts": 
		{
		"number": 6,
		"face": "none",
		"colour": "red",
		"suit": "hearts",
		"drawn": false
		},
	"seven_of_hearts": 
		{
		"number": 7,
		"face": "none",
		"colour": "red",
		"suit": "hearts",
		"drawn": false
		},
	"eight_of_hearts": 
		{
		"number": 8,
		"face": "none",
		"colour": "red",
		"suit": "hearts",
		"drawn": false
		},
	"nine_of_hearts": 
		{
		"number": 9,
		"face": "none",
		"colour": "red",
		"suit": "hearts",
		"drawn": false
		},
	"ten_of_hearts": 
		{
		"number": 10,
		"face": "none",
		"colour": "red",
		"suit": "hearts",
		"drawn": false
		},
	"jack_of_hearts": 
		{
		"number": 10,
		"face": "jack",
		"colour": "red",
		"suit": "hearts",
		"drawn": false
		},
	"queen_of_hearts": 
		{
		"number": 10,
		"face": "queen",
		"colour": "red",
		"suit": "hearts",
		"drawn": false
		},
	"king_of_hearts": 
		{
		"number": 10,
		"face": "king",
		"colour": "red",
		"suit": "hearts",
		"drawn": false
		},
	"ace_of_diamonds": 
		{
		"number": 1,
		"face": "none",
		"colour": "red",
		"suit": "diamonds",
		"drawn": false
		},
	"two_of_diamonds": 
		{
		"number": 2,
		"face": "none",
		"colour": "red",
		"suit": "diamonds",
		"drawn": false
		},
	"three_of_diamonds": 
		{
		"number": 3,
		"face": "none",
		"colour": "red",
		"suit": "diamonds",
		"drawn": false
		},
	"four_of_diamonds": 
		{
		"number": 4,
		"face": "none",
		"colour": "red",
		"suit": "diamonds",
		"drawn": false
		},
	"five_of_diamonds": 
		{
		"number": 5,
		"face": "none",
		"colour": "red",
		"suit": "diamonds",
		"drawn": false
		},
	"six_of_diamonds": 
		{
		"number": 6,
		"face": "none",
		"colour": "red",
		"suit": "diamonds",
		"drawn": false
		},
	"seven_of_diamonds": 
		{
		"number": 7,
		"face": "none",
		"colour": "red",
		"suit": "diamonds",
		"drawn": false
		},
	"eight_of_diamonds": 
		{
		"number": 8,
		"face": "none",
		"colour": "red",
		"suit": "diamonds",
		"drawn": false
		},
	"nine_of_diamonds": 
		{
		"number": 9,
		"face": "none",
		"colour": "red",
		"suit": "diamonds",
		"drawn": false
		},
	"ten_of_diamonds": 
		{
		"number": 10,
		"face": "none",
		"colour": "red",
		"suit": "diamonds",
		"drawn": false
		},
	"jack_of_diamonds": 
		{
		"number": 10,
		"face": "jack",
		"colour": "red",
		"suit": "diamonds",
		"drawn": false
		},
	"queen_of_diamonds": 
		{
		"number": 10,
		"face": "queen",
		"colour": "red",
		"suit": "diamonds",
		"drawn": false
		},
	"king_of_diamonds": 
		{
		"number": 10,
		"face": "king",
		"colour": "red",
		"suit": "diamonds",
		"drawn": false
		},
	}
