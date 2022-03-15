extends Control


export(int) var countdownMax
var currentTimer
# Called when the node enters the scene tree for the first time.
func _ready():
	currentTimer = countdownMax
	$HUD/Countdown.text = str(currentTimer)
	
	set_process(true)
	while currentTimer > 0:
		yield(get_tree().create_timer(1.0), "timeout")
		$HUD/Countdown.text = str(currentTimer)
		$HUD/CurrentScore.text = str(GlobalVariables.scoringInformation["currentScore"])
		currentTimer = currentTimer - 1
		print(currentTimer)
	print("Game Over")
	# if currentscore > highscore, then update highscore ?
	
	GlobalVariables.previousScores.push_front( GlobalVariables.scoringInformation["currentScore"])
	print(GlobalVariables.previousScores)
	get_tree().change_scene("res://EndScene.tscn")
	# slight bug, when restarting game (make a button for it btw) is that the code doesnt go down afterwards woops.
	# another slight bug, the end of game shows ALL high scores, instead of just one to start with.

# warning-ignore:unused_argument
func _process(delta):
	pass
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



