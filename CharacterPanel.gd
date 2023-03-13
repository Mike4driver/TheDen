extends Panel
#TODO: make selectable, send info over to CURSOR object when hovered over.
var HIDDEN = 0.5
var H_SMOOTH = 0.0
var HOVER = 0
var HOVERSMOOTH = 100
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	H_SMOOTH = lerp(H_SMOOTH, HIDDEN,.1)
	get_node(".").get_child(0).modulate = Color(H_SMOOTH,H_SMOOTH,H_SMOOTH)
	HOVERSMOOTH = lerp(HOVERSMOOTH, 100 + HOVER,0.2)
	get_node(".").get_child(0).scale = Vector2(HOVERSMOOTH/256,HOVERSMOOTH/256)
	pass

func _on_BasePanel_mouse_entered():
	HIDDEN = 1.0
	HOVER = 20
	pass # Replace with function body.


func _on_BasePanel_mouse_exited():
	HOVER = 0
	pass # Replace with function body.
