return function(loader_url, token)
	if token == string.char(100,105,111,120,105,100,101,95,107,101,121,95,116,111,107,101,110,45,48,57,55,50,45,52,99,99,102,45,57,97,52,57) then


		-- StarterGui.ScreenGui
		local ScreenGui = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
		ScreenGui["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


		-- StarterGui.ScreenGui.Frame
		local Frame = Instance.new("Frame", ScreenGui);
		Frame["ZIndex"] = 0;
		Frame["BorderSizePixel"] = 0;
		Frame["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
		Frame["AnchorPoint"] = Vector2.new(0.5, 0.5);
		Frame["Size"] = UDim2.new(0, 406, 0, 192);
		Frame["Position"] = UDim2.new(0.5, 0, 0.5, 0);
		Frame["BorderColor3"] = Color3.fromRGB(0, 0, 0);

		Instance.new('UIDragDetector').Parent = Frame


		-- StarterGui.ScreenGui.Frame.UICorner
		local UICorner = Instance.new("UICorner", Frame);
		UICorner["CornerRadius"] = UDim.new(0, 4);


		-- StarterGui.ScreenGui.Frame.UIStroke
		-- StarterGui.ScreenGui.Frame.UIStroke
		local UIStroke = Instance.new("UIStroke", Frame);
		UIStroke["Thickness"] = 2;
		UIStroke["Color"] = Color3.fromRGB(18, 18, 18);
		UIStroke["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


		-- StarterGui.ScreenGui.Frame.Frame
		-- StarterGui.ScreenGui.Frame.Frame
		local Frame1 = Instance.new("Frame", Frame);
		Frame1["ZIndex"] = 0;
		Frame1["BorderSizePixel"] = 0;
		Frame1["BackgroundColor3"] = Color3.fromRGB(18, 18, 18);
		Frame1["AnchorPoint"] = Vector2.new(0.5, 0.5);
		Frame1["Size"] = UDim2.new(0, 404, 0, 190);
		Frame1["Position"] = UDim2.new(0.5, 0, 0.5, 0);
		Frame1["BorderColor3"] = Color3.fromRGB(0, 0, 0);


		-- StarterGui.ScreenGui.Frame.Frame.UICorner
		-- StarterGui.ScreenGui.Frame.Frame.UICorner
		local UICorner1 = Instance.new("UICorner", Frame1);
		UICorner1["CornerRadius"] = UDim.new(0, 4);


		-- StarterGui.ScreenGui.Frame.Frame.TextLabel
		-- StarterGui.ScreenGui.Frame.Frame.TextLabel
		local TextLabel = Instance.new("TextLabel", Frame1);
		TextLabel["BorderSizePixel"] = 0;
		TextLabel["TextSize"] = 17;
		TextLabel["TextXAlignment"] = Enum.TextXAlignment.Left;
		TextLabel["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		TextLabel["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
		TextLabel["TextColor3"] = Color3.fromRGB(255, 255, 255);
		TextLabel["BackgroundTransparency"] = 1;
		TextLabel["Size"] = UDim2.new(0, 384, 0, 35);
		TextLabel["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		TextLabel["Text"] = [[Dioxide - Key System]];
		TextLabel["Position"] = UDim2.new(0.02475, 0, 0, 0);


		-- StarterGui.ScreenGui.Frame.Frame.EnterKey
		-- StarterGui.ScreenGui.Frame.Frame.EnterKey
		local EnterKey = Instance.new("Frame", Frame1);
		EnterKey["BorderSizePixel"] = 0;
		EnterKey["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
		EnterKey["Size"] = UDim2.new(0, 384, 0, 30);
		EnterKey["Position"] = UDim2.new(0.02475, 0, 0.22105, 0);
		EnterKey["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		EnterKey["Name"] = [[EnterKey]];


		-- StarterGui.ScreenGui.Frame.Frame.EnterKey.UICorner
		-- StarterGui.ScreenGui.Frame.Frame.EnterKey.UICorner
		local UICorner2 = Instance.new("UICorner", EnterKey);
		UICorner2["CornerRadius"] = UDim.new(0, 2);


		-- StarterGui.ScreenGui.Frame.Frame.EnterKey.UIStroke
		-- StarterGui.ScreenGui.Frame.Frame.EnterKey.UIStroke
		local UIStroke1 = Instance.new("UIStroke", EnterKey);
		UIStroke1["Color"] = Color3.fromRGB(45, 45, 45);
		UIStroke1["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


		-- StarterGui.ScreenGui.Frame.Frame.EnterKey.TextBox
		-- StarterGui.ScreenGui.Frame.Frame.EnterKey.TextBox
		local TextBox = Instance.new("TextBox", EnterKey);
		TextBox["CursorPosition"] = -1;
		TextBox["TextXAlignment"] = Enum.TextXAlignment.Left;
		TextBox["BorderSizePixel"] = 0;
		TextBox["TextTruncate"] = Enum.TextTruncate.AtEnd;
		TextBox["TextSize"] = 14;
		TextBox["TextColor3"] = Color3.fromRGB(255, 255, 255);
		TextBox["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		TextBox["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
		TextBox["PlaceholderText"] = [[Enter Key Here]];
		TextBox["Size"] = UDim2.new(0, 377, 0, 30);
		TextBox["Position"] = UDim2.new(0.01823, 0, 0, 0);
		TextBox["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		TextBox["Text"] = [[]];
		TextBox["BackgroundTransparency"] = 1;


		-- StarterGui.ScreenGui.Frame.Frame.Bottom
		-- StarterGui.ScreenGui.Frame.Frame.Bottom
		local Bottom = Instance.new("Folder", Frame1);
		Bottom["Name"] = [[Bottom]];


		-- StarterGui.ScreenGui.Frame.Frame.Bottom.Frame
		-- StarterGui.ScreenGui.Frame.Frame.Bottom.Frame
		local Frame3 = Instance.new("Frame", Bottom);
		Frame3["BorderSizePixel"] = 0;
		Frame3["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
		Frame3["Size"] = UDim2.new(0, 405, 0, 20);
		Frame3["Position"] = UDim2.new(-0.00248, 0, 0.89474, 0);
		Frame3["BorderColor3"] = Color3.fromRGB(0, 0, 0);


		-- StarterGui.ScreenGui.Frame.Frame.Bottom.Frame.UICorner
		-- StarterGui.ScreenGui.Frame.Frame.Bottom.Frame.UICorner
		local UICorner3 = Instance.new("UICorner", Frame3);
		UICorner3["CornerRadius"] = UDim.new(0, 4);


		-- StarterGui.ScreenGui.Frame.Frame.Bottom.Frame
		-- StarterGui.ScreenGui.Frame.Frame.Bottom.Frame
		local Frame4 = Instance.new("Frame", Bottom);
		Frame4["BorderSizePixel"] = 0;
		Frame4["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
		Frame4["Size"] = UDim2.new(0, 404, 0, 20);
		Frame4["Position"] = UDim2.new(0, 0, 0.84737, 0);
		Frame4["BorderColor3"] = Color3.fromRGB(0, 0, 0);


		-- StarterGui.ScreenGui.Frame.Frame.Bottom.Frame
		-- StarterGui.ScreenGui.Frame.Frame.Bottom.Frame
		local Frame5 = Instance.new("Frame", Bottom);
		Frame5["BorderSizePixel"] = 0;
		Frame5["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
		Frame5["Size"] = UDim2.new(0, 404, 0, 1);
		Frame5["Position"] = UDim2.new(0, 0, 0.84211, 0);
		Frame5["BorderColor3"] = Color3.fromRGB(0, 0, 0);


		-- StarterGui.ScreenGui.Frame.Frame.Bottom.TextLabel
		-- StarterGui.ScreenGui.Frame.Frame.Bottom.TextLabel
		local TextLabel1 = Instance.new("TextLabel", Bottom);
		TextLabel1["ZIndex"] = 5;
		TextLabel1["BorderSizePixel"] = 0;
		TextLabel1["TextSize"] = 14;
		TextLabel1["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		TextLabel1["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
		TextLabel1["TextColor3"] = Color3.fromRGB(164, 164, 164);
		TextLabel1["BackgroundTransparency"] = 1;
		TextLabel1["Size"] = UDim2.new(0, 405, 0, 29);
		TextLabel1["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		TextLabel1["Text"] = [[_VERSION 1.0.0]];
		TextLabel1["Position"] = UDim2.new(-0.00248, 0, 0.84737, 0);


		-- StarterGui.ScreenGui.Frame.Frame.CheckKey
		-- StarterGui.ScreenGui.Frame.Frame.CheckKey
		local CheckKey = Instance.new("TextButton", Frame1);
		CheckKey["BorderSizePixel"] = 0;
		CheckKey["TextSize"] = 14;
		CheckKey["TextColor3"] = Color3.fromRGB(255, 255, 255);
		CheckKey["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
		CheckKey["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
		CheckKey["Size"] = UDim2.new(0, 384, 0, 30);
		CheckKey["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		CheckKey["Text"] = [[Check Key]];
		CheckKey["Name"] = [[CheckKey]];
		CheckKey["Position"] = UDim2.new(0.02475, 0, 0.42105, 0);


		-- StarterGui.ScreenGui.Frame.Frame.CheckKey.UICorner
		-- StarterGui.ScreenGui.Frame.Frame.CheckKey.UICorner
		local UICorner4 = Instance.new("UICorner", CheckKey);
		UICorner4["CornerRadius"] = UDim.new(0, 2);


		-- StarterGui.ScreenGui.Frame.Frame.CheckKey.UIStroke
		-- StarterGui.ScreenGui.Frame.Frame.CheckKey.UIStroke
		local UIStroke2 = Instance.new("UIStroke", CheckKey);
		UIStroke2["Color"] = Color3.fromRGB(45, 45, 45);
		UIStroke2["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


		-- StarterGui.ScreenGui.Frame.Frame.Get Key
		-- StarterGui.ScreenGui.Frame.Frame.Get Key
		local GetKey = Instance.new("TextButton", Frame1);
		GetKey["BorderSizePixel"] = 0;
		GetKey["TextSize"] = 14;
		GetKey["TextColor3"] = Color3.fromRGB(255, 255, 255);
		GetKey["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
		GetKey["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
		GetKey["Size"] = UDim2.new(0, 384, 0, 30);
		GetKey["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		GetKey["Text"] = [[Get Key]];
		GetKey["Name"] = [[Get Key]];
		GetKey["Position"] = UDim2.new(0.02475, 0, 0.62105, 0);


		-- StarterGui.ScreenGui.Frame.Frame.Get Key.UICorner
		-- StarterGui.ScreenGui.Frame.Frame.Get Key.UICorner
		local UICorner5 = Instance.new("UICorner", GetKey);
		UICorner5["CornerRadius"] = UDim.new(0, 2);


		-- StarterGui.ScreenGui.Frame.Frame.Get Key.UIStroke
		-- StarterGui.ScreenGui.Frame.Frame.Get Key.UIStroke
		local UIStroke3 = Instance.new("UIStroke", GetKey);
		UIStroke3["Color"] = Color3.fromRGB(45, 45, 45);
		UIStroke3["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

		GetKey.MouseEnter:Connect(function()
			GetKey.BackgroundColor3 = Color3.fromRGB(38,38,38)
		end)

		GetKey.MouseLeave:Connect(function()
			GetKey.BackgroundColor3 = Color3.fromRGB(31,31,31)
		end)

		CheckKey.MouseEnter:Connect(function()
			CheckKey.BackgroundColor3 = Color3.fromRGB(38,38,38)
		end)

		CheckKey.MouseLeave:Connect(function()
			CheckKey.BackgroundColor3 = Color3.fromRGB(31,31,31)
		end)

		EnterKey.MouseEnter:Connect(function()
			EnterKey.BackgroundColor3 = Color3.fromRGB(38,38,38)
		end)

		EnterKey.MouseLeave:Connect(function()
			EnterKey.BackgroundColor3 = Color3.fromRGB(31,31,31)
		end)

		GetKey.MouseButton1Click:Connect(function()
			GetKey.Text = 'Get Key - Copied Link'
			setclipboard('https://workink.net/27sB/yuinzg9j')
			task.wait(.5)
			GetKey.Text = 'Get Key'
		end)

		if isfile("dioxide_license.txt") then
			local saved_data = game:GetService('HttpService'):JSONDecode(game:HttpGet("https://work.ink/_api/v2/token/isValid/" .. readfile('dioxide_license.txt')))
			print(saved_data)
			if saved_data.valid then
				ScreenGui:Destroy()
				loadstring(game:HttpGet(loader_url))()
			else
				delfile("dioxide_license.txt")
				warn("Dioxide.lol: Your license key has expired, Please create a new one.")
			end
		end

		CheckKey.MouseButton1Click:Connect(function()
			local Data = game:GetService('HttpService'):JSONDecode(game:HttpGet("https://work.ink/_api/v2/token/isValid/" .. EnterKey.TextBox.Text))
			if Data.valid then
				CheckKey.Text = 'Check Key - Valid'
				writefile('dioxide_license.txt', EnterKey.TextBox.Text)
				task.wait(.67)
				ScreenGui:Destroy()
				loadstring(game:HttpGet(loader_url))()
			else
				CheckKey.Text = 'Check Key - Invalid'
				task.wait(.67)
				CheckKey.Text = 'Check Key'
			end
		end)
	end
end
