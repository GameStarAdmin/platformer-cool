extends Node2D
class_name Block

@export var offset = Vector2(0, -320)
@export var duration = 5.0

func _ready():
	pass
	

func start_tween():
	var tween = get_tree().create_tween().set_process_mode(Tween.TWEEN_PROCESS_PHYSICS)
	tween.set_loops().set_parallel(false)
	tween.tween_property($AnimatableBody2d, "position", offset, duration / 2)
	tween.tween_property($AnimatableBody2d, "position", Vector2.ZERO, duration / 2)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Button_1"):
		print("test")
		start_tween()
	
	
func _physics_process(delta: float) -> void:
	pass
	
