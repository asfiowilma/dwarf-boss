extends Node

var dwarf: Dwarf:
	set(next):
		var prev = dwarf
		dwarf = next
		selected_dwarf_changed.emit(next, prev)

signal selected_dwarf_changed(next: Dwarf, prev: Dwarf)
