local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/OopssSorry/Loger-Ui-Lib/main/Source.lua"))()
local msg = Lib:CreateFrame("Logger",Enum.Font.Arcade)
msg:SentMessage("Test1")
wait(2)
msg:ClearMessages()
wait(2)
msg:SentMessage("Test1")
wait(2)
Lib.RemoveFrame()
-----------------------------------
-- Lib.CreateFrame("Text",Enum.Font.Arcade) -- Create frame
-- Lib.RemoveFrame() -- Remove Lib
-- msg:SentMessage("Text") -- Sent message
-- msg:ClearMessages() - clear all messages
