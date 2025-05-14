extends Node2D



func _input(event: InputEvent) -> void:
	#Inputs in godot are not passed to subviewport nodes by default, hence any input needs to be pushed to it
	$DrawingViewport.push_input(event)
func saveDrawing():
	# Get the drawing and sav it to known path in user data folder, where godot saves player data
	var img = $DrawingViewport.get_texture().get_image()
	img.save_png("user://userDrawing.png")
