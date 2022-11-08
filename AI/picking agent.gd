extends KinematicBody2D
var velocity = Vector2()
onready var l_o_s = $"line of sight"
var speed = 5
var stop = false

var box
# Called when the node enters the scene tree for the first time.

func _ready():
	pass 

func path_finder_to_box(box):
	
	var pos = box.position 
	velocity = (pos -position).normalized() * speed
	
	pass


func rotate_to_point_target(box):
	
	
	
	pass

func _physics_process(delta):
	if stop == false:
		for i in l_o_s.get_children():
			if i.is_colliding() :
				box = i.get_collider()
				if box.is_in_group("pickable"):
					path_finder_to_box(box)
					move_and_slide(velocity)
	#	print(box)



func _on_Area2D_body_entered(body):
	if body.is_in_group("pickable"):
		
		stop = true
		rotate_to_point_target(body)
	pass # Replace with function body.
