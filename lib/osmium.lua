local _, library = pcall(loadstring(game:HttpGet("https://raw.githubusercontent.com/TrixAde/Osmium/main/OsmiumLibrary.lua")))
local window = library:CreateWindow("example")
local test = window:CreateTab("example")

test:CreateLabel("This is a Title","this is an example of description")

test:CreateDropdown("Dropdown",{"1","2","3"},function(v)
	print(v)
end)

test:CreateSlider("Slider",-100,100,function(v)
	print(v)
end)

test:CreateTextbox("TextBox", function(v)
    print(v)
end)

test:CreateToggle("Toggle",false,function(v)
    print(v)
end)

test:CreateButton("Button", function()
    print("c")
end)