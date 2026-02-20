extends Area2D

func _on_body_entered(body):
	if body.name == "Player" or body.name == "BlueShip":
		print("Go to Level 2!")
		get_tree().change_scene_to_file("res://scenes/Level2.tscn")
	
