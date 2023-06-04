extends MeshInstance3D

var open = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	if open:
		$AnimationPlayer.play("doors_close")
		open = false
	else:
		$AnimationPlayer.play("doors_open")
		open = true
