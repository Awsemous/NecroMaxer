extends Control

func _on_home_pressed():
	$Click.play()
	get_tree().change_scene_to_file("res://Scene/menu.tscn")
