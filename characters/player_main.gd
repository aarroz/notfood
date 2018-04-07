extends KinematicBody2D

var speed = 2

func _ready():
	add_user_signal("player_interact")

func _process(delta):
	if Input.is_key_pressed(KEY_W):
		move_and_collide(Vector2(0, -speed))
	if Input.is_key_pressed(KEY_A):
		move_and_collide(Vector2(-speed, 0))
	if Input.is_key_pressed(KEY_S):
		move_and_collide(Vector2(0, speed))
	if Input.is_key_pressed(KEY_D):
		move_and_collide(Vector2(speed, 0))

func _input(event):
	if Input.is_key_pressed(KEY_Q):
		get_tree().quit()
	#if Input.is_key_pressed(KEY_E):
	#	self.emit_signal("player_interact")