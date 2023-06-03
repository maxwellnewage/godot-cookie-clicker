extends Timer

func _on_timeout():
	Globals.COOKIE_COUNTER += Globals.CPS
