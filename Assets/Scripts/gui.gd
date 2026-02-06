extends CanvasLayer

@onready var coins_label: Label = $CoinsLabel

var score = 0
func add_coin():
	score += 1
	coins_label.text = "Coins: " + str(score)
