#Player.gd
class_name Player
extends RigidBody2D

## Atributos Export
export var potencia_motor:int = 400
export var potencia_rotacion:int = 1200

## Atributos
var empuje:Vector2 = Vector2.ZERO
var dir_rotacion = 0

## Metodos
func _integrate_forces(state: Physics2DDirectBodyState) -> void:
	pass
