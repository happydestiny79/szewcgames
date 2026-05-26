#!/usr/bin/env python3
"""
OSM Importer for Scavenger Hunt prototype
Fetches real map data from OpenStreetMap (Overpass API) and exports Godot-friendly JSON.
"""

import argparse
import json
import urllib.request
import urllib.parse
from typing import Any

OVERPASS_URL = "https://overpass-api.de/api/interpreter"


def fetch_osm_data(query: str) -> dict[str, Any]:
    """Send query to Overpass API with proper headers."""
    data = urllib.parse.urlencode({"data": query}).encode("utf-8")
    headers = {
        "User-Agent": "HermesScavengerHunt/1.0 (educational prototype)",
        "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8",
    }
    req = urllib.request.Request(OVERPASS_URL, data=data, headers=headers, method="POST")
    with urllib.request.urlopen(req, timeout=45) as response:
        return json.loads(response.read().decode("utf-8"))


def build_bbox_query(bbox: tuple[float, float, float, float]) -> str:
    """Build compact Overpass query for a bounding box (south, west, north, east)."""
    s, w, n, e = bbox
    return (
        f"[out:json][timeout:25];"
        f"(way[\"building\"]({s},{w},{n},{e});"
        f"way[\"highway\"]({s},{w},{n},{e});"
        f"node[\"amenity\"]({s},{w},{n},{e});"
        f"node[\"shop\"]({s},{w},{n},{e}););"
        f"out body;>;out skel qt;"
    )


def process_to_godot(data: dict[str, Any]) -> dict[str, Any]:
    """Convert OSM elements into a simple Godot-friendly structure."""
    elements = data.get("elements", [])
    nodes = {el["id"]: el for el in elements if el["type"] == "node"}
    ways = [el for el in elements if el["type"] == "way"]

    godot_data = {
        "buildings": [],
        "roads": [],
        "pois": [],
        "bounds": data.get("bounds", {}),
    }

    for way in ways:
        tags = way.get("tags", {})
        if "building" in tags:
            coords = []
            for nid in way.get("nodes", []):
                if nid in nodes:
                    n = nodes[nid]
                    coords.append({"lat": n["lat"], "lon": n["lon"]})
            if coords:
                godot_data["buildings"].append({
                    "id": way["id"],
                    "tags": tags,
                    "coords": coords
                })
        elif "highway" in tags:
            coords = []
            for nid in way.get("nodes", []):
                if nid in nodes:
                    n = nodes[nid]
                    coords.append({"lat": n["lat"], "lon": n["lon"]})
            if coords:
                godot_data["roads"].append({
                    "id": way["id"],
                    "tags": tags,
                    "coords": coords
                })

    for el in elements:
        if el["type"] == "node":
            tags = el.get("tags", {})
            if "amenity" in tags or "shop" in tags:
                godot_data["pois"].append({
                    "id": el["id"],
                    "lat": el["lat"],
                    "lon": el["lon"],
                    "tags": tags
                })

    return godot_data


def main():
    parser = argparse.ArgumentParser(description="OSM data importer for Godot scavenger hunt")
    parser.add_argument("--bbox", nargs=4, type=float, metavar=("S", "W", "N", "E"),
                        help="Bounding box: south west north east")
    parser.add_argument("--output", type=str, default="map_data.json", help="Output JSON file")
    args = parser.parse_args()

    if not args.bbox:
        # Default to a small, reliable area around Times Square
        args.bbox = [40.757, -73.987, 40.761, -73.981]
        print("No bbox provided — using default Times Square area")

    query = build_bbox_query(tuple(args.bbox))

    print("Fetching data from OpenStreetMap...")
    raw = fetch_osm_data(query)
    print(f"Received {len(raw.get('elements', []))} elements")

    godot_ready = process_to_godot(raw)

    with open(args.output, "w") as f:
        json.dump(godot_ready, f, indent=2)

    print(f"Exported Godot-ready data to {args.output}")
    print(f"  Buildings: {len(godot_ready['buildings'])}")
    print(f"  Roads: {len(godot_ready['roads'])}")
    print(f"  POIs: {len(godot_ready['pois'])}")


if __name__ == "__main__":
    main()
