local drawerClickDetector = workspace:FindFirstChild("Drawer") and workspace.Drawer:FindFirstChild("ClickDetector")
if drawerClickDetector and drawerClickDetector:FindFirstChild("Detector") then
    drawerClickDetector.Detector:FireServer()
else
    warn("Drawer ClickDetector or Detector not found.")
end

local pizzaSlicer = workspace:FindFirstChild("Drawer") and workspace.Drawer:FindFirstChild("Pizza Slicer")
if pizzaSlicer and pizzaSlicer:FindFirstChild("ClickDetector") and pizzaSlicer.ClickDetector:FindFirstChild("Detector") then
    pizzaSlicer.ClickDetector.Detector:FireServer()
else
    warn("Pizza Slicer ClickDetector or Detector not found.")
end

local animationStartedEvent = workspace:FindFirstChild("Animation") and workspace.Animation:FindFirstChild("AnimationStarted")
if animationStartedEvent then
    local args = { [1] = "ToolHold" }
    animationStartedEvent:FireServer(unpack(args))
else
    warn("AnimationStarted event not found.")
end

if drawerClickDetector and drawerClickDetector:FindFirstChild("Detector") then
    drawerClickDetector.Detector:FireServer()
end

local replicatedStorage = game:GetService("ReplicatedStorage")
local communication = replicatedStorage:FindFirstChild("Communication")
local communicationEvents = communication and communication:FindFirstChild("Events")

local boxClosed = replicatedStorage:FindFirstChild("BoxClosed")
local pizza = replicatedStorage:FindFirstChild("Pizza")

if boxClosed then
    local args1 = { [1] = boxClosed, [2] = "Anchored", [3] = true }
    local event1 = communicationEvents and communicationEvents:FindFirstChild("BoxClosed")
    if event1 then
        event1:FireServer(unpack(args1))
    else
        warn("BoxClosed event not found in Communication.Events.")
    end

    local args2 = {
        [1] = boxClosed,
        [2] = "CFrame",
        [3] = CFrame.new(Vector3.new(74.5, 8.9, 10.5), Vector3.new(0, 0, -1))
    }
    local event2 = communicationEvents and communicationEvents:FindFirstChild("BoxClosed")
    if event2 then
        event2:FireServer(unpack(args2))
    else
        warn("BoxClosed event not found in Communication.Events.")
    end
else
    warn("BoxClosed not found in ReplicatedStorage.")
end

local args3 = { [1] = boxClosed }
if workspace:FindFirstChild("GameService") then
    workspace.GameService:FindFirstChild("DraggingStarted"):FireServer(unpack(args3))
else
    warn("GameService.DraggingStarted event not found.")
end

if pizza then
    local args5 = { [1] = pizza, [2] = "Anchored", [3] = true }
    local event4 = communicationEvents and communicationEvents:FindFirstChild("Pizza")
    if event4 then
        event4:FireServer(unpack(args5))
    else
        warn("Pizza event not found in Communication.Events.")
    end

    local args6 = {
        [1] = pizza,
        [2] = "CFrame",
        [3] = CFrame.new(Vector3.new(59.5, 2.8, 31.5), Vector3.new(0, 0, -1))
    }
    local event5 = communicationEvents and communicationEvents:FindFirstChild("Pizza")
    if event5 then
        event5:FireServer(unpack(args6))
    else
        warn("Pizza event not found in Communication.Events.")
    end
else
    warn("Pizza not found in ReplicatedStorage.")
end

local args7 = { [1] = pizza }
if workspace:FindFirstChild("GameService") then
    workspace.GameService:FindFirstChild("DraggingStarted"):FireServer(unpack(args7))
else
    warn("GameService.DraggingStarted event not found.")
end

local boxOpen = workspace:FindFirstChild("AllBox") and workspace.AllBox:FindFirstChild("BoxOpen")
if boxOpen then
    local args8 = { [1] = boxOpen, [2] = pizza }
    local event6 = communicationEvents and communicationEvents:FindFirstChild("Pizza")
    if event6 then
        event6:FireServer(unpack(args8))
    else
        warn("Pizza event not found in Communication.Events.")
    end

    local args9 = { [1] = boxOpen, [2] = 16148 }
    local event7 = communicationEvents and communicationEvents:FindFirstChild("BoxOpen")
    if event7 then
        event7:FireServer(unpack(args9))
    else
        warn("BoxOpen event not found in Communication.Events.")
    end
else
    warn("BoxOpen not found in AllBox.")
end

if boxClosed then
    local args11 = { [1] = boxClosed, [2] = "Anchored", [3] = true }
    local event9 = communicationEvents and communicationEvents:FindFirstChild("BoxClosed")
    if event9 then
        event9:FireServer(unpack(args11))
    else
        warn("BoxClosed event not found in Communication.Events.")
    end

    local args13 = {
        [1] = boxClosed,
        [2] = "CFrame",
        [3] = CFrame.new(Vector3.new(68.2, 4.4, 4.9), Vector3.new(-1, 0, 0))
    }
    local event10 = communicationEvents and communicationEvents:FindFirstChild("BoxClosed")
    if event10 then
        event10:FireServer(unpack(args13))
    else
        warn("BoxClosed event not found in Communication.Events.")
    end
end

local boxClosedInAllBox = workspace:FindFirstChild("AllBox") and workspace.AllBox:FindFirstChild("BoxClosed")
if boxClosedInAllBox then
    local args14 = { [1] = boxClosedInAllBox, [2] = "Anchored", [3] = false }
    local event11 = communicationEvents and communicationEvents:FindFirstChild("BoxClosed")
    if event11 then
        event11:FireServer(unpack(args14))
    else
        warn("BoxClosed event not found in Communication.Events.")
    end
else
    warn("BoxClosed not found in AllBox.")
end
