extends Area3D

signal coinCollected


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	while true:
		$MeshInstance3D.rotate_x(deg_to_rad(2))
		$MeshInstance3D.rotate_y(deg_to_rad(2))
		$MeshInstance3D.rotate_z(deg_to_rad(2))


func _on_body_entered(body):
	emit_signal("coinCollected")
	queue_free()
	
