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
		currentTimer = currentTimer - 1
		print(currentTimer)
	print("Game Over")
	# if currentscore > highscore, then update highscore ?
	# Store the score in an array.
	# go to the endscene.
	if GlobalVariables.previousScores.size() < 5:
		GlobalVariables.previousScores.push_front(GlobalVariables.scoringInformation["currentScore"])
	else: 
		GlobalVariables.previousScores.remove(4)
		# This removes the fourth element of the high scores (0,1,2,3,4) <-
		# a bug with this is that you need a new run per run to reset for newest score
	print(GlobalVariables.previousScores)
	get_tree().change_scene("res://EndScene.tscn")
	# if size array > 5 delete the last index
	# if currentScore > highscore then highScore = currentScore

func _process(delta):
	$HUD/CurrentScore.text = str(GlobalVariables.scoringInformation["currentScore"])
# Process runs every frame refresh, which could be 30 fps for some computers. (21/03/22)

# Called every frame. 'delta' is the elapsed time since the previous frame.
# func _process(delta):
