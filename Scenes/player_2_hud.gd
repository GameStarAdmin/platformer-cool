extends CanvasLayer

signal red
signal orange
signal yellow
signal green
signal blue
signal purple

enum Seasons {SPRING, SUMMER, FALL, WINTER}

var current_season: Seasons = Seasons.SPRING

func change_season(season: Seasons) -> void:
	if season == current_season:
		return
	match season:
		Seasons.SPRING:
			pass
		Seasons.SUMMER:
			pass
		Seasons.FALL:
			pass
		Seasons.WINTER:
			pass


func reset_season_effects() -> void:
	#unfreeze water
	#remove wind
	pass


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
