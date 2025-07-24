extends Node

var deck_values = []
var lookup_options = []
var data_sources = {"deck_values": "res://data/colostle_automator_lookups.json","lookup_options": "res://data/colostle_automator_filters.json"}
var data_error = ""
# Temp array for holding a dupe of the deck that can have values popped from it
var deck = []
# First result is a workaround of an annoying issue where I couldn't check if the text box was empty; I only want to draw a new line when a user changes the table they are drawing from if there is already data in the text box
var first_result = true
# Set the initial lookup selection
var selected = "Explore"
# Holds the ticked options in the filter list, first populated in the ready script of Start
var filter = []

func _ready():
	# Loop over the data source list
	for item in data_sources:
		#  Run the script to load in the data
		load_data(item, data_sources[item])
	
	shuffle()
	# Prepare the filter list
	for item in lookup_options:
		filter.append(item)

func load_data(ds: String, ref: String):
	var file = FileAccess.open(ref, FileAccess.READ)
	var json = JSON.new()
	if file:
		var content = file.get_as_text()
		var parse_result = json.parse(content)
		if parse_result == OK:
			match ds:
				"deck_values":
					deck_values = json.data
				"lookup_options":
					lookup_options = json.data
	 # Error handling needs reviewing
		else:
			data_error = "Failed to parse JSON for %s.\n\n%s.\n\nPlease use the feedback button at the bottom of the screen to send a bug report." % [ds, json.get_error_message()]
	else:
		data_error = "Failed to open %s.\n\nPlease use the feedback button at the bottom of the screen to send a bug report." % [ds]

func shuffle():
	# Empty the existing deck array so we don't duplicate
	deck.clear()
	# Deep duplicate the deck values into the temp array
	deck = deck_values.duplicate(true)
	# I don't understand why, but shuffle works like a real deck shuffle; if you only do one riffle it's not very well randomised!
	deck.shuffle()
	deck.shuffle()
	deck.shuffle()
	deck.shuffle()
	deck.shuffle()
	deck.shuffle()
	deck.shuffle()
