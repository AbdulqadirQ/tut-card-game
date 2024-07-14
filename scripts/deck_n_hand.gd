extends Node2D

@onready var card_scene: PackedScene = preload("res://scenes/card.tscn")
@onready var spawn_point = $CanvasLayer/Spawn


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	var card: Card = card_scene.instantiate()
	spawn_point.add_child(card)	
	card.set_values(3, "cool card", "cool description")
	card.visible = true

func _on_button_2_pressed():
	var card2: Card = card_scene.instantiate()
	spawn_point.add_child(card2)	
	card2.set_values(5, "card #2", "description #2 but longer")
	card2.visible = true
