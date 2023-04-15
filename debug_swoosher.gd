extends Sprite

var origin
var swoosh = -1.0
var ratio = 1.0

func _ready():
	#origin = get_node(".").rect_position 
	pass

func _process(delta):
	#get_node(".").rect_position  = Vector2(origin.x,origin.y)
	swoosh = clamp(swoosh + delta * 3.0, -1.0, 0.0)
	if get_node(".").texture != null:
		# pow here gives us an easing out motion. Increase the number in the function (4.0) to create a stronger ease
		get_node(".").position.x = -pow(-swoosh,4.0) * get_viewport().size.y / float(ratio)
	pass
