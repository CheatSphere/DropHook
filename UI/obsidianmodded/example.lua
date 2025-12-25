--local Library = loadstring(game:HttpGet("Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/CheatSphere/DropHook/refs/heads/main/UI/obsidianmodded/ThemeManager.lua"))() 
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/CheatSphere/DropHook/refs/heads/main/UI/obsidianmodded/SaveManager.lua"))()

local Options, Toggles = Library.Options, Library.Toggles
Library.ForceCheckbox, Library.ShowToggleFrameInKeybinds = true, true

local Window = Library:CreateWindow({
	Title = "obsidian",
	Footer = "footer",
	Icon = 95816097006870,
	NotifySide = "Left",
	ShowCustomCursor = false
})

-- https://lucide.dev/
local Tabs = {
	Main = Window:AddTab("Main", "user"),
	["UI Settings"] = Window:AddTab("UI Settings", "settings"),
}

local LeftGroupBox = Tabs.Main:AddLeftGroupbox("Groupbox", "boxes")
local DropdownGroupBox = Tabs.Main:AddRightGroupbox("Dropdowns", "boxes")


LeftGroupBox:AddToggle("MyToggle", {Text = "This is a toggle",Default = true,Callback = function(Value)
		print("[cb] MyToggle changed to:", Value)
end})
	:AddColorPicker("ColorPicker1", {Default = Color3.fromRGB(255,255,255),Title = "colorpicker",--Transparency = 0,
		Callback = function(Value)
		print("[cb] Color changed!", Value)
end})

LeftGroupBox:AddButton("button", function() 
    print("ok")
end)

LeftGroupBox:AddLabel("This is a label")

LeftGroupBox:AddLabel("This is a label\n\nwhich wraps its text!", true)

LeftGroupBox:AddSlider("FOVsize", {Text = "FOV Size",Default = 125,Min = 1,Max = 250,Rounding = 0,Callback = function(Value)
    print("[cb] MySlider was changed! New value:", Value)
end})

LeftGroupBox:AddInput("MyTextbox", {Default = "My textbox!",Numeric = false,Finished = false,
	Text = "This is a textbox",
	Callback = function(Value)
		print("[cb] Text updated. New text:", Value)
end})

DropdownGroupBox:AddDropdown("dropdown", {Values = { "1", "2" },Default = "1",Text = "dropdown",Searchable = true,Callback = function(Value) --// multi true
		print("[cb] Dropdown got changed. New value:", Value)
end})

-- UI Settings
local MenuGroup = Tabs["UI Settings"]:AddLeftGroupbox("Menu", "wrench")

MenuGroup:AddDropdown("NotificationSide", {Values = { "Left", "Right" },Default = "Right",Text = "Notification Side",Callback = function(Value)
	Library:SetNotifySide(Value)
end,})

MenuGroup:AddLabel("Menu Bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu Bind" })

MenuGroup:AddButton("Unload", function()
	Library:Unload()
end)

Library.ToggleKeybind = Options.MenuKeybind
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
ThemeManager:SetFolder("MyScriptHub")
SaveManager:SetFolder("MyScriptHub/specific-game")
SaveManager:SetSubFolder("specific-place")
SaveManager:BuildConfigSection(Tabs["UI Settings"])
ThemeManager:ApplyToTab(Tabs["UI Settings"])
SaveManager:LoadAutoloadConfig()


Library:Notify({Title = "obsidian",Time = 10,Description = "notif 1"})

Library:Notifyy({Title = "obsidian",Time = 10,Description = "notif 2"})
