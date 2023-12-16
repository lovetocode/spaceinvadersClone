extends Area2D

@export var speed = 200
var direction = Vector2.ZERO

@onready var collision_shape_2d = $CollisionShape2D

var bounding_size_x
var start_bound
var end_bound

func _ready():
	bounding_size_x = collision_shape_2d.shape.get_rect().size.x
	var rect = get_viewport().get_visible_rect()
	var camera = get_viewport().get_camera_2d()
	var camera_position = camera.position
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	var input = Input.get_axis("move_left", "movie_right")
	
	if input > 0:
		direction = Vector2.RIGHT
	elif input < 0:
		direction = Vector2.LEFT
	else:
		direction = Vector2.ZERO
		
	var delta_movement = delta * speed * direction.x
	
	position.x += delta_movement
