if shared.moREnc and not shared.moREncDebug then
    return warn(identifyexecutor() .. " is already loaded!")
end

local addedfuncs, totalfuncs = 0, 0

local function check(funcName, func, testfunc)
    local success, err = pcall(function()
        getgenv()[funcName] = func
    end)
    
    if success then
        local testResult = testfunc and pcall(testfunc)
        print(testResult and "✅" or "⚠️", funcName, testResult and "added to the global env" or "added but failed the test: " .. tostring(select(2, testResult)))
        addedfuncs = addedfuncs + 1
    else
        warn("⚠️", funcName, "failed to add:", tostring(err))
    end

    totalfuncs = totalfuncs + 1
end

local function getPlatform()
    return tostring(game:GetService("UserInputService"):GetPlatform()):split(".")[3]
end

check("getdevice", getPlatform, function()
    assert(getgenv().getdevice() == getPlatform(), "getdevice function test failed")
end)

check("getping", function(suffix)
    local rawping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
    local ping = math.round(tonumber(rawping:sub(1, #rawping - 7)))
    return suffix and ping .. " ms" or tostring(ping)
end, function()
    assert(tonumber(getgenv().getping()) ~= nil, "getping function test failed")
end)

check("getscriptclosure", function(module)
    local constants = getrenv().require(module)
    return function()
        return table.clone(constants)
    end
end)

check("getfps", function()
    local RunService = game:GetService("RunService")
    local TimeFunction = RunService:IsRunning() and time or os.clock
    local Start, LastIteration, FrameUpdateTable = TimeFunction(), 0, {}

    RunService.Heartbeat:Connect(function()
        LastIteration = TimeFunction()
        FrameUpdateTable[#FrameUpdateTable + 1] = LastIteration
        for i = #FrameUpdateTable, 1, -1 do
            if FrameUpdateTable[i] <= LastIteration - 1 then
                table.remove(FrameUpdateTable, i)
            end
        end
    end)

    task.wait(1.1)
    return #FrameUpdateTable / (TimeFunction() - Start)
end, function()
    local fps = getgenv().getfps()
    assert(fps and fps >= 0, "getfps function test failed")
end)

check("getaffiliateid", function() return "moREnc" end, function()
    assert(getgenv().getaffiliateid() == "moREnc", "getaffiliateid function test failed")
end)

local function getPlayers()
    local players = {}
    for _, x in game:GetService("Players"):GetPlayers() do
        players[x.Name] = x
    end
    players.LocalPlayer = game:GetService("Players").LocalPlayer
    return players
end

check("getplayers", getPlayers, function()
    assert(getgenv().getplayers().LocalPlayer == game:GetService("Players").LocalPlayer, "getplayers function test failed")
end)

check("getplayer", function(name)
    local players = getPlayers()
    return name and players[name] or players.LocalPlayer
end)

check("getlocalplayer", function()
    return game:GetService("Players").LocalPlayer
end, function()
    assert(getgenv().getlocalplayer() == game:GetService("Players").LocalPlayer, "getlocalplayer function test failed")
end)

check("customprint", function(text, properties, imageId)
    print(text)
    task.wait(0.025)
    local clientLog = game:GetService("CoreGui").DevConsoleMaster.DevConsoleWindow.DevConsoleUI.MainView.ClientLog
    local msg = clientLog:FindFirstChild(tostring(#clientLog:GetChildren() - 1))
    if msg then
        for i, x in pairs(properties) do msg[i] = x end
        if imageId then msg.Parent.image.Image = imageId end
    end
end)

check("join", function(placeID, jobID)
    game:GetService("TeleportService"):TeleportToPlaceInstance(placeID, jobID, getgenv().getplayer())
end)

check("firesignal", function(instance, signalName, args)
    if instance and signalName then
        local signal = instance[signalName]
        if signal then
            for _, connection in ipairs(getconnections(signal)) do
                connection:Fire(args)
            end
        end
    end
end, function()
    local button = Instance.new("TextButton")
    local new = true
    button.MouseButton1Click:Connect(function() new = false end) 
    firesignal(button, "MouseButton1Click")
    assert(not new, "firesignal function test failed")
end)

check("firetouchinterest", function(part, touched)
    firesignal(part, touched ~= false and "Touched" or "TouchEnded")
end)

check("fireproximityprompt", function(prompt, triggered, hold)
    local eventName = hold and (triggered and "PromptButtonHoldBegan" or "PromptButtonHoldEnded") or
                      (triggered ~= false and "Triggered" or "TriggerEnded")
    firesignal(prompt, eventName)
end)

check("runanimation", function(animationId, player)
    local plr = player or getgenv().getplayer()
    local humanoid = plr.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        local animation = Instance.new("Animation")
        animation.AnimationId = "rbxassetid://" .. tostring(animationId)
        humanoid:LoadAnimation(animation):Play()
    end
end)

local function addAlias(newName, existingFunc)
    check(newName, function() getgenv()[newName] = getgenv()[existingFunc] end)
end

addAlias("round", "math.round")
addAlias("joingame", "join")
addAlias("joinserver", "join")
addAlias("firetouchtransmitter", "firetouchinterest")
addAlias("getplatform", "getdevice")
addAlias("getos", "getdevice")
addAlias("playanimation", "runanimation")
addAlias("setrbxclipboard", "setclipboard")

print(("moREnc loaded | Executor: %s | Roblox version: %s | Added %d/%d functions"):format(identifyexecutor(), version(), addedfuncs, totalfuncs))
shared.moREnc = true
