extends Area2D

func _on_body_entered(body: Node2D):
	# Jika pesawat jatuh ke area ini, reset level
	if body.name == "BlueShip" or body.name == "NewShip":
		print("Pesawat jatuh keluar batas! Mengulang level...")
		get_tree().reload_current_scene()
