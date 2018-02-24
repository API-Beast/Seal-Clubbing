extends KinematicBody2D

# px/sec
const MOVE_SPEED = 150;
# next position to move to
var target;
export var is_human = false

func _ready():
	var human_sprites = [preload("Assets/human_1.png"), preload("Assets/human_2.png"), preload("Assets/human_3.png"), preload("Assets/human_4.png"), preload("Assets/human_5.png"), preload("Assets/human_6.png"), preload("Assets/human_7.png")]
	var seal_sprites = [preload("Assets/seal_1.png"), preload("Assets/seal_2.png"), preload("Assets/seal_3.png"), preload("Assets/seal_4.png"), preload("Assets/seal_5.png"), preload("Assets/seal_6.png")]
	if is_human:
		$Sprite.texture = human_sprites[floor(rand_range(0, human_sprites.size()))]
		add_to_group("human", true)
	else:
		$Sprite.texture = seal_sprites[floor(rand_range(0, seal_sprites.size()))]
		add_to_group("seal", true)
	target = self.position;

func _process(delta):
	var speed = MOVE_SPEED * delta;

	if target.distance_to(self.position) < speed:
		target = newRandomTarget();

	var velocity = target - self.position;
	if velocity.length() > speed:
		velocity = velocity.normalized() * speed;
	#move_and_slide(velocity);
	var result = move_and_collide(velocity);
	
	if result:
		target = newRandomTarget();

func newRandomTarget():
	var extents = Vector2(1920, 1080)

	var hWidth = extents.x;
	var posx = rand_range(0, hWidth);

	var hHeight = extents.y;
	var posy = rand_range(0, hHeight);

	return Vector2(posx, posy);
