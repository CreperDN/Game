extends KinematicBody2D

var player = null
var motion = Vector2.ZERO
var speed = 4

# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	motion = Vector2.ZERO
	
	if player:
		motion = position.direction_to(player.position) * speed
		
	motion = move_and_collide(motion)
	

func _on_Area2D_body_entered(body):
	if body.name == "body":
		Global.death = true
	pass # Replace with function body.


func _on_Area2D2_body_entered(body):
	if body.name == "body":
		player = body
	pass # Replace with function body.
