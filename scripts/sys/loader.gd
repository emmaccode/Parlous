extends Control

var next_level = null
var root = null

func load_scene(path = "res://scenes/sys/menu.tscn"):
	$AnimationPlayer.play("fade_out")
	var rt = get_tree().get_root()
	rt.add_child(self)
	next_level = path

func test_load():
	load_scene()


func on_fade_finish(anim_name):
	if anim_name == "fade_out":
		get_tree().change_scene_to_file(next_level)
		var current_scene = get_tree().get_current_scene()
#		root.remove_child(current_scene)
#		current_scene.call_deferred("free")
#		next_level.add_child(self)
#		$AnimationPlayer.play("fade_in")
