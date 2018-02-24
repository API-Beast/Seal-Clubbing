extends KinematicBody2D

# px/sec
const MOVE_SPEED = 100;
# next position to move to
var target;

func _ready():
	target = self.position;
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	var speed = MOVE_SPEED * delta;
	
	if target.distance_to(self.position) < speed:
		target = newRandomTarget();
	
	var velocity = target - self.position;
	if velocity.length() > speed:
		velocity = velocity.normalized() * speed;
	#move_and_slide(velocity);
	move_and_collide(velocity);
	
func newRandomTarget():
	var Floor = $"../../Floor"
	var extents = Floor.shape.extents;
	
	var hWidth = extents.x;
	var posx = Floor.position.x + rand_range(- hWidth, hWidth);
	
	var hHeight = extents.y;
	var posy = Floor.position.y + rand_range(- hHeight, hHeight);
	
	return Vector2(posx, posy);
	