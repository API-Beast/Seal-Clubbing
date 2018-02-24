extends AudioStreamPlayer2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var tracks = ["res://Music/Broken_Fiction.ogg","res://Music/Ethereal_Thunder.ogg","res://Music/Miniscule_Protest.ogg","res://Music/Viennese_Doubts.ogg","res://Music/Wistful_Expansion.ogg"]

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#func _process(delta):
	if not self.playing:
		self.set_stream(load(tracks[randi() % tracks.size()]))
		self.play()
		
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
