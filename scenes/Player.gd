extends RigidBody2D

@export var speed: float = 500.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	rotation_degrees = 90
	lock_rotation = true

# Called every physics frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	linear_velocity = direction * speed


func _on_meteor_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
