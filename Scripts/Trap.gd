extends RigidBody2D

@export var speed = 300
var screen_size

func _ready():
	screen_size = get_viewport_rect().size

func _process(delta):
	# Moving the trap upwards
	position.y -= speed * delta
	
	# Deleting the trap once it's out of the screen
	if position.y > screen_size.y:
		queue_free()
