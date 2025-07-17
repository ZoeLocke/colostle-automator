extends ScrollContainer

var popup_options = Globals.lookup_options
var popup_label = preload("res://popup_label.tscn")
var popup_button = preload("res://popup_button.tscn")
var popup_checkbox = preload("res://popup_checkbox.tscn")
var apply_button = preload("res://filter_confirm_button.tscn")
var container
var checkbox_container
var fold_container

func _ready() -> void:
	container = $VBoxContainer
	checkbox_container = $VBoxContainer/FoldableContainer/VBoxContainer
	fold_container = $VBoxContainer/FoldableContainer
	build_popup()
	Globals.first_time = false

func build_popup():
	# Clear the nodes the filter button group so we don't accidentally duplicate any nodes when rebuilding the popup
	for node in get_tree().get_nodes_in_group("filter_buttons"):
		node.queue_free()
	# Delete the existing apply button if it exists so we don't duplicate it
	for node in get_tree().get_nodes_in_group("apply_button"):
		node.queue_free()
	# Loop over the lookup groups
	for item in popup_options:
		#--Populate lookup filter options--#
		# Add a checkbox object
		var checkbox = popup_checkbox.instantiate()
		checkbox_container.add_child(checkbox)
		# Set the checkbox's text
		var checkbox_node = checkbox.get_node("CheckBox")
		checkbox_node.text = item
		# If the checkbox is for a filter that is currently "active", set the button pressed
		if checkbox_node.text in Globals.filter or Globals.first_time == true:
			checkbox_node.button_pressed = true
		# Add the button to the list of buttons
		checkbox.add_to_group("filter_buttons")
		#--Populate lookup options--#
		# Create the header label
		var header = popup_label.instantiate()
		var icon = popup_options[item][0]
		container.add_child(header)
		# Set the text and icon for the header
		header.get_node("HBoxContainer/IconBefore").text = icon
		header.get_node("HBoxContainer/Label").text = item
		header.get_node("HBoxContainer/IconAfter").text = icon
		# Loop over the current lookup group
		for sub_item in popup_options[item][1]:
			# Create a button for each lookup item
			var button = popup_button.instantiate()
			container.add_child(button)
			button.get_node("Button").text = sub_item
	# Create the apply button
	var apply = apply_button.instantiate()
	checkbox_container.add_child(apply)
	# Add to the apply button group to make it easier to delete it when re-run
	apply.add_to_group("apply_button")
	# Connect the signal
	apply.apply_pressed.connect(_on_filters_applied)

func _on_filters_applied():
	fold_container.folded = true
	build_popup()
