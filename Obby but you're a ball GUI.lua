local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local MainWin = Library.CreateLib("Obby But You're A Ball GUI", "Midnight")
local LPN = game:GetService("Players").LocalPlayer.Name
local WPO = Workspace:FindFirstChild(LPN)
local WelcomeTab = MainWin:NewTab("Welcome")
local WelcomeSec = WelcomeTab:NewSection("Welcome, " ..LPN)
local MainLTab = MainWin:NewTab("Main Levels")
local MainLSec = MainLTab:NewSection("Teleports")
local ChallTab = MainWin:NewTab("Challege Levels")
local ChallSec1 = ChallTab:NewSection("TP to Obbys")
local ChallSec2 = ChallTab:NewSection("Finish Obbys")
local MiscTab = MainWin:NewTab("Misc")
local MiscSec = MiscTab:NewSection("Misc")
local CreditsTab = MainWin:NewTab("Credits")
local CreditsSec = CreditsTab:NewSection("Credits:")
local currentstage = game:GetService("Players").LocalPlayer.PlayerGui.stage.Frame.Stage.Text
local nextstage = currentstage + 1
local Workspace = Game:GetService("Workspace")
--Welcome Tab
local CurrentL = WelcomeSec:NewLabel("Current Level: " .. currentstage)
local NextL = WelcomeSec:NewLabel("Next Level: " .. nextstage)
--Main Levels Tab
local FL = game:GetService("Workspace").Checkpoints:FindFirstChild(121)
local FLP = FL.Checkpoint.Position
MainLSec:NewButton("Skip current Level", "Skips current level", function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Untoast/Obby-but-you-re-a-ball/main/Skip%20current%20level(not%20gui)", true))()
end)
MainLSec:NewButton("Finish Game", "Finishes the game (CAN'T be undone!)", function()
    WPO.Sphere.Position = FLP
    WPO.Head.Position = FLP
    WPO.Torso.Position = FLP
    WPO.HumanoidRootPart.Position = FLP
end)
--Challenge Levels Tab
ChallSec1:NewButton("Enable Obbys (Removes crowns)", "Enables the obby buttons", function()
    game:GetService("Players").LocalPlayer.PlayerGui.Challenges.MainFrame.Hard.PlayButton.Text = "Play"
    game:GetService("Players").LocalPlayer.PlayerGui.Challenges.MainFrame.Hard.PlayButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    game:GetService("Players").LocalPlayer.PlayerGui.Challenges.MainFrame.Medium.PlayButton.Text = "Play"
    game:GetService("Players").LocalPlayer.PlayerGui.Challenges.MainFrame.Medium.PlayButton.BackgroundColor3 = Color3.fromRGB(246, 233, 0)
    game:GetService("Players").LocalPlayer.PlayerGui.Challenges.MainFrame.Easy.PlayButton.Text = "Play"
    game:GetService("Players").LocalPlayer.PlayerGui.Challenges.MainFrame.Easy.PlayButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
end)
ChallSec1:NewButton("Disable Obbys (Gives crowns)", "Disables the obby buttons", function()
    game:GetService("Players").LocalPlayer.PlayerGui.Challenges.MainFrame.Hard.PlayButton.Text = "Completed"
    game:GetService("Players").LocalPlayer.PlayerGui.Challenges.MainFrame.Hard.PlayButton.BackgroundColor3 = Color3.fromRGB(165, 165, 165)
    game:GetService("Players").LocalPlayer.PlayerGui.Challenges.MainFrame.Medium.PlayButton.Text = "Completed"
    game:GetService("Players").LocalPlayer.PlayerGui.Challenges.MainFrame.Medium.PlayButton.BackgroundColor3 = Color3.fromRGB(165, 165, 165)
    game:GetService("Players").LocalPlayer.PlayerGui.Challenges.MainFrame.Easy.PlayButton.Text = "Completed"
    game:GetService("Players").LocalPlayer.PlayerGui.Challenges.MainFrame.Easy.PlayButton.BackgroundColor3 = Color3.fromRGB(165, 165, 165)
end)



ChallSec2:NewButton("Finish Easy Obby(Can only activate once)", "Finishes Easy Obby", function()
    WPO.Sphere.Position = game:GetService("Workspace").Challenges.Easy.Finish.Position
    WPO.Head.Position = game:GetService("Workspace").Challenges.Easy.Finish.Position
    WPO.Torso.Position = game:GetService("Workspace").Challenges.Easy.Finish.Position
    WPO.HumanoidRootPart.Position = game:GetService("Workspace").Challenges.Easy.Finish.Position
end)
ChallSec2:NewButton("Finish Medium Obby(Can only activate once)", "Finishes Medium Obby", function()
    WPO.Sphere.Position = game:GetService("Workspace").Challenges.Medium.Finish.Position
    WPO.Head.Position = game:GetService("Workspace").Challenges.Medium.Finish.Position
    WPO.Torso.Position = game:GetService("Workspace").Challenges.Medium.Finish.Position
    WPO.HumanoidRootPart.Position = game:GetService("Workspace").Challenges.Medium.Finish.Position
end)
ChallSec2:NewButton("Finish Hard Obby(Can only activate once)", "Finishes Hard Obby", function()
    WPO.Sphere.Position = game:GetService("Workspace").Challenges.Hard.Finish.Position
    WPO.Head.Position = game:GetService("Workspace").Challenges.Hard.Finish.Position
    WPO.Torso.Position = game:GetService("Workspace").Challenges.Hard.Finish.Position
    WPO.HumanoidRootPart.Position = game:GetService("Workspace").Challenges.Hard.Finish.Position
end)
--Misc Tab
MiscSec:NewButton("Load CMD-X", "Loads the CMD-X script.", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
end)
MiscSec:NewButton("Load Infinite Yield", "Loads the Infinite Yield script.", function()
    loadstring(Game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
end)
--Credits Tab
CreditsSec:NewLabel("Discord: Untoast#0001")


game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Injected", Text = "Script successfully injected! Made by untoast."})

while true do
    currentstage = game:GetService("Players").LocalPlayer.PlayerGui.stage.Frame.Stage.Text
    nextstage = currentstage + 1
    if currentstage == "121" then
       nextstage = "None"
    end
    CurrentL:UpdateLabel("Current Stage:  " ..currentstage)
    NextL:UpdateLabel("Next Stage:  " ..nextstage)
    wait(0.1)
end
