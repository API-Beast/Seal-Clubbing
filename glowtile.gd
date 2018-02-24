extends Sprite

# class member variables go here, for example:


var anis = ["turn_off", "turn_on", "quick_flash", "short_pulse", "short_pulse", "none", "none", "none", "none"]
var colors = ["C95AEE", "5F9AEE", "F5CB6E", "3E3146"]
var speed = 2.0

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	$AnimationPlayer.playback_speed = speed
	pass

func _process(delta):
	if not $AnimationPlayer.is_playing():
		for i in range(0,10):
			$AnimationPlayer.queue(anis[randi()%anis.size()])
			$".".self_modulate = Color(colors[randi()%colors.size()])
			