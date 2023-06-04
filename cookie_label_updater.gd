extends Label

func _ready() -> void:
	Globals.cookie_counter_changed.connect(_on_globals_cookie_counter_changed)
	Globals.cookies_per_second_changed.connect(_on_globals_cookies_per_second_changed)
	update_text()

func update_text():
	text = "{0} ({1} cps)".format([Globals.cookie_counter, Globals.cookies_per_second])

func _on_globals_cookie_counter_changed(_new_values: int):
	update_text()

func _on_globals_cookies_per_second_changed(_cookies: int):
	update_text()
