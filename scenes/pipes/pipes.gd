extends Node2D

class_name Pipes

const OFF_SCREEN: float = -500

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x -= delta * GameManager.SCROLL_SPEED
	_on_screen_exited()


func _on_screen_exited() -> void:
	if position.x < OFF_SCREEN:
		queue_free()


func check_off_screen() -> void:
	queue_free()
