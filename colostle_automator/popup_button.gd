extends MarginContainer

signal lookup_picked

func _on_button_button_up() -> void:
	# Check to see if the user is grabbing the screen to scroll
	# If they are, just release focus
	if Globals.scrolling:
		$Button.release_focus()
	# If they are not, close the popup and update the loopup choice
	else:
		Globals.selected = $Button.text
		emit_signal("lookup_picked")
