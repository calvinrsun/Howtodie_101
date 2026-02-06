extends Node2D
const SPEED = 55

var direction = 1
@onready var right_wall_ray: RayCast2D = $RightWallRay
@onready var left_wall_ray: RayCast2D = $LeftWallRay
@onready var right_floor_ray: RayCast2D = $RightFloorRay
@onready var left_floor_ray: RayCast2D = $LeftFloorRay


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if right_wall_ray.is_colliding() or !right_floor_ray.is_colliding():
		direction = -1
	if left_wall_ray.is_colliding() or !left_floor_ray.is_colliding():
		direction = 1
	position.x += SPEED * direction * delta
	
		
