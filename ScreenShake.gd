extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
onready var oldpos = $Camera2D.position

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass
		
func _process(delta):
	if Input.is_action_just_pressed("click"):
		$AudioStreamPlayer2D.play()
		GameState.shake = max(GameState.shake, 20)


	$Camera2D.position = oldpos + Vector2(rand_range(-GameState.shake, GameState.shake),rand_range(-GameState.shake, GameState.shake))
	GameState.shake = GameState.shake * pow(0.8, delta*60)
	
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
