# EnemigoDummy.gd
extends Node2D

## Variables
var hitpoints:float = 10.0

## Funciones
func _process(delta: float) -> void:
	$Canion.set_esta_disparando(true)

## Funciones Custom
func recibir_danio(danio: float) -> void:
	hitpoints -= danio
	if hitpoints <= 0.0:
		queue_free()

## Señales internas
func _on_Area2D_body_entered(body: Node) -> void:
	if body is Player:
		body.destruir()
