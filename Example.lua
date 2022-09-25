local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/OopssSorry/Loger-Ui-Lib/main/Source.lua"))()
local msg = Lib:CreateFrame("Logger",Enum.Font.Code)
msg:SentMessage("Test1-SentMessage")
wait(1)
msg:SentMessage("Test2-SentMessage")
wait(1)
msg:SentWarn("Test3-SentWarn")
wait(1)
msg:SentError("Test4-SentError")
wait(1)
msg:ClearMessages()
msg:SentMessage("msg:ClearMessages()")
wait(3)
msg:SentMessage("Lib.RemoveFrame()")
wait(1)
Lib.RemoveFrame()
-----------------------------------
-- Lib.CreateFrame("Text",Enum.Font.Arcade) -- Create frame
-- Lib.RemoveFrame() -- Remove Lib
-- msg:SentMessage("Text") -- Sent message
-- msg:SentWarn("Text") -- Sent warn
-- msg:SentError("Text") -- Sent error
-- msg:ClearMessages() - clear all messages
