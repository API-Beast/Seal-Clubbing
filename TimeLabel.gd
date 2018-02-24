extends Label

export var timer_length = 30
var timer = 0

func _ready():
	timer = timer_length

func _process(delta):
	if timer > 0.0:
		timer -= delta
		text = str(ceil(timer))+"s"
	else:
		GameState.game_over()
