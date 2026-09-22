extends CharacterBody2D


const SPEED = 800.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	var dirx := Input.get_axis("left", "right")
	var diry := Input.get_axis("up", "down")
	##
	if dirx:
		velocity.x = dirx * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	##
	if diry:
		velocity.y = diry * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)


	move_and_slide()
