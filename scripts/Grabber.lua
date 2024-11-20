local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CoordGui"
screenGui.Parent = game.CoreGui

local main = Instance.new("Frame", screenGui)
main.Name = "Main"
main.BackgroundColor3 = Color3.new(1, 1, 1)
main.Position = UDim2.new(0.35, 0, 0.41, 0)
main.Size = UDim2.new(0, 228, 0, 142)
main.Style = Enum.FrameStyle.DropShadow
main.Active = true
main.Draggable = true

local function CreateLabel(name, text, position, size)
    local label = Instance.new("TextLabel", main)
    label.Name = name
    label.BackgroundColor3 = Color3.new(0, 0, 0)
    label.Position = position
    label.Size = size
    label.Font = Enum.Font.SciFi
    label.Text = text
    label.TextColor3 = Color3.new(1, 1, 1)
    label.TextSize = 14
    return label
end

local function CreateButton(name, text, position, size)
    local button = Instance.new("TextButton", main)
    button.Name = name
    button.BackgroundColor3 = Color3.new(0, 0, 0)
    button.Position = position
    button.Size = size
    button.Font = Enum.Font.SciFi
    button.Text = text
    button.TextColor3 = Color3.new(1, 1, 1)
    button.TextSize = 14
    return button
end

local title = CreateLabel("Title", "Coordinates Grabber", UDim2.new(-0.05, 0, -0.05, 0), UDim2.new(0, 235, 0, 19))
local credit = CreateLabel("Credit", "Made By mqtcm", UDim2.new(-0.05, 0, 0.93, 0), UDim2.new(0, 235, 0, 19))
local coords = CreateLabel("Coords", "", UDim2.new(0.04, 0, 0.20, 0), UDim2.new(0, 194, 0, 37))

local grab = CreateButton("Grab", "Grab Coordinates", UDim2.new(0.04, 0, 0.60, 0), UDim2.new(0, 128, 0, 31))
local copy = CreateButton("Copy", "Copy", UDim2.new(0.70, 0, 0.60, 0), UDim2.new(0, 52, 0, 32))

grab.MouseButton1Down:Connect(function()
    local player = game.Players.LocalPlayer
    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        coords.Text = tostring(player.Character.HumanoidRootPart.Position)
    end
end)

copy.MouseButton1Down:Connect(function()
    setclipboard(coords.Text)
end)
