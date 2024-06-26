extends Area2D

@onready var timer = $Timer
@onready var player = %Player

func _on_body_entered(body):
	timer.start()
	player.gravity = 1000
	player.collision_shape_2d.queue_free()

func _on_timer_timeout():
	get_tree().reload_current_scene()
