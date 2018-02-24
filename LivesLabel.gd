extends Label

func _process(delta):
	text = ""
	for i in range(0, GameState.lives):
		text += "+"

