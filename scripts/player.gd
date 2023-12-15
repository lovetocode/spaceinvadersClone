extends Area2D

@export var speed = 20
var direction = Vector2.ZERO

@onready var collision_shape_2d = $CollisionShape2D

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	var input = Input.get_axis("move_left", "movie_right")
	
	if input > 0:
		direction = Vector2.RIGHT
	elif input < 0:
		direction = Vector2.LEFT
	else:
		direction = Vector2.ZERO
