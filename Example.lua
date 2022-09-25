local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/OopssSorry/Loger-Ui-Lib/main/Source.lua"))()
local msg = Lib:CreateFrame("Logger",Enum.Font.Code)
msg:SentMessage("Test1")
wait(.1)
msg:SentMessage("Test2")
wait(3)
msg:ClearMessages()
msg:SentMessage("Test3")
wait(.1)
msg:SentMessage("Test4")
wait(.1)
msg:SentMessage("Test5")
wait(5)
Lib.RemoveFrame()
-----------------------------------
-- Lib.CreateFrame("Text",Enum.Font.Arcade) -- Create frame
-- Lib.RemoveFrame() -- Remove Lib
-- msg:SentMessage("Text") -- Sent message
-- msg:ClearMessages() - clear all messages
