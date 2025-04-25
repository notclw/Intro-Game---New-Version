extends Label

var time = 75      

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_timer_timeout():
	time = time - 1
	text = str("Time: ",time)
	if time == 0:
		$Timer.stop()
		get_tree().change_scene_to_file("res://game over.tscn")


func _on_node_3d_time_reset():
	time = 76
