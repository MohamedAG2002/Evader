extends Area2D

var lanes_position = [64, 128, 192, 256]
var current_lane = 0

func _ready():
	pass


func _process(_delta):
	get_input()
	
	# Playing the animation when the timer is out
	$AnimatedSprite2D.play("Run")
	
	# Changing the player's position to the lanes in the lanes array
	position.x = lanes_position[current_lane]


func get_input():
	# Only allowing the player to move along the lanes
	if Input.is_action_just_pressed("move_left") && current_lane > 0:
		current_lane -= 1
	elif Input.is_action_just_pressed("move_right") && current_lane < lanes_position.size() - 1:
		current_lane += 1
