extends Label

var totalCoins = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_area_3d_coin_collected():
	print("Coin collected")
	totalCoins = totalCoins + 1
	text = "Coins: " + str(totalCoins)
