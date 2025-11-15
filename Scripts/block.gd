extends Path2D


@export var speed = 5.0

@onready var path = $PathFollow2D
@onready var animation = $AnimationPlayer

func _ready():
	path.progress = 0

func _process(_delta: float) -> void:
	path.rotation = 0
	if Input.is_action_just_pressed("Button_1") && !animation.is_playing():
		if path.progress_ratio == 1:
			animation.play("move", -1, -speed, true)
		else:
			animation.play("move", -1, speed, false)
