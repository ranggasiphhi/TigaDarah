extends Node2D

export (PackedScene) var Board
export var board_size = 3

const BOARD_INIT_X = 0
const BOARD_INIT_Y = 180
const BOARD_SIZE = 36
var size : Vector2
var board

func _ready():
	generate_board()
	
func generate_board():
	for j in range(board_size):
		for i in range(board_size):
			board = Board.instance()
			size = board.adjust_board(board_size)
			board.position = board_pos_formula(board.position.x, size.x, i, board.position.y, size.y, j)
			add_child(board)

func board_pos_formula(posx, sizex, i, posy, sizey, j):
		return 	Vector2(BOARD_INIT_X + posx + i * sizex * BOARD_SIZE,BOARD_INIT_Y + posy + j * sizey * BOARD_SIZE)		
			
