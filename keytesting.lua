local key = _G.key
local hts = game:GetService('HttpService')
print('Found Varibles')

local check = "https://work.ink/_api/v2/token/isValid/"
print('Check: ' .. check)
if hts:JSONDecode(hts:GetAsync(check .. key)).valid then
	print(hts:JSONDecode(hts:GetAsync(check .. key)).valid)
	if not game.Loaded then game.Loaded:Wait() end
	
    local repo = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
    local Library = loadstring(game:HttpGet(repo .. "Library.lua"))()
    local ThemeManager = loadstring(game:HttpGet(repo .. "addons/ThemeManager.lua"))()
    local SaveManager = loadstring(game:HttpGet(repo .. "addons/SaveManager.lua"))()

	-- Services and Varibles
	local Players = game:GetService('Players')
	local UserInputService = game:GetService("UserInputService")
	local RunService = game:GetService('RunService')
	local TeleportService = game:GetService('TeleportService')

	local LocalPlayer = Players.LocalPlayer
	local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
	local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
	local WalkSpeed = Character.Humanoid.WalkSpeed
	local Camera = workspace.CurrentCamera
	local Humanoid = Character:WaitForChild("Humanoid")
	local Options = Library.Options
	local Toggles = Library.Toggles


	-- New function if in testing
	if RunService:IsStudio() then
		function identifyexecutor()
			return 'Studio_Env'
		end
	end


	-- Init Dioxide.lol

	Library:SetWatermarkVisibility(true)
	Library:SetWatermark("DIOXIDE.LOL | 00:FPS | 00:MS")

	Library:Notify({
		Title = "Dioxide.lol";
		Description = "Successfully loaded Dioxide\nGame: ".. game.Name .."\nExecutor: " .. identifyexecutor() or 'N/A';
	})

	Dioxide_Window = Library:CreateWindow({
		Center = true;
		Title = 'Dioxide.lol';
		Footer = '_BUILD 1.0.0';
	})

	Tabs = {
		Home = Dioxide_Window:AddTab("Home", "house");
		Main = Dioxide_Window:AddTab("Main", "locate");
		Player = Dioxide_Window:AddTab('Player', 'user');
		Misc = Dioxide_Window:AddTab('Miscellaneous', 'test-tube-diagonal');
		UI_Settings = Dioxide_Window:AddTab('UI Settings', 'palette')
	}

	-- // Home Tab
	AccountInfo = Tabs.Home:AddLeftGroupbox('Account', "circle-user")
	SupportedInfo = Tabs.Home:AddRightGroupbox('Supported Games:', 'dices')

	AccountInfo:AddImage("LocalThumbnail", {
		Image = Players:GetUserThumbnailAsync(LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
	})

	AccountInfo:AddLabel('WelcomeLabel', {
		Text = 'Welcome back ' .. LocalPlayer.DisplayName .. '!\nGame: ' .. game.Name .. '\nExecutor: ' .. identifyexecutor() or 'N/A';
		DoesWrap = true
	})

	supported_games = {
		["Baddies"] = true;
		["Legends of Speed"] = true;
		["DaHood"] = false;
		["Blade Ball"] = false;
	}

	for _gn, is in pairs(supported_games) do
		if is then
			SupportedInfo:AddLabel(_gn .. ' - 🟢')
		else
			SupportedInfo:AddLabel(_gn .. ' - 🔴')
		end
	end


	-- // Player
	local Movement = Tabs.Player:AddLeftGroupbox('Movement', 'rabbit')

	local flightsliderEnabled = true
	local speedsliderEnabled = true

	local Flags = {
		moving = false,
		speed = 16,
		speedKey = Enum.KeyCode.C,
	}

	local flyFlags = {
		flying = false,
		flySpeed = 250,
		flyKey = Enum.KeyCode.X,
		keys = {W=false,A=false,S=false,D=false,Space=false,Ctrl=false}
	}

	local speedToggle = Movement:AddToggle("CFrameSpeed_Toggle", {
		Text = "CFrame Speed",
		Default = false,
		Tooltip = "Enable CFrame Speed",
		Callback = function(val)
			Flags.moving = val
			speedsliderEnabled = not val
		end
	})

	Movement:AddLabel("CFrame Speed Keybind"):AddKeyPicker("CFrameSpeed_Keybind", {
		Default="C",
		SyncToggleState=false,
		Mode="Toggle",
		Text="Speed Keybind",
		NoUI=false,
		Callback=function(key)
			if key and typeof(key)=="EnumItem" then
				Flags.speedKey=Enum.KeyCode[key.Name]
			end
		end,
		ChangedCallback=function(key)
			if key and typeof(key)=="EnumItem" then
				Flags.speedKey=Enum.KeyCode[key.Name]
			end
		end
	})
	local speedSlider = Movement:AddSlider("CFrameSpeed_Slider", {
		Text="Speed",
		Default=16,
		Min=0,
		Max=250,
		Compact=true,
		Disabled=true,
		Callback=function(val) Flags.speed=val end
	})

	Movement:AddDivider()

	local flyToggle = Movement:AddToggle("CFrameFlight_Toggle", {
		Text="CFrame Flight",
		Default=false,
		Tooltip = "Enable CFrame Flight",
		Callback=function(val)
			flyFlags.flying = val
			flightsliderEnabled = not val
			if Humanoid then Humanoid.PlatformStand=val end
		end
	})

	Movement:AddLabel("CFrame Flight Keybind"):AddKeyPicker("CFrameFlight_Keybind", {
		Default="X",
		SyncToggleState=false,
		Mode="Toggle",
		Text="Flight Keybind",
		NoUI=false,
		Callback=function(key)
			if key and typeof(key)=="EnumItem" then
				flyFlags.flyKey=Enum.KeyCode[key.Name]
			end
		end,
		ChangedCallback=function(key)
			if key and typeof(key)=="EnumItem" then
				flyFlags.flyKey=Enum.KeyCode[key.Name]
			end
		end
	})

	local flySlider = Movement:AddSlider("CFrameFlight_Slider", {
		Text="Speed",
		Default=250,
		Min=0,
		Max=2000,
		Compact=true,
		Disabled=true,
		Callback=function(val) flyFlags.flySpeed=val end
	})

	UserInputService.InputBegan:Connect(function(input,gp)
		if gp then return end

		if input.UserInputType==Enum.UserInputType.Keyboard then
			if input.KeyCode==Flags.speedKey then
				Flags.moving=not Flags.moving
				speedToggle:SetValue(Flags.moving)
				speedSlider:SetDisabled(not Flags.moving)
			end
			if input.KeyCode==flyFlags.flyKey then
				flyFlags.flying=not flyFlags.flying
				flyToggle:SetValue(flyFlags.flying)
				flySlider:SetDisabled(not flyFlags.flying)
				if Humanoid then Humanoid.PlatformStand=flyFlags.flying end
			end

			if input.KeyCode==Enum.KeyCode.W then flyFlags.keys.W=true end
			if input.KeyCode==Enum.KeyCode.A then flyFlags.keys.A=true end
			if input.KeyCode==Enum.KeyCode.S then flyFlags.keys.S=true end
			if input.KeyCode==Enum.KeyCode.D then flyFlags.keys.D=true end
			if input.KeyCode==Enum.KeyCode.Space then flyFlags.keys.Space=true end
			if input.KeyCode==Enum.KeyCode.LeftControl then flyFlags.keys.Ctrl=true end
		end
	end)

	UserInputService.InputEnded:Connect(function(input)
		if input.KeyCode==Enum.KeyCode.W then flyFlags.keys.W=false end
		if input.KeyCode==Enum.KeyCode.A then flyFlags.keys.A=false end
		if input.KeyCode==Enum.KeyCode.S then flyFlags.keys.S=false end
		if input.KeyCode==Enum.KeyCode.D then flyFlags.keys.D=false end
		if input.KeyCode==Enum.KeyCode.Space then flyFlags.keys.Space=false end
		if input.KeyCode==Enum.KeyCode.LeftControl then flyFlags.keys.Ctrl=false end
	end)

	RunService.RenderStepped:Connect(function(dt)
		if not HumanoidRootPart or not Humanoid then return end
		local camCFrame = CFrame.new(Vector3.zero, Vector3.new(Camera.CFrame.LookVector.X,0,Camera.CFrame.LookVector.Z))
		local forward = camCFrame.LookVector
		local right = camCFrame.RightVector
		local up = Vector3.new(0,1,0)

		if Flags.moving then
			local moveDir = Vector3.new()
			moveDir += (flyFlags.keys.W and forward or Vector3.zero)
			moveDir -= (flyFlags.keys.S and forward or Vector3.zero)
			moveDir += (flyFlags.keys.D and right or Vector3.zero)
			moveDir -= (flyFlags.keys.A and right or Vector3.zero)
			if moveDir.Magnitude>0 then
				moveDir=moveDir.Unit
				HumanoidRootPart.CFrame = HumanoidRootPart.CFrame + moveDir*Flags.speed*dt
			end
		end

		if flyFlags.flying then
			local flyDir = Vector3.new()
			flyDir += (flyFlags.keys.W and Camera.CFrame.LookVector or Vector3.zero)
			flyDir -= (flyFlags.keys.S and Camera.CFrame.LookVector or Vector3.zero)
			flyDir += (flyFlags.keys.D and Camera.CFrame.RightVector or Vector3.zero)
			flyDir -= (flyFlags.keys.A and Camera.CFrame.RightVector or Vector3.zero)
			flyDir += (flyFlags.keys.Space and up or Vector3.zero)
			flyDir -= (flyFlags.keys.Ctrl and up or Vector3.zero)
			if flyDir.Magnitude>0 then
				flyDir = flyDir.Unit
				HumanoidRootPart.CFrame = HumanoidRootPart.CFrame + flyDir*flyFlags.flySpeed*dt
				HumanoidRootPart.Velocity = Vector3.zero
			end
		end
	end)

	task.spawn(function()
		while true do
			if speedsliderEnabled then
				speedSlider:SetDisabled(true)
			else
				speedSlider:SetDisabled(false)
			end
			if flightsliderEnabled then
				flySlider:SetDisabled(true)
			else
				flySlider:SetDisabled(false)
			end
			task.wait(.01)
		end
	end)

	Movement:AddDivider()

	local rotationSpeed = 180
	local SpinKey = Enum.KeyCode.C
	local NoClipKey = Enum.KeyCode.X
	local floatHeight = 3

	local spinToggle = Movement:AddToggle("SpinBot_Toggle", {
		Text = "Spin-Bot",
		Default = false,
		Tooltip = "Enable Spin-Bot"
	})

	Movement:AddLabel("Spin-Bot Keybind"):AddKeyPicker("SpinBot_Keybind", {
		Default = "C",
		SyncToggleState = false,
		Mode = "Toggle",
		Text = "Spin Keybind",
		NoUI = false,
		Callback = function(key)
			if key and typeof(key) == "EnumItem" then
				SpinKey = Enum.KeyCode[key.Name]
			end
		end,
		ChangedCallback = function(key)
			if key and typeof(key) == "EnumItem" then
				SpinKey = Enum.KeyCode[key.Name]
			end
		end
	})

	local spinSlider = Movement:AddSlider("SpinBot_Speed", {
		Text = "Speed",
		Default = 180,
		Min = 0,
		Max = 2500,
		Compact = true,
		Disabled = true,
		Callback = function(val)
			rotationSpeed = val
		end
	})

	spinToggle:OnChanged(function(val)
		spinSlider:SetDisabled(not val)
	end)

	Movement:AddDivider()

	local noclipToggle = Movement:AddToggle("NoClip_Toggle", {
		Text = "NoClip",
		Default = false
	})

	Movement:AddLabel("NoClip Keybind"):AddKeyPicker("NoClip_Keybind", {
		Default = "X",
		SyncToggleState = false,
		Mode = "Toggle",
		Text = "NoClip Keybind",
		NoUI = false,
		Callback = function(key)
			if key and typeof(key) == "EnumItem" then
				NoClipKey = Enum.KeyCode[key.Name]
			end
		end,
		ChangedCallback = function(key)
			if key and typeof(key) == "EnumItem" then
				NoClipKey = Enum.KeyCode[key.Name]
			end
		end
	})

	UserInputService.InputBegan:Connect(function(input, gp)
		if gp then return end
		if input.UserInputType == Enum.UserInputType.Keyboard then
			if SpinKey and input.KeyCode == SpinKey then
				spinToggle:SetValue(not spinToggle.Value)
			end
			if NoClipKey and input.KeyCode == NoClipKey then
				noclipToggle:SetValue(not noclipToggle.Value)
			end
		end
	end)

	local function getFloorY()
		local ray = Ray.new(HumanoidRootPart.Position, Vector3.new(0, -500, 0))
		local hit = workspace:FindPartOnRay(ray, HumanoidRootPart)
		if hit then
			return hit.Position.Y
		end
		return HumanoidRootPart.Position.Y
	end

	RunService.RenderStepped:Connect(function(dt)
		if not HumanoidRootPart or not Humanoid then return end
		if spinToggle.Value then
			HumanoidRootPart.CFrame = HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(rotationSpeed * dt), 0)
		end
		for _, part in pairs(Character:GetDescendants()) do
			if part:IsA("BasePart") then
				part.CanCollide = not noclipToggle.Value
			end
		end
		if noclipToggle.Value then
			local floorY = getFloorY()
			local pos = HumanoidRootPart.Position
			HumanoidRootPart.CFrame = CFrame.new(pos.X, floorY + floatHeight, pos.Z, HumanoidRootPart.CFrame.LookVector.X, HumanoidRootPart.CFrame.LookVector.Y, HumanoidRootPart.CFrame.LookVector.Z)
		end
	end)









	-- purchase items

	local ShopGB = Tabs.Player:AddRightGroupbox('Shop', 'shopping-cart')






	-- // Miscellaneous
	local AudioPlayer = Tabs.Misc:AddRightGroupbox("Audio Player", "audio-lines")

	local Songs = {
		["Some Song"] = 123456789
	}

	AudioPlayer:AddInput("RobloxID_Input", {
		Text = "Audio ID";
		Numeric = true;
		ClearTextOnFocus = false;
		Placeholder = "1234567890"
	})



	-- UI Settings
	local MenuGroup = Tabs.UI_Settings:AddLeftGroupbox("Menu", "wrench")

	MenuGroup:AddToggle("KeybindMenuOpen", {
		Default = Library.KeybindFrame.Visible,
		Text = "Open Keybind Menu",
		Callback = function(value)
			Library.KeybindFrame.Visible = value
		end,
	})
	MenuGroup:AddToggle("ShowCustomCursor", {
		Text = "Custom Cursor",
		Default = true,
		Callback = function(Value)
			Library.ShowCustomCursor = Value
		end,
	})
	MenuGroup:AddDropdown("NotificationSide", {
		Values = { "Left", "Right" },
		Default = "Right",

		Text = "Notification Side",

		Callback = function(Value)
			Library:SetNotifySide(Value)
		end,
	})
	MenuGroup:AddDropdown("DPIDropdown", {
		Values = { "50%", "75%", "100%", "125%", "150%", "175%", "200%" },
		Default = "100%",

		Text = "DPI Scale",

		Callback = function(Value)
			Value = Value:gsub("%%", "")
			local DPI = tonumber(Value)

			Library:SetDPIScale(DPI)
		end,
	})
	MenuGroup:AddDivider()
	MenuGroup:AddLabel("Menu bind")
		:AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })

	MenuGroup:AddButton("Unload", function()
		Library:Unload()
	end)

	Library.ToggleKeybind = Options.MenuKeybind -- Allows you to have a custom keybind for the menu

	ThemeManager:SetLibrary(Library)
	SaveManager:SetLibrary(Library)
	SaveManager:IgnoreThemeSettings()
	SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
	ThemeManager:SetFolder("MyScriptHub")
	SaveManager:SetFolder("MyScriptHub/specific-game")
	SaveManager:SetSubFolder("specific-place")
	SaveManager:BuildConfigSection(Tabs.UI_Settings)
	ThemeManager:ApplyToTab(Tabs.UI_Settings)
	SaveManager:LoadAutoloadConfig()
else
	print('INVALID KEY')
end
