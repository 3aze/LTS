local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")

local Module = {}

local function SetDefault(options, defaults)
    return setmetatable(options or {}, {__index = defaults})
end

local function CreateBaseGui()
    local NotifUI = Instance.new("ScreenGui")
    NotifUI.Name = "NotifUI"
    NotifUI.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")
    
    local Holder = Instance.new("ScrollingFrame")
    Holder.Name = "Holder"
    Holder.Parent = NotifUI
    Holder.Active = true
    Holder.AnchorPoint = Vector2.new(1, 0)
    Holder.BackgroundTransparency = 1
    Holder.Position = UDim2.new(1, 0, 0, 0)
    Holder.Size = UDim2.new(0.25, 0, 1, 0)
    Holder.CanvasSize = UDim2.new(0, 0, 0, 0)
    
    local Sorter = Instance.new("UIListLayout")
    Sorter.Parent = Holder
    Sorter.HorizontalAlignment = Enum.HorizontalAlignment.Center
    Sorter.SortOrder = Enum.SortOrder.LayoutOrder
    Sorter.VerticalAlignment = Enum.VerticalAlignment.Bottom
    Sorter.Padding = UDim.new(0, 10)
    
    return Holder
end

local Holder = CreateBaseGui()

function Module:CreateNotification(Options)
    local Default = {
        Buttons = {
            {
                Title = 'Dismiss',
                ClosesUI = true,
                Callback = function() end
            }
        },
        Title = 'Notification Title',
        Content = 'Placeholder notification content',
        Length = 5,
        NeverExpire = false
    }
    Options = SetDefault(Options, Default)
    
    local Notification = Instance.new("Frame")
    Notification.Name = "Notification"
    Notification.Parent = Holder
    Notification.BackgroundColor3 = Color3.new(0, 0, 0)
    Notification.BackgroundTransparency = 0.3
    Notification.Position = UDim2.new(0.1, 0, 0, -132)
    Notification.Size = UDim2.new(0, 262, 0, 0)
    Notification.Visible = false
    
    Instance.new("UICorner").Parent = Notification
    
    local Title = Instance.new("TextLabel")
    Title.Parent = Notification
    Title.BackgroundTransparency = 1
    Title.Position = UDim2.new(0.057, 0, 0.053, 0)
    Title.Size = UDim2.new(0, 194, 0, 29)
    Title.Font = Enum.Font.GothamMedium
    Title.Text = Options.Title
    Title.TextColor3 = Color3.new(1, 1, 1)
    Title.TextSize = 16
    Title.TextXAlignment = Enum.TextXAlignment.Left
    
    local Content = Instance.new("TextLabel")
    Content.Parent = Notification
    Content.BackgroundTransparency = 1
    Content.Position = UDim2.new(0.057, 0, 0.303, 0)
    Content.Size = UDim2.new(0, 233, 0, 52)
    Content.Font = Enum.Font.Gotham
    Content.Text = Options.Content
    Content.TextColor3 = Color3.fromRGB(234, 234, 234)
    Content.TextSize = 14
    Content.TextWrapped = true
    Content.TextXAlignment = Enum.TextXAlignment.Left
    Content.TextYAlignment = Enum.TextYAlignment.Top
    
    if Options.Buttons[1] then
        local Button = Instance.new("TextButton")
        Button.Parent = Notification
        Button.BackgroundColor3 = Color3.new(1, 1, 1)
        Button.Position = UDim2.new(0.057, 0, 0.697, 0)
        Button.Size = UDim2.new(0, 233, 0, 29)
        Button.Font = Enum.Font.GothamMedium
        Button.Text = Options.Buttons[1].Title or "Dismiss"
        Button.TextColor3 = Color3.new(0, 0, 0)
        Button.TextSize = 16
        
        Instance.new("UICorner", Button).CornerRadius = UDim.new(0, 6)
        
        Button.MouseButton1Click:Connect(function()
            if Options.Buttons[1].Callback then
                task.spawn(Options.Buttons[1].Callback)
            end
            if Options.Buttons[1].ClosesUI then
                Notification:Destroy()
            end
        end)
    end
    
    Notification.Visible = true
    TweenService:Create(Notification, 
        TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
        {Position = UDim2.new(0.1, 0, 0, 0), Size = UDim2.new(0, 262, 0, 132)}
    ):Play()
    
    if not Options.NeverExpire then
        task.delay(Options.Length, function()
            if not Notification.Parent then return end
            for _, v in ipairs(Notification:GetDescendants()) do
                if v:IsA("TextLabel") or v:IsA("TextButton") then
                    TweenService:Create(v, TweenInfo.new(0.4), {TextTransparency = 1}):Play()
                elseif v:IsA("Frame") or v:IsA("ScrollingFrame") then
                    TweenService:Create(v, TweenInfo.new(0.4), {BackgroundTransparency = 1}):Play()
                end
            end
            task.wait(0.4)
            Notification:Destroy()
        end)
    end
end

return Module
