-- Example of using all features of the UI Library

local ui = loadstring(game:HttpGet('https://raw.githubusercontent.com/Reload-astro/roblox-menu-lib/refs/heads/main/source.lua'))({
    cheatname = "Example UI",
    gamename = "Example Game",
    color = Color3.fromRGB(255, 100, 100) -- Custom accent color
})

-- Create Tabs
local mainTab = ui:CreateTab("Main")
local settingsTab = ui:CreateTab("Settings")

-- Main Tab Sections and Elements
local mainSection = mainTab:CreateSection("Main Features")
mainSection:CreateButton("Click Me", function()
    print("Button Clicked!")
end)

mainSection:CreateToggle("Enable Feature", false, function(state)
    print("Feature Enabled: ", state)
end)

mainSection:CreateSlider("Adjust Value", 0, 100, 50, function(value)
    print("Slider Value: ", value)
end)

mainSection:CreateTextbox("Enter Text", "Default", function(text)
    print("Text Entered: ", text)
end)

mainSection:CreateDropdown("Choose Option", {"Option 1", "Option 2", "Option 3"}, function(selected)
    print("Selected: ", selected)
end)

mainSection:CreateKeybind("Toggle UI", Enum.KeyCode.RightShift, function()
    ui:Toggle()
end)

-- Settings Tab Elements
local settingsSection = settingsTab:CreateSection("Settings")
settingsSection:CreateColorPicker("UI Color", Color3.fromRGB(255, 100, 100), function(color)
    ui.accent = color
end)

-- Notification Example
ui:CreateNotification("Welcome", "This is an example UI.", 5)

-- Finalize and Display UI
ui:Init()
