extends Node2D
class_name Hive

var bees_arr : Array[Bee] = []
@export var bee_tscn : PackedScene = null

func _ready():
	for i in range(0,15):
		spawn_bee()

func spawn_bee():
	var bee1: Bee = bee_tscn.instantiate() # This has no bug
	var bee2: Bee = preload("res://main/Bee.tscn").instantiate() # This should cause bug!
	bee2.global_position.x = randf_range(100,900)
	bee2.global_position.y = randf_range(100,500)
	bee2.master = self
	add_child(bee2)
