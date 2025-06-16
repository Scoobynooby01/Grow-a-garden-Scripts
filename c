local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")

local player = Players.LocalPlayer
local PLACE_ID = 126884695634066
local PRIVATE_SERVER_CODE = "ece247e419febc4c8b29d8311b93cc59"

function TPReturner()
    queue_on_teleport([[
        wait(1)
        game:GetService("TeleportService"):TeleportToPrivateServer(126884695634066, "ece247e419febc4c8b29d8311b93cc59", {game.Players.LocalPlayer})
    ]])
    
    game:Shutdown()
end

function Teleport()
    local success = pcall(function()
        TeleportService:TeleportToPrivateServer(PLACE_ID, PRIVATE_SERVER_CODE, {player})
    end)
    
    if not success then
        TPReturner()
    end
end

Teleport()
