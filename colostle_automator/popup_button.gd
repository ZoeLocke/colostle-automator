extends MarginContainer

signal lookup_picked

func _on_button_button_up(source: BaseButton) -> void:
	Globals.selected = source.text
	emit_signal("lookup_picked")
