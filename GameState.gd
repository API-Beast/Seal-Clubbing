extends Node

export var lives = 3

func _ready():
	randomize()

func game_over():
	pass
	
func get_humans_left():
	return get_tree().get_nodes_in_group("human").size()
	
func reduce_lifes():
	lives -= 1
	if lives == 0:
		game_over()