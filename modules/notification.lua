local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local TextService = game:GetService("TextService")
local Players = game:GetService("Players")

local NotifGui = Instance.new("ScreenGui")
NotifGui.Name = "NotificationLib"
NotifGui.Parent = RunService:IsStudio() and Players.LocalPlayer.PlayerGui or game:GetService("CoreGui")

local Container = Instance.new("Frame")
Container.Name = "Container"
Container.Position = UDim2.new(0, 20, 0.5, -20)
Container.Size = UDim2.new(0, 300, 0.5, 0)
Container.BackgroundTransparency = 1
Container.Parent = NotifGui

local function createImage(id, isButton)
    local image = Instance.new(isButton and "ImageButton" or "ImageLabel")
    image.Image = id
    image.BackgroundTransparency = 1
    return image
end

local function createRoundRect()
    local image = createImage("http://www.roblox.com/asset/?id=5761488251")
    image.ScaleType = Enum.ScaleType.Slice
    image.SliceCenter = Rect.new(2, 2, 298, 298)
    image.ImageColor3 = Color3.fromRGB(30, 30, 30)
    return image
end

local function createShadow()
    local image = createImage("http://www.roblox.com/asset/?id=5761498316")
    image.ScaleType = Enum.ScaleType.Slice
    image.SliceCenter = Rect.new(17, 17, 283, 283)
    image.Size = UDim2.fromScale(1, 1) + UDim2.fromOffset(30, 30)
    image.Position = UDim2.fromOffset(-15, -15)
    image.ImageColor3 = Color3.fromRGB(30, 30, 30)
    return image
end

local Padding = 10
local DescriptionPadding = 10
local InstructionObjects = {}
local TweenInfo = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
local MaxWidth = Container.AbsoluteSize.X - Padding - DescriptionPadding

local function calculateBounds(objects)
    local x, y = 0, 0
    for _, obj in ipairs(objects) do
        x = x + obj.AbsoluteSize.X
        y = y + obj.AbsoluteSize.Y
    end
    return {X = x, Y = y, x = x, y = y}
end

local CachedObjects = {}

local function updatePositions()
    local previousBounds = {Y = 0}
    for i, obj in ipairs(InstructionObjects) do
        local label, delta = obj[1], obj[2]
        if delta < 1 then
            obj[2] = math.min(delta + RunService.Heartbeat:Wait(), 1)
        end
        local newValue = TweenService:GetValue(obj[2], Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
        local targetPos = UDim2.new(0, 0, 0, previousBounds.Y + (Padding * (i - 1)))
        label.Position = label.Position:Lerp(targetPos, newValue)
        previousBounds = calculateBounds({label})
    end
    CachedObjects = InstructionObjects
end

RunService:BindToRenderStep("UpdateNotifications", Enum.RenderPriority.Camera.Value, updatePositions)

local TextSettings = {
    Title = {Font = Enum.Font.GothamSemibold, Size = 14},
    Description = {Font = Enum.Font.Gotham, Size = 14}
}

local function createLabel(text, settings, isButton)
    local label = Instance.new(isButton and "TextButton" or "TextLabel")
    label.Text = text
    label.Font = settings.Font
    label.TextSize = settings.Size
    label.BackgroundTransparency = 1
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.RichText = true
    label.TextColor3 = Color3.new(1, 1, 1)
    return label
end

local function fadeOut(object)
    local prop = ({TextLabel = "TextTransparency", Frame = "BackgroundTransparency", ImageLabel = "ImageTransparency"})[object.ClassName]
    TweenService:Create(object, TweenInfo, {[prop] = 1}):Play()
end

local function removeNotification(label)
    fadeOut(label)
    for _, child in ipairs(label:GetDescendants()) do
        fadeOut(child)
    end
    task.wait(0.25)
    table.remove(InstructionObjects, table.find(InstructionObjects, label))
    for _, obj in ipairs(InstructionObjects) do
        obj[2] = 0
    end
end

local function notify(properties)
    local title, description, duration = properties.Title, properties.Description, properties.Duration or 5

    if not (title or description) then return end

    local height = (title and 26 or 0) + (description and TextService:GetTextSize(description, TextSettings.Description.Size, TextSettings.Description.Font, Vector2.new(MaxWidth, math.huge)).Y + 8 or 0)

    local label = createRoundRect()
    label.Size = UDim2.new(1, 0, 0, height)
    label.Position = UDim2.new(-1, 20, 0, calculateBounds(CachedObjects).Y + (Padding * #CachedObjects))

    if title then
        local titleLabel = createLabel(title, TextSettings.Title)
        titleLabel.Size = UDim2.new(1, -10, 0, 26)
        titleLabel.Position = UDim2.fromOffset(10, 0)
        titleLabel.Parent = label
    end

    if description then
        local descLabel = createLabel(description, TextSettings.Description)
        descLabel.TextWrapped = true
        descLabel.Size = UDim2.fromScale(1, 1) + UDim2.fromOffset(-DescriptionPadding, title and -26 or 0)
        descLabel.Position = UDim2.fromOffset(10, title and 26 or 0)
        descLabel.TextYAlignment = title and Enum.TextYAlignment.Top or Enum.TextYAlignment.Center
        descLabel.Parent = label
    end

    createShadow().Parent = label
    label.Parent = Container
    table.insert(InstructionObjects, {label, 0})

    task.delay(duration, removeNotification, label)
end

return {Notify = notify}
