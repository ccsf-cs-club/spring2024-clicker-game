extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	# Text node
	var label = $Label2
	label.text = "Hello from code!~"

	# Font for Size
	var font = FontFile.new()
	font = load("res://FontRoboto/Roboto-Black.ttf")

	# These functions aren't documented, finding them was hell.
	# https://docs.godotengine.org/en/stable/classes/class_control.html
	# https://docs.godotengine.org/en/stable/classes/class_label.html#theme-property-descriptions
	label.add_theme_font_override("font",load("res://FontRoboto/Roboto-Black.ttf"))
	label.add_theme_font_size_override("font_size", 52)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
