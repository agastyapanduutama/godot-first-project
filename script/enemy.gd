extends Node2D


var SPEED = 60
var direction = 1

@onready var move_left: RayCast2D = $"Move Left"
@onready var move_right: RayCast2D = $"Move Right"
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if(move_right.is_colliding()):
		direction = -1
		animated_sprite_2d.flip_h = true
	if(move_left.is_colliding()):
		direction = 1
		animated_sprite_2d.flip_h = false
	
	position.x += direction * SPEED * delta
