extends RigidBody3D
class_name Ground

const speed = 20.0

func _physics_process(delta):
	position.z += speed * delta
