extends Node

export var lives = 3
export var state = "GAME"
export var restart_timer = 3
export var song = 0

func _ready():
	randomize()
	
func _process(delta):
	if get_humans_left() == 0:
		if state == "GAME":
			state = "WIN"
	
	if not state == "GAME":
		restart_timer -= delta
		if restart_timer < 0:
			get_tree().change_scene("res://Main.tscn")
			lives = 3
			state = "GAME"
			restart_timer = 3

func game_over():
	state = "LOSE"
	
func get_humans_left():
	return get_tree().get_nodes_in_group("human").size()
	
func reduce_lives():
	lives -= 1
	if lives == 0:
		game_over()