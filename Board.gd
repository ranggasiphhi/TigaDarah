extends StaticBody2D

const MAX_SCREEN = 360
const DEFAULT_SIZE = 36

func adjust_board(box):
	scale = Vector2(int(MAX_SCREEN / box / DEFAULT_SIZE), int(MAX_SCREEN / box / DEFAULT_SIZE))
	position = Vector2(position.x * scale.x, position.y * scale.y)
	return scale
