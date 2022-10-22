tool
extends EditorPlugin

## set here the path to the uuid script
const UUID = preload("res://addons/uuid/uuid.gd")

func _enter_tree() -> void:
	add_tool_menu_item("Generate a new UUID", self, "_on_GenerateUUID")

func _on_GenerateUUID(ud) -> void:
	var uuid = UUID.v4()
	OS.set_clipboard(uuid)
	OS.alert("UUID copied to clipboard! \r\n%s"%[uuid])

func _exit_tree() -> void:
	remove_tool_menu_item("Generate a new UUID")
