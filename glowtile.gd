extends Sprite

# class member variables go here, for example:


var anis = ["turn_off", "turn_on", "quick_flash", "short_pulse", "short_pulse", "none", "none", "none", "none"]

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	$AnimationPlayer.play("turn_off");
	$AnimationPlayer.playback_speed = 2.0
	pass

func _process(delta):
	if not $AnimationPlayer.is_playing():
		for i in range(0,10):
			$AnimationPlayer.queue(anis[randi()%anis.size()])
			
			