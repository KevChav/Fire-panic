extends CharacterBody2D

var Mypositions = [10,50,100]
var current_pos = 0

func _ready():
	position.x = Mypositions[current_pos]

func _input(event):
	if event.is_action_pressed("left"):
		move_left()
	if event.is_action_pressed("right"):
		move_right()
		
func move_left():
	if current_pos > 0:
		current_pos -= 1
		position.x = Mypositions[current_pos]
		
func move_right():
	if current_pos < [Mypositions].size() - 1:
		current_pos += 1
		position.x = Mypositions[current_pos]
