extends Node2D

var enemy_scene = preload("res://scenes/EnemyShip.tscn")
var meteor_scene = preload("res://scenes/Meteor.tscn")

func _ready():
	var timer = Timer.new()
	timer.wait_time = 1.0
	timer.autostart = true
	timer.timeout.connect(_on_timer_timeout)
	add_child(timer)

func _on_timer_timeout():
	var enemy = enemy_scene.instantiate()
	enemy.position = Vector2(1760, randf_range(200, 700)) 
	add_child(enemy)

	var meteor = meteor_scene.instantiate()
	meteor.is_falling = true
	meteor.position = Vector2(randf_range(200, 1750), -50)
	add_child(meteor)
