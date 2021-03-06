extends MarginContainer

func _ready() -> void:
	default_state()

func _on_NewGame_pressed() -> void:
	show_only("PlayGame")

func _on_Settings_pressed() -> void:
	show_only("Settings")

func _on_Return() -> void:
	default_state()

func default_state() -> void:
	show_only("MainMenu")

func show_only(element_name: String) -> void:
	var element: Node = get_node(element_name)
	for child in get_children():
		child.visible = (child == element)

func _on_Quit_pressed():
	get_tree().quit()

func _on_Back_pressed():
	default_state()
