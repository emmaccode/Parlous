extends CanvasLayer

func change_scene(name):
	$anims.play("fade_out")
	await $anims.animation_finished
	get_tree().change_scene_to_file(name)
	$anims.play_backwards("fade_out")
