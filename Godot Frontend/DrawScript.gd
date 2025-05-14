extends Node2D


var isDrawing : bool = false
var currStrokePoints : Array[Vector2] = []
var completedStrokes : Array = []  #2D Array that stores arrays of currStrokePoints, will be handy when eraser/undo tool is implemented


func _input(event: InputEvent):
	# _input is a dedicated callback by godot for input detection
	# Start drawing when left mouse pressed and add one point
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		isDrawing = event.pressed
		if isDrawing:
			currStrokePoints = []  
			currStrokePoints.append(event.position)
			queue_redraw() # Required here as well that we can render single point strokes 
		else :
			#Add current stroke to completedStrokes
			completedStrokes.append(currStrokePoints.duplicate())
			
			
			
	
	# Continue the drawing once started
	if isDrawing and event is InputEventMouseMotion:
		currStrokePoints.append(event.position)
		# Queues to call _draw function when possible
		queue_redraw()
	
func _draw():
	# Draw all other previous stroked
	for strokes in completedStrokes:
		drawPoints(strokes)
	# Draw current stroke
	drawPoints(currStrokePoints)




func drawPoints(points : Array):
	# We will connect the points of each stroke by lines
	for i in range(len(points) - 1):
		draw_line(points[i], points[i+1], Color.BLACK, 10, true)
	
	# But points itself will be circles for smoothness
	for point in points:
		draw_circle(point, 5, Color.BLACK)
	
func clearDrawing():
	# Reset all drawing arrays
	currStrokePoints = []
	completedStrokes = []
	queue_redraw()
