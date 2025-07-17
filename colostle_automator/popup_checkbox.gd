extends MarginContainer


func _on_check_box_button_up(source: BaseButton) -> void:
	# Hacky, but without this the buttons in the checkbox list look weird when they have focus and due to the complex cross-over over focus and selected/deselected simply changing the styles wasn't enough
	source.release_focus()
