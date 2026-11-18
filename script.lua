repeat task.wait() until game:IsLoaded()

local mode = "Insane"
local RS = game.ReplicatedStorage

local player = game.Players.LocalPlayer

local ModeVote
local ChangeSpeed
local WaveSkip
local TowerAdd
local TowerUpgrade
local PlayAgain
local Towers
local TowerSell

repeat task.wait()
   pcall(function()
     ModeVote = RS:FindFirstChild("ModeVote", true)
     ChangeSpeed = RS:FindFirstChild("ChangeSpeed", true)
     WaveSkip = RS:FindFirstChild("WaveSkip", true)
     TowerAdd = RS:FindFirstChild("TowerAdd", true)
     TowerUpgrade = RS:FindFirstChild("TowerUpgrade", true)
     PlayAgain = RS:FindFirstChild("PlayAgain", true)
     Towers = workspace:FindFirstChild("Towers", true)
     TowerSell = RS:FindFirstChild("TowerSell", true)
   end)
until ModeVote and ChangeSpeed and WaveSkip and TowerAdd and TowerUpgrade and PlayAgain and Towers and TowerSell

local pattern = {
  [1] = {CFrameX = "-93.69178771972656", PosY = "601.0316772460938", Id = "a8f21e61-9af8-4370-853d-4c547cf3a217", CFrameY = "601.0316772460938", Name = "Pumpkin Farmer", PosX = "-93.69178771972656", ActionType = "Add", CFrameZ = "387.97076416015625", PosZ = "387.97076416015625", }, [2] = {CFrameX = "-93.468994140625", PosY = "601.0320434570312", Id = "578f11e3-4913-403f-9ec5-17e3e1e34ecf", CFrameY = "601.0320434570312", Name = "Pumpkin Farmer", PosX = "-93.468994140625", ActionType = "Add", CFrameZ = "392.3641052246094", PosZ = "392.3641052246094", }, [3] = {CFrameX = "-89.84709930419922", PosY = "601.0321044921875", Id = "7f9aae10-fe63-44e3-90f4-4505fb5f7b9b", CFrameY = "601.0321044921875", Name = "Pumpkin Farmer", PosX = "-89.84709930419922", ActionType = "Add", CFrameZ = "388.45404052734375", PosZ = "388.45404052734375", }, [4] = {CFrameX = "-62.50482177734375", PosY = "601.0321044921875", Id = "26b57432-07e8-4a67-a6cc-f1aca170d94d", CFrameY = "601.0321044921875", Name = "Hacked Cameraman", PosX = "-62.50482177734375", ActionType = "Add", CFrameZ = "394.3036193847656", PosZ = "394.3036193847656", }, [5] = {CFrameX = "-89.41674041748047", PosY = "601.0320434570312", Id = "0e6a7f39-7bcf-47a8-9f6d-edec658a47ad", CFrameY = "601.0320434570312", Name = "Pumpkin Farmer", PosX = "-89.41674041748047", ActionType = "Add", CFrameZ = "392.2815246582031", PosZ = "392.2815246582031", }, [6] = {ActionType = "Upgrade", ToLevel = "2", Id_from_add = "4", }, [7] = {CFrameX = "-104.41895294189453", PosY = "601.0320434570312", Id = "4ef8657c-873b-430b-b349-8c4f4e508114", CFrameY = "601.0320434570312", Name = "Scientist Cameraman", PosX = "-104.41895294189453", ActionType = "Add", CFrameZ = "389.72906494140625", PosZ = "389.72906494140625", }, [8] = {CFrameX = "-100.08711242675781", PosY = "601.0321044921875", Id = "60d67ca5-b912-4c4f-88d9-f4a9d55dfb88", CFrameY = "601.0321044921875", Name = "Scientist Cameraman", PosX = "-100.08711242675781", ActionType = "Add", CFrameZ = "389.7972412109375", PosZ = "389.7972412109375", }, [9] = {CFrameX = "-104.04141998291016", PosY = "601.0320434570312", Id = "351ab25b-308a-4f37-bf52-12ce3feb8790", CFrameY = "601.0320434570312", Name = "Scientist Cameraman", PosX = "-104.04141998291016", ActionType = "Add", CFrameZ = "393.0655822753906", PosZ = "393.0655822753906", }, [10] = {CFrameX = "-99.72767639160156", PosY = "601.0321044921875", Id = "8c513233-5c5f-4351-a2bb-2272bd3983e5", CFrameY = "601.0321044921875", Name = "Scientist Cameraman", PosX = "-99.72767639160156", ActionType = "Add", CFrameZ = "393.3541259765625", PosZ = "393.3541259765625", }, [11] = {ActionType = "Upgrade", ToLevel = "3", Id_from_add = "4", }, [12] = {ActionType = "Upgrade", ToLevel = "2", Id_from_add = "1", }, [13] = {ActionType = "Upgrade", ToLevel = "2", Id_from_add = "3", }, [14] = {ActionType = "Upgrade", ToLevel = "2", Id_from_add = "2", }, [15] = {ActionType = "Upgrade", ToLevel = "2", Id_from_add = "5", }, [16] = {ActionType = "Upgrade", ToLevel = "2", Id_from_add = "8", }, [17] = {ActionType = "Upgrade", ToLevel = "2", Id_from_add = "7", }, [18] = {ActionType = "Upgrade", ToLevel = "2", Id_from_add = "9", }, [19] = {ActionType = "Upgrade", ToLevel = "2", Id_from_add = "10", }, [20] = {ActionType = "Upgrade", ToLevel = "4", Id_from_add = "4", }, [21] = {ActionType = "Upgrade", ToLevel = "3", Id_from_add = "1", }, [22] = {ActionType = "Upgrade", ToLevel = "3", Id_from_add = "3", }, [23] = {ActionType = "Upgrade", ToLevel = "3", Id_from_add = "2", }, [24] = {ActionType = "Upgrade", ToLevel = "3", Id_from_add = "5", }, [25] = {ActionType = "Upgrade", ToLevel = "3", Id_from_add = "7", }, [26] = {ActionType = "Upgrade", ToLevel = "3", Id_from_add = "8", }, [27] = {ActionType = "Upgrade", ToLevel = "3", Id_from_add = "9", }, [28] = {ActionType = "Upgrade", ToLevel = "3", Id_from_add = "10", }, [29] = {ActionType = "Upgrade", ToLevel = "5", Id_from_add = "4", }, [30] = {ActionType = "Upgrade", ToLevel = "4", Id_from_add = "1", }, [31] = {ActionType = "Upgrade", ToLevel = "4", Id_from_add = "3", }, [32] = {ActionType = "Upgrade", ToLevel = "4", Id_from_add = "2", }, [33] = {ActionType = "Upgrade", ToLevel = "4", Id_from_add = "5", }, [34] = {ActionType = "Upgrade", ToLevel = "4", Id_from_add = "7", }, [35] = {ActionType = "Upgrade", ToLevel = "4", Id_from_add = "8", }, [36] = {ActionType = "Upgrade", ToLevel = "6", Id_from_add = "4", }, [37] = {ActionType = "Upgrade", ToLevel = "4", Id_from_add = "9", }, [38] = {ActionType = "Upgrade", ToLevel = "4", Id_from_add = "10", }, [39] = {ActionType = "Upgrade", ToLevel = "5", Id_from_add = "8", }, [40] = {ActionType = "Upgrade", ToLevel = "5", Id_from_add = "7", }, [41] = {ActionType = "Upgrade", ToLevel = "5", Id_from_add = "9", }, [42] = {ActionType = "Upgrade", ToLevel = "5", Id_from_add = "10", }, [43] = {CFrameX = "-76.72533416748047", PosY = "601.0321044921875", Id = "353cd605-dc76-4b5b-8cc2-57c2f8a9cc29", CFrameY = "601.0321044921875", Name = "Hacked Cameraman", PosX = "-76.72533416748047", ActionType = "Add", CFrameZ = "390.2469177246094", PosZ = "390.2469177246094", }, [44] = {ActionType = "Upgrade", ToLevel = "2", Id_from_add = "43", }, [45] = {ActionType = "Upgrade", ToLevel = "3", Id_from_add = "43", }, [46] = {ActionType = "Upgrade", ToLevel = "4", Id_from_add = "43", }, [47] = {ActionType = "Upgrade", ToLevel = "5", Id_from_add = "43", }, [48] = {ActionType = "Upgrade", ToLevel = "6", Id_from_add = "43", }, [49] = {ActionType = "Upgrade", ToLevel = "5", Id_from_add = "1", }, [50] = {ActionType = "Upgrade", ToLevel = "5", Id_from_add = "3", }, [51] = {ActionType = "Upgrade", ToLevel = "5", Id_from_add = "5", }, [52] = {ActionType = "Upgrade", ToLevel = "5", Id_from_add = "2", }, [53] = {CFrameX = "-80.4579086303711", PosY = "601.0320434570312", Id = "52825cec-1db8-4ae5-a462-ccfea7b87620", CFrameY = "601.0320434570312", Name = "Hacked Cameraman", PosX = "-80.4579086303711", ActionType = "Add", CFrameZ = "390.9999694824219", PosZ = "390.9999694824219", }, [54] = {ActionType = "Upgrade", ToLevel = "2", Id_from_add = "53", }, [55] = {ActionType = "Upgrade", ToLevel = "3", Id_from_add = "53", }, [56] = {ActionType = "Upgrade", ToLevel = "4", Id_from_add = "53", }, [57] = {ActionType = "Upgrade", ToLevel = "5", Id_from_add = "53", }, [58] = {ActionType = "Upgrade", ToLevel = "6", Id_from_add = "53", }, [59] = {CFrameX = "-78.81135559082031", PosY = "601.0321044921875", Id = "652161fd-a73f-41a4-b70d-0db076fc9164", CFrameY = "601.0321044921875", Name = "Hacked Cameraman", PosX = "-78.81135559082031", ActionType = "Add", CFrameZ = "386.10064697265625", PosZ = "386.10064697265625", }, [60] = {ActionType = "Upgrade", ToLevel = "2", Id_from_add = "59", }, [61] = {ActionType = "Upgrade", ToLevel = "3", Id_from_add = "59", }, [62] = {ActionType = "Upgrade", ToLevel = "4", Id_from_add = "59", }, [63] = {ActionType = "Upgrade", ToLevel = "5", Id_from_add = "59", }, [64] = {ActionType = "Upgrade", ToLevel = "6", Id_from_add = "59", }, [65] = {CFrameX = "-62.9360237121582", PosY = "605.4341430664062", Id = "dccec7d0-1023-4289-bc95-2005bf4758c5", CFrameY = "605.4341430664062", Name = "Upgraded Titan Speakerman", PosX = "-62.9360237121582", ActionType = "Add", CFrameZ = "384.6123046875", PosZ = "384.6123046875", }, [66] = {ActionType = "Upgrade", ToLevel = "2", Id_from_add = "65", }, [67] = {ActionType = "Upgrade", ToLevel = "3", Id_from_add = "65", }, [68] = {ActionType = "Upgrade", ToLevel = "4", Id_from_add = "65", }, [69] = {ActionType = "Upgrade", ToLevel = "5", Id_from_add = "65", }, [70] = {CFrameX = "-63.70364761352539", PosY = "605.4342041015625", Id = "1c6c6407-1ee2-4eea-b1f9-cf830062e1e8", CFrameY = "605.4342041015625", Name = "Upgraded Titan Speakerman", PosX = "-63.70364761352539", ActionType = "Add", CFrameZ = "370.69744873046875", PosZ = "370.69744873046875", }, [71] = {ActionType = "Upgrade", ToLevel = "2", Id_from_add = "70", }, [72] = {ActionType = "Upgrade", ToLevel = "3", Id_from_add = "70", }, [73] = {ActionType = "Upgrade", ToLevel = "4", Id_from_add = "70", }, [74] = {ActionType = "Upgrade", ToLevel = "5", Id_from_add = "70", }, [75] = {CFrameX = "-74.99596405029297", PosY = "601.0320434570312", Id = "70fa29a4-77c6-438f-8780-eb0605df06bb", CFrameY = "601.0320434570312", Name = "Camera Repair Drone", PosX = "-74.99596405029297", ActionType = "Add", CFrameZ = "383.8427734375", PosZ = "383.8427734375", }, [76] = {ActionType = "Upgrade", ToLevel = "2", Id_from_add = "75", }, [77] = {ActionType = "Upgrade", ToLevel = "3", Id_from_add = "75", }, [78] = {ActionType = "Upgrade", ToLevel = "4", Id_from_add = "75", }, [79] = {Id_from_add = "5", ActionType = "Remove", }, [80] = {CFrameX = "-79.19390106201172", PosY = "605.4342041015625", Id = "dd7d071f-96b9-4353-876e-812f1aeddf4b", CFrameY = "605.4342041015625", Name = "Upgraded Titan Speakerman", PosX = "-79.19390106201172", ActionType = "Add", CFrameZ = "373.3298645019531", PosZ = "373.3298645019531", }, [81] = {ActionType = "Upgrade", ToLevel = "2", Id_from_add = "80", }, [82] = {ActionType = "Upgrade", ToLevel = "3", Id_from_add = "80", }, [83] = {ActionType = "Upgrade", ToLevel = "4", Id_from_add = "80", }, [84] = {ActionType = "Upgrade", ToLevel = "5", Id_from_add = "80", }, [85] = {Id_from_add = "3", ActionType = "Remove", }, [86] = {CFrameX = "-78.6230697631836", PosY = "605.4342041015625", Id = "74fe9c84-f3bd-458c-9d6c-64c57aa52189", CFrameY = "605.4342041015625", Name = "Upgraded Titan Speakerman", PosX = "-78.6230697631836", ActionType = "Add", CFrameZ = "398.838623046875", PosZ = "398.838623046875", }, [87] = {ActionType = "Upgrade", ToLevel = "2", Id_from_add = "86", }, [88] = {ActionType = "Upgrade", ToLevel = "3", Id_from_add = "86", }, [89] = {ActionType = "Upgrade", ToLevel = "4", Id_from_add = "86", }, [90] = {ActionType = "Upgrade", ToLevel = "5", Id_from_add = "86", }, [91] = {Id_from_add = "1", ActionType = "Remove", }, [92] = {CFrameX = "-93.44007873535156", PosY = "605.4341430664062", Id = "60c0b158-a1fa-434a-aca8-7a5db29c5c8d", CFrameY = "605.4341430664062", Name = "Upgraded Titan Speakerman", PosX = "-93.44007873535156", ActionType = "Add", CFrameZ = "372.64532470703125", PosZ = "372.64532470703125", }, [93] = {ActionType = "Upgrade", ToLevel = "2", Id_from_add = "92", }, [94] = {ActionType = "Upgrade", ToLevel = "3", Id_from_add = "92", }, [95] = {ActionType = "Upgrade", ToLevel = "4", Id_from_add = "92", }, [96] = {ActionType = "Upgrade", ToLevel = "5", Id_from_add = "92", }, [97] = {Id_from_add = "2", ActionType = "Remove", }, [98] = {CFrameX = "-87.27972412109375", PosY = "601.0320434570312", Id = "2dee8157-da91-4809-8409-ce0f5d8a9a54", CFrameY = "601.0320434570312", Name = "Camera Repair Drone", PosX = "-87.27972412109375", ActionType = "Add", CFrameZ = "386.2532653808594", PosZ = "386.2532653808594", }, [99] = {ActionType = "Upgrade", ToLevel = "2", Id_from_add = "98", }, [100] = {ActionType = "Upgrade", ToLevel = "3", Id_from_add = "98", }, [101] = {ActionType = "Upgrade", ToLevel = "4", Id_from_add = "98", },
}

TowerAdd.OnClientEvent:Connect(function(data)
    for _, v in pattern do
        if (data.Pos - Vector3.new(v.PosX, v.PosY, v.PosZ)).Magnitude < 0.1 then
            v.Placed = true
            v.Id = data.Id
        end
    end
end)

TowerUpgrade.OnClientEvent:Connect(function(data)
    for i, v in pattern do
       if v.Id == data.Id and not v.Upgraded then
         v.Upgraded = true
         break
       end
    end
end)

Towers.ChildRemoved:Connect(function(obj)
    for i, v in pattern do
        if v.ActionType == "Remove" then
           v.Id = pattern[tonumber(v.Id_from_add)].Id
           
           if obj.Name == v.Id then
              v.Deleted = true
              break
           end
        end
    end
end)

task.spawn(function()
      while task.wait(7) do
      PlayAgain:FireServer()
     end
end)

task.spawn(function()
    while task.wait(1) do
        WaveSkip:FireServer()
    end
end)

ChangeSpeed:InvokeServer(2)

while task.wait(1) do
    ModeVote:FireServer(mode)

    for order, v in pattern do
       if v.ActionType == "Add" then
          if not v.Placed then

            local UnitId

            for i = 1, 5 do
               if player:GetAttribute("Slot"..i) == v.Name then
                  UnitId = player:GetAttribute("Slot"..i.."Id")
                  break
               end
            end

            local metadata = {
              Name = v.Name,
              UnitId = UnitId,
              Pos = Vector3.new(v.PosX, v.PosY, v.PosZ),
              CFrame = CFrame.new(v.CFrameX, v.CFrameY, v.CFrameZ)
            }

            v.Id = nil

            TowerAdd:FireServer(metadata)
            task.wait(0.2)
            break
          end
        elseif v.ActionType == "Upgrade" then
           if not v.Upgraded and pattern[tonumber(v.Id_from_add)].Id then
              v.Id = pattern[tonumber(v.Id_from_add)].Id

              TowerUpgrade:FireServer({Id = v.Id})
              task.wait(0.2)
              break
           end
        elseif v.ActionType == "Remove" then
            if not v.Deleted and pattern[tonumber(v.Id_from_add)].Id then
                v.Id = pattern[tonumber(v.Id_from_add)].Id
               
                TowerSell:FireServer({Id = v.Id})
                task.wait(0.2)
                break
            end
       end
    end
end
