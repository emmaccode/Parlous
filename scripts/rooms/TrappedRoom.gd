extends Room

@export var sensorType = SensorType.NONE
#var trap: Trap
#If the trap can trigger multiple times, or once only
@export var repeatableActivation = true
@export var cooldown: float = 1.0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	_check_trap_activation()
	pass

func _check_trap_activation():
	#Check to see if any players or events will trigger the trap in the room
	match sensorType:
		SensorType.NONE:
			pass
		SensorType.MOTION_SENSING:
			pass
		SensorType.SOUND_ACTIVATED:
			pass
			

func _activate_trap():
	#trap.activate()
	pass



enum SensorType {
	NONE,
	MOTION_SENSING,
	SOUND_ACTIVATED,
	ON_ENTER_ROOM
}
