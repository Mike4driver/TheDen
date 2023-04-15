extends Panel
#TODO: make selectable, send info over to CURSOR object when hovered over.
var HIDDEN = .9
var H_SMOOTH = 0.0
var HOVER = 0
var HOVERSMOOTH = 100
var character_name = "Alina"
var texture_guy # Holds the pinup texture for the character
var ratio = 1.0 # X/Y Dimensions of the pinup texture

onready var PINUP = get_node("../../../Control/Pinup")
onready var BackgroundElement = get_node("../../../FighterLeft") # Retrieve node so we can put our picture in it when we get selected

func _ready():
	texture_guy = load("res://ASSETS/Characters/"+character_name+"/PINUP1.png")
	pass

# Little effects for when we hover the mouse over this icon
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


func _on_BasePanel_gui_input(event):
	if event is InputEventMouseButton:
		if(Input.is_mouse_button_pressed(BUTTON_LEFT)):
			PINUP.texture = texture_guy
			ratio = float(PINUP.texture.get_width()) / float(PINUP.texture.get_height()) # Retreive image ratio
			PINUP.ratio = ratio
			PINUP.swoosh = -1.0 # Place image outside of the screen so that it can swoop in.
			# Scale sprite by window height + window height times X/Y ratio
			PINUP.scale = Vector2(get_viewport().size.y / PINUP.texture.get_width() * ratio,get_viewport().size.y / PINUP.texture.get_height())
			print(character_name + " selected. Ratio:")
			BackgroundElement.self_modulate = Color(randf(), randf(), randf()) # test function to change color of background.
	pass # Replace with function body.
