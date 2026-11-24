# ScootUI Revived

A Roblox UI library build based on Scoot UI (by samet), and adding new features to it.

## File

`ScootUI_Revived.lua` - the library source. It defines the `Library` table and returns it; it does not build any menu by itself.

## Loading

```lua
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/noviw-rblx/ScootUI-Revived/main/ScootUI_Revived.lua"))()
```

## Popup API

`Library:Popup(Title, Description, Duration, Kind)` creates a popup card.

- `Kind`: `"warn"` (red), `"success"` (green), `"info"` (library accent).
- Popups have a 2 second cooldown per message.
- Multiple popups stack with a small offset; hovering the stack expands it so every popup is readable.
- `Library.PopupStack` holds the active popups, `Library.PopupCooldown` sets the cooldown in seconds.

## Theme

The preset palette is red-toned. Edit `Themes.Preset` at the top of the source to change colors, then call `Library:ChangeTheme(key, Color3)` at runtime.
