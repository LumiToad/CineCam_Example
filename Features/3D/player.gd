extends Node3D

var jump_current = 0
var jump_power = 5
var ground_y

var look_ahead_x = 10
var cam_target : CamTarget3D

func _ready():
	ground_y = global_position.y
	cam_target = $CamTarget3D


func _process(delta):
	if Input.is_action_pressed("ui_left"):
		global_position.z -= 20 * delta
		var look_at_vector = global_position
		look_at_vector.z += 1
		look_at(look_at_vector)
		var target_offset = get_child(2).get_target_offset()
		target_offset.z = 1 * -look_ahead_x
		cam_target.set_target_offset(target_offset)
	if Input.is_action_pressed("ui_right"):
		global_position.z += 20 * delta
		var look_at_vector = global_position
		look_at_vector.z -= 1
		look_at(look_at_vector)
		var target_offset = get_child(2).get_target_offset()
		target_offset.z = 1 * look_ahead_x
		cam_target.set_target_offset(target_offset)
	if Input.is_action_just_pressed("ui_up") and jump_current == 0:
		jump_current = jump_power
		global_position.y += 0.1
	if (global_position.y > ground_y):
		jump_current -= 10 * delta
	else:
		jump_current = 0
		global_position.y = ground_y
	jump_current = clamp(jump_current, -jump_power, jump_power)
	global_position.y += jump_current
