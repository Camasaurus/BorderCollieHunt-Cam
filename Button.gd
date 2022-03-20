extends Button

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_Button_pressed():
	GlobalVariables.scoringInformation["currentScore"] = 0
	get_tree().change_scene("res://MainGame/MainGame.tscn")

# For func _on_button_pressed:
#The reason why this didn't work last time was that the _on_button_pressed name
# needed to have the B in _on_button_pressed needed to be CAPITAL.
# Also the "res://MainGame/MainGame.tscn" was initially "res://MainGame.tscn"

# tl;dr: maingame file was misplaced and on_button_pressed function had typo.
