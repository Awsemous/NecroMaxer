extends CharacterBody2D

@onready var anim = $CollisionShape2D/AnimatedSprite2D

const SPEED = 300.0
var is_moving:bool = false
var dir:String = "none"

func _ready():
	pass
	

func _physics_process(delta):
	pass
	
	
	
	if Input.is_action_pressed("move_left"):
		velocity = Vector2.LEFT * SPEED
		is_moving = true
		dir = "left"
	elif Input.is_action_pressed("move_right"):
		velocity = Vector2.RIGHT * SPEED
		is_moving = true
		dir = "right"
	elif Input.is_action_pressed("move_up"):
		velocity = Vector2.UP * SPEED
		is_moving = true
		dir = "up"
	elif Input.is_action_pressed("move_down"):
		velocity = Vector2.DOWN * SPEED
		is_moving = true
		dir = "down"
	else:
		velocity = Vector2.ZERO
		is_moving = false
		
	# this allows the player to move according to the veclocity
	move_and_slide()
	
	
	#run animations
	if is_moving == true:
		if dir == "left":
			anim.play("walking_left")
			
		elif dir == "right":
			anim.play("walking_right")
			
		elif dir == "up":
			anim.play("walking_up")
			
		elif dir == "down":
			anim.play("walking_down")
			
	#idle animation
	elif is_moving == false:
		anim.play("idle")
	
	 
		
	
		
