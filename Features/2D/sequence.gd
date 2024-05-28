extends Node2D

var cinecam : CineCam2D

func _ready():
	cinecam = $CineCam2D


func _input(event):
	if event.is_action_released("ui_right"):
		cinecam.start_sequence(false)
		$CineCam2D/Label.text = "start_sequence at 0,\n from VirtualCam_A"
	if event.is_action_released("ui_left"):
		$CineCam2D/Label.text = "start_sequence backwards at 2,\n from VirtualCam_C"
		cinecam.start_sequence(true)
