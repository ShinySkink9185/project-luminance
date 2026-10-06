extends CanvasLayer
enum FADE_TYPES {OFF, ON}

@onready var fade = $ColorRect

func set_fade(fade_type: FADE_TYPES, fade_time: float = 1.0, fade_color = Color(0, 0, 0)):
	var tween = create_tween()
	# Fade's on!
	if fade_type == FADE_TYPES.ON:
		tween.tween_property(fade, "color", Color(fade_color, 0), 0)
		tween.tween_property(fade, "color", Color(fade_color, 1), fade_time)
	# Fade's off.
	else:
		tween.tween_property(fade, "color", Color(fade_color, 1), 0)
		tween.tween_property(fade, "color", Color(fade_color, 0), fade_time)
