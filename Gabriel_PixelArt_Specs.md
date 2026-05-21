# Gabriel's Book Castle - Pixel Art Specs

## Game Title
**Gabriel and the Book Castle: Save the 3 Gold Books**

## Core Palette (Book Theme)
- **Background / Castle Walls**: #28190A (dark wood/bookshelf brown)
- **Book Spines**: #4B2E14, #8A5F2E, #C49A5F
- **Gold Books (collectibles)**: #FFD700 + glow #FFEB99
- **Player (Gabriel)**: 
  - Jacket: #1E3C8C (deep blue)
  - Skin: #FFDDB4
  - Book Backpack: #C8B450 + gold trim
- **Evil Gabe**: Dark red/black #501414, glowing green eyes #00C800
- **Robot Arms** (on Evil Gabe's back): #282828 metallic
- **Monsters**: #64B450 (slimy green)
- **Book Beasts**: #966432 (leather brown)

## Sprite Breakdown

### Gabriel (Hero)
- 32x48 px character
- Features book-themed backpack that glows when using powers
- Animations needed:
  - Idle (breathing with book pages fluttering)
  - Walk (4 directions or 2 for side view)
  - Sword swing (Book Sword attack)
  - Shooting pose (Book Blaster)

### Evil Gabe (Boss)
- 40x60 px
- Signature feature: **Two extra robot arms** coming out of his back
- Red/black evil wizard robe
- Glowing green eyes
- Animation: Arms moving independently when attacking

### Enemies
1. **Book Monsters** - Slimy green book creatures with teeth
2. **Book Beasts** - Animated leather-bound books that bite

### Environment
- Walls made of stacked books
- Floating glowing pages as particles
- Golden podiums for the 3 Gold Books

## Controls (as described)
- ↑ ↓ ← → : Move
- Z / Hit : Book Sword melee
- X / Shot : Book Blaster (shoots golden page projectiles)
- Goal: Collect all 3 Gold Books while surviving waves of monsters

## Power of Books Theme
- Book Blaster shoots flaming pages
- Book Sword leaves glowing trails
- When collecting a Gold Book: big particle burst + temporary power boost

## Next Steps
- Draw in LibreSprite (free)
- Export as PNG sprite sheets
- Import into Godot or expand this p5.js prototype

---
*Created for Gabriel following the Zimmy student game workflow*