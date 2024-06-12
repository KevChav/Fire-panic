extends CharacterBody2D

var leftBound = 24
var current_pos = 24
var rightBound = 96
var stepLock = 36

func _ready():
	position.x = current_pos

func _input(event):
	if event.is_action_pressed("left"):
		move_left()
	if event.is_action_pressed("right"):
		move_right()
		
func move_left():
	if current_pos > leftBound:
		current_pos -= stepLock
		position.x = current_pos
		
func move_right():
	if current_pos < rightBound:
		current_pos += stepLock
		position.x = current_pos
