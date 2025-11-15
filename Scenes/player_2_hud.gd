extends CanvasLayer

signal red
signal orange
signal yellow
signal green
signal blue
signal purple


func hide_button(button_name: String):
	$Buttons.find_child(button_name).visible = false

func _on_red_pressed():
	red.emit()


func _on_orange_pressed():
	orange.emit()


func _on_yellow_pressed():
	yellow.emit()


func _on_green_pressed():
	green.emit()


func _on_blue_pressed():
	blue.emit()


func _on_purple_pressed():
	purple.emit()
