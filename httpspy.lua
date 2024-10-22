local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")
local TextService = game:GetService("TextService")

local function CreateElement(className, properties)
    local element = Instance.new(className)
    for k, v in pairs(properties) do
        element[k] = v
    end
    return element
end

local HttpSpy = CreateElement("ScreenGui", {
    Name = "HttpSpy",
    Parent = CoreGui,
    ZIndexBehavior = Enum.ZIndexBehavior.Sibling
})

local MainFrame = CreateElement("Frame", {
    Name = "MainFrame",
    Parent = HttpSpy,
    BackgroundColor3 = Color3.fromRGB(30, 30, 30),
    BorderSizePixel = 0,
    Position = UDim2.new(0.05, 0, 0.25, 0),
    Size = UDim2.new(0, 400, 0, 300)
})

CreateElement("UICorner", {
    CornerRadius = UDim.new(0, 10),
    Parent = MainFrame
})

local TitleBar = CreateElement("Frame", {
    Name = "TitleBar",
    Parent = MainFrame,
    BackgroundColor3 = Color3.fromRGB(40, 40, 40),
    BorderSizePixel = 0,
    Size = UDim2.new(1, 0, 0, 30)
})

CreateElement("UICorner", {
    CornerRadius = UDim.new(0, 10),
    Parent = TitleBar
})

CreateElement("TextLabel", {
    Name = "TitleText",
    Parent = TitleBar,
    BackgroundTransparency = 1,
    Position = UDim2.new(0, 10, 0, 0),
    Size = UDim2.new(1, -40, 1, 0),
    Font = Enum.Font.GothamSemibold,
    TextColor3 = Color3.fromRGB(255, 255, 255),
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Left,
    Text = "HTTP Spy v2"
})

local MinimizeButton = CreateElement("TextButton", {
    Name = "MinimizeButton",
    Parent = TitleBar,
    BackgroundTransparency = 1,
    Position = UDim2.new(1, -30, 0, 0),
    Size = UDim2.new(0, 30, 1, 0),
    Font = Enum.Font.GothamBold,
    TextColor3 = Color3.fromRGB(255, 255, 255),
    TextSize = 20,
    Text = "-"
})

local MainContainer = CreateElement("ScrollingFrame", {
    Name = "MainContainer",
    Parent = MainFrame,
    BackgroundTransparency = 1,
    Position = UDim2.new(0, 0, 0, 30),
    Size = UDim2.new(1, 0, 1, -30),
    ScrollBarThickness = 4,
    ScrollBarImageColor3 = Color3.fromRGB(80, 80, 80)
})

CreateElement("UIListLayout", {
    Parent = MainContainer,
    SortOrder = Enum.SortOrder.LayoutOrder,
    Padding = UDim.new(0, 5)
})

CreateElement("UIPadding", {
    Parent = MainContainer,
    PaddingLeft = UDim.new(0, 10),
    PaddingRight = UDim.new(0, 10),
    PaddingTop = UDim.new(0, 10)
})

local NotificationFrame = CreateElement("Frame", {
    Name = "NotificationFrame",
    Parent = HttpSpy,
    BackgroundColor3 = Color3.fromRGB(40, 40, 40),
    BorderSizePixel = 0,
    Position = UDim2.new(1, -220, 1, -60),
    Size = UDim2.new(0, 200, 0, 40),
    Visible = false
})

CreateElement("UICorner", {
    CornerRadius = UDim.new(0, 5),
    Parent = NotificationFrame
})

CreateElement("TextLabel", {
    Name = "NotificationText",
    Parent = NotificationFrame,
    BackgroundTransparency = 1,
    Size = UDim2.new(1, 0, 1, 0),
    Font = Enum.Font.GothamSemibold,
    TextColor3 = Color3.fromRGB(255, 255, 255),
    TextSize = 14,
    TextWrapped= true,
  	Text= "Log copied to clipboard!"
})

local isMinimized

local function toggleMinimize()
	isMinimized= not isMinimized
	MainContainer.Visible= not isMinimized
	MainFrame.Size= isMinimized and UDim2.new(0 ,400 ,0 ,30) or UDim2.new(0 ,400 ,0 ,300)
	MinimizeButton.Text= isMinimized and "+" or "-"
end

local function createDraggable(gui)
	local dragging , dragInput , dragStart , startPos

	local function update(input)
		local delta= input.Position - dragStart
		gui.Position= UDim2.new(startPos.X.Scale ,startPos.X.Offset + delta.X ,startPos.Y.Scale ,startPos.Y.Offset + delta.Y)
	end

	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging= true
			dragStart= input.Position
			startPos= gui.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging= false
				end
			end)
		end
	end)

	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput= input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end

local function updateCanvasSize()
	MainContainer.CanvasSize= UDim2.new(0 ,0 ,0 ,UIListLayout.AbsoluteContentSize.Y +20)
end

local function showNotification()
	NotificationFrame.Visible= true
	task.delay(2,function() NotificationFrame.Visible= false end)
end

local function formatLogEntry(method,url)
	return url or ""
end

local function createLogEntry(method,url)
	local logText= formatLogEntry(method,url)

	local LogEntry= CreateElement("TextButton", {
		BackgroundColor3= Color3.fromRGB(35 ,35 ,35),
		BorderSizePixel= 0,
		Size= UDim2.new(1 ,0 ,0 ,30),
		Font= Enum.Font.SourceSansSemibold,
		TextColor3= Color3.fromRGB(220 ,220 ,220),
		TextSize=14 ,
        TextWrapped=true ,
        TextXAlignment=Enum.TextXAlignment.Left ,
        TextYAlignment=Enum.TextYAlignment.Center ,
        AutoButtonColor=false ,
        Text=logText ,
        Parent=MainContainer 
	})

	CreateElement("UICorner", { CornerRadius=UDim.new(0 ,5), Parent=LogEntry })
	CreateElement("UIPadding", { Parent=LogEntry,Paddingleft=UDim.new (0 ,10), PaddingRight=UDim.new (0 ,10) })

	local textSize= TextService:GetTextSize(logText ,LogEntry.TextSize ,LogEntry.Font ,Vector2.new(MainContainer.AbsoluteSize.X -40 ,math.huge))
	LogEntry.Size=UDim2.new (1 ,0 ,0 ,math.max (30,textSize.Y +10))

	local OriginalColor= LogEntry.BackgroundColor3

	LogEntry.MouseEnter:Connect(function() LogEntry.BackgroundColor3= Color3.fromRGB (45 ,45 ,45) end)
	LogEntry.MouseLeave:Connect(function() LogEntry.BackgroundColor3= OriginalColor end)

	LogEntry.MouseButton1Click:Connect(function()
		setclipboard(logText)
		showNotification()
	end)

	updateCanvasSize()
end

MinimizeButton.MouseButton1Click:Connect(toggleMinimize)
UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateCanvasSize)

createDraggable(MainFrame)
updateCanvasSize()

local HttpGet 
HttpGet= hookfunction(game.HttpGet,function(self,url,...)
	createLogEntry("HTTP GET",url)
	return HttpGet(self,url,...)
end)

local HttpPost 
HttpPost= hookfunction(game.HttpPost,function(self,url,...)
	createLogEntry("HTTP POST",url)
	return HttpPost(self,url,...)
end)

local RequestLog 
if syn and syn.request then
	RequestLog= hookfunction(syn.request,function(dat) 
	    createLogEntry(dat.Method or "REQUEST" ,dat.Url ,dat.Headers) 
	    return RequestLog(dat) 
	end) 
elseif request then 
	RequestLog= hookfunction(request,function(dat) 
	    createLogEntry(dat.Method or "REQUEST" ,dat.Url ,dat.Headers) 
	    return RequestLog(dat) 
	end) 
else 
	createLogEntry("WARNING" ,"Your executor is not supported!") 
end
