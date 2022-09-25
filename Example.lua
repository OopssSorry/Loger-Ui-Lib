local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/OopssSorry/Loger-Ui-Lib/main/Source.lua"))()
local msg = Lib:CreateFrame("Logger",Enum.Font.Arcade)
msg:SentMessage("Test1",Enum.Font.Arcade,nil)
-----------------------------------
-- Lib.CreateFrame("Text",Enum.Font.Arcade) -- Create frame
-- Lib.RemoveFrame() -- Remove Lib
-- msg:SentMessage("Text") -- Sent message
-- msg:ClearMessages() - clear all messages
