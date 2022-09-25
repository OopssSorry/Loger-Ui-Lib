print([[ 
--
--											
-- Oopss Logger Ui - Loadet				
-- Free UI logger made by Oopss-Sorry#2067 
-- Discord: https://discord.gg/nAhmM6zEzy  
--											
--											
]])

local Library = {}
function Library:CreateFrame(label, font)
	if font == nil then
		font = Enum.Font.Code
	end
	local function dragify(Frame)
		local dragToggle = nil
		local dragInput = nil
		local dragStart = nil
		local dragPos = nil
		local startPos = nil
		local Delta = nil
		local Position = nil
		local function updateInput(input)
			Delta = input.Position - dragStart
			Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			game:GetService("TweenService"):Create(Frame, TweenInfo.new(.15), {Position = Position}):Play()
		end

		Frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
				dragToggle = true
				dragStart = input.Position
				startPos = Frame.Position
				input.Changed:Connect(function()
					if (input.UserInputState == Enum.UserInputState.End) then
						dragToggle = false
					end
				end)
			end
		end)

		Frame.InputChanged:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
				dragInput = input
			end
		end)

		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if (input == dragInput and dragToggle) then
				updateInput(input)
			end
		end)
	end
	wait()
	local _1 = Instance.new("ScreenGui")
	local _1_1 = Instance.new("Frame")
	local _1_1_1 = Instance.new("UICorner")
	local _1_1_2 = Instance.new("ScrollingFrame")
	local _1_1_2_1 = Instance.new("UIListLayout")
	local _1_1_3 = Instance.new("TextLabel")
	_1.Name = " "
	_1.Parent = game.CoreGui
	_1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	_1_1.Name = " "
	_1_1.Parent = _1
	_1_1.AnchorPoint = Vector2.new(0, 1)
	_1_1.BackgroundColor3 = Color3.fromRGB(22, 19, 62)
	_1_1.Position = UDim2.new(0, 20, 1, -20)
	_1_1.Size = UDim2.new(0, 400, 0, 400)
	_1_1.ClipsDescendants = true
	_1_1_1.Name = " "
	_1_1_1.Parent = _1_1
	_1_1_1.CornerRadius = UDim.new(0, 6)
	_1_1_2.Name = " "
	_1_1_2.Parent = _1_1
	_1_1_2.Active = true
	_1_1_2.AnchorPoint = Vector2.new(0.5, 0)
	_1_1_2.BackgroundTransparency = 1
	_1_1_2.Position = UDim2.new(0.5, 0, 0.15, 0)
	_1_1_2.Size = UDim2.new(1, 0, 0.85, 0)
	_1_1_2.CanvasSize = UDim2.new(0, 0, 0, 0)
	_1_1_2.ScrollBarThickness = 10
	_1_1_2.ScrollBarImageColor3 = Color3.fromRGB(140, 125, 255)
	_1_1_2.BorderColor3 = Color3.fromRGB(140, 125, 255)
	_1_1_2.AutomaticCanvasSize = Enum.AutomaticSize.Y
	_1_1_2_1.Name = " "
	_1_1_2_1.Parent = _1_1_2
	_1_1_2_1.SortOrder = Enum.SortOrder.LayoutOrder
	_1_1_3.Name = " "
	_1_1_3.Parent = _1_1
	_1_1_3.RichText = true
	_1_1_3.AnchorPoint = Vector2.new(0.5, 0)
	_1_1_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	_1_1_3.BackgroundTransparency = 0.75
	_1_1_3.BorderSizePixel = 0
	_1_1_3.Position = UDim2.new(0.5, 0, 0, 0)
	_1_1_3.Size = UDim2.new(1, 0, 0.15, 0)
	_1_1_3.Font = font
	_1_1_3.Text = "<b>"..label.."</b>"
	_1_1_3.TextColor3 = Color3.fromRGB(140, 125, 255)
	_1_1_3.TextSize = 30
	_1_1_3.TextWrapped = true
	dragify(_1_1)
	function Library.RemoveFrame()
		_1:Destroy()
	end
	local L = 0
	local MsgLibrary = {}
	function MsgLibrary:SentMessage(text)
		local NewMsg = Instance.new("TextLabel")
		NewMsg.Name = L.." - msg"
		NewMsg.RichText = true
		NewMsg.TextXAlignment = Enum.TextXAlignment.Left
		NewMsg.AutomaticSize = Enum.AutomaticSize.Y
		NewMsg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		NewMsg.BackgroundTransparency = 1.000
		NewMsg.Size = UDim2.new(1, 0, 0, 20)
		NewMsg.Text = "<b>"..os.date("%X").."</b> "..text
		NewMsg.TextColor3 = Color3.fromRGB(255, 255, 255)
		NewMsg.TextScaled = false
		NewMsg.TextSize = 16
		NewMsg.TextWrapped = true
		NewMsg.Font = font
		NewMsg.Parent = _1_1_2
		L = L + 1
		_1_1_2.CanvasPosition = _1_1_2.CanvasSize
	end
	function MsgLibrary:ClearMessages()
		L = 0
		local Messages = _1_1_2:GetChildren()
		for i = 1, #Messages do
			if Messages[i] ~= _1_1_2_1 then
				Messages[i]:Destroy()
			end
		end
		wait(.1)
	end
	return MsgLibrary
end
return Library
