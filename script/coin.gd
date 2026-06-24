extends Area2D

@onready var game_manager: Node = %GameManager
@onready var animation_player: AnimationPlayer = $AnimationPlayer



func _on_body_entered(body: Node2D) -> void:
	game_manager.add_point()
	print(" i have been touched by player") # Replace with function body.
	animation_player.play("pickup_coin")
	#queue_free()
	#print("run pickup")
	
