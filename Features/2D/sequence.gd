extends Node2D

var cinecam : CineCam2D

func _ready():
	cinecam = $CineCam2D


func _input(event):
	if event.is_action_released("ui_right"):
		cinecam.start_sequence(false)
	if event.is_action_released("ui_left"):
		cinecam.start_sequence(true)
