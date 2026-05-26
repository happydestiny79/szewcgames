extends Node
class_name MapLoader

@export var json_path: String = "res://times_square.json"
@export var scale_factor: float = 12000.0

signal map_loaded(buildings: int, roads: int, pois: int)

var center_lat := 40.759
var center_lon := -73.984

func load_map_data() -> Dictionary:
	var file = FileAccess.open(json_path, FileAccess.READ)
	if not file:
		push_error("Could not open map data: " + json_path)
		return {}
	var content = file.get_as_text()
	file.close()
	var data = JSON.parse_string(content)
	if data == null:
		push_error("Invalid JSON in map data")
		return {}
	return data


func spawn_from_data(parent: Node2D) -> void:
	var data = load_map_data()
	if data.is_empty():
		return

	var poi_count := 0

	if data.has("pois"):
		for poi in data["pois"]:
			var item = preload("res://scavenger_item.gd").new()
			item.item_name = poi.get("tags", {}).get("name", "Unknown POI")
			item.position = latlon_to_world(poi["lat"], poi["lon"])
			item.name = "Item_" + str(poi.get("id", poi_count))
			parent.add_child(item)
			poi_count += 1

	var b = data.get("buildings", []).size()
	var r = data.get("roads", []).size()
	var p = data.get("pois", []).size()
	print("Map loaded: %d buildings, %d roads, %d POIs (spawned %d items)" % [b, r, p, poi_count])
	map_loaded.emit(b, r, p)


func latlon_to_world(lat: float, lon: float) -> Vector2:
	return Vector2(
		(lon - center_lon) * scale_factor,
		(center_lat - lat) * scale_factor
	)


func get_recommended_spawn_position() -> Vector2:
	# Return a good starting position near the center of the loaded map
	return latlon_to_world(center_lat, center_lon)
