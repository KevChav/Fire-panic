extends Node2D
@onready var p0 = $jump1.position
@onready var p1 = $peak1.position
@onready var p2 = $jump2.position
@onready var sprite = $Sprite.position

var time = 0

func bezier(t):
	var q0 = p0.lerp(p1,t)
	var q1 = p1.lerp(p2,t)
	var r = q0.lerp(q1,t)
	return r
	
func _physics_process(delta):
	sprite.position = bezier(time)
	time += delta
	if time >= 1:
		time = 0
