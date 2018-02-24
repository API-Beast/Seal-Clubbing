extends TextureRect

func _process(delta):
	visible = GameState.state == "WIN"
