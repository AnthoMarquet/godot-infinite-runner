extends StaticBody3D

const speed = 20.0

func _physics_process(delta):
	position.z += speed * delta
	
#func _ready():
	##pass
	#_addGround()
	#
#func _addGround():
	#var ground = load("res://ground.tscn").instantiate()
	#ground.position.z = -20
	#add_child(ground)
