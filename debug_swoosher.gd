extends Panel

var origin

func _ready():
	origin = get_node(".").rect_position 
	pass

func _process(delta):
	get_node(".").rect_position  = Vector2(origin.x,origin.y)
	pass
