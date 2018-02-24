extends Label

func _process(delta):
	text = "Humans Left: "+str(GameState.get_humans_left())