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
