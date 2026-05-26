extends CanvasLayer

@onready var score_label = $ScoreLabel

func update_score(current: int, total: int):
	if score_label:
		score_label.text = "Items: %d / %d" % [current, total]
