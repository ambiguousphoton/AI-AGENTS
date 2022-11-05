extends KinematicBody2D

onready var l_o_s = $"line of sight"

var box
# Called when the node enters the scene tree for the first time.

func _ready():
	pass 


func _physics_process(delta):
	for i in l_o_s.get_children():
		if i.is_colliding() :
			box = i.get_collider()
			if box.pickable == true:
				print("jai hind")
#	print(box)
