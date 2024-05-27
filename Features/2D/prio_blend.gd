extends Node2D

var cinecam : CineCam2D
var vcam_a : VirtualCam2D
var vcam_b : VirtualCam2D
var vcam_c : VirtualCam2D


func _ready():
	cinecam = $CineCam2D
	vcam_a = cinecam.find_vcam_by_id("vcam_a")
	vcam_b = cinecam.find_vcam_by_id("vcam_b")
	vcam_c = cinecam.find_vcam_by_id("vcam_c")


func _on_a_1_button_up():
	vcam_a.priority += 1
	%A_Prio.text = str(vcam_a.priority)


func _on_b_1_button_up():
	vcam_b.priority += 1
	%B_Prio.text = str(vcam_b.priority)


func _on_c_1_button_up():
	vcam_c.priority += 1
	%C_Prio.text = str(vcam_c.priority)
