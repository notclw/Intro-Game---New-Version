extends CharacterBody3D


const SPEED = 5.0
const JUMP_VELOCITY = 8.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y -= gravity * delta

	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if Input.is_action_pressed("ui_left"):
		velocity.z = SPEED
		$MeshInstance3D.rotate_z(deg_to_rad(6))
	elif Input.is_action_pressed("ui_right"):
		velocity.z = -SPEED
		$MeshInstance3D.rotate_z(deg_to_rad(-6))
	elif Input.is_action_pressed("ui_up"):
		velocity.x = -SPEED
		$MeshInstance3D.rotate_x(deg_to_rad(-6))
	elif Input.is_action_pressed("ui_down"):
		velocity.x = SPEED
		$MeshInstance3D.rotate_x(deg_to_rad(6))
	else:
		velocity.z = move_toward(velocity.z, 0, .1)
		velocity.x = move_toward(velocity.x, 0, .1 )

	move_and_slide()



func _on_node_3d_body_entered(body):
	emit_signal("timeReset")
