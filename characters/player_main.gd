extends "res://characters/base_character.gd"

func _ready():
	add_user_signal("player_interact")

func control(delta):
	if Input.is_key_pressed(KEY_Q):
		get_tree().quit()
	if Input.is_action_pressed("shoot"):
		shoot()
	
	if Input.is_key_pressed(KEY_W):
		move_and_collide(Vector2(0, -speed))
	if Input.is_key_pressed(KEY_A):
		move_and_collide(Vector2(-speed, 0))
	if Input.is_key_pressed(KEY_S):
		move_and_collide(Vector2(0, speed))
	if Input.is_key_pressed(KEY_D):
		move_and_collide(Vector2(speed, 0))

	$player_weapon.look_at(get_global_mouse_position())
	var rot_dir = 0
