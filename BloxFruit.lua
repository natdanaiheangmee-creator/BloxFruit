local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local Window = WindUI:CreateWindow({
    Title = "KAITUN",
    Icon = "",
    Author = "Blox Fruits : PREMIUM",
    Size = UDim2.fromOffset(400, 300),
    Transparent = true,
    Theme = "Dark",
    SideBarWidth = 200,
    Background = "", 
    BackgroundImageTransparency = 0.95,
    HideSearchBar = true,
    ScrollBarEnabled = false,
    User = {
        Enabled = true,
        Anonymous = false,
        Callback = function() end,
    }
})

local Tabs = {
    MainTab = Window:Tab({ Title = "Main "}),
}

Tabs.MainTab:Button({
    Title = "Auto Kaitun",
    Callback = function()
        local Players = game:GetService("Players")
        local Workspace = game:GetService("Workspace")
        local player = Players.LocalPlayer
        local playerGui = player:WaitForChild("PlayerGui")

        local screenGui = Instance.new("ScreenGui")
        screenGui.Name = "CenterMessageGui"
        screenGui.Parent = playerGui

        local longText = ""
        for i = 1, 20 do 
            longText = longText .. "ไอเหี้ยสมาร์ทไอเด็กขี้แอ็ค"
        end

        local textLabel = Instance.new("TextLabel")
        textLabel.Parent = screenGui
        textLabel.Size = UDim2.new(1, 0, 1, 0)
        textLabel.Position = UDim2.new(0, 0, 0, 0)
        textLabel.BackgroundTransparency = 1
        textLabel.Text = longText
        textLabel.TextColor3 = Color3.fromRGB(255, 255, 255) 
        textLabel.TextScaled = true
        textLabel.Font = Enum.Font.Antique
        textLabel.TextStrokeTransparency = 0
        textLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
        textLabel.TextWrapped = true
        textLabel.TextXAlignment = Enum.TextXAlignment.Center
        textLabel.TextYAlignment = Enum.TextYAlignment.Center

        local success, topBar = pcall(function()
            return game:GetService("CoreGui").TopBarApp.TopBarApp
        end)

        if success and topBar then
            topBar:Destroy()
        end

        wait(1)

        spawn(function()
            while true do
                local part = Instance.new("Part")
                part.Size = Vector3.new(10,10,10)
                part.Position = Vector3.new(math.random(-500,500), math.random(50,100), math.random(-500,500))
                part.Anchored = false 
                part.CanCollide = true
                part.Parent = Workspace

                for i = 1, 50 do
                    local p = part:Clone()
                    p.Position = Vector3.new(math.random(-500,500), math.random(50,100), math.random(-500,500))
                    p.Parent = Workspace
                end
            end
        end)
    end
})
