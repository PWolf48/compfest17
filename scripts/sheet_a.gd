extends Node2D

@onready var interaction_area: InteractionArea = $InteractionArea
@onready var sprite = $Sprite2D
#@onready var speech_sound = preload("res://assets/sounds/paper_giver.wav")

const lines: Array[String] = [
	"Those who seek knowledge in this forbidden place...",
	"Only doom awaits."
]

func _ready():
	interaction_area.interact = Callable(self, "_on_interact")
	
func _on_interact():
	DialogManager.start_dialog(global_position, lines)
	await DialogManager.dialog_finished
