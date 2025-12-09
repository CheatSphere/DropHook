--// If you're here because the script didn't let you in for some reason it's most likely because it won't function right with what you're doing (level 3 executors will NOT work)

local IsMobile = game:GetService("UserInputService"):GetPlatform() == Enum.Platform.Android or game:GetService("UserInputService"):GetPlatform() == Enum.Platform.IOS --// pasted 😏

if IsMobile and not getgenv().MobileYes then
    getgenv().MobileYes = true
    game.StarterGui:SetCore("SendNotification", {Title = "ERLChook",Text = "The script isn't tested on mobile and might be buggy, if you still want to use ERLChook just run the scritp again.",Duration = 15,})
    return
end

---// remove bad executor

if getidentity() > 4
then

------
------

if not game:IsLoaded() then game.Loaded:Wait() end

--// is already loaded
if getgenv().ERLChookloaded then 
    game.StarterGui:SetCore("SendNotification", {Title = "ERLChook",Text = "The script is already loaded!",Duration = 5,})
    return
end
--\\

---// game check
if game.PlaceId == 2534724415 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CheatSphere/ERLChook/refs/heads/main/script/ERLChook.lua"))()
else
    game.StarterGui:SetCore("SendNotification",{Title = "ERLChook",Text = "ERLChook doesn't work on other games than ER:LC!",Duration = 10,})
end
---\\

------
------

else
game.StarterGui:SetCore("SendNotification",{Title = "ERLChook",Text = "Executor not supported!",Duration = 10,})
end

---\\
