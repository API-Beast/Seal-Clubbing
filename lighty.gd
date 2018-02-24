extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var speed = 0

func _ready():
	var sprites = [preload("res://Assets/light1.png"),preload("res://Assets/light2.png"),preload("res://Assets/light3.png"),preload("res://Assets/light4.png"),preload("res://Assets/light5.png"),preload("res://Assets/light6.png")]
			
	self.texture = sprites[randi()%sprites.size()]
	# Called every time the node is added to the scene.
	# Initialization here
	self.rotation = rand_range(0, PI*2)
	speed = rand_range(2,3)
	if (randi()%2 == 0):
		speed *= -1
	pass

func _process(delta): 
	self.rotation += delta * speed 
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
