extends Node2D

var cinecam : CineCam2D
var intensity_vector_offset : Vector2
var intensity_vector_zoom : Vector2
var duration_in_seconds : float = 2.0

var intensity_float : float = 10.0

func _ready():
	cinecam = $CineCam2D
	var x_axis_offset : float = 5.0
	var y_axis_offset : float = 2.0
	intensity_vector_offset = Vector2(x_axis_offset, y_axis_offset)
	
	var x_axis_zoom : float = 0.15
	var y_axis_zoom : float = 0.15
	intensity_vector_zoom = Vector2(x_axis_zoom, y_axis_zoom)


func _input(event):
	if event.is_action_released("ui_up"):
		# Will shake the camera by its offset x and y, which means the camera can shake while moving.
		cinecam.shake_offset(intensity_vector_offset, duration_in_seconds)
		btn_text("shake_offset")
	if event.is_action_released("ui_down"):
		# Will shake the camera by its zoom x and y. VERY INTENSE, KEEP VALUES LOW!
		# The camera can shake while moving.
		cinecam.shake_zoom(intensity_vector_zoom, duration_in_seconds)
		btn_text("shake_zoom")
	if event.is_action_released("ui_left"):
		# Will shake the camera by its rotation in degrees.
		# Camera2D "ignore_rotation" property must be set to false.
		# The camera can shake while moving.
		cinecam.shake_rotation(intensity_float, duration_in_seconds)
		btn_text("shake_rotation")
	if event.is_action_released("ui_right"):
		# Same as before, but this time with other interpolation.
		cinecam.shake_rotation(intensity_float, duration_in_seconds, Tween.EASE_IN, Tween.TRANS_ELASTIC)
		btn_text("shake_rotation with Tween.EASE_IN and Tween.TRANS_ELASTIC")


func btn_text(value : String):
	$Label.text = value
