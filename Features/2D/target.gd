extends Node2D

var cinecam : CineCam2D
var cam_target : CamTarget2D
var offset_range = 40.0

func _ready():
	cinecam = %CineCam2D
	cam_target = %CamTarget2D


func _process(delta):
	if Input.is_action_pressed("ui_up"):
		cam_target.offset = Vector2.UP * offset_range
	if Input.is_action_pressed("ui_down"):
		cam_target.offset = Vector2.DOWN * offset_range
	if Input.is_action_pressed("ui_left"):
		cam_target.offset = Vector2.LEFT * offset_range
	if Input.is_action_pressed("ui_right"):
		cam_target.offset = Vector2.RIGHT * offset_range
