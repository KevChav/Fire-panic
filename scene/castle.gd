extends Node2D

@onready var p0 = $p0.position
@onready var p1 = $p1.position
@onready var p2 = $p2.position
@onready var object = $TEST

var time = 0
var duration = 3

func bezier(t):
	var q0 = p0.lerp(p1,min(t, 1))
	var q1 = p1.lerp(p2,min(t, 1))
	var r = q0.lerp(q1,min(t, 1))
	return r
	
func _physics_process(delta):
	object.position = bezier(time)
	time += delta/duration
	if time >= 1:
		time = 0
