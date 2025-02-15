# Example UI Library Usage

This repository demonstrates how to use all features of the UI Library. It includes a comprehensive example script and detailed explanations for each component.

## Features
- Tabs and Sections
- Buttons
- Toggles
- Sliders
- Textboxes
- Dropdowns
- Keybinds
- Color Pickers
- Notifications

## Installation
1. Load the UI Library using the following code:
    ```lua
    local ui = loadstring(game:HttpGet('https://raw.githubusercontent.com/Reload-astro/roblox-menu-lib/refs/heads/main/source.lua'))({
        cheatname = "Example UI",
        gamename = "Example Game",
        color = Color3.fromRGB(255, 100, 100)
    })
    ```

## Usage
### Creating Tabs and Sections
```lua
local mainTab = ui:CreateTab("Main")
local mainSection = mainTab:CreateSection("Main Features")
```

### Adding Elements
- **Button**
    ```lua
    mainSection:CreateButton("Click Me", function()
        print("Button Clicked!")
    end)
    ```
- **Toggle**
    ```lua
    mainSection:CreateToggle("Enable Feature", false, function(state)
        print("Feature Enabled: ", state)
    end)
    ```
- **Slider**
    ```lua
    mainSection:CreateSlider("Adjust Value", 0, 100, 50, function(value)
        print("Slider Value: ", value)
    end)
    ```
- **Textbox**
    ```lua
    mainSection:CreateTextbox("Enter Text", "Default", function(text)
        print("Text Entered: ", text)
    end)
    ```
- **Dropdown**
    ```lua
    mainSection:CreateDropdown("Choose Option", {"Option 1", "Option 2", "Option 3"}, function(selected)
        print("Selected: ", selected)
    end)
    ```
- **Keybind**
    ```lua
    mainSection:CreateKeybind("Toggle UI", Enum.KeyCode.RightShift, function()
        ui:Toggle()
    end)
    ```

### Notifications
```lua
ui:CreateNotification("Welcome", "This is an example UI.", 5)
```

### Color Picker
```lua
settingsSection:CreateColorPicker("UI Color", Color3.fromRGB(255, 100, 100), function(color)
    ui.accent = color
end)
```

## Finalizing and Displaying UI
```lua
ui:Init()
```

## License
This project is licensed under the MIT License.

