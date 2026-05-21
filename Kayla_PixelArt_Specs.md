# Kayla - Pixel Art Specs

**Game:** Roller Skate Princess Chase (Geometry Dash inspired runner)
**Theme:** Afternoon city park chase, bright & energetic
**Style:** Clean pixel art, vibrant colors, 32x32 or 48x48 sprites

## Color Palette

**Hero - Princess Kayla**
- Tiara/Gold: `#f1c40f`
- Hair: `#8e44ad` (purple)
- Skin: `#ffeaa7`
- Dress/Skirt: `#ff69b4` (hot pink)
- Top: `#e74c3c` (red)
- Roller Skate Wheels: `#3498db` (blue)

**Villain**
- Cloak: `#2c3e50`
- Skin: `#95a5a6`
- Hat: `#1a1a1a`
- Evil Eyes: `#e74c3c`

**Environment**
- Sunset Sky: `#f39c12` → `#87CEEB`
- Ground: `#2d3436`
- Obstacle Box: `#e67e22`
- Ramp: `#27ae60`
- Button: `#f1c40f`

## Sprite Breakdown

### Evy (Princess)
- **Idle/Skate pose**: Body leaning forward, one leg extended, arms out for balance
- **Jump pose**: Both skates together, arms up, hair flowing
- **Crown**: Small golden tiara with 3 points
- **Hair flow**: Long purple hair flowing behind while skating

### Villain
- **Running pose**: Hunched, cloak flapping, red glowing eyes
- **Roller skates**: Same style as Evy but dark gray/black

### Obstacles
- **Box**: Wooden crate style with metal bands
- **Ramp**: Green ramp with arrow markings
- **Button**: Big yellow floor button that lights up when hit (gives speed boost)

### Background Elements
- Sun (afternoon)
- Simple clouds
- Park trees or city buildings scrolling slowly
- Roller skate path lines on the ground

## Animation Frames Needed

1. Evy skating (4-frame loop)
2. Evy jumping (2-3 frames)
3. Villain running (4-frame loop)
4. Button press animation (press + glow)

## Next Steps

- Use LibreSprite (free) to draw these
- Or Piskel web tool for quick start
- Export as PNG sprite sheets for Godot

**Ready for Godot 4 implementation!** 
Use CharacterBody2D + AnimationPlayer for smooth skating physics.