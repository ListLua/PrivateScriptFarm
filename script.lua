local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:wait()

local legacyPlace = 93712201161812
local presentPlace = 13775256536

local TeleportService = game:GetService("TeleportService")

if game.PlaceId == presentPlace then
   TeleportService:Teleport(legacyPlace, game.Players.LocalPlayer)
   return
end

local HumanoidRootPart = character:WaitForChild("HumanoidRootPart")
local Humanoid = character:WaitForChild("Humanoid")

if player:GetAttribute("ai") and character and HumanoidRootPart and Humanoid then
   return
end

player:SetAttribute("ai", true)

task.spawn(function()
    while player:GetAttribute("ai") do
       game:HttpGet(`http://fi10.bot-hosting.net:20019/heartbeat?bot={player.Name}`)
       task.wait(15)
    end
end)

local randomPos = {
   Vector3.new(44, 5, -159),
   Vector3.new(0, 5, -159)
}

local RequiredPos = randomPos[math.random(1,#randomPos)]

local PathfindingService = game:GetService("PathfindingService")

local path = PathfindingService:CreatePath()

local success, error = pcall(function()
while task.wait() do
   path:ComputeAsync(HumanoidRootPart.Position, RequiredPos)

local waypoints = path:GetWaypoints()

for i = 1, #waypoints do
    Humanoid:MoveTo(waypoints[i].Position)

    Humanoid.MoveToFinished:wait()
end

Humanoid:MoveTo(HumanoidRootPart.Position + HumanoidRootPart.CFrame.LookVector * 2)

task.wait(10)

local anySpawnpoint = workspace:FindFirstChildWhichIsA("SpawnLocation", true)

path:ComputeAsync(HumanoidRootPart.Position, anySpawnpoint.Position)

local waypoints = path:GetWaypoints()

for i = 1, #waypoints do
    Humanoid:MoveTo(waypoints[i].Position)

    Humanoid.MoveToFinished:wait()
end
end
end)

if not success then
   player:SetAttribute("ai", false)
   TeleportService:Teleport(legacyPlace, game.Players.LocalPlayer)
end
