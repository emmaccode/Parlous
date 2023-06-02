extends Node3D
class_name Room

var roomPosition = Vector3(0,0,0)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _init(position):
	roomPosition = position
	
func _enter_room():
	on_enter.emit()
	
func _exit_room():
	on_exit.emit()


signal on_enter
signal on_exit
