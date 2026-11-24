# ScootUI Revived

A Roblox UI library based on Scoot UI. It has a red preset theme, stacked popups, and Google Fonts support.

Load it:

```lua
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/noviw-rblx/ScootUI-Revived/main/ScootUI_Revived.lua"))()
```

See `Example.lua` for a short menu build.

## Core

- `Library:Window({ Logo = id, FadeTime = 0.3 })`
- Windows are draggable and resizable.
- `Window:Page({ Name = text, Columns = 2, SubPages = false })`
- `Page:SubPage({ Name = text, Columns = 2 })`
- `Page:Section({ Name = text, Side = 1 })`
- `Library:Watermark(text)` and `Library:KeybindList()`
- Menu keybind is Right Control.

## Elements

- Toggle with `Set`, `Get`, `SetVisibility`
- Slider with `Min`, `Max`, `Default`, `Decimals`, `Suffix`, `Set`, `Get`
- Dropdown with `Items`, `Multi`, `Set`, `Get`, `Add`, `Remove`, `Refresh`
- Button with `Add(text, callback)`
- Label with `SetText`, `SetVisibility`
- Textbox with `Default`, `Placeholder`, `Set`, `Get`
- Searchbox with `Items`, `Multi`, `Set`, `Get`, `Refresh`
- Keybind with `Default`, `Mode`, `Set`, `SetMode`, `Press`
- Colorpicker with `Alpha`, `Set`, `Get`
- Label sub elements such as keybind and colorpicker

## Themes

- Red preset palette in `Themes.Preset`.
- `Library:ChangeTheme(key, Color3)`
- `Library:SetAccent(Color3)`
- `Library:AddToTheme(instance, properties)`
- `Library:SetFadeTime(seconds)` and `Library:SetTweenTime(seconds)`
- Page search and section columns.

## Popups

- `Library:Popup(title, description, duration, kind)`
- Kinds are warn, success, info.
- Each message has a 2 second cooldown.
- Popups stack with a small offset. Hover a popup to expand the stack.
- `Library.PopupStack` and `Library.PopupCooldown`
- `Library:ClearPopups()`

## Fonts

- `Library:SetFont("Roboto")`
- The name is lowered and spaces are removed.
- The library searches the Google Fonts folder list on GitHub and downloads the first TTF.
- The font is saved under `scoot/Assets`, then `Library.Font` and all themed FontFace values update.
- `Library:GetFont()`

## Config and helpers

- `Library:GetConfig()`, `Library:LoadConfig(json)`, `Library:DeleteConfig(name)`
- `Library:CreateSettingsPage(window, watermark, keybindList)`
- `Library:Round(number, decimals)`, `Library:Lerp(a, b, t)`
- `Library:Connect(event, callback)`, `Library:Disconnect(name)`
- `Library:Thread(fn)`, `Library:SafeCall(fn, ...)`
- `Library:ToRich(text, color)`
- `Library:Unload()`
