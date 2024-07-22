class_name DwarfBoss
extends Dwarf

var held_item: Pickupable 

func _ready():
	super._ready()
	CharacterManager.dwarf = self
