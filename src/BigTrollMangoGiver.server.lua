-- BigTrollMangoGiver.server.lua

-- This script gives a free big troll mango with mutation to the player

local Players = game:GetService("Players")

local function giveBigTrollMango(player)
    -- Create a big troll mango with mutation
    local mango = Instance.new("Model")
    mango.Name = "BigTrollMango"

    -- Add mutation properties
    local mutation = Instance.new("StringValue", mango)
    mutation.Name = "Mutation"
    mutation.Value = "Troll"

    -- Add visual properties
    local mesh = Instance.new("SpecialMesh", mango)
    mesh.MeshType = Enum.MeshType.FileMesh
    mesh.MeshId = "rbxassetid://1234567890" -- Replace with actual mesh ID
    mesh.Scale = Vector3.new(2, 2, 2)

    -- Add collision properties
    local part = Instance.new("Part", mango)
    part.Size = Vector3.new(2, 2, 2)
    part.Anchored = true
    part.CanCollide = true

    -- Give the mango to the player
    mango.Parent = player.Backpack
end

-- Give a big troll mango to each player when they join
Players.PlayerAdded:Connect(function(player)
    giveBigTrollMango(player)
end)

-- Give a big troll mango to each existing player
for _, player in ipairs(Players:GetPlayers()) do
    giveBigTrollMango(player)
end