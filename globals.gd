extends Node

var cookie_counter: int = 0:
	set = set_cookie_counter
var cookies_per_second: int = 0:
	set = set_cookies_per_second

signal cookie_counter_changed(new_value: int)
signal cookies_per_second_changed(cookies: int)

func set_cookie_counter(new_value: int):
	if cookie_counter != new_value:
		cookie_counter = new_value
		cookie_counter_changed.emit(new_value)

func set_cookies_per_second(cookies: int):
	if cookies_per_second != cookies:
		cookies_per_second = cookies
		cookies_per_second_changed.emit(cookies)
		
