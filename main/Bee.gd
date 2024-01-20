extends CharacterBody2D
class_name Bee

var master : Hive = null # Refer to Hive.gd, which preloads Bee.tscn, where Bee.gd is attached


func _ready():
	pass


func _physics_process(delta):
	velocity = Vector2(250,0)
	move_and_slide()
