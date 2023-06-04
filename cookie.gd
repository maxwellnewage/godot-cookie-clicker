extends Button

@onready var cookie_texture_rect: TextureRect = $CookieTextureRect

var animation_tween: Tween

func _ready() -> void:
	pressed.connect(_on_pressed)
	button_down.connect(_on_button_down)
	button_up.connect(_on_button_up)
	mouse_entered.connect(_on_mouse_entered)
	mouse_exited.connect(_on_mouse_exited)
	

func update_scale() -> void:
	var pressed_scale: Vector2 = Vector2(1.1, 1.1)
	var hover_scale: Vector2 = Vector2(0.8, 0.8)
	var normal_scale: Vector2 = Vector2(1, 1)
	animation_tween = create_tween()
	
	if button_pressed:
		animation_tween.tween_property(cookie_texture_rect, "scale", pressed_scale, 0.3).set_trans(Tween.TRANS_ELASTIC)
	elif is_hovered():
		animation_tween.tween_property(cookie_texture_rect, "scale", hover_scale, 0.3).set_trans(Tween.TRANS_ELASTIC)
	else:
		animation_tween.tween_property(cookie_texture_rect, "scale", normal_scale, 0.3).set_trans(Tween.TRANS_ELASTIC)

func _on_mouse_entered():
	update_scale()
	
func _on_button_down():
	update_scale()
	
func _on_button_up():
	update_scale()
	
func _on_mouse_exited():
	update_scale()

func _on_pressed():
	Globals.cookie_counter += 1
