extends Control


# Called when the node enters the scene tree for the first time.



# Called every frame. 'delta' is the elapsed time since the previous frame.



func _on_start_pressed():
	$Click.play()
	get_tree().change_scene_to_file("res://Scene/world.tscn")
	
	
func _on_options_pressed():
	$Click.play()
	get_tree().change_scene_to_file("res://Scene/options.tscn")
	
func _on_quit_pressed():
	$Click.play()
	get_tree().quit()
	
