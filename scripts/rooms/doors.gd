extends Node3D

class_name Doors


@export var leftDoor: MeshInstance3D
@export var rightDoor: MeshInstance3D

@export var slidingSpeed = 10.0
#max distance each door will slide open
@export var fullOpenDistance: float = 4.0
#in the process of going open
var isOpening = false
var isClosing = false
#Distance the doors have opened already
var openDistance: float

# Called when the node enters the scene tree for the first time.
func _ready():
	openDistance = 0.0
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(Input.is_action_just_pressed("opendoor")):
		_activate_doors()
	_slideDoors(delta)
	pass
	
func _activate_doors():
	if(openDistance > 0):
		isClosing = true
		isOpening = false
	else:
		isClosing = false
		isOpening = true
		

func _slideDoors(delta):
	#If we're in process of opening doors
	if(isOpening):
		if(openDistance < fullOpenDistance):			
			var offset = Vector3.RIGHT * slidingSpeed * delta
			leftDoor.translate_object_local(offset)
			rightDoor.translate_object_local(-offset)
			openDistance = minf(openDistance + offset.length(), fullOpenDistance)
						
		#otherwise the doors are fully open
		else:
			isOpening = false
	if(isClosing):
		#doors should be closed if open at all
		if(openDistance > 0):
			var offset = Vector3.LEFT * slidingSpeed * delta
			leftDoor.translate_object_local(offset)
			rightDoor.translate_object_local(-offset)
			openDistance = maxf(openDistance - offset.length(), 0)
		else:
			isClosing = false
			
			
	
	
	
	
signal openDoor
signal closeDoor
