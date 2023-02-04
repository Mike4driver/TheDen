extends Panel

var origin

func _ready():
	origin = get_node(".").rect_pivot_offset
	pass

func _process(delta):
	#get_node(".").rect_pivot_offset = Vector2(lerp(get_global_mouse_position().x,origin.x,.5),origin.y)
	pass
