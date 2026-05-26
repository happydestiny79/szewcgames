extends Area2D
class_name ScavengerItem

@export var item_name: String = "Mystery Item"
@export var points: int = 10

signal collected(item: ScavengerItem)

func _ready():
	body_entered.connect(_on_body_entered)
	# Simple visual: yellow circle
	var shape = CollisionShape2D.new()
	var circle = CircleShape2D.new()
	circle.radius = 12
	shape.shape = circle
	add_child(shape)

	var sprite = ColorRect.new()
	sprite.size = Vector2(24, 24)
	sprite.color = Color(1, 0.85, 0.2)
	sprite.position = Vector2(-12, -12)
	add_child(sprite)

func _on_body_entered(body: Node):
	if body.is_in_group("player"):
		get_tree().call_group("game", "add_score", points)
		collected.emit(self)
		queue_free()
