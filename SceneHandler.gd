extends Node

func _ready():
	get_node("MainMenu/MC/VB/NewGame").connect("pressed",self,"on_new_game_pressed")
	get_node("MainMenu/MC/VB/Quit").connect("pressed", self, "on_quit_pressed")


func on_new_game_pressed():
	get_node("MainMenu").queue_free()
	var game_scene = load("res://Scenes/GameScene.tscn").instance()
	add_child(game_scene)
	
	
func on_quit_pressed():
	get_tree().quit()
