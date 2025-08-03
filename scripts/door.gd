extends Area2D

class_name Door 

@export var destination: String
@export var destination_door: String
@export var spawn_destination_door = "up"


@onready var spawn = $spawn


func _on_body_entered(body: Node2D) -> void:
	if body is player:
		pass
