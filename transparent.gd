extends Area3D

signal timeReset
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_body_entered(body):
	if body.name == "CL Dubs":
		print ("capitals in 4")
		emit_signal("timeReset")
