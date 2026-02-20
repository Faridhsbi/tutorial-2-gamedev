extends Area2D

@export var is_falling = false
@export var fall_speed = 250.0

func _process(delta):
	if is_falling:
		position.y += fall_speed * delta

func _on_body_entered(body):
	if body.name == "BlueShip" or body.name == "Player":
		print("nabrak, respawn")
		get_tree().reload_current_scene()
