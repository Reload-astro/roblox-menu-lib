local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/Reload-astro/roblox-menu-lib/refs/heads/main/source.lua'))({
    cheatname = "Example UI",
    gamename = "Example Game",
    color = Color3.fromRGB(255, 100, 100) -- Custom accent color
})

local window = Library:Window()
local mainTab = window:Tab("Main")
local settingsTab = window:Tab("Settings")

local mainSection = mainTab:Section("Main Features")
local settingsSection = settingsTab:Section("Settings")

-- Button Example
mainSection:Button("Click Me", function()
    print("Button clicked!")
end)

-- Toggle Example
mainSection:Toggle("Enable Feature", false, function(value)
    print("Feature enabled: ", value)
end)

-- Slider Example
mainSection:Slider("Adjust Value", 1, 100, 50, function(value)
    print("Slider set to: ", value)
end)

-- Dropdown Example
mainSection:Dropdown("Select Option", {"Option 1", "Option 2", "Option 3"}, function(selected)
    print("Selected: ", selected)
end)

-- Keybind Example
settingsSection:Keybind("Toggle Library", Enum.KeyCode.F, function()
    window:Toggle()
end)

-- Color Picker Example
settingsSection:Colorpicker("Choose Color", Color3.fromRGB(255, 0, 0), function(color)
    print("Color selected: ", color)
end)
