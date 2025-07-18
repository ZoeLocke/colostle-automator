extends PanelContainer

signal clear
signal closed

func _on_no_button_button_up() -> void:
	# removes itself when you hit "no"
	emit_signal("closed")
	self.queue_free()


func _on_yes_button_button_up() -> void:
	# Clears the log and then closes itself when you hit "yes"
	emit_signal("clear")
	emit_signal("closed")
	Globals.first_result = true
	self.queue_free()
