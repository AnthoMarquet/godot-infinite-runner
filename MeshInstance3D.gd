extends MeshInstance3D

func _ready():
	randomize()
	var new_material = StandardMaterial3D.new()
	new_material.albedo_color = Color(randf(),randf(),randf())
	self.set_surface_override_material(0, new_material)
	
