extends Node3D

@onready var budget_label : Label = $"../PlayerCamera/main_uis/Control/budged_text"

@export var budget_amount : int = 200

@onready var grid_map : GridMap = $"../buildings_layer"

@onready var message_box : VBoxContainer = $"../PlayerCamera/main_uis/Control/PanelContainer/ScrollContainer/VBoxContainer"

var occupied_cells: Array[Vector3i] = []

const UPGRADES := {
	0: [{"to": 42, "cost": 100}],
	1: [{"to": 43, "cost": 150}],
	4: [{"to": 44, "cost": 200}],
	5: [{"to": 45, "cost": 250}],
	9: [{"to": 46, "cost": 300}],
	11: [{"to": 47, "cost": 350}],
	12: [{"to": 48, "cost": 400}],
	13: [{"to": 49, "cost": 450}],
	14: [{"to": 50, "cost": 500}],
	15: [{"to": 51, "cost": 550}],
	16: [{"to": 52, "cost": 600}],
	20: [{"to": 53, "cost": 650}]
}

@export var marker_height: float = 3.0   # how far above the cell center the block floats
@export var marker_size: float = 0.8

var markers: Dictionary = {}   # Vector3i -> MeshInstance3D

#0->earthquake
#1->flood
#2->fire

var rng = RandomNumberGenerator.new()
func _ready() -> void:
	budget_label.text = "M " + str(budget_amount)
	var number = rng.randi_range(0, 2)
	
	match number:
		0:
			print("earthquake")
		1:
			print("flood")
		2:
			print("fire")
	pass


func _on_level_click_cell(cell : Vector3) -> void:
	#generate buildings according to the selection
	pass
	
func _process(delta: float) -> void:
	pass
