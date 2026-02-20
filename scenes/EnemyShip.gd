extends Area2D

var speed = 800

func _process(delta):
	position.x -= speed * delta # Bergerak ke kiri

func _on_body_entered(body):
	if body.name == "EnemyShip" or body.name == "BlueShip":
		get_tree().reload_current_scene()
