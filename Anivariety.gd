extends AnimationPlayer

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	#self.playback_speed = rand_range(0.9, 1.1)
	self.seek(rand_range(0, 0.4), true)
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
