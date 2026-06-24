extends Area2D


func _on_body_entered(body: Node2D) -> void:
	print(" i have been touched by player") # Replace with function body.
	queue_free()
