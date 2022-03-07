
local PNG = loadstring(game:HttpGet("https://raw.githubusercontent.com/0zBug/Roblox-PNG-Library/master/init.lua"))()

return {
    {"draw", "Draws the url of a png to the canvas.", function(Args)
        local Picture = PNG.new(game:HttpGet(Args[2]))
        local Cells = {}
        local Width, Height = Picture.Width / 32, Picture.Height / 32

        for i = 0, 1023 do
            local x, y = i % 32 + 1, math.floor(i / 32) + 1
            local Color, Alpha = Picture:GetPixel(Width * x, Height * y)
            local R, G, B = Color.R * 255, Color.G * 255, Color.B * 255

            local Connection = (getconnections(game.Players.LocalPlayer.PlayerGui.MainGui.PaintFrame.Grid[i + 1].MouseButton1Click))[1]
            setupvalue(Connection.Function, 9, Color3.fromRGB(R - (R % 25), G - (G % 25), B - (B % 25)))
            Connection.Function()
        end
    end}
}
