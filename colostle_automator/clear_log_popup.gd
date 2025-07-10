extends PanelContainer

func _on_no_button_button_up() -> void:
	# removes itself when you hit "no"
	self.queue_free()


func _on_yes_button_button_up() -> void:
	# Clears the log and then closes itself when you hit "yes"
	get_tree().call_group("log","clear")
	self.queue_free()
