extends Node3D

var cinecam : CineCam3D

func _ready():
	cinecam = %CineCam3D


func _input(event):
	if event.is_action_released("ui_right"):
		$Label.text = "start_sequence at 0,\n from VirtualCam_A"
		cinecam.start_sequence(false)
	if event.is_action_released("ui_left"):
		$Label.text = "start_sequence backwards at 2,\n from VirtualCam_C"
		cinecam.start_sequence(true)
