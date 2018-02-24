extends KinematicBody2D

export(NodePath) var test

func _ready():
	var sprites = [preload("Assets/human_1.png"), preload("Assets/human_2.png"), preload("Assets/human_3.png"), preload("Assets/human_4.png"), preload("Assets/human_5.png"), preload("Assets/human_6.png"), preload("Assets/human_7.png")]
	$Sprite.texture = sprites[floor(rand_range(0, sprites.size()))]

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
