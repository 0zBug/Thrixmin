
local Blur = loadstring(game:HttpGet("https://raw.githubusercontent.com/0zBug/Misc/main/Blur.lua"))()

local ScreenGui = Instance.new("ScreenGui", game.CoreGui)

local Logs = Instance.new("Frame", ScreenGui)
Logs.AnchorPoint = Vector2.new(0.5, 0.5)
Logs.BackgroundColor3 = Color3.new(0, 0, 0)
Logs.Position = UDim2.new(0.5, 0, 0.5, 0)
Logs.Size = UDim2.new(0.22, 0, 0.23, 0)
Logs.Style = Enum.FrameStyle.DropShadow
Logs.BackgroundTransparency = 0.5
Logs.Active = true
Logs.Draggable = true

Blur:BindFrame(Logs, {
    Transparency = 0.492, Material = Enum.Material.Glass, BrickColor = BrickColor.new('White')
})

local Clear = Instance.new("TextButton", Logs)
Clear.AnchorPoint = Vector2.new(0.5, 0.5)
Clear.BackgroundTransparency = 0.9
Clear.Position = UDim2.new(0.25, 0, 0.9, 0)
Clear.Size = UDim2.new(0.49, 0, 0.18, 0)
Clear.Font = Enum.Font.SourceSans
Clear.Text = "Clear"
Clear.TextColor3 = Color3.new(1, 1, 1)
Clear.TextSize = 16

local Save = Instance.new("TextButton", Logs)
Save.AnchorPoint = Vector2.new(0.5, 0.5)
Save.BackgroundTransparency = 0.9
Save.Position = UDim2.new(0.75, 0, 0.9, 0)
Save.Size = UDim2.new(0.49, 0, 0.18, 0)
Save.Font = Enum.Font.SourceSans
Save.Text = "Save to file"
Save.TextColor3 = Color3.new(1, 1, 1)
Save.TextSize = 16

local Close = Instance.new("TextButton", Logs)
Close.AnchorPoint = Vector2.new(0.5, 0.5)
Close.BackgroundTransparency = 1
Close.Position = UDim2.new(0.98, 0, 0.02, 0)
Close.Size = UDim2.new(0.04, 0, 0.08, 0)
Close.Font = Enum.Font.Code
Close.Text = "x"
Close.TextColor3 = Color3.new(1, 1, 1)
Close.TextSize = 24

local Scroll = Instance.new("ScrollingFrame", Logs)
Scroll.AnchorPoint = Vector2.new(0.5, 0.5)
Scroll.Position = UDim2.new(0.5, 0, 0.44, 0)
Scroll.BackgroundColor3 = Color3.new(1, 1, 1)
Scroll.BackgroundTransparency = 1
Scroll.BorderSizePixel = 0
Scroll.Size = UDim2.new(1, 0, 0.7, 0)
Scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
Scroll.ScrollBarThickness = 6

local Template = Instance.new("TextLabel", Logs)
Template.BackgroundColor3 = Color3.new(1, 1, 1)
Template.BackgroundTransparency = 1
Template.Position = UDim2.new(0, 0, 0, -25)
Template.Size = UDim2.new(1, 0, 0, 20)
Template.Font = Enum.Font.ArialBold
Template.Text = ""
Template.TextColor3 = Color3.new(1, 1, 1)
Template.TextSize = 15
Template.TextXAlignment = Enum.TextXAlignment.Left
Template.TextWrap = true

local Connections = {}
local LoggedTable = {}
local ChatData

local GetTotalSize = function()
    local TotalSize = UDim2.new(0, 0, 0, 0)

    for i, v in next, LoggedTable do
        TotalSize = TotalSize + UDim2.new(0, 0, 0, v.Size.Y.Offset)
    end

    return TotalSize
end

local BUD = UDim2.new(0, 0, 0, 0)
local TotalNum = 0

local function CreateLog(txt, colo, time)
    local Temp = Template:Clone()
    Temp.Parent = Scroll
    Temp.Name = txt .. "Logged"
    Temp.Text = tostring(txt)
    Temp.Visible = true
    Temp.Position = BUD + UDim2.new(0, 0, 0, 0)

    local timeVal = Instance.new("StringValue", Temp)
    timeVal.Name = "TimeVal"
    timeVal.Value = time

    TotalNum = TotalNum + 1

    if not Temp.TextFits then
        repeat
            Temp.Size = UDim2.new(Temp.Size.X.Scale, Temp.Size.X.Offset, Temp.Size.Y.Scale, Temp.Size.Y.Offset + 10)
            Temp.Text = txt
        until Temp.TextFits
    end

    BUD = BUD + UDim2.new(0, 0, 0, Temp.Size.Y.Offset)

    table.insert(LoggedTable, Temp)

    local totSize = GetTotalSize()

    if totSize.Y.Offset >= Scroll.CanvasSize.Y.Offset then
        Scroll.CanvasSize = UDim2.new(totSize.X.Scale, totSize.X.Offset, totSize.Y.Scale, totSize.Y.Offset + 100)
        Scroll.CanvasPosition = Scroll.CanvasPosition + Vector2.new(0, totSize.Y.Offset)
    end

    return Temp
end

for _,Player in pairs(game.Players:GetChildren()) do
    local Connection = Player.Chatted:Connect(function(Message)
        local t = os.date("*t")

        if string.len(Message) >= 300 then
            return nil
        end

        CreateLog(Player.DisplayName .. " (@" .. Player.Name .. ") : " .. Message, Color3.new(255, 255, 255), t["hour"] .. ":" .. t["min"] .. ":" .. t["sec"])
    end)

    table.insert(Connections, Connection)
end

local Connection = game.Players.PlayerAdded:Connect(function(Player)
    local Connection = Player.Chatted:connect(function(Message)
        local t = os.date("*t")

        if string.len(Message) >= 300 then
            return nil
        end

        CreateLog(Player.DisplayName .. " (@" .. Player.Name .. ") : " .. Message, Color3.new(255, 255, 255), t["hour"] .. ":" .. t["min"] .. ":" .. t["sec"])
    end)

    table.insert(Connections, Connection)
end)

table.insert(Connections, Connection)

local Connection = Clear.MouseButton1Down:Connect(function()
    LoggedTable = {}
    ChatData = ""
    Scroll.CanvasPosition = Vector2.new(0, 0)
    Scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
    BUD = UDim2.new(0, 0, 0, 0)

    for i, v in pairs(Scroll:GetChildren()) do
        v:Destroy()
    end
end)

table.insert(Connections, Connection)

local Connection = Save.MouseButton1Down:Connect(function()
    ChatData = ""

    for i, v in pairs(Scroll:GetChildren()) do
        ChatData = ChatData .. v.TimeVal.Value .. " " .. v.Text .. "\n"
    end

    writefile(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name .. " " .. game.JobId .. ".txt", ChatData)
end)

table.insert(Connections, Connection)

local Connection = Close.MouseButton1Down:Connect(function()
    for i,v in pairs(Connections) do
        pcall(function()
            v:Disconnect()
        end)
    end
    ScreenGui:Destroy()
end)

table.insert(Connections, Connection)
