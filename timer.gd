extends Timer

func _on_timeout():
	Globals.cookie_counter += Globals.cookies_per_second
