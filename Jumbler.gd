extends GridContainer

# Called when the node enters the scene tree for the first time.
func _ready():
	# search folder for characters
	
	# for loop to add BasePanels
	
	var children = get_children()
	randomize();
	for n in children.size():
		get_node(".").move_child(children[n],randi() % children.size())
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
