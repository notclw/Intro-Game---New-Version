extends Label

var totalLives = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_buzzsaw_life_lost():
	totalLives = totalLives - 1
	text = "Lives: " + str(totalLives)
	if totalLives == 0:
		get_tree().change_scene_to_file("res://game over.tscn")
