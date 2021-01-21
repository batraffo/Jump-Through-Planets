extends StaticBody2D

export (Color) var atmposphere = Color(.37, .62, .9, .15)
export (int) var gravity

onready var gravityCenter = get_node("GravityCenter")
onready var gravityEffectField = gravity/4


func _ready():
	update()

func _draw():
	print(gravityEffectField)
	draw_circle(gravityCenter.get_position(),gravityEffectField, atmposphere)

func _is_in_gravity_field(pos):
	return gravityCenter.get_global_postion().distance_to(pos) <= gravityEffectField
