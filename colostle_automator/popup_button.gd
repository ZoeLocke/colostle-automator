extends MarginContainer

func _on_button_button_up(source: BaseButton) -> void:
	Globals.selected = source.text
	get_tree().call_group("main","lookup_picked")
	get_tree().call_group("popup","queue_free")
