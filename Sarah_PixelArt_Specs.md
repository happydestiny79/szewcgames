# Sarah - Pixel Art Specs & Color Palettes

**Game:** Sarah.html (Ava the Witch Kidnapper)  
**Style:** 32x32 or 48x48 pixel sprites, earthy "old field in the past" Minecraft-meets-Roblox feel. Simple but readable at small sizes.

---

## Ava the Witch (Player Character)

### Color Palette - Ava
- Witch Hat: #2F1A3D (deep purple) + #1A0F24 (shadow)
- Hat Band: #C9A227 (gold)
- Robe / Cloak: #3D2A5C
- Skin: #F5D7B8
- Hair (under hat): #2C1F17
- Eyes (glowing magic): #66FFCC
- Hands / Staff: #8B5A2B (wood brown)
- Magic glow accents: #A1FF9E

### Visual Breakdown
- **Hat**: Classic pointed witch hat with gold band. Slightly tilted.
- **Body**: Flowing dark purple robe with subtle folds.
- **Right Hand**: Can hold a small wooden staff or be open for throwing gestures.
- **Left Hand**: Magic-ready hand that glows when flinging.
- **Idle animation**: Gentle bob + occasional cloak sway.
- **Throw animation**: Arm winds back then snaps forward with motion lines + green magic particles.
- **Punch animation**: Quick forward jab with impact stars.

---

## Monsters (Enemies)

### Color Palette - Monsters
- Body: #4A3A2A (muddy brown / zombie-like)
- Skin / Highlights: #6B5A4A
- Eyes: #FF4444 (angry red)
- Accents: #2E3A2A (dark green patches)

### Visual Breakdown
- Blocky, chunky Minecraft-inspired proportions.
- Simple rectangular body with stubby arms and legs.
- Glowing red eyes that get brighter when chasing.
- When thrown/flung: stretch slightly + motion lines.
- Death: quick dissolve into brown/green particles.

---

## Buildings (Old Field Structures)

### Color Palette - Buildings
- Wood / Walls: #8B6F4C
- Stone foundation: #5C5248
- Roof thatch / shingles: #5C4033
- Windows: #3A2F1F (dark) with #FFE070 (warm light inside)
- Doors: #3D2A1F

### Visual Breakdown
- 2–3 simple old wooden buildings with thatched roofs.
- One or two with small glowing windows.
- Can be used as obstacles to bounce thrown monsters off.

---

## Coins

### Color Palette - Coins
- Main gold: #FFD700
- Highlight: #FFF59D
- Shadow / edge: #B8860B

Simple spinning or bouncing animation when on the ground.

---

## Environment - Old Pasture Field

- Grass base: #3E6B3E → #2F5A2F gradient
- Dirt paths: #8B7355
- Background hills / trees in muted greens and browns for depth.
- Subtle fog / atmosphere to give "old times" feeling.

---

## Animation Priorities

1. Ava throw / fling wind-up + release + magic particles
2. Monster chase + hit reaction + thrown arc
3. Coin collection pop + sparkle
4. Building collision bounce effect
5. 2-minute fight timer visual (maybe red flash or monster wave indicator)
6. Simple death / win screens

---

**Next steps for art:**
- Use LibreSprite (or Piskel) with the exact palettes above.
- Export as small PNG spritesheets.
- Drop into assets folder when we move to Godot.

Would you like me to:
- Install LibreSprite now?
- Create the Godot 4 project skeleton for Sarah?
- Add this game card to the main index.html hub?
- Expand the p5.js prototype with more features first?