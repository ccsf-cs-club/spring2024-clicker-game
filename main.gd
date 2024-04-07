extends Node2D

# LabelCounter can now be selected in the inspector
@export_node_path("Label") var LabelCounter

# Button counter is linked to
@export_node_path("Button") var CounterButton

var counter = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	# Text node
	print("Label to display: ", LabelCounter)
	var label = get_node(LabelCounter)
	label.text = "How high can you click!"

	# Font for Size
	var font = FontFile.new()
	font = load("res://FontRoboto/Roboto-Black.ttf")

	# These functions aren't documented, finding them was hell.
	# https://docs.godotengine.org/en/stable/classes/class_control.html
	# https://docs.godotengine.org/en/stable/classes/class_label.html#theme-property-descriptions
	label.add_theme_font_override("font",load("res://FontRoboto/Roboto-Black.ttf"))
	label.add_theme_font_size_override("font_size", 52)
	
	# Button Counter node
	var counterButton = get_node(CounterButton)
	if counterButton:
		counterButton.connect("pressed", Callable(self, "increment_counter"))
	else:
		print("CounterButton not found.")
	

func increment_counter():
	counter += 1
	var label = get_node(LabelCounter)
	label.text = str(counter)
	print("Counter is now: ", counter)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
