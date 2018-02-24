extends KinematicBody2D

export(NodePath) var test

func _ready():
	var sprites = [preload("Assets/seal_1.png"), preload("Assets/seal_2.png"), preload("Assets/seal_3.png"), preload("Assets/seal_4.png"), preload("Assets/seal_5.png"), preload("Assets/seal_6.png")]
	$Sprite.texture = sprites[floor(rand_range(0, sprites.size()))]