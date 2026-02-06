extends Area2D
@onready var timer: Timer = $Timer


func _on_body_entered(body):
	get_tree().reload_current_scene()
	
