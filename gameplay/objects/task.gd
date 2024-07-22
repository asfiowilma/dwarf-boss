class_name Task
extends Pickupable

func _ready():
	input_event.connect(_on_move_to_task)
	body_entered.connect(_on_pick_up_task)

func pick_up(character, holding_position):
	self.reparent(character)
	position = holding_position
	
func put_down():
	pass

func _on_move_to_task(_viewport, event, _shape_idx):
	if event.is_action_pressed('left_click'):
		CharacterManager.dwarf.move_to(Vector2(position.x, position.y - 32))

func _on_pick_up_task(body):
	if body == CharacterManager.dwarf and body is DwarfBoss:
		var boss = CharacterManager.dwarf
		if boss.held_item == null: 
			boss.held_item = self
			call_deferred('pick_up', body, Vector2(-33, 8))
		
