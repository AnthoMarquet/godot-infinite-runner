extends Node3D


var number = 3
var offset = -100

func _ready():
	#pass
	for n in number:
		_addGround(n)
	
func _addGround(n):
	var ground = preload("res://ground.tscn").instantiate()
	ground.position.z = n*offset
	ground.position.y = 0
	ground.position.x = 0
	$Floor.add_child(ground)
