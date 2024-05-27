extends Node3D

var cinecam : CineCam3D

func _ready():
	cinecam = %CineCam3D


func _input(event):
	if event.is_action_released("ui_right"):
		cinecam.start_sequence(false)
	if event.is_action_released("ui_left"):
		cinecam.start_sequence(true)
