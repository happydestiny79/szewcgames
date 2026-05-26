extends Node2D

@onready var tilemap = $TileMap
@onready var nav_region = $NavigationRegion2D
@onready var player = $Player
@onready var camera = Camera2D.new()
@onready var map_loader = preload("res://map_loader.gd").new()
@onready var road_visualizer = preload("res://road_visualizer.gd").new()
@onready var hud = preload("res://hud.tscn").instantiate()

var score := 0
var total_items := 0

func _ready():
	print("Scavenger Hunt prototype initialized")
	add_to_group("game")
	player.add_to_group("player")
	
	setup_navigation()
	setup_camera()
	add_child(hud)
	
	map_loader.map_loaded.connect(_on_map_loaded)
	add_child(map_loader)
	map_loader.spawn_from_data(self)
	
	# Visualize roads after map data is loaded
	call_deferred("add_road_visualization")
	call_deferred("center_player_on_map")


func setup_navigation():
	print("Navigation region ready")


func setup_camera():
	camera.enabled = true
	camera.zoom = Vector2(0.55, 0.55)
	player.add_child(camera)


func add_road_visualization():
	add_child(road_visualizer)
	road_visualizer.visualize_roads(self)
	print("Roads visualized from OSM data")


func center_player_on_map():
	var spawn_pos = map_loader.get_recommended_spawn_position()
	player.position = spawn_pos
	print("Player positioned at map center: ", spawn_pos)


func _on_map_loaded(buildings: int, roads: int, pois: int):
	total_items = pois
	hud.update_score(score, total_items)
	print("Real map data integrated! %d scavenger items spawned." % total_items)


func add_score(points: int):
	score += points
	hud.update_score(score, total_items)
	print("Score: %d / %d" % [score, total_items])
	
	if score >= total_items and total_items > 0:
		print("🎉 All items collected! Scavenger hunt complete.")