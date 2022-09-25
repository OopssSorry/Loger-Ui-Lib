local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/OopssSorry/Loger-Ui-Lib/main/Source.lua"))()
local msg = Lib:CreateFrame("Logger",Enum.Font.Arcade,nil)
msg:SentMessage("Test1",Enum.Font.Arcade,nil)
-----------------------------------
-- Lib.CreateFrame("Text",Enum.Font.Arcade,Color3.fromRGB(255, 255, 255)) -- Create frame
-- Lib.RemoveFrame() -- Remove Lib
-- msg:SentMessage("Text",Enum.Font.Arcade,Color3.fromRGB(255, 255, 255)) -- Sent message
-- msg:ClearMessages() - clear all messages
