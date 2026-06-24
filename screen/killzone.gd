extends Area2D

@onready var timer = $Timer

func _on_body_entered(body: Node2D) -> void:
	print("player died")
	body.get_node('CollisionShape2D').queue_free()
	Engine.time_scale = 0.5
	timer.start()


func _on_timer_timeout() -> void:
	Engine.time_scale = 0.5
	get_tree().reload_current_scene()
