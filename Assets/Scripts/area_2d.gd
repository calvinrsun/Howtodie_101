extends Area2D

@onready var hud: CanvasLayer = $"../../HUD"






func _on_body_entered(body):
	hud.add_coin()
	queue_free()
	
