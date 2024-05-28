extends Node3D

var cinecam : CineCam3D
var intensity_vector_offset : Vector2
var intensity_vector_rotation : Vector3
var duration_in_seconds : float = 2.0

var intensity_float : float = 10.0

func _ready():
	cinecam = %CineCam3D
	var x_axis_offset : float = 5.0
	var y_axis_offset : float = 2.0
	intensity_vector_offset = Vector2(x_axis_offset, y_axis_offset)
	
	var x_axis_rotation : float = 2.0
	var y_axis_rotation : float = 2.5
	var z_axis_rotation : float = 3.5
	intensity_vector_rotation = Vector3(x_axis_rotation, y_axis_rotation, z_axis_rotation)


func _input(event):
	if event.is_action_released("ui_up"):
		# Will shake the camera by its offset h and v, which means the camera can shake while moving.
		cinecam.shake_offset(intensity_vector_offset, duration_in_seconds)
		btn_text("shake_offset")
	if event.is_action_released("ui_down"):
		# Will shake the camera by its fov. VERY INTENSE, KEEP VALUES LOW!
		# The camera can shake while moving.
		cinecam.shake_fov(intensity_float, duration_in_seconds)
		btn_text("shake_fov")
	if event.is_action_released("ui_left"):
		# Will shake the camera by its rotation in Vector3 euler angles.
		# The camera can shake while moving.
		cinecam.shake_rotation(intensity_vector_rotation, duration_in_seconds)
		btn_text("shake_rotation")
	if event.is_action_released("ui_right"):
		# Same as before, but this time with other interpolation.
		cinecam.shake_rotation(intensity_vector_rotation, duration_in_seconds, Tween.EASE_IN, Tween.TRANS_ELASTIC)
		btn_text("shake_rotation with Tween.EASE_IN and Tween.TRANS_ELASTIC")


func btn_text(value : String):
	$Label.text = value
