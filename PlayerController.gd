extends Node2D

var has_queued_click = false
var click_position = Vector2(0, 0)

func _input(event):
	if event is InputEventMouseButton:
		if event.is_action("click"):
			has_queued_click = true
			click_position = event.global_position
			
func _physics_process(delta):
	var phys = get_world_2d().direct_space_state
	var result = phys.intersect_point(click_position, 3)
	for obj in result:
		if obj["collider"].is_in_group("mob"):
			if obj["collider"].is_human:
				obj["collider"].queue_free()
			else:
				obj["collider"].queue_free()
				GameState.reduce_lives()
			return