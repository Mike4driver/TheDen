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
		panel.character_name = character
		for child in panel.get_children():
			panel.remove_child(child)

		panel.add_child(sprite)
		get_node(".").add_child(panel)
		print("Added "+ character)
		#var colorfile = File.new()
		#if(colorfile.file_exists("res://ASSETS/Characters/"+character+"/COLORS.hex")):
			#colorfile = File.load("res://ASSETS/Characters/"+character+"/COLORS.hex")
			#print(colorfile)
			#panel.color1 = Color(0.0,0.0,0.0)
		#else:
			#print("ERROR: Could not find color file in "+character+"'s folder")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
