class_name Card extends Node2D

@export var card_name: String = "Card Name"
@export var card_description: String = "Card Description"
@export var card_cost: int = 1
@export var card_image = Node2D

@onready var cost_label: Label = $CostDisplay/CostLabel
@onready var name_label: Label = $CardName/NameLabel
@onready var description: Label = $CardDescription

func _ready():
	set_values(card_cost, card_name, card_description)
	visible = false

func set_values(_cost: int, _name: String, _description: String):
	card_name = _name
	card_description = _description
	card_cost = _cost
	
	cost_label.set_text(str(card_cost))
	name_label.set_text(card_name)
	description.set_text(card_description)

func _process(delta):
	pass
