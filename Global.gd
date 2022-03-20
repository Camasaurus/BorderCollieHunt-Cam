extends Node

var bulletInstanceCount = 0 # Keeps track of how many bullet instances are current
var enemyBulletInstanceCount = 0

var previousScores = []

var scoringInformation = {
	"currentScore": 0,
	"currentPlayer": "User",
	"highScore": 0,
	"highScorePlayersName" : "Winner"
}

# This is updated Code

# According to Ryan, and the status of where our assignments are at in this timeframe
# of approximately 10 days, we are not using a 'file' system, but a data structure
# to mimic files' "high scores". (15/03/22)
