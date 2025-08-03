extends Area2D

@onready var timer: Timer = $Timer
@export_file var NEXT_LEVEL: String = ""

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and NEXT_LEVEL != "":
		timer.start()  
		set_deferred("monitoring", false) 
		
func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file(NEXT_LEVEL)
