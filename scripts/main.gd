extends Node2D
@onready var time: Label = $canvas/hud/time/Label
@onready var collected: Label = $canvas/hud/collected/Label


var timer = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	timer += delta
	collected.text = "Bubbles : %d/20"%Manager.bubbles
	time.text = "Elapsed Time: %d Seconds"%timer
	
	if timer >= 60:
		get_tree().change_scene_to_file("res://scenes/lose.tscn")
	if Manager.bubbles >= 20:
		get_tree().change_scene_to_file("res://scenes/win.tscn")
	
	
