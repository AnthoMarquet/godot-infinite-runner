extends Node3D
class_name Corridor

var number = 3
var offset = 100

func _ready():
	_initGround()
	
func _initGround():
	for n in number:
		var ground: Ground = preload("res://scenes/Ground.tscn").instantiate()
		ground.position.z = -(n*offset)
		ground.position.y = 0
		ground.position.x = 0
		add_child(ground)
		
func _addGroundAtTheEndOfCorridor(position):
		var ground: Ground = preload("res://scenes/Ground.tscn").instantiate()
		ground.position.z = position-(number*offset)
		ground.position.y = 0
		ground.position.x = 0
		add_child(ground)

func _on_area_3d_body_entered(body):
	if body is Ground:
		_addGroundAtTheEndOfCorridor(body.position.z)
		body.queue_free()
