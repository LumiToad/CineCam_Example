extends Node3D

var cinecam : CineCam3D
var vcam_a : VirtualCam3D
var vcam_b : VirtualCam3D
var vcam_c : VirtualCam3D

func _ready():
	cinecam = %CineCam3D
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
