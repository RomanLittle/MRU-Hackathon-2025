extends CharacterBody2D

@export var speed = 400

func get_input():
	var input_direction = Input.get_vector("P1 Left", "P1 Right", "P1 Up", "P1 Down")
	velocity = input_direction * speed
	

func _physics_process(delta):
	get_input()
	move_and_slide()
