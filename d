local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")

local PLACE_ID = 126884695634066
local PRIVATE_SERVER_CODE = "ece247e419febc4c8b29d8311b93cc59"

function TPReturner()
    local success, result = pcall(function()
        TeleportService:TeleportToPrivateServer(PLACE_ID, PRIVATE_SERVER_CODE, {Players.LocalPlayer})
    end)
    
    if not success then
        queue_on_teleport([[
            wait(2)
            game:GetService("TeleportService"):TeleportToPrivateServer(126884695634066, "ece247e419febc4c8b29d8311b93cc59", {game.Players.LocalPlayer})
        ]])
        Players.LocalPlayer:Kick("Rejoining private server...")
    end
end

function Teleport()
    TPReturner()
end

Teleport()
