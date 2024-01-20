extends Node2D
class_name Hive

var bees_arr : Array[Bee] = []
@export var bee_tscn : PackedScene = null

func _ready():
	for i in range(0,15):
		spawn_bee()

func spawn_bee():
	var bee: Bee = bee_tscn.instantiate()
	bee.global_position.x = randf_range(100,900)
	bee.global_position.y = randf_range(100,500)
	bee.master = self
	add_child(bee)
