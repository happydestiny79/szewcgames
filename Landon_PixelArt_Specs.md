# Samus Street Fighter - Pixel Art Specs & Color Palettes

## Samus the Robot (Player Character)
**Style:** 32x48 pixel sprite (or 64x96 for higher res), NES/Game Boy inspired but with modern highlights. 4-5 animation frames per action.

### Color Palette - Samus
- Primary Black Body: #121212
- Leg Armor (Gray): #8A8A9A
- Jetpack Metal: #555566
- Jetpack Flame: #FF6600 / #FFAA00 (animated)
- Sword Blade: #C8C8E0
- Sword Handle: #444455
- Laser Blaster Head: #2A2A2A + glowing red core #FF3333
- Crayon (when extended): #FF5555 (bright red body) with white tip #FFFFFF
- Accent Lights: #00FFFF (cyan)

### Visual Breakdown
- **Legs**: Long and segmented (gray metal). Built-in jetpack on calves with orange flame particles when active.
- **Body**: Compact black torso with subtle panel lines.
- **Right Arm**: Sword arm - long blade that can slash (add motion lines in animation).
- **Left Arm**: Retractable crayon slot. Crayon pops out when "D" is pressed.
- **Head**: Laser blaster dome. Red glowing eye/lens that brightens when firing.
- **Idle animation**: Slight bob + occasional jetpack puff.
- **Attack animations**: Sword swing arc, laser charge-up glow.

---

## Dr. Swzec (Enemy / Rogue Scientist)
**Style:** 28x52 pixel sprite, taller than Samus. Exaggerated proportions for "crazy villain" feel.

### Color Palette - Dr. Swzec
- Shirt Red: #C41E3A
- Shirt White Stripe: #F5F5F5
- Shirt Blue Section: #1E3A8A
- Jeans: #2F3A5F
- Skin (Big Forehead): #FFDBAC
- Crazy Looped Hair: #3D2B1F (dark brown with lighter highlights)
- Shoes: #1A1A1A

### Visual Breakdown
- **Hair**: Wild looping/curly masses on top and sides (multiple overlapping circles/ellipses).
- **Forehead**: Very tall and prominent — make the head shape elongated vertically.
- **Torso**: Red/white/blue patriotic but messy shirt (tucked out, wrinkles).
- **Legs**: Blue jeans, slightly baggy.
- **Expression**: Wide crazy eyes, big grin or manic look.
- **Animation**: Bobbing walk, occasional hand gesture, flailing when hit.

---

## Environment - Night City Road
- Background skyscrapers with lit windows (use the cityLights logic from p5.js prototype).
- Color palette: Deep navy #0A0A23, window yellows #FFEE88 and #FFCC55.
- Road: Dark asphalt with broken yellow center lines.
- Occasional neon signs for extra atmosphere.

---

## Summoned Objects (from Crayon Drawings)
Players can draw simple shapes — the game interprets them as:
- Star / Sparkle helper (yellow)
- Floating shield
- Small drone
- Energy bolt

Keep the summoned sprites bright and simple so they pop against the dark city.

---

## Animation Priorities (Godot or p5.js)
1. Samus jetpack hover / thrust
2. Sword slash (3-frame swing)
3. Laser charge + fire
4. Crayon extend / retract + drawing line effect
5. Enemy hit reaction + death
6. Depth scaling (objects get bigger when closer)

---

**Next steps for art:**
- Use LibreSprite (or Piskel online) with the exact palettes above.
- Export as .png spritesheets or individual frames.
- Drop into `assets/sprites/` folder in the Godot project.

Let me know when you want me to install LibreSprite or help set up the Godot scene with these sprites!