if game.PlaceId == "333164326" then
local path = "servers.txt"
local isfile = isfile(path)
local player = game.Players.LocalPlayer
local testing = false
local one = 1
if isfile then 
local content = readfile(path)
writefile(path, content .. game.JobId)
else 
writefile(path, game.JobId)
end

if testing then 
writefile(path, "testing rn")    
end

print(readfile(path))

function hop() 
local httpres = game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public")
httpres = game:GetService("HttpService"):JSONDecode(httpres)
local servers = httpres.data
 if not servers then
return warn("Servers couldnt be fetched")
end
local file = readfile(path)
for i, server in pairs(servers) do 
    if server.id ~= game.JobId and server.ping > 5 and server.playing <= server.maxPlayers - 1 and not string.match(file, game.JobId) then 
        game:GetService("TeleportService"):TeleportToPlaceInstance(
                        game.PlaceId,
                        server.id,
                        game:GetService("Players").LocalPlayer
                    )
end
end
end

delay(5, function() 
    if not game:IsLoaded() then hop() end
end)

for i, pad in pairs(game.Workspace.SecureParts.AdminPads:GetChildren()) do 
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pad.Head.CFrame
 task.wait(0.1)
end


task.wait(one)

local chatbox = Instance.new("TextBox", workspace)

local function chat(msg)
    chatbox:SetTextFromInput(msg)
    game.Players:Chat(msg)
end

for count = 0, 5 do 
chat(":gear me 94794847")
end

task.wait(one)

chat(":chatnotify all [Server]: .gg/shortcut")
task.wait(0.01)
chat(":chatnotify all [Server]: This game sucks")

task.wait(one)

for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v.Name == "VampireVanquisher" then 
v.Parent = game.Players.LocalPlayer.Character    
end
end

task.wait(one)


for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v.Name == "VampireVanquisher" then 
v.Parent = game.Players.LocalPlayer.Character    
end
end

task.wait(one)

for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "VampireVanquisher" then 
v.Parent = game.Workspace
end
end

task.wait(one)


hop()

end
