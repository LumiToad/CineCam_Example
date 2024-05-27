extends Sprite2D

var speed = 150.0

func _process(delta):
	if Input.is_action_pressed("ui_up"):
		global_position += Vector2.UP * speed * delta
	if Input.is_action_pressed("ui_down"):
		global_position += Vector2.DOWN * speed * delta
	if Input.is_action_pressed("ui_left"):
		global_position += Vector2.LEFT * speed * delta
	if Input.is_action_pressed("ui_right"):
		global_position += Vector2.RIGHT * speed * delta
