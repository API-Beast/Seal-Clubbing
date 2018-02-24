extends Sprite

# class member variables go here, for example:


var anis = ["turn_off", "turn_on", "turn_off", "turn_on", "smooth", "smooth", "smooth", "quick_flash", "quick_flash", "quick_flash", "short_pulse", "short_pulse", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none", "none"]
var colors = [Color("C95AEE"), Color("5F9AEE"), Color("F5CB6E")]
export var speed = 1.0
export var pulse = 0.0
var bg = Color("211A26")
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
			color = colors[randi()%colors.size()]
			$Light2D.color = color
	
	#Blend animation color to background color
	$".".modulate = bg.linear_interpolate(color, pulse)
	$Light2D.energy = pulse * 0.5
