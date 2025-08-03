extends Control

func _ready() -> void:
	pass  # Fungsi ini kosong sekarang, jadi kita kasih pass

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("esc"):
		if get_tree().paused:
			resume()
		else:
			pause()

func resume():
	get_tree().paused = false
	$AnimationPlayer.play_backwards("blur")

func pause():
	get_tree().paused = true
	$AnimationPlayer.play("blur")

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/game.tscn")

func _on_option_pressed() -> void:
	resume()

func _on_quit_pressed() -> void:
	get_tree().quit()
