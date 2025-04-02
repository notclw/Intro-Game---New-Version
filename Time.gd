extends Label

var time = 5

var timeleft = 0         

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
