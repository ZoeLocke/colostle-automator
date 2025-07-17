extends MarginContainer

signal apply_pressed

func _on_apply_button_up() -> void:
	var filters = Globals.filter
	# Clear the filters array so it can be repopulated without duplication
	filters.clear()
	# Loop through the filter buttons
	for filter_button in get_tree().get_nodes_in_group("filter_buttons"):
		# If the current button is selected, add it's text to the filters array
		if filter_button.get_node("CheckBox").button_pressed:
			filters.append(filter_button.get_node("CheckBox").text)
	# Fold up the filter object
	emit_signal("apply_pressed")
