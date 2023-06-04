extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_settings_b_pressed():
	pass


func _on_multiplayer_b_pressed():
	loader.change_scene("res://scenes/sys/serverbrowser.tscn")
