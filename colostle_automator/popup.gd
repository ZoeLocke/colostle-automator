extends ScrollContainer

var popup_options = Globals.lookup_options
var popup_label = preload("res://popup_label.tscn")
var popup_button = preload("res://popup_button.tscn")

func _ready() -> void:
	var container = $VBoxContainer
	# Loop over the lookup groups
	for item in popup_options:
		# Create the header label
		var header = popup_label.instantiate()
		var icon = popup_options[item][0]
		container.add_child(header)
		header.get_node("HBoxContainer/IconBefore").text = icon
		header.get_node("HBoxContainer/Label").text = item
		header.get_node("HBoxContainer/IconAfter").text = icon
		# Loop over the current lookup group
		for sub_item in popup_options[item][1]:
			# Create a button for each lookup item
			var button = popup_button.instantiate()
			container.add_child(button)
			button.get_node("Button").text = sub_item
