extends Node
class_name RoadVisualizer

@export var json_path: String = "res://times_square.json"
@export var scale_factor: float = 12000.0
@export var road_color: Color = Color(0.6, 0.6, 0.7, 0.7)
@export var road_width: float = 4.0

var center_lat := 40.759
var center_lon := -73.984

func visualize_roads(parent: Node2D) -> void:
	var file = FileAccess.open(json_path, FileAccess.READ)
	if not file:
		return
	
	var data = JSON.parse_string(file.get_as_text())
	file.close()
	if data == null or not data.has("roads"):
		return
	
	for road in data["roads"]:
		if not road.has("coords") or road["coords"].size() < 2:
			continue
		
		var line = Line2D.new()
		line.width = road_width
		line.default_color = road_color
		line.antialiased = true
		
		for coord in road["coords"]:
			var world_pos = latlon_to_world(coord["lat"], coord["lon"])
			line.add_point(world_pos)
		
		parent.add_child(line)


func latlon_to_world(lat: float, lon: float) -> Vector2:
	return Vector2(
		(lon - center_lon) * scale_factor,
		(center_lat - lat) * scale_factor
	)
