class_name Dwarf
extends CharacterBody2D

var speed = 400
var target_location = Vector2() 
var target_position = Vector2() # normalized target_location

func _ready():
	target_location = position

func _physics_process(_delta):
	if position.distance_to(target_location) > 16:
		target_position = (target_location - position).normalized()
		velocity = target_position * speed
		move_and_slide()

func move_to(location: Vector2): 
	target_location = location
