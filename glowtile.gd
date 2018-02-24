extends Sprite

# class member variables go here, for example:


var anis = ["turn_off", "turn_on", "quick_flash", "short_pulse", "short_pulse", "none", "none", "none", "none"]
var colors = ["C95AEE", "5F9AEE", "F5CB6E"]
export var speed = 1.0
export var pulse = 0.0
var bg = Color("3E3146")
var color = bg


func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	$AnimationPlayer.playback_speed = speed
	pass

func _process(delta):
	if not $AnimationPlayer.is_playing():
		for i in range(0,10):
			$AnimationPlayer.queue(anis[randi()%anis.size()])
			color = Color(colors[randi()%colors.size()])
	
	#Blend animation color to background color
	$".".modulate = bg.linear_interpolate(color, pulse)
