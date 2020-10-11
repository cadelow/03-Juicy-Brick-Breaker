extends Node

var HUD = null
var Camera1 = null
var Camera2 = null
var WE = null

func _process(_delta):
	if HUD == null:
		HUD = get_node_or_null("/root/Game/HUD")
		Camera1 = get_node_or_null("/root/Game/Camera")
		Camera2 = get_node_or_null("/root/Game/HUD/Camera")
		WE = get_node_or_null("/root/Game/WorldEnvironment")
	if HUD != null and Input.is_action_just_pressed("menu"):
		if HUD.visible:
			HUD.hide()
			Camera2.current = false
			Camera1.current = true
			WE.show()
		else:
			HUD.show()
			Camera1.current = false
			Camera2.current = true
			WE.hide()
