extends TextureRect

func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if get_global_rect().has_point(event.position):
			Globals.COOKIE_COUNTER += 1
