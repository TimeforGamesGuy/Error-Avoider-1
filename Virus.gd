extends StaticBody2D

var entered = false

var Playerbody
func _on_area_2d_body_enterd(body):
	print("entered")
	Playerbody = body
	entered = true

func _process(delta: float) -> void:
	if entered:
		var angle_to_player = global_position.direction_to(Playerbody.position).angle()
		rotation = move_toward(rotation, angle_to_player, delta)
