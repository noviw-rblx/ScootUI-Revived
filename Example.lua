local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/noviw-rblx/ScootUI-Revived/main/ScootUI_Revived.lua"))()

local Window = Library:Window({
    Logo = "77218680285262",
    FadeTime = 0.3,
})

local Main = Window:Page({ Name = "Main", Columns = 2 })
local Section = Main:Section({ Name = "Example", Side = 1 })
local Other = Main:Section({ Name = "Other", Side = 2 })

local Toggle = Section:Toggle({
    Name = "Example toggle",
    Flag = "ExampleToggle",
    Default = false,
    Callback = function(value)
        print(value)
    end,
})

Toggle:Set(true)
print(Toggle:Get())

Section:Slider({
    Name = "Example slider",
    Flag = "ExampleSlider",
    Min = 0,
    Max = 100,
    Default = 50,
    Decimals = 1,
    Callback = function(value)
        print(value)
    end,
})

Section:Dropdown({
    Name = "Example dropdown",
    Flag = "ExampleDropdown",
    Items = { "One", "Two", "Three" },
    Default = "One",
    Callback = function(value)
        print(value)
    end,
})

Section:Button():Add("Click me", function()
    Library:Popup("Example", "Button pressed", 4, "info")
end)

Section:Label("Example label"):Keybind({
    Name = "Example key",
    Flag = "ExampleKey",
    Default = Enum.KeyCode.E,
    Callback = function()
        print("key pressed")
    end,
})

Other:Textbox({
    Name = "Text box",
    Flag = "ExampleText",
    Default = "hello",
    Placeholder = "Type here",
})

Other:Button():Add("Use Roboto", function()
    local ok, name = Library:SetFont("Roboto")
    print(ok, name)
end)

Other:Button():Add("Red accent", function()
    Library:SetAccent(Color3.fromRGB(255, 60, 60))
end)

Other:Button():Add("Clear popups", function()
    Library:ClearPopups()
end)

Library:Watermark("Example UI")
Library:Popup("Ready", "Example UI loaded", 4, "success")
