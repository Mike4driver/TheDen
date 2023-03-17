extends GridContainer

#Alina is a Default character and does not need to be added
var characters = ["Coni", "Cami", "Diane","Dulce Ratoncita", "Fistifluffs", "Shaula", "Soony Fox", "Terry"]


func _ready():
	for character in characters:
		var panel = Panel.new()
		panel = get_node(".").get_child(0).duplicate()
		var oldSprite = panel.get_child(0).duplicate()
		var sprite = Sprite.new()
		sprite = oldSprite
		sprite.texture = load("res://ASSETS/Characters/"+character+"/THUMBNAIL.png")
		
		for child in panel.get_children():
			panel.remove_child(child)

		panel.add_child(sprite)
		get_node(".").add_child(panel)
		print("Added "+ character)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
