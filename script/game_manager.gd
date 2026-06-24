extends Node

var score = 0
@onready var label_for_score: Label = $LabelForScore

func add_point():
	score+=1
	print(score)
	label_for_score.text = "Collected " + str(score) + " Coins"
