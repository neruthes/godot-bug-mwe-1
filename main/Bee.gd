extends CharacterBody2D
class_name Bee

var master : Hive = null


func _ready():
	pass


func _physics_process(delta):
	velocity = Vector2(250,0)
	move_and_slide()
