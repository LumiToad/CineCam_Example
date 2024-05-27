class_name H_VirtualCam3D
extends Node3D
#Inherits: Node3D < Node < Object
#MAIN_DESCRIPTION
## This help document refers to [VirtualCam3D] class! [br]
## 
## Virtual camera for the [H_CineCam3D]. [br]
## Imagine these nodes as dummy cameras for the [H_CineCam3D]. [br]
## [br]
## These dummy cameras will automatically register to the first found [H_CineCam3D]. [br]
## Be careful! At least one virtual camera has to be above a [H_CineCam3D] in the hierarchy! [br]
## Otherwise the game will crash! [br]
## You can setup blends, a camera priority and an ID to find a virtual camera node. [br]
## See [H_CineCam3D] for all the things, that you can do with a [H_VirtualCam3D] node! [br]
## [br]
## They also contain all the properties of a [Camera3D] as dummy values without any use. [br]
## Using [method H_CineCam3D.apply_vcam3d_data], you can copy the data to your currently runing [H_CineCam3D]. [br]
## 
## @tutorial(Link1): https://lnk.bio/LumiToad
## @tutorial(Link2): https://www.linkedin.com/in/LumiToad/
## @tutorial(Link3): https://github.com/LumiToad
#END_OF_DESCRIPTION


## Emitted, when the [member H_VirtualCam3D.priority] has changed. [br]
signal priority_changed(vcam3d: Object, priority: int)


## Getter / Setter for the vcam_id property. [br]
## This [String] is just a name, which you can search, using [method H_CineCam3D.find_vcam_by_id]. [br]
var vcam_id : String:
	get: return get_vcam_id()
	set(value): set_vcam_id(value)


## Getter / Setter for the priority of this virtual camera. [br]
## A [H_CineCam3D] will always know the virtual camera with the highest priority. [br]
## See [enum H_CineCam3D.FollowMode] for this. [br]
## The [H_CineCam3D] will register the priority, either when: [br]
## - [H_VirtualCam3D] nodes are changed (instanced for example) in the scene tree. [br]
## - If their priority changes. [br]
## This also happens, when loading the scene! [br]
## If two or more virtual cameras have the same priority, a [H_CineCam3D] will register the latest registered as the new "highest priority virtual camera". [br]
var priority : int = 0:
	get: return get_priority()
	set(value): set_priority(value)


## The default blending data for this virtual camera. [br]
## Will be used, when a [H_CineCam3D] blends to this virtual camera. [br]
## If this is empty, [member H_CineCam3D.blend_data] will be used as a default blend. [br]
var blend_data : H_BlendData3D :
	get: return _get_blend_data()
	set(value): _set_blend_data(value)


## Getter for vcam_id. [br]
func get_vcam_id() -> String:
	return ""


## Setter for vcam_id. [br]
func set_vcam_id(value : String):
	pass


## Getter for priority. [br]
func get_priority() -> int:
	return 0


## Setter for priority. [br]
func set_priority(value : int):
	pass


## Getter for blend_data. [br]
func _get_blend_data() -> H_BlendData3D:
	return blend_data


## Setter for blend_data. [br]
func _set_blend_data(value : H_BlendData3D):
	pass
