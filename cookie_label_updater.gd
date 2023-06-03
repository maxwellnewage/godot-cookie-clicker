extends Label

func _process(delta):
	var cps = " (%s cps)" % Globals.CPS
	text = str(Globals.COOKIE_COUNTER) + cps
