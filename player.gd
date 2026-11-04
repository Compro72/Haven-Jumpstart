extends RigidBody2D

const SPEED = 300.0
const JUMP_FORCE = -1000.0

func _integrate_forces(state: PhysicsDirectBodyState2D) -> void:
	var lv := state.linear_velocity
	var direction := Input.get_axis("ui_left", "ui_right")
	
	lv.x = direction * SPEED
	
	if Input.is_action_just_pressed("ui_up"):
		lv.y = JUMP_FORCE
		
	state.linear_velocity = lv
