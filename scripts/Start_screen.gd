extends CanvasLayer

@onready var invader_texture = %InvaderTexture
@onready var invader_label = %InvaderLabel
@onready var invader_2_texture = %Invader2Texture
@onready var invader_2_label = %Invader2Label
@onready var invader_3_texture = %Invader3Texture
@onready var invader_3_label = %Invader3Label

@onready var timer = $Timer

var control_array = []

func _ready():
	control_array.append_array([invader_texture, invader_label, invader_2_texture, invader_2_label, invader_3_texture, invader_3_label])
	
	for control in control_array:
		(control as Control).modulate = Color.TRANSPARENT


func load_game():
	get_tree().change_scene_to_file("res://scenes/main.tscn")


func show_next_control():
	var control = control_array.pop_front() as Control
	if control != null:
		control.modulate = Color.WHITE
	else:
		timer.stop()
		timer.queue_free()
		
