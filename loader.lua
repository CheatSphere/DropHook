--// If you're here because the script didn't let you in for some reason it's most likely because it won't function right with what you're doing (level 3 executors will NOT work)

local IsMobile = game:GetService("UserInputService"):GetPlatform() == Enum.Platform.Android or game:GetService("UserInputService"):GetPlatform() == Enum.Platform.IOS --// pasted 😏

if IsMobile and not getgenv().MobileYes then
    getgenv().MobileYes = true
    game.StarterGui:SetCore("SendNotification", {Title = "DropHook",Text = "The script isn't tested on mobile and might be buggy, if you still want to use DropHook just run the scritp again.",Duration = 15,})
    return
end

---// remove bad executor

if getidentity() > 4
then

------
------

if not game:IsLoaded() then game.Loaded:Wait() end

if not isfolder("DropHook") then makefolder("DropHook") end
if not isfolder("DropHook/configs") then makefolder("DropHook/configs") end
if not isfolder("DropHook/settings") then makefolder("DropHook/settings") end
if not isfolder("DropHook/assets") then makefolder("DropHook/assets") end

--// is already loaded
if getgenv().DropHookloaded then 
    game.StarterGui:SetCore("SendNotification", {Title = "DropHook",Text = "The script is already loaded!",Duration = 5,})
    return
end
--\\

---// game check
if game.PlaceId == 2534724415 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CheatSphere/DropHook/refs/heads/main/script/DropHook.lua"))()
else
    game.StarterGui:SetCore("SendNotification",{Title = "DropHook",Text = "DropHook doesn't work on other games than ER:LC!",Duration = 10,})
end
---\\

------
------

else
game.StarterGui:SetCore("SendNotification",{Title = "DropHook",Text = "Executor not supported!",Duration = 10,})
end

---\\
