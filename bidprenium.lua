local placeId = game.PlaceId
local jobId = game.JobId

local sea1 = 2753915549
local sea2 = 4442272183
local sea3 = 7449423635

local CheckSea
if placeId == sea1 then
    CheckSea = "Sea 1"
elseif placeId == sea2 then
    CheckSea = "Sea 2"
elseif placeId == sea3 then
    CheckSea = "Sea 3"
else
    CheckSea = "unknown sea"
end

local Players = game:GetService("Players")
local playerCount = #game:GetService("Players"):GetPlayers()

local hwid = game:GetService("RbxAnalyticsService"):GetClientId()
local ExecutorUsing = identifyexecutor()
local HttpService = game:GetService("HttpService")
local Data =
{
    ["embeds"] = {
        {
            ["title"] = "Information | Account",
            ["url"] = "https://www.roblox.com/users/"..game.Players.LocalPlayer.UserId,
            ["description"] = "```"..game.Players.LocalPlayer.DisplayName.." ```",
            ["color"] = tonumber("00000"),
            ["thumbnail"] = {["url"] = "https://cdn.discordapp.com/attachments/1277112182743629969/1277337544463224898/Picsart_24-08-26_01-42-34-420.png?ex=66ccccca&is=66cb7b4a&hm=80a0165401d2357f1386cfa88da35a3df2427c1186b0e8b7955272f6c5f6ead9&"},
            ["fields"] = {
                {
                    ["name"] = "Execute:",
                    ["value"] = "```"..ExecutorUsing.."```",
                    ["inline"] = true
                },
                {
                    ["name"] = "Hwid:",
                    ["value"] = hwid,
                    ["inline"] = true
                },
                {
                    ["name"] = "Sea:",
                    ["value"] = "```" .. CheckSea.."```", 
                    ["inline"] = true
                },
                {                
                    ["name"] = "Job ID:",
                    ["value"] = " " .. jobId,
                    ["inline"] = true
                },
                {
                    ["name"] = "Script Teleport:",
                    ["value"] = "\n" .. 'game:GetService("TeleportService"):TeleportToPlaceInstance('..placeId..', "'..jobId..'", game.Players.LocalPlayer)' .. "\n", 
                    ["inline"] = true 
                },
                {
                    ["name"] = "Thank You For Use:",
                    ["value"] = "**__BID HUB__**",
                    ["inline"] = true          
                }
            }              
        }
    }
}

local Headers = {["Content-Type"] = "application/json"}
local Encoded = HttpService:JSONEncode(Data)

local Request = http_request or request or HttpPost or syn.request
local Final = {Url = "https://discord.com/api/webhooks/1277480284509569085/_Cga7l349GmVOLNiB4YUYSPbZDvQOvCc-Q2Tx-vQtUFYfGST0qMmScEEOx-xw6-TxtQL", Body = Encoded, Method = "POST", Headers = Headers}
Request(Final)

repeat wait() until game:IsLoaded()
if game.PlaceId == 2753915549 then
    World1 = true
elseif game.PlaceId == 4442272183 then
    World2 = true
elseif game.PlaceId == 7449423635 then
    World3 = true
end

local L = require(game.ReplicatedStorage.Util.CameraShaker)
L:Stop()
------------------------------------------------------------------------------------------------------------------------------------
if not LPH_OBFUSCATED then
	LPH_JIT_MAX = (function(...) return ... end)
	LPH_NO_VIRTUALIZE = (function(...) return ... end)
	LPH_NO_UPVALUES = (function(...) return ... end)
end

local Notification = require(game:GetService("ReplicatedStorage").Notification)
Notification.new("<Color=Blue>Welcome to BID PREMIUM HUB<Color=/>"):Display()
wait(0.5)
Notification.new("<Color=Red>ĐỊT MẸ CHÚNG MÀY Communicate<Color=/>"):Display()
wait(1)
repeat
    wait()
until game.Players.LocalPlayer

if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
    repeat task.wait()
        if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
            if getgenv().Team == "Marines" then
                for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container["Marines"].Frame.TextButton.Activated)) do
                    for a, b in pairs(getconnections(game:GetService("UserInputService").TouchTapInWorld)) do
                        b:Fire() 
                    end
                    v.Function()
                end 
            else
                for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container["Pirates"].Frame.TextButton.Activated)) do
                    for a, b in pairs(getconnections(game:GetService("UserInputService").TouchTapInWorld)) do
                        b:Fire() 
                    end
                    v.Function()
                end 
            end
        end
    until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
end

    function MaterialMon()
			if _G.SelectMaterial == "Radioactive Material" then
				MMon = "Factory Staff"
				MPos = CFrame.new(-507.7895202636719, 72.99479675292969, -126.45632934570312)
				SP = "Bar"
			elseif _G.SelectMaterial == "Mystic Droplet" then
				MMon = "Water Fighter"
				MPos = CFrame.new(-3214.218017578125, 298.69952392578125, -10543.685546875)
				SP = "ForgottenIsland"
			elseif _G.SelectMaterial == "Magma Ore" then
				if game.PlaceId == 2753915549 then
					MMon = "Military Spy"
					MPos = CFrame.new(-5850.2802734375, 77.28675079345703, 8848.6748046875)
					SP = "Magma"
				elseif game.PlaceId == 4442272183 then
					MMon = "Lava Pirate"
					MPos = CFrame.new(-5234.60595703125, 51.953372955322266, -4732.27880859375)
					SP = "CircleIslandFire"
				end
			elseif _G.SelectMaterial == "Angel Wings" then
				MMon = "Royal Soldier"
				MPos = CFrame.new(-7827.15625, 5606.912109375, -1705.5833740234375)
				SP = "Sky2"
			elseif _G.SelectMaterial == "Leather" then
				if game.PlaceId == 2753915549 then
					MMon = "Pirate"
					MPos = CFrame.new(-1211.8792724609375, 4.787090301513672, 3916.83056640625)
					SP = "Pirate"
				elseif game.PlaceId == 4442272183 then
					MMon = "Marine Captain"
					MPos = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375)
					SP = "Greenb"
				elseif game.PlaceId == 7449423635 then
					MMon = "Jungle Pirate"
					MPos = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375)
					SP = "PineappleTown"
				end
			elseif _G.SelectMaterial == "Scrap Metal" then
				if game.PlaceId == 2753915549 then
					MMon = "Brute"
					MPos = CFrame.new(-1132.4202880859375, 14.844913482666016, 4293.30517578125)
					SP = "Pirate"
				elseif game.PlaceId == 4442272183 then
					MMon = "Mercenary"
					MPos = CFrame.new(-972.307373046875, 73.04473876953125, 1419.2901611328125)
					SP = "DressTown"
				elseif game.PlaceId == 7449423635 then
					MMon = "Pirate Millionaire"
					MPos = CFrame.new(-289.6311950683594, 43.8282470703125, 5583.66357421875)
					SP = "Default"
				end
			elseif _G.SelectMaterial == "Demonic Wisp" then
				MMon = "Demonic Soul"
				MPos = CFrame.new(-9503.388671875, 172.139892578125, 6143.0634765625)
				SP = "HauntedCastle"
			elseif _G.SelectMaterial == "Vampire Fang" then
				MMon = "Vampire"
				MPos = CFrame.new(-5999.20458984375, 6.437741279602051, -1290.059326171875)
				SP = "Graveyard"
			elseif _G.SelectMaterial == "Conjured Cocoa" then
				MMon = "Chocolate Bar Battler"
				MPos = CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375)
				SP = "Chocolate"
			elseif _G.SelectMaterial == "Dragon Scale" then
				MMon = "Dragon Crew Warrior"
				MPos = CFrame.new(5824.06982421875, 51.38640213012695, -1106.694580078125)
				SP = "Hydra1"
			elseif _G.SelectMaterial == "Gunpowder" then
				MMon = "Pistol Billionaire"
				MPos = CFrame.new(-379.6134338378906, 73.84449768066406, 5928.5263671875)
				SP = "Default"
			elseif _G.SelectMaterial == "Fish Tail" then
				MMon = "Fishman Captain"
				MPos = CFrame.new(-10961.0126953125, 331.7977600097656, -8914.29296875)
				SP = "PineappleTown"
			elseif _G.SelectMaterial == "Mini Tusk" then
				MMon = "Mythological Pirate"
				MPos = CFrame.new(-13516.0458984375, 469.8182373046875, -6899.16064453125)
				SP = "BigMansion"
			end
		end
	function CheckQuest() 
        MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
        if World1 then
            if MyLevel == 1 or MyLevel <= 9 then
                Mon = "Bandit"
                LevelQuest = 1
                NameQuest = "BanditQuest1"
                NameMon = "Bandit"
                CFrameQuest = CFrame.new(1059, 17, 1546)
                CFrameMon = CFrame.new(943, 45, 1562)
            elseif MyLevel == 10 or MyLevel <= 14 then
                Mon = "Monkey"
                LevelQuest = 1
                NameQuest = "JungleQuest"
                NameMon = "Monkey"
                CFrameQuest = CFrame.new(-1598, 37, 153)
                CFrameMon = CFrame.new(-1524, 50, 37)
            elseif MyLevel == 15 or MyLevel <= 29 then
                Mon = "Gorilla"
                LevelQuest = 2
                NameQuest = "JungleQuest"
                NameMon = "Gorilla"
                CFrameQuest = CFrame.new(-1598, 37, 153)
                CFrameMon = CFrame.new(-1128, 40, -451)
            elseif MyLevel == 30 or MyLevel <= 39 then
                Mon = "Pirate"
                LevelQuest = 1
                NameQuest = "BuggyQuest1"
                NameMon = "Pirate"
                CFrameQuest = CFrame.new(-1140, 4, 3829)
                CFrameMon = CFrame.new(-1262, 40, 3905)
            elseif MyLevel == 40 or MyLevel <= 59 then
                Mon = "Brute"
                LevelQuest = 2
                NameQuest = "BuggyQuest1"
                NameMon = "Brute"
                CFrameQuest = CFrame.new(-1140, 4, 3829)
                CFrameMon = CFrame.new(-976, 55, 4304)
            elseif MyLevel == 60 or MyLevel <= 74 then
                Mon = "Desert Bandit"
                LevelQuest = 1
                NameQuest = "DesertQuest"
                NameMon = "Desert Bandit"
                CFrameQuest = CFrame.new(897, 6, 4389)
                CFrameMon = CFrame.new(9245, 7, 4482)
            elseif MyLevel == 75 or MyLevel <= 89 then
                Mon = "Desert Officer"
                LevelQuest = 2
                NameQuest = "DesertQuest"
                NameMon = "Desert Officer"
                CFrameQuest = CFrame.new(897, 6, 4389)
                CFrameMon = CFrame.new(1608, 9, 4371)
            elseif MyLevel == 90 or MyLevel <= 99 then
                Mon = "Snow Bandit"
                LevelQuest = 1
                NameQuest = "SnowQuest"
                NameMon = "Snow Bandit"
                CFrameQuest = CFrame.new(1385, 87, -1298)
                CFrameMon = CFrame.new(1362, 120, -1531)
            elseif MyLevel == 100 or MyLevel <= 119 then
                Mon = "Snowman"
                LevelQuest = 2
                NameQuest = "SnowQuest"
                NameMon = "Snowman"
                CFrameQuest = CFrame.new(1385, 87, -1298)
                CFrameMon = CFrame.new(1243, 140, -1437)
            elseif MyLevel == 120 or MyLevel <= 149 then
                Mon = "Chief Petty Officer"
                LevelQuest = 1
                NameQuest = "MarineQuest2"
                NameMon = "Chief Petty Officer"
                CFrameQuest = CFrame.new(-5035, 29, 4326)
                CFrameMon = CFrame.new(-4881, 23, 4274)
            elseif MyLevel == 150 or MyLevel <= 174 then
                Mon = "Sky Bandit"
                LevelQuest = 1
                NameQuest = "SkyQuest"
                NameMon = "Sky Bandit"
                CFrameQuest = CFrame.new(-4844, 718, -2621)
                CFrameMon = CFrame.new(-4953, 296, -2899)
            elseif MyLevel == 175 or MyLevel <= 189 then
                Mon = "Dark Master"
                LevelQuest = 2
                NameQuest = "SkyQuest"
                NameMon = "Dark Master"
                CFrameQuest = CFrame.new(-4844, 718, -2621)
                CFrameMon = CFrame.new(-5260, 391, -2229)
            elseif MyLevel == 190 or MyLevel <= 209 then
                Mon = "Prisoner"
                LevelQuest = 1
                NameQuest = "PrisonerQuest"
                NameMon = "Prisoner"
                CFrameQuest = CFrame.new(5306, 2, 477)
                CFrameMon = CFrame.new(5099, -0, 474)
            elseif MyLevel == 210 or MyLevel <= 249 then
                Mon = "Dangerous Prisoner"
                LevelQuest = 2
                NameQuest = "PrisonerQuest"
                NameMon = "Dangerous Prisoner"
                CFrameQuest = CFrame.new(5306, 2, 477)
                CFrameMon = CFrame.new(5655, 16, 866)
            elseif MyLevel == 250 or MyLevel <= 274 then
                Mon = "Toga Warrior"
                LevelQuest = 1
                NameQuest = "ColosseumQuest"
                NameMon = "Toga Warrior"
                CFrameQuest = CFrame.new(-1581, 7, -2982)
                CFrameMon = CFrame.new(-1820, 51, -2741)
            elseif MyLevel == 275 or MyLevel <= 299 then
                Mon = "Gladiator"
                LevelQuest = 2
                NameQuest = "ColosseumQuest"
                NameMon = "Gladiator"
                CFrameQuest = CFrame.new(-1581, 7, -2982)
                CFrameMon = CFrame.new(-1268, 30, -2996)
            elseif MyLevel == 300 or MyLevel <= 324 then
                Mon = "Military Soldier"
                LevelQuest = 1
                NameQuest = "MagmaQuest"
                NameMon = "Military Soldier"
                CFrameQuest = CFrame.new(-5319, 12, 8515)
                CFrameMon = CFrame.new(-5335, 46, 8638)
            elseif MyLevel == 325 or MyLevel <= 374 then
                Mon = "Military Spy"
                LevelQuest = 2
                NameQuest = "MagmaQuest"
                NameMon = "Military Spy"
                CFrameQuest = CFrame.new(-5319, 12, 8515)
                CFrameMon = CFrame.new(-5803, 86, 8829)
            elseif MyLevel == 375 or MyLevel <= 399 then
                Mon = "Fishman Warrior"
                LevelQuest = 1
                NameQuest = "FishmanQuest"
                NameMon = "Fishman Warrior"
                CFrameQuest = CFrame.new(61122, 18, 1567)
                CFrameMon = CFrame.new(60998, 50, 1534)
                if _G.Level and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61164, 5, 1820))
                end
            elseif MyLevel == 400 or MyLevel <= 449 then
                Mon = "Fishman Commando"
                LevelQuest = 2
                NameQuest = "FishmanQuest"
                NameMon = "Fishman Commando"
                CFrameQuest = CFrame.new(61122, 18, 1567)
                CFrameMon = CFrame.new(61866, 55, 1655)
                if _G.Level and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61164, 5, 1820))
                end
            elseif MyLevel == 450 or MyLevel <= 474 then
                Mon = "God's Guard"
                LevelQuest = 1
                NameQuest = "SkyExp1Quest"
                NameMon = "God's Guard"
                CFrameQuest = CFrame.new(-4720, 846, -1951)
                CFrameMon = CFrame.new(-4720, 846, -1951)
                if _G.Level and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4652, 873, -1754))
                end
            elseif MyLevel == 475 or MyLevel <= 524 then
                Mon = "Shanda"
                LevelQuest = 2
                NameQuest = "SkyExp1Quest"
                NameMon = "Shanda"
                CFrameQuest = CFrame.new(-7861, 5545, -381)
                CFrameMon = CFrame.new(-7741, 5580, -395)
                if _G.Level and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7895, 5547, -380))
                end
            elseif MyLevel == 525 or MyLevel <= 549 then
                Mon = "Royal Squad"
                LevelQuest = 1
                NameQuest = "SkyExp2Quest"
                NameMon = "Royal Squad"
                CFrameQuest = CFrame.new(-7903, 5636, -1412)
                CFrameMon = CFrame.new(-7727, 5650, -1410)
            elseif MyLevel == 550 or MyLevel <= 624 then
                Mon = "Royal Soldier"
                LevelQuest = 2
                NameQuest = "SkyExp2Quest"
                NameMon = "Royal Soldier"
                CFrameQuest = CFrame.new(-7903, 5636, -1412)
                CFrameMon = CFrame.new(-7894, 5640, -1629)
            elseif MyLevel == 625 or MyLevel <= 649 then
                Mon = "Galley Pirate"
                LevelQuest = 1
                NameQuest = "FountainQuest"
                NameMon = "Galley Pirate"
                CFrameQuest = CFrame.new(5258, 39, 4052)
                CFrameMon = CFrame.new(5391, 70, 4023)
            elseif MyLevel >= 650 then
                Mon = "Galley Captain"
                LevelQuest = 2
                NameQuest = "FountainQuest"
                NameMon = "Galley Captain"
                CFrameQuest = CFrame.new(5258, 39, 4052)
                CFrameMon = CFrame.new(5985, 70, 4790)
            end
        elseif World2 then
            if MyLevel == 700 or MyLevel <= 724 then
                Mon = "Raider"
                LevelQuest = 1
                NameQuest = "Area1Quest"
                NameMon = "Raider"
                CFrameQuest = CFrame.new(-427, 73, 1835)
                CFrameMon = CFrame.new(-614, 90, 2240)
            elseif MyLevel == 725 or MyLevel <= 774 then
                Mon = "Mercenary"
                LevelQuest = 2
                NameQuest = "Area1Quest"
                NameMon = "Mercenary"
                CFrameQuest = CFrame.new(-427, 73, 1835)
                CFrameMon = CFrame.new(-867, 110, 1621)
            elseif MyLevel == 775 or MyLevel <= 874 then
                Mon = "Swan Pirate"
                LevelQuest = 1
                NameQuest = "Area2Quest"
                NameMon = "Swan Pirate"
                CFrameQuest = CFrame.new(635, 73, 919)
                CFrameMon = CFrame.new(635, 73, 919)
            elseif MyLevel == 875 or MyLevel <= 899 then
                Mon = "Marine Lieutenant"
                LevelQuest = 1
                NameQuest = "MarineQuest3"
                NameMon = "Marine Lieutenant"
                CFrameQuest = CFrame.new(-2441, 73, -3219)
                CFrameMon = CFrame.new(-2552, 110, -3050)
            elseif MyLevel == 900 or MyLevel <= 949 then
                Mon = "Marine Captain"
                LevelQuest = 2
                NameQuest = "MarineQuest3"
                NameMon = "Marine Captain"
                CFrameQuest = CFrame.new(-2441, 73, -3219)
                CFrameMon = CFrame.new(-1695, 110, -3299)
            elseif MyLevel == 950 or MyLevel <= 974 then
                Mon = "Zombie"
                LevelQuest = 1
                NameQuest = "ZombieQuest"
                NameMon = "Zombie"
                CFrameQuest = CFrame.new(-5495, 48, -794)
                CFrameMon = CFrame.new(-5715, 90, -917)
            elseif MyLevel == 975 or MyLevel <= 999 then
                Mon = "Vampire"
                LevelQuest = 2
                NameQuest = "ZombieQuest"
                NameMon = "Vampire"
                CFrameQuest = CFrame.new(-5495, 48, -794)
                CFrameMon = CFrame.new(-6027, 50, -1130)
            elseif MyLevel == 1000 or MyLevel <= 1049 then
                Mon = "Snow Trooper"
                LevelQuest = 1
                NameQuest = "SnowMountainQuest"
                NameMon = "Snow Trooper"
                CFrameQuest = CFrame.new(607, 401, -5371)
                CFrameMon = CFrame.new(445, 440, -5175)
            elseif MyLevel == 1050 or MyLevel <= 1099 then
                Mon = "Winter Warrior"
                LevelQuest = 2
                NameQuest = "SnowMountainQuest"
                NameMon = "Winter Warrior"
                CFrameQuest = CFrame.new(607, 401, -5371)
                CFrameMon = CFrame.new(1224, 460, -5332)
            elseif MyLevel == 1100 or MyLevel <= 1124 then
                Mon = "Lab Subordinate"
                LevelQuest = 1
                NameQuest = "IceSideQuest"
                NameMon = "Lab Subordinate"
                CFrameQuest = CFrame.new(-6061, 16, -4904)
                CFrameMon = CFrame.new(-5941, 50, -4322)
            elseif MyLevel == 1125 or MyLevel <= 1174 then
                Mon = "Horned Warrior"
                LevelQuest = 2
                NameQuest = "IceSideQuest"
                NameMon = "Horned Warrior"
                CFrameQuest = CFrame.new(-6061, 16, -4904)
                CFrameMon = CFrame.new(-6306, 50, -5752)
            elseif MyLevel == 1175 or MyLevel <= 1199 then
                Mon = "Magma Ninja"
                LevelQuest = 1
                NameQuest = "FireSideQuest"
                NameMon = "Magma Ninja"
                CFrameQuest = CFrame.new(-5430, 16, -5298)
                CFrameMon = CFrame.new(-5233, 60, -6227)
            elseif MyLevel == 1200 or MyLevel <= 1249 then
                Mon = "Lava Pirate"
                LevelQuest = 2
                NameQuest = "FireSideQuest"
                NameMon = "Lava Pirate"
                CFrameQuest = CFrame.new(-5430, 16, -5298)
                CFrameMon = CFrame.new(-4955, 60, -4836)
            elseif MyLevel == 1250 or MyLevel <= 1274 then
                Mon = "Ship Deckhand"
                LevelQuest = 1
                NameQuest = "ShipQuest1"
                NameMon = "Ship Deckhand"
                CFrameQuest = CFrame.new(1033, 125, 32909)         
                CFrameMon = CFrame.new(1033, 125, 32909)    
                if _G.Level and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923, 125, 32853))
                end
            elseif MyLevel == 1275 or MyLevel <= 1299 then
                Mon = "Ship Engineer"
                LevelQuest = 2
                NameQuest = "ShipQuest1"
                NameMon = "Ship Engineer"
                CFrameQuest = CFrame.new(1033, 125, 32909)   
                CFrameMon = CFrame.new(809, 80, 33090)   
                if _G.Level and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923, 125, 32853))
                end             
            elseif MyLevel == 1300 or MyLevel <= 1324 then
                Mon = "Ship Steward"
                LevelQuest = 1
                NameQuest = "ShipQuest2"
                NameMon = "Ship Steward"
                CFrameQuest = CFrame.new(973, 125, 33245)         
                CFrameMon = CFrame.new(838, 160, 33408)      
                if _G.Level and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923, 125, 32853))
                end
            elseif MyLevel == 1325 or MyLevel <= 1349 then
                Mon = "Ship Officer"
                LevelQuest = 2
                NameQuest = "ShipQuest2"
                NameMon = "Ship Officer"
                CFrameQuest = CFrame.new(973, 125, 33245)
                CFrameMon = CFrame.new(1238, 220, 33148)
                if _G.Level and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923, 125, 32853))
                end
            elseif MyLevel == 1350 or MyLevel <= 1374 then
                Mon = "Arctic Warrior"
                LevelQuest = 1
                NameQuest = "FrostQuest"
                NameMon = "Arctic Warrior"
                CFrameQuest = CFrame.new(5668, 28, -6484)
                CFrameMon = CFrame.new(5836, 80, -6257)
                if _G.Level and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6509, 83, -133))
                end
            elseif MyLevel == 1375 or MyLevel <= 1424 then
                Mon = "Snow Lurker"
                LevelQuest = 2
                NameQuest = "FrostQuest"
                NameMon = "Snow Lurker"
                CFrameQuest = CFrame.new(5668, 28, -6484)
                CFrameMon = CFrame.new(5700, 80, -6724)
            elseif MyLevel == 1425 or MyLevel <= 1449 then
                Mon = "Sea Soldier"
                LevelQuest = 1
                NameQuest = "ForgottenQuest"
                NameMon = "Sea Soldier"
                CFrameQuest = CFrame.new(-3056, 240, -10145)
                CFrameMon = CFrame.new(-2583, 80, -9821)
            elseif MyLevel >= 1450 then
                Mon = "Water Fighter"
                LevelQuest = 2
                NameQuest = "ForgottenQuest"
                NameMon = "Water Fighter"
                CFrameQuest = CFrame.new(-3056, 240, -10145)
                CFrameMon = CFrame.new(-3339, 290, -10412)
            end
        elseif World3 then
            if MyLevel == 1500 or MyLevel <= 1524 then
                Mon = "Pirate Millionaire"
                LevelQuest = 1
                NameQuest = "PiratePortQuest"
                NameMon = "Pirate Millionaire"
                CFrameQuest = CFrame.new(-291, 44, 5580)
                CFrameMon = CFrame.new(-44, 70, 5623)
            elseif MyLevel == 1525 or MyLevel <= 1574 then
                Mon = "Pistol Billionaire"
                LevelQuest = 2
                NameQuest = "PiratePortQuest"
                NameMon = "Pistol Billionaire"
                CFrameQuest = CFrame.new(-291, 44, 5580)
                CFrameMon = CFrame.new(219, 105, 6018)
            elseif MyLevel == 1575 or MyLevel <= 1599 then
                Mon = "Dragon Crew Warrior"
                LevelQuest = 1
                NameQuest = "AmazonQuest"
                NameMon = "Dragon Crew Warrior"
                CFrameQuest = CFrame.new(5834, 51, -1103)
                CFrameMon = CFrame.new(5992, 90, -1581)
            elseif MyLevel == 1600 or MyLevel <= 1624 then 
                Mon = "Dragon Crew Archer [Lv. 1600]"
                NameQuest = "AmazonQuest"
                LevelQuest = 2
                NameMon = "Dragon Crew Archer"
                CFrameQuest = CFrame.new(5834, 51, -1103)
                CFrameMon = CFrame.new(6472, 370, -151)
            elseif MyLevel == 1625 or MyLevel <= 1649 then
                Mon = "Female Islander"
                NameQuest = "AmazonQuest2"
                LevelQuest = 1
                NameMon = "Female Islander"
                CFrameQuest = CFrame.new(5448, 602, 748)
                CFrameMon = CFrame.new(4836, 740, 928)
            elseif MyLevel == 1650 or MyLevel <= 1699 then 
                Mon = "Giant Islander [Lv. 1650]"
                NameQuest = "AmazonQuest2"
                LevelQuest = 2
                NameMon = "Giant Islander"
                CFrameQuest = CFrame.new(5448, 602, 748)
                CFrameMon = CFrame.new(4784, 660, 155)
            elseif MyLevel == 1700 or MyLevel <= 1724 then
                Mon = "Marine Commodore"
                LevelQuest = 1
                NameQuest = "MarineTreeIsland"
                NameMon = "Marine Commodore"
                CFrameQuest = CFrame.new(2180, 29, -6738)
                CFrameMon = CFrame.new(3156, 120, -7837)
            elseif MyLevel == 1725 or MyLevel <= 1774 then
                Mon = "Marine Rear Admiral [Lv. 1725]"
                NameMon = "Marine Rear Admiral"
                NameQuest = "MarineTreeIsland"
                LevelQuest = 2
                CFrameQuest = CFrame.new(2180, 29, -6738)
                CFrameMon = CFrame.new(3205, 120, -6742)
            elseif MyLevel == 1775 or MyLevel <= 1799 then
                Mon = "Fishman Raider"
                LevelQuest = 1
                NameQuest = "DeepForestIsland3"
                NameMon = "Fishman Raider"
                CFrameQuest = CFrame.new(-10581, 332, -8758)   
                CFrameMon = CFrame.new(-10550, 380, -8574)
            elseif MyLevel == 1800 or MyLevel <= 1824 then
                Mon = "Fishman Captain"
                LevelQuest = 2
                NameQuest = "DeepForestIsland3"
                NameMon = "Fishman Captain"
                CFrameQuest = CFrame.new(-10581, 332, -8758)   
                CFrameMon = CFrame.new(-10764, 380, -8799) 
            elseif MyLevel == 1825 or MyLevel <= 1849 then
                Mon = "Forest Pirate"
                LevelQuest = 1
                NameQuest = "DeepForestIsland"
                NameMon = "Forest Pirate"
                CFrameQuest = CFrame.new(-13233, 332, -7626)
                CFrameMon = CFrame.new(-13335, 380, -7660)
            elseif MyLevel == 1850 or MyLevel <= 1899 then
                Mon = "Mythological Pirate"
                LevelQuest = 2
                NameQuest = "DeepForestIsland"
                NameMon = "Mythological Pirate"
                CFrameQuest = CFrame.new(-13233, 332, -7626)   
                CFrameMon = CFrame.new(-13844, 520, -7016)
            elseif MyLevel == 1900 or MyLevel <= 1924 then
                Mon = "Jungle Pirate"
                LevelQuest = 1
                NameQuest = "DeepForestIsland2"
                NameMon = "Jungle Pirate"
                CFrameQuest = CFrame.new(-12682, 391, -9901)
                CFrameMon = CFrame.new(-12166, 380, -10375)
            elseif MyLevel == 1925 or MyLevel <= 1974 then
                Mon = "Musketeer Pirate"
                LevelQuest = 2
                NameQuest = "DeepForestIsland2"
                NameMon = "Musketeer Pirate"
                CFrameQuest = CFrame.new(-12682, 391, -9901)
                CFrameMon = CFrame.new(-13098, 450, -9831)
            elseif MyLevel == 1975 or MyLevel <= 1999 then
                Mon = "Reborn Skeleton"
                LevelQuest = 1
                NameQuest = "HauntedQuest1"
                NameMon = "Reborn Skeleton"
                CFrameQuest = CFrame.new(-9481, 142, 5565)
                CFrameMon = CFrame.new(-8680, 190, 5852)
            elseif MyLevel == 2000 or MyLevel <= 2024 then
                Mon = "Living Zombie"
                LevelQuest = 2
                NameQuest = "HauntedQuest1"
                NameMon = "Living Zombie"
                CFrameQuest = CFrame.new(-9481, 142, 5565)
                CFrameMon = CFrame.new(-10104, 200, 5739)
            elseif MyLevel == 2025 or MyLevel <= 2049 then
                Mon = "Demonic Soul"
                LevelQuest = 1
                NameQuest = "HauntedQuest2"
                NameMon = "Demonic Soul"
                CFrameQuest = CFrame.new(-9515, 172, 607) 
                CFrameMon = CFrame.new(-9275, 210, 6166)
            elseif MyLevel == 2050 or MyLevel <= 2074 then
                Mon = "Posessed Mummy"
                LevelQuest = 2
                NameQuest = "HauntedQuest2"
                NameMon = "Posessed Mummy"
                CFrameQuest = CFrame.new(-9515, 172, 607)
                CFrameMon = CFrame.new(-9442, 60, 6304)
            elseif MyLevel == 2075 or MyLevel <= 2099 then
                Mon = "Peanut Scout"
                LevelQuest = 1
                NameQuest = "NutsIslandQuest"
                NameMon = "Peanut Scout"
                CFrameQuest = CFrame.new(-2104, 38, -10194)
                CFrameMon = CFrame.new(-1870, 100, -10225)
            elseif MyLevel == 2100 or MyLevel <= 2124 then
                Mon = "Peanut President"
                LevelQuest = 2
                NameQuest = "NutsIslandQuest"
                NameMon = "Peanut President"
                CFrameQuest = CFrame.new(-2104, 38, -10194)
                CFrameMon = CFrame.new(-2005, 100, -10585)
            elseif MyLevel == 2125 or MyLevel <= 2149 then
                Mon = "Ice Cream Chef"
                LevelQuest = 1
                NameQuest = "IceCreamIslandQuest"
                NameMon = "Ice Cream Chef"
                CFrameQuest = CFrame.new(-818, 66, -10964)
                CFrameMon = CFrame.new(-501, 100, -10883)
            elseif MyLevel == 2150 or MyLevel <= 2199 then
                Mon = "Ice Cream Commander"
                LevelQuest = 2
                NameQuest = "IceCreamIslandQuest"
                NameMon = "Ice Cream Commander"
                CFrameQuest = CFrame.new(-818, 66, -10964)
                CFrameMon = CFrame.new(-690, 100, -11350)
            elseif MyLevel == 2200 or MyLevel <= 2224 then
                Mon = "Cookie Crafter"
                LevelQuest = 1
                NameQuest = "CakeQuest1"
                NameMon = "Cookie Crafter"
                CFrameQuest = CFrame.new(-2023, 38, -12028)
                CFrameMon = CFrame.new(-2332, 90, -12049)
            elseif MyLevel == 2225 or MyLevel <= 2249 then
                Mon = "Cake Guard"
                LevelQuest = 2
                NameQuest = "CakeQuest1"
                NameMon = "Cake Guard"
                CFrameQuest = CFrame.new(-2023, 38, -12028)
                CFrameMon = CFrame.new(-1514, 90, -12422)
            elseif MyLevel == 2250 or MyLevel <= 2274 then
                Mon = "Baking Staff"
                LevelQuest = 1
                NameQuest = "CakeQuest2"
                NameMon = "Baking Staff"
                CFrameQuest = CFrame.new(-1931, 38, -12840)
                CFrameMon = CFrame.new(-1930, 90, -12963)
            elseif MyLevel == 2275 or MyLevel <= 2299 then
                Mon = "Head Baker"
                LevelQuest = 2
                NameQuest = "CakeQuest2"
                NameMon = "Head Baker"
                CFrameQuest = CFrame.new(-1931, 38, -12840)
                CFrameMon = CFrame.new(-2123, 110, -12777)
            elseif MyLevel == 2300 or MyLevel <= 2324 then
                Mon = "Cocoa Warrior"
                LevelQuest = 1
                NameQuest = "ChocQuest1"
                NameMon = "Cocoa Warrior"
                CFrameQuest = CFrame.new(235, 25, -12199)
                CFrameMon = CFrame.new(110, 80, -12245)
            elseif MyLevel == 2325 or MyLevel <= 2349 then
                Mon = "Chocolate Bar Battler"
                LevelQuest = 2
                NameQuest = "ChocQuest1"
                NameMon = "Chocolate Bar Battler"
                CFrameQuest = CFrame.new(235, 25, -12199)
                CFrameMon = CFrame.new(579, 80, -12413)
            elseif MyLevel == 2350 or MyLevel <= 2374 then
                Mon = "Sweet Thief"
                LevelQuest = 1
                NameQuest = "ChocQuest2"
                NameMon = "Sweet Thief"
                CFrameQuest = CFrame.new(150, 25, -12777)
                CFrameMon = CFrame.new(-68, 80, -12692)
            elseif MyLevel == 2375 or MyLevel <= 2399 then
                Mon = "Candy Rebel"
                LevelQuest = 2
                NameQuest = "ChocQuest2"
                NameMon = "Candy Rebel"
                CFrameQuest = CFrame.new(150, 25, -12777)
                CFrameMon = CFrame.new(17, 80, -12962)
            elseif MyLevel == 2400 or MyLevel <= 2424 then
                Mon = "Candy Pirate"
                LevelQuest = 1
                NameQuest = "CandyQuest1"
                NameMon = "Candy Pirate"
                CFrameQuest = CFrame.new(-1148, 14, -14446)
                CFrameMon = CFrame.new(-1371, 70, -14405)
            elseif MyLevel == 2425 or MyLevel <= 2449 then
                Mon = "Snow Demon"
                LevelQuest = 2
                NameQuest = "CandyQuest1"
                NameMon = "Snow Demon"
                CFrameQuest = CFrame.new(-1148, 14, -14446)
                CFrameMon = CFrame.new(-836, 70, -14326)
            elseif MyLevel == 2450 or MyLevel <= 2474 then
                Mon = "Isle Outlaw"
                LevelQuest = 1
                NameQuest = "TikiQuest1"
                NameMon = "Isle Outlaw"
                CFrameQuest = CFrame.new(-16547, 56, -172)
                CFrameMon = CFrame.new(-16431, 90, -223)
            elseif MyLevel == 2475 or MyLevel <= 2499 then
                Mon = "Island Boy"
                LevelQuest = 2
                NameQuest = "TikiQuest1"
                NameMon = "Island Boy"
                CFrameQuest = CFrame.new(-16547, 56, -172)
                CFrameMon = CFrame.new(-16668, 70, -243)
            elseif MyLevel == 2500 or MyLevel <= 2524 then
                Mon = "Sun-kissed Warrior"
                LevelQuest = 1
                NameQuest = "TikiQuest2"
                NameMon = "kissed"
                CFrameQuest = CFrame.new(-16540, 56, 1051)
                CFrameMon = CFrame.new(-16345, 80, 1004)
            elseif MyLevel == 2525 or MyLevel <= 2550 then
                Mon = "Isle Champion"
                LevelQuest = 2
                NameQuest = "TikiQuest2"
                NameMon = "Isle Champion"
                CFrameQuest = CFrame.new(-16540, 56, 1051)
                CFrameMon = CFrame.new(-16634, 85, 1106)
            end
        end
    end
------------------------------------------------------------------------------------------------------------------------------------
function Hop()
        local PlaceID = game.PlaceId
        local AllIDs = {}
        local foundAnything = ""
        local actualHour = os.date("!*t").hour
        local Deleted = false
        function TPReturner()
            local Site;
            if foundAnything == "" then
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
            else
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
            end
            local ID = ""
            if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                foundAnything = Site.nextPageCursor
            end
            local num = 0;
            for i,v in pairs(Site.data) do
                local Possible = true
                ID = tostring(v.id)
                if tonumber(v.maxPlayers) > tonumber(v.playing) then
                    for _,Existing in pairs(AllIDs) do
                        if num ~= 0 then
                            if ID == tostring(Existing) then
                                Possible = false
                            end
                        else
                            if tonumber(actualHour) ~= tonumber(Existing) then
                                local delFile = pcall(function()
                                    AllIDs = {}
                                    table.insert(AllIDs, actualHour)
                                end)
                            end
                        end
                        num = num + 1
                    end
                    if Possible == true then
                        table.insert(AllIDs, ID)
                        wait()
                        pcall(function()
                            wait()
                            game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                        end)
                        wait(4)
                    end
                end
            end
        end
        function Teleport() 
            while wait() do
                pcall(function()
                    TPReturner()
                    if foundAnything ~= "" then
                        TPReturner()
                    end
                end)
            end
        end
        Teleport()
    end   

function CheckItem(ah)
    for k, v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")) do
        if v.Name == ah then
            return v
        end
    end
end
    function UpdateIslandESP() 
        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            pcall(function()
                if IslandESP then 
                    if v.Name ~= "Sea" then
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "GothamBold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(255, 255, 255)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    end

    function isnil(thing)
	return (thing == nil)
end
local function round(n)
	return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
	for i,v in pairs(game:GetService'Players':GetChildren()) do
		pcall(function()
			if not isnil(v.Character) then
				if ESPPlayer then
					if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Character.Head)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Character.Head
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						if v.Team == game.Players.LocalPlayer.Team then
							name.TextColor3 = Color3.new(0,255,0)
						else
							name.TextColor3 = Color3.new(255,0,0)
						end
					else
						v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
					end
				else
					if v.Character.Head:FindFirstChild('NameEsp'..Number) then
						v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end
		end)
	end
end

function UpdateChestChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if string.find(v.Name,"Chest") then
				if ChestESP then
					if string.find(v.Name,"Chest") then
						if not v:FindFirstChild('NameEsp'..Number) then
							local bill = Instance.new('BillboardGui',v)
							bill.Name = 'NameEsp'..Number
							bill.ExtentsOffset = Vector3.new(0, 1, 0)
							bill.Size = UDim2.new(1,200,1,30)
							bill.Adornee = v
							bill.AlwaysOnTop = true
							local name = Instance.new('TextLabel',bill)
							name.Font = Enum.Font.GothamSemibold
							name.FontSize = "Size14"
							name.TextWrapped = true
							name.Size = UDim2.new(1,0,1,0)
							name.TextYAlignment = 'Top'
							name.BackgroundTransparency = 1
							name.TextStrokeTransparency = 0.5
							if v.Name == "Chest1" then
								name.TextColor3 = Color3.fromRGB(109, 109, 109)
								name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
							if v.Name == "Chest2" then
								name.TextColor3 = Color3.fromRGB(173, 158, 21)
								name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
							if v.Name == "Chest3" then
								name.TextColor3 = Color3.fromRGB(85, 255, 255)
								name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
						else
							v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
						end
					end
				else
					if v:FindFirstChild('NameEsp'..Number) then
						v:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end
		end)
	end
end

function UpdateDevilChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if DevilFruitESP then
				if string.find(v.Name, "Fruit") then   
					if not v.Handle:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Handle)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Handle
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 255, 255)
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
					else
						v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
					end
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end
		end)
	end
end

function UpdateFlowerChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if v.Name == "Flower2" or v.Name == "Flower1" then
				if FlowerESP then 
					if not v:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 0, 0)
						if v.Name == "Flower1" then 
							name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							name.TextColor3 = Color3.fromRGB(0, 0, 255)
						end
						if v.Name == "Flower2" then
							name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							name.TextColor3 = Color3.fromRGB(255, 0, 0)
						end
					else
						v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
					end
				else
					if v:FindFirstChild('NameEsp'..Number) then
					v:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end   
		end)
	end
end

function UpdateRealFruitChams() 
	for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 0, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end

	for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 174, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end

	for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(251, 255, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
end

function UpdateIslandESP() 
        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            pcall(function()
                if IslandESP then 
                    if v.Name ~= "Sea" then
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "GothamBold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(255, 255, 255)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    end

  function isnil(thing)
	return (thing == nil)
end
local function round(n)
	return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
	for i,v in pairs(game:GetService'Players':GetChildren()) do
		pcall(function()
			if not isnil(v.Character) then
				if ESPPlayer then
					if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Character.Head)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Character.Head
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						if v.Team == game.Players.LocalPlayer.Team then
							name.TextColor3 = Color3.new(0,255,0)
						else
							name.TextColor3 = Color3.new(255,0,0)
						end
					else
						v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
					end
				else
					if v.Character.Head:FindFirstChild('NameEsp'..Number) then
						v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end
		end)
	end
end

function UpdateChestChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if string.find(v.Name,"Chest") then
				if ChestESP then
					if string.find(v.Name,"Chest") then
						if not v:FindFirstChild('NameEsp'..Number) then
							local bill = Instance.new('BillboardGui',v)
							bill.Name = 'NameEsp'..Number
							bill.ExtentsOffset = Vector3.new(0, 1, 0)
							bill.Size = UDim2.new(1,200,1,30)
							bill.Adornee = v
							bill.AlwaysOnTop = true
							local name = Instance.new('TextLabel',bill)
							name.Font = Enum.Font.GothamSemibold
							name.FontSize = "Size14"
							name.TextWrapped = true
							name.Size = UDim2.new(1,0,1,0)
							name.TextYAlignment = 'Top'
							name.BackgroundTransparency = 1
							name.TextStrokeTransparency = 0.5
							if v.Name == "Chest1" then
								name.TextColor3 = Color3.fromRGB(109, 109, 109)
								name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
							if v.Name == "Chest2" then
								name.TextColor3 = Color3.fromRGB(173, 158, 21)
								name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
							if v.Name == "Chest3" then
								name.TextColor3 = Color3.fromRGB(85, 255, 255)
								name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
						else
							v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
						end
					end
				else
					if v:FindFirstChild('NameEsp'..Number) then
						v:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end
		end)
	end
end

function UpdateDevilChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if DevilFruitESP then
				if string.find(v.Name, "Fruit") then   
					if not v.Handle:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Handle)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Handle
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 255, 255)
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
					else
						v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
					end
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end
		end)
	end
end

function UpdateFlowerChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if v.Name == "Flower2" or v.Name == "Flower1" then
				if FlowerESP then 
					if not v:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 0, 0)
						if v.Name == "Flower1" then 
							name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							name.TextColor3 = Color3.fromRGB(0, 0, 255)
						end
						if v.Name == "Flower2" then
							name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							name.TextColor3 = Color3.fromRGB(255, 0, 0)
						end
					else
						v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
					end
				else
					if v:FindFirstChild('NameEsp'..Number) then
					v:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end   
		end)
	end
end

function UpdateRealFruitChams() 
	for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 0, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end

	for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 174, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end

	for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(251, 255, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
end

function UpdateIslandESP() 
        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            pcall(function()
                if IslandESP then 
                    if v.Name ~= "Sea" then
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "GothamBold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(255, 255, 255)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    end

  function isnil(thing)
	return (thing == nil)
end
local function round(n)
	return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
	for i,v in pairs(game:GetService'Players':GetChildren()) do
		pcall(function()
			if not isnil(v.Character) then
				if ESPPlayer then
					if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Character.Head)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Character.Head
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						if v.Team == game.Players.LocalPlayer.Team then
							name.TextColor3 = Color3.new(0,255,0)
						else
							name.TextColor3 = Color3.new(255,0,0)
						end
					else
						v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
					end
				else
					if v.Character.Head:FindFirstChild('NameEsp'..Number) then
						v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end
		end)
	end
end

function UpdateChestChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if string.find(v.Name,"Chest") then
				if ChestESP then
					if string.find(v.Name,"Chest") then
						if not v:FindFirstChild('NameEsp'..Number) then
							local bill = Instance.new('BillboardGui',v)
							bill.Name = 'NameEsp'..Number
							bill.ExtentsOffset = Vector3.new(0, 1, 0)
							bill.Size = UDim2.new(1,200,1,30)
							bill.Adornee = v
							bill.AlwaysOnTop = true
							local name = Instance.new('TextLabel',bill)
							name.Font = Enum.Font.GothamSemibold
							name.FontSize = "Size14"
							name.TextWrapped = true
							name.Size = UDim2.new(1,0,1,0)
							name.TextYAlignment = 'Top'
							name.BackgroundTransparency = 1
							name.TextStrokeTransparency = 0.5
							if v.Name == "Chest1" then
								name.TextColor3 = Color3.fromRGB(109, 109, 109)
								name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
							if v.Name == "Chest2" then
								name.TextColor3 = Color3.fromRGB(173, 158, 21)
								name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
							if v.Name == "Chest3" then
								name.TextColor3 = Color3.fromRGB(85, 255, 255)
								name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							end
						else
							v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
						end
					end
				else
					if v:FindFirstChild('NameEsp'..Number) then
						v:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end
		end)
	end
end

function UpdateDevilChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if DevilFruitESP then
				if string.find(v.Name, "Fruit") then   
					if not v.Handle:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Handle)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Handle
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 255, 255)
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
					else
						v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
					end
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end
		end)
	end
end

function UpdateFlowerChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if v.Name == "Flower2" or v.Name == "Flower1" then
				if FlowerESP then 
					if not v:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 0, 0)
						if v.Name == "Flower1" then 
							name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							name.TextColor3 = Color3.fromRGB(0, 0, 255)
						end
						if v.Name == "Flower2" then
							name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							name.TextColor3 = Color3.fromRGB(255, 0, 0)
						end
					else
						v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
					end
				else
					if v:FindFirstChild('NameEsp'..Number) then
					v:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end   
		end)
	end
end

function UpdateRealFruitChams() 
	for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 0, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
	
	for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(255, 174, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end

	for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
		if v:IsA("Tool") then
			if RealFruitESP then 
				if not v.Handle:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Handle)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Handle
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					name.TextColor3 = Color3.fromRGB(251, 255, 0)
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				else
					v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end 
		end
	end
end

spawn(function()
    while wait() do
        pcall(function()
            if MobESP then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild('HumanoidRootPart') then
                        if not v:FindFirstChild("MobEap") then
                            local BillboardGui = Instance.new("BillboardGui")
                            local TextLabel = Instance.new("TextLabel")
                            BillboardGui.Parent = v
                            BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            BillboardGui.Active = true
                            BillboardGui.Name = "MobEap"
                            BillboardGui.AlwaysOnTop = true
                            BillboardGui.LightInfluence = 1.000
                            BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                            BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
                            TextLabel.Parent = BillboardGui
                            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.BackgroundTransparency = 1.000
                            TextLabel.Size = UDim2.new(0, 200, 0, 50)
                            TextLabel.Font = Enum.Font.GothamBold
                            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.Text.Size = 35
                        end
                        local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                        v.MobEap.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                    end
                end
            else
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild("MobEap") then
                        v.MobEap:Destroy()
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if SeaESP then
                for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                    if v:FindFirstChild('HumanoidRootPart') then
                        if not v:FindFirstChild("Seaesps") then
                            local BillboardGui = Instance.new("BillboardGui")
                            local TextLabel = Instance.new("TextLabel")
                            BillboardGui.Parent = v
                            BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            BillboardGui.Active = true
                            BillboardGui.Name = "Seaesps"
                            BillboardGui.AlwaysOnTop = true
                            BillboardGui.LightInfluence = 1.000
                            BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                            BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
                            TextLabel.Parent = BillboardGui
                            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.BackgroundTransparency = 1.000
                            TextLabel.Size = UDim2.new(0, 200, 0, 50)
                            TextLabel.Font = Enum.Font.GothamBold
                            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.Text.Size = 35
                        end
                        local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                        v.Seaesps.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                    end
                end
            else
                for i,v in pairs (game:GetService("Workspace").SeaBeasts:GetChildren()) do
                    if v:FindFirstChild("Seaesps") then
                        v.Seaesps:Destroy()
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if NpcESP then
                for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                    if v:FindFirstChild('HumanoidRootPart') then
                        if not v:FindFirstChild("NpcEspes") then
                            local BillboardGui = Instance.new("BillboardGui")
                            local TextLabel = Instance.new("TextLabel")

                            BillboardGui.Parent = v
                            BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            BillboardGui.Active = true
                            BillboardGui.Name = "NpcEspes"
                            BillboardGui.AlwaysOnTop = true
                            BillboardGui.LightInfluence = 1.000
                            BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                            BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                            TextLabel.Parent = BillboardGui
                            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.BackgroundTransparency = 1.000
                            TextLabel.Size = UDim2.new(0, 200, 0, 50)
                            TextLabel.Font = Enum.Font.GothamBold
                            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.Text.Size = 35
                        end
                        local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                        v.NpcEspes.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                    end
                end
            else
                for i,v in pairs (game:GetService("Workspace").NPCs:GetChildren()) do
                    if v:FindFirstChild("NpcEspes") then
                        v.NpcEspes:Destroy()
                    end
                end
            end
        end)
    end
end)
------------------------------------------------------------------------------------------------------------------------------------
local foldername = "CHIEUDEPZAI HUB"
local filename = foldername.."/Setting.json"
function saveSettings()
    local HttpService = game:GetService("HttpService")
    local json = HttpService:JSONEncode(_G)
    if true then
        if isfolder(foldername) then
            if isfile(filename) then
                writefile(filename, json)
            else
                writefile(filename, json)
            end
        else
            makefolder(foldername)
        end
    end
end

function loadSettings()
    local HttpService = game:GetService("HttpService")
    if isfolder(foldername) then
        if isfile(filename) then
            _G = HttpService:JSONDecode(readfile(filename))
        end
    end
end

    function AutoHaki()
        if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
        end
    end

    function UnEquipWeapon(Weapon)
        if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
            _G.NotAutoEquip = true
            wait(.5)
            game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
            wait(.1)
            _G.NotAutoEquip = false
        end
    end

    function EquipWeapon(ToolSe)
        if not game.Players.LocalPlayer.Character:FindFirstChild(ToolSe) then
            if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
                Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
            end
        end
    end

    function BTP(p)
    	pcall(function()
	    	if (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500 and not Auto_Raid and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
				repeat wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
					wait(1)
					game.Players.LocalPlayer.Character.Head:Destroy()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
				until (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1500 and game.Players.LocalPlayer.Character.Humanoid.Health > 0
			end
		end)
	end

local function TPB(pos, boat)
    local tween_s = game:GetService("TweenService")
    local info = TweenInfo.new((boat.CFrame.Position - pos.Position).Magnitude / getgenv().SpeedBoat, Enum.EasingStyle.Linear)
    local tween = tween_s:Create(boat, info, {CFrame = pos})
    local stopboat = {}
    function stopboat:Stop()
        tween:Cancel()
    end
    if (boat.CFrame.Position - pos.Position).Magnitude <= 25 then
        stopboat:Stop()
    else
        tween:Play()
    end
    return stopboat
end

function EquipAllWeapon()
        pcall(function()
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA('Tool') and not (v.Name == "Summon Sea Beast" or v.Name == "Water Body" or v.Name == "Awakening") then
                    local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name) 
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
                    wait(1)
                end
            end
        end)
    end 

function TelePPlayer(P)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
end

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local VirtualUser = game:GetService("VirtualUser")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local Remotes = ReplicatedStorage:WaitForChild("Remotes", 9e9)
local CommF = Remotes:WaitForChild("CommF_", 9e9)

local block = Instance.new("Part", workspace)
block.Size = Vector3.new(1, 1, 1)
block.Name = "Xeter dep trai"
block.Anchored = true
block.CanCollide = false
block.CanTouch = false
block.Transparency = 1

local blockfind = workspace:FindFirstChild(block.Name)
if blockfind and blockfind ~= block then
  blockfind:Destroy()
end

task.spawn(function()
  while task.wait() do
    if block and block.Parent == workspace then
      if _G.AutoAdvanceDungeon 
      or _G.AutoDoughtBoss
      or _G.Auto_DungeonMobAura
      or _G.AutoFarmChest
      or _G.AutoFarmBossHallow
      or _G.AutoFarmSwanGlasses
      or _G.AutoLongSword
      or _G.AutoBlackSpikeycoat
      or _G.AutoElectricClaw
      or _G.AutoFarmGunMastery
      or _G.AutoHolyTorch
      or _G.AutoLawRaid
      or _G.AutoFarmBoss
      or _G.AutoTwinHooks
      or _G.AutoOpenSwanDoo
      or _G.AutoDragon_Trident or AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.KillFishCrew or _G.KillTerrorShark or _G.KillShark or _G.KillPiranha or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.RipIndraKill or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.AutoSeaBest or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or PirateShip or _G.Autodoughking or _G.AutoFarmMaterial or _G.QuestSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.AutoKai or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.RaidPirate or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest or Tween_Fruit or KillPlayer or KillPlayerSpam or _G.SeaBeasts1 then
 
        getgenv().OnFarm = true
      else
        getgenv().OnFarm = false
      end
    else
      getgenv().OnFarm = false
    end
  end
end)

task.spawn(function()
  repeat task.wait()
  until Player.Character and Player.Character.PrimaryPart
  block.CFrame = Player.Character.PrimaryPart.CFrame
  
  while task.wait() do
    pcall(function()
      if getgenv().OnFarm then
        if block and block.Parent == workspace then
          local plrPP = Player.Character and Player.Character.PrimaryPart
          
          if plrPP and (plrPP.Position - block.Position).Magnitude <= 200 then
            plrPP.CFrame = block.CFrame
          else
            block.CFrame = plrPP.CFrame
          end
        end
        local plrChar = Player.Character
        if plrChar then
          for _,part in pairs(plrChar:GetChildren()) do
            if part:IsA("BasePart") then
              part.CanCollide = false
            end
          end
          if plrChar:FindFirstChild("Stun") and plrChar.Stun.Value ~= 0 then
            plrChar.Stun.Value = 0
          end
          if plrChar:FindFirstChild("Busy") and plrChar.Busy.Value then
            plrChar.Busy.Value = false
          end
        end
      else
        local plrChar = Player.Character
        if plrChar then
          for _,part in pairs(plrChar:GetChildren()) do
            if part:IsA("BasePart") then
              part.CanCollide = true
            end
          end
        end
      end
    end)
  end
end)

task.spawn(function()
  local PortalPos = {}
  
  if World1 then
    PortalPos = {
      Vector3.new(-4652, 873, -1754), -- Sky Island 1
      Vector3.new(-7895, 5547, -380), -- Sky Island 2
      Vector3.new(61164, 5, 1820), -- Under Water Island
      Vector3.new(3865, 5, -1926) -- Under Water Island Entrace
    }
  elseif World2 then
    PortalPos = {
      Vector3.new(-317, 331, 597), -- Flamingo Mansion
      Vector3.new(2283, 15, 867), -- Flamingo Room
      Vector3.new(923, 125, 32853), -- Cursed Ship
      Vector3.new(-6509, 83, -133) -- Zombie Island0
    }
  elseif World3 then
    PortalPos = {
      Vector3.new(-12471, 374, -7551), -- Mansion
      Vector3.new(5756, 610, -282), -- Hydra Island
      Vector3.new(-5092, 315, -3130), -- Castle on the Sea
      Vector3.new(-12001, 332, -8861), -- Floating Turtle
      Vector3.new(5319, 23, -93), -- Beautiful Pirate
      Vector3.new(5314.58203, 22.5364361, -125.942276, 1, 2.14762768e-08, -1.99111154e-13, -2.14762768e-08, 1, -3.0510602e-08, 1.98455903e-13, 3.0510602e-08, 1), -- room bot cavender
      Vector3.new(28286, 14897, 103) -- Temple of Time
    }
  end
  
  function GetTPPos(position)
    local NearPos = math.huge
    local TpPos = Vector3.new()
    
    table.foreach(PortalPos, function(___, pos)
      if (pos - position).Magnitude <= NearPos then
        NearPos = (pos - position).Magnitude
        TpPos = pos
      end
    end)
    return TpPos
  end
end)

local TweenService = game:GetService("TweenService")
local TeleportPos
local currentTween 
local function topos(Tween_Pos)
    TeleportPos = Tween_Pos.p
    local plrPP = Player.Character and Player.Character.PrimaryPart
    if not plrPP then return end
    local Distance = (plrPP.Position - Tween_Pos.p).Magnitude
    local PortalPos = GetTPPos(Tween_Pos.p)
    if Tween_Pos.p.Y < plrPP.Position.Y then
        plrPP.CFrame = CFrame.new(plrPP.Position.X, Tween_Pos.p.Y, plrPP.Position.Z)
    elseif Tween_Pos.p.Y > plrPP.Position.Y then
        plrPP.CFrame = CFrame.new(plrPP.Position.X, Tween_Pos.p.Y, plrPP.Position.Z)
    end
    if Distance > (Tween_Pos.p - PortalPos).Magnitude + 250 then
        plrPP.CFrame = CFrame.new(PortalPos)
        block.CFrame = CFrame.new(PortalPos)
        task.wait(2) 
    elseif block then
        local tweenTime = Distance / getgenv().TweenSpeed
        if Distance <= 250 then
            tweenTime = Distance / tonumber(getgenv().TweenSpeed * 1.8)
        end
        if currentTween then
            currentTween:Pause()
        end
        local tweenInfo = TweenInfo.new(tweenTime, Enum.EasingStyle.Linear)
        local tweenGoal = {CFrame = Tween_Pos}
        currentTween = TweenService:Create(block, tweenInfo, tweenGoal)
        currentTween:Play()
    end
end

local function stopTween()
    if currentTween then
        currentTween:Cancel()
        currentTween = nil
    end
end

spawn(function()
  pcall(function()
    game:GetService("RunService").Stepped:Connect(function()
      if _G.AutoAdvanceDungeon 
      or _G.AutoDoughtBoss
      or _G.Auto_DungeonMobAura
      or _G.AutoFarmChest
      or _G.AutoFarmBossHallow
      or _G.AutoFarmSwanGlasses
      or _G.AutoLongSword
      or _G.AutoBlackSpikeycoat
      or _G.AutoElectricClaw
      or _G.AutoFarmGunMastery
      or _G.AutoHolyTorch
      or _G.AutoLawRaid
      or _G.AutoFarmBoss
      or _G.AutoTwinHooks
      or _G.AutoOpenSwanDoo
      or _G.AutoDragon_Trident or AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.KillFishCrew or _G.KillTerrorShark or _G.KillShark or _G.KillPiranha or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.RipIndraKill or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.AutoSeaBest or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or PirateShip or _G.Autodoughking or _G.AutoFarmMaterial or _G.QuestSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.AutoKai or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.RaidPirate or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest or Tween_Fruit or KillPlayer or KillPlayerSpam or _G.SeaBeasts1 then
      for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
      if v:IsA("BasePart") then
      v.CanCollide = false
      end
      end
      end
      end)
    end)
  end)

function WaitHRP(q0)
    if not q0 then return end
    return q0.Character:WaitForChild("HumanoidRootPart", 9)
end

function CheckNearestTeleporter(aI)
    local vcspos = aI.Position
    local minDist = math.huge
    local chosenTeleport = nil
    local y = game.PlaceId

    local TableLocations = {}

    if y == 2753915549 then
        TableLocations = {
            ["1"] = Vector3.new(-7894.6201171875, 5545.49169921875, -380.2467346191406),
            ["2"] = Vector3.new(-4607.82275390625, 872.5422973632812, -1667.556884765625),
            ["3"] = Vector3.new(61163.8515625, 11.759522438049316, 1819.7841796875),
            ["4"] = Vector3.new(3876.280517578125, 35.10614013671875, -1939.3201904296875)
        }
    elseif y == 4442272183 then
        TableLocations = {
            ["Mansion"] = Vector3.new(-288.46246337890625, 306.130615234375, 597.9988403320312),
            ["Flamingo"] = Vector3.new(2284.912109375, 15.152046203613281, 905.48291015625),
            ["122"] = Vector3.new(923.21252441406, 126.9760055542, 32852.83203125),
            ["3032"] = Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422)
        }
    elseif y == 7449423635 then
        TableLocations = {
            ["Caslte On The Sea"] = Vector3.new(-5058.77490234375, 314.5155029296875, -3155.88330078125),
            ["Hydra"] = Vector3.new(5756.83740234375, 610.4240112304688, -253.9253692626953),
            ["Mansion"] = Vector3.new(-12463.8740234375, 374.9144592285156, -7523.77392578125),
            ["Great Tree"] = Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586)
        }
    end

    for _, v in pairs(TableLocations) do
        local dist = (v - vcspos).Magnitude
        if dist < minDist then
            minDist = dist
            chosenTeleport = v
        end
    end

    local playerPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    if minDist <= (vcspos - playerPos).Magnitude then
        return chosenTeleport
    end
end

function requestEntrance(teleportPos)
    game.ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance", teleportPos)
    local char = game.Players.LocalPlayer.Character.HumanoidRootPart
    char.CFrame = char.CFrame + Vector3.new(0, 50, 0)
    task.wait(0.5)
end

function TP2(Pos)
    local plr = game.Players.LocalPlayer
    if plr.Character and plr.Character.Humanoid.Health > 0 and plr.Character:FindFirstChild("HumanoidRootPart") then
        local Distance = (Pos.Position - plr.Character.HumanoidRootPart.Position).Magnitude
        if not Pos then 
            return 
        end
        local nearestTeleport = CheckNearestTeleporter(Pos)
        if nearestTeleport then
            requestEntrance(nearestTeleport)
        end
        if not plr.Character:FindFirstChild("PartTele") then
            local PartTele = Instance.new("Part", plr.Character)
            PartTele.Size = Vector3.new(10,1,10)
            PartTele.Name = "PartTele"
            PartTele.Anchored = true
            PartTele.Transparency = 1
            PartTele.CanCollide = true
            PartTele.CFrame = WaitHRP(plr).CFrame 
            PartTele:GetPropertyChangedSignal("CFrame"):Connect(function()
                if not isTeleporting then return end
                task.wait()
                if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                    WaitHRP(plr).CFrame = PartTele.CFrame
                end
            end)
        end
        isTeleporting = true
        local Tween = game:GetService("TweenService"):Create(plr.Character.PartTele, TweenInfo.new(Distance / getgenv().TweenSpeed, Enum.EasingStyle.Linear), {CFrame = Pos})
        Tween:Play()
        Tween.Completed:Connect(function(status)
            if status == Enum.PlaybackState.Completed then
                if plr.Character:FindFirstChild("PartTele") then
                    plr.Character.PartTele:Destroy()
                end
                isTeleporting = false
            end
        end)
    end
end
    
    local function StopTween()
    if _G.StopTween then
        return
    end
    
    _G.StopTween = true
    wait()
    local player = game.Players.LocalPlayer
    local character = player.Character
    if character and character:IsDescendantOf(game.Workspace) then
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        if humanoidRootPart then
            humanoidRootPart.CFrame = humanoidRootPart.CFrame
        end
    end
    wait()    
    if character:FindFirstChild("BodyClip") then
        character.BodyClip:Destroy()
    end
    if character:FindFirstChild("PartTele") then
        character.PartTele:Destroy()
    end
    _G.StopTween = false
end
------------------------------------------------------------------------------------------------------------------------------------
function BTP(P1)
game.Players.LocalPlayer.Character.Head:Destroy()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P1
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P1
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
end
    spawn(function()
			while task.wait() do
				pcall(function()
					if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.KillFishCrew or _G.KillTerrorShark or _G.KillShark or _G.KillPiranha or _G.RipIndraKill or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.AutoSeaBest or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or PirateShip or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.QuestSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.AutoKai or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.RaidPirate or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest or Tween_Fruit or KillPlayer or KillPlayerSpam or _G.SeaBeasts1 then
						if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
							local Noclip = Instance.new("BodyVelocity")
							Noclip.Name = "BodyClip"
							Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
							Noclip.MaxForce = Vector3.new(100000,100000,100000)
							Noclip.Velocity = Vector3.new(0,0,0)
						end
					else
						game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
					end
				end)
			end
		end)

spawn(function()
  pcall(function()
    game:GetService("RunService").Stepped:Connect(function()
      if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.KillFishCrew or _G.KillTerrorShark or _G.KillShark or _G.KillPiranha or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.RipIndraKill or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.AutoSeaBest or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or PirateShip or _G.Autodoughking or _G.AutoFarmMaterial or _G.QuestSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.AutoKai or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.RaidPirate or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest or Tween_Fruit or KillPlayer or KillPlayerSpam or _G.SeaBeasts1 then
      for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
      if v:IsA("BasePart") then
      v.CanCollide = false
      end
      end
      end
      end)
    end)
  end)

  spawn(function() 
        while wait() do
            if _G.SpinPos then
                Pos = CFrame.new(0,PosY,-25)
                task.wait(0.1)
                Pos = CFrame.new(-25,PosY,0)
                task.wait(0.1)
                Pos = CFrame.new(0,PosY,25)
                task.wait(0.1)
                Pos = CFrame.new(25,PosY,0)
            else
                Pos = CFrame.new(0,PosY,0)
            end
        end
    end)

  local plr = game:GetService("Players").LocalPlayer
    spawn(function()
        pcall(function()
            while wait() do
                for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
                    if v:IsA("Tool") then
                        if v:FindFirstChild("RemoteFunctionShoot") then 
                            SelectWeaponGun = v.Name
                        end
                    end
                end
            end
        end)
    end)

    game:GetService("Players").LocalPlayer.Idled:connect(function()
        game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
    function CheckColorRipIndra()
        mmb = {}
        for r, v in next, game:GetService("Workspace").Map["Boat Castle"].Summoner.Circle:GetChildren() do
            if v:IsA("Part") and v:FindFirstChild("Part") and v.Part.BrickColor.Name == "Dark stone grey" then
                mmb[v.BrickColor.Name] = v
            end
        end
        return mmb
    end
    function ActivateColor(cw)
        haki = {["Hot pink"] = "Winter Sky", ["Really red"] ="Pure Red", ["Oyster"] = "Snow White"}
        runnay = haki[cw]
        if runnay then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", runnay)
        end
    end
    function AutoActiveColorRip_Indra()
        for r, v in pairs(CheckColorRipIndra()) do
            ActivateColor(r)
            topos(v.CFrame)
            firetouchinterest(v.TouchInterest)
        end
    end
_G.TargTrial = nil
function targettrial()
    if _G.TargTrial ~= nil then return end
    local a = nil
    local b = 450
    for i,v in pairs(game.Players:GetChildren()) do
        c = (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if c <= b and v ~= game.Players.LocalPlayer then
            b = c 
            a = v
        end
    end
    if a == nil then return end
    if _G.TargTrial ~= nil then return end
    _G.TargTrial = a
end
function CheckPirateBoat()
    local cocailon = {"PirateBasic", "PirateBrigade"}
    for r, v in next, game:GetService("Workspace").Enemies:GetChildren() do
        if table.find(cocailon, v.Name) and v:FindFirstChild("Health") and v.Health.Value > 0 then
            return v
        end
    end
end
function StoreFruit()
    for i,v in pairs(thelocal.Backpack:GetChildren()) do
        if v:IsA("Tool") and string.find(v.Name, "Fruit") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",v:GetAttribute("OriginalName"),v)
        end
    end
end


function LPH_NO_VIRTUALIZE(func)
    return func
end
function LPH_JIT_MAX(func)
    return func
end
NoAttackAnimation = true
local DmgAttack = game:GetService("ReplicatedStorage").Assets.GUI:WaitForChild("DamageCounter")
local PC = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.Particle)
local RL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
local oldRL = RL.wrapAttackAnimationAsync
RL.wrapAttackAnimationAsync = function(a, b, c, d, func)
    if not NoAttackAnimation then
        return oldRL(a, b, c, 60, func)
    end
    local Hits = {}
    local Client = game.Players.LocalPlayer
    local Characters = game:GetService("Workspace").Characters:GetChildren()
    for i, v in pairs(Characters) do
        local Human = v:FindFirstChildOfClass("Humanoid")
        if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < 65 then
            table.insert(Hits, Human.RootPart)
        end
    end
    local Enemies = game:GetService("Workspace").Enemies:GetChildren()
    for i, v in pairs(Enemies) do
        local Human = v:FindFirstChildOfClass("Humanoid")
        if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < 65 then
            table.insert(Hits, Human.RootPart)
        end
    end
    a:Play(0.01, 0.01, 0.01)
    pcall(func, Hits)
end
getAllBladeHits = LPH_NO_VIRTUALIZE(function(Sizes)
    local Hits = {}
    local Client = game.Players.LocalPlayer
    local Enemies = game:GetService("Workspace").Enemies:GetChildren()
    for i, v in pairs(Enemies) do
        local Human = v:FindFirstChildOfClass("Humanoid")
        if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes + 5 then
            table.insert(Hits, Human.RootPart)
        end
    end
    return Hits
end)
getAllBladeHitsPlayers = LPH_NO_VIRTUALIZE(function(Sizes)
    local Hits = {}
    local Client = game.Players.LocalPlayer
    local Characters = game:GetService("Workspace").Characters:GetChildren()
    for i, v in pairs(Characters) do
        local Human = v:FindFirstChildOfClass("Humanoid")
        if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes + 5 then
            table.insert(Hits, Human.RootPart)
        end
    end
    return Hits
end)

local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
local CombatFrameworkR = getupvalues(CombatFramework)[2]
local RigEven = game:GetService("ReplicatedStorage").RigControllerEvent
local AttackAnim = Instance.new("Animation")
local AttackCoolDown = 0
local cooldowntickFire = 0
local MaxFire = 1000
local FireCooldown = 0.06
local FireL = 0
local bladehit = {}
CancelCoolDown = LPH_JIT_MAX(function()
    local ac = CombatFrameworkR.activeController
    if ac and ac.equipped then
        AttackCoolDown = tick() + (FireCooldown or 0.288) + ((FireL / MaxFire) * 0.3)
        RigEven.FireServer(RigEven, "weaponChange", ac.currentWeaponModel.Name)
        FireL = FireL + 1
        task.delay((FireCooldown or 0.288) + ((FireL + 0.4 / MaxFire) * 0.3), function()
            FireL = FireL - 1
        end)
    end
end)
AttackFunction = LPH_JIT_MAX(function(typef)
    local ac = CombatFrameworkR.activeController
    if ac and ac.equipped then
        local bladehit = {}
        if typef == 1 then
            bladehit = getAllBladeHits(60)
        elseif typef == 2 then
            bladehit = getAllBladeHitsPlayers(65)
        else
            for i2, v2 in pairs(getAllBladeHits(55)) do
                table.insert(bladehit, v2)
            end
            for i3, v3 in pairs(getAllBladeHitsPlayers(55)) do
                table.insert(bladehit, v3)
            end
        end
        if #bladehit > 0 then
            pcall(task.spawn, ac.attack, ac)
            if tick() > AttackCoolDown then
                CancelCoolDown()
            end
            if tick() - cooldowntickFire > 0.5 then
                ac.timeToNextAttack = 0
                ac.hitboxMagnitude = 60
                pcall(task.spawn, ac.attack, ac)
                cooldowntickFire = tick()
            end
            local AMI3 = ac.anims.basic[3]
            local AMI2 = ac.anims.basic[2]
            local REALID = AMI3 or AMI2
            AttackAnim.AnimationId = REALID
            local StartP = ac.humanoid:LoadAnimation(AttackAnim)
            StartP:Play(0.01, 0.01, 0.01)
            RigEven.FireServer(RigEven, "hit", bladehit, AMI3 and 3 or 2, "")
            task.delay(0, function()
                StartP:Stop()
            end)
        end
    end
end)
function CheckStun()
    if game:GetService('Players').LocalPlayer.Character:FindFirstChild("Stun") then
        return game:GetService('Players').LocalPlayer.Character.Stun.Value ~= 0
    end
    return false
end
LPH_JIT_MAX(function()
    spawn(function()
        while game:GetService("RunService").Stepped:Wait() do
            local ac = CombatFrameworkR.activeController
            if ac and ac.equipped and not CheckStun() then
                if NeedAttacking and Fast_Attack then
                    task.spawn(function()
                        pcall(task.spawn, AttackFunction, 1)
                    end)
                elseif DamageAura then
                    task.spawn(function()
                        pcall(task.spawn, AttackFunction, 3)
                    end)
                elseif UsefastattackPlayers and Fast_Attack then
                    task.spawn(function()
                        pcall(task.spawn, AttackFunction, 2)
                    end)
                elseif NeedAttacking and Fast_Attack == false then
                    if ac.hitboxMagnitude ~= 60 then
                        ac.hitboxMagnitude = 60
                    end
                    pcall(task.spawn, ac.attack, ac)
                end
            end
        end
    end)
end)()
inmyselfss = LPH_JIT_MAX(function(name)
	if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(name) then
		return game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(name)
	end
	local OutValue
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
		if v:IsA("Tool") then
			if v.Name == name then
				OutValue = v
				break
			end
		end
	end
	return OutValue or game:GetService("Players").LocalPlayer.Character:FindFirstChild(name)
end)
LPH_NO_VIRTUALIZE(function()
	function Click()
		game:GetService("VirtualUser"):CaptureController()
		game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
	end
end)()

task.delay(15,function() 
    if hookfunction and not islclosure(hookfunction) then 
        workspace._WorldOrigin.ChildAdded:Connect(function(v)
            if v.Name =='DamageCounter' then 
                v.Enabled  = false 
            end
        end)
        hookfunction(require(game:GetService("ReplicatedStorage").Effect.Container.Death), function()end)
        hookfunction(require(game:GetService("ReplicatedStorage").Effect.Container.Respawn), function()end)
        hookfunction(require(game:GetService("ReplicatedStorage"):WaitForChild("GuideModule")).ChangeDisplayedNPC,function() end)
        task.spawn(function()
            local NGU,NGUVL
            repeat 
                NGU,NGUVL = pcall(function()
                    for i,v in pairs(getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))[2].activeController.data) do  
                        if typeof(v) == 'function' then 
                            hookfunction(v,function() end )
                        end
                    end
                end)
                task.wait(1.5)
            until NGU 
        end) 
        abc = true
        task.spawn(function()
            local a = game.Players.LocalPlayer
            local b = require(a.PlayerScripts.CombatFramework.Particle)
            local c = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
            if not shared.orl then
                shared.orl = c.wrapAttackAnimationAsync
            end
            if not shared.cpc then
                shared.cpc = b.play
            end
            if abc then
                pcall(function()
                    c.wrapAttackAnimationAsync = function(d, e, f, g, h)
                        local i = c.getBladeHits(e, f, g)
                        if i then
                            b.play = function()
                            end
                            d:Play(0.1, 0.1, 0.1)
                            h(i)
                            b.play = shared.cpc
                            wait(.5)
                            d:Stop()
                        end
                    end
                end)
            end
        end)
        --[[
            task.delay(math.random(30,60),function()
                for i,v2 in pairs(game.ReplicatedStorage.Effect.Container:GetDescendants()) do 
                    pcall(function()
                        if v2.ClassName =='ModuleScript' and typeof(require(v2)) == 'function' then 
                            hookfunction(require(v2),function()end)
                        end
                    end)
                end
            end)
        ]]
    end
end)
------------------------------------------------------------------------------------------------------------------------------------
local L1 = Instance.new("ScreenGui")
local L2 = Instance.new("ImageButton")
local L3 = Instance.new("UICorner")
L1.Name = "ToggleUI"
L1.Parent = game.CoreGui
L1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
L2.Name = "ToggleButton"
L2.Parent = L1
L2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
L2.BorderSizePixel = 0
L2.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
L2.Size = UDim2.new(0, 53.5, 0, 53.5)
L2.BackgroundTransparency = 1.000
L2.Image = "rbxassetid://9614132122"
L2.Draggable = true
L2.MouseButton1Click:Connect(function()
  game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.LeftControl,false,game)
end)
L3.CornerRadius = UDim.new(0, 12)
L3.Parent = L2
loadSettings()
------------------------------------------------------------------------------------------------------------------------------------
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "BID HUB",
    SubTitle = "( Premium )",
    TabWidth = 160,
    Size = UDim2.fromOffset(530, 350),
    Acrylic = false, 
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl 
})

local Tabs = {
    Wl = Window:AddTab({ Title = "Tab chào hỏi", Icon = "" }),
    Main = Window:AddTab({ Title = "Tab farm đó dm", Icon = "" }),
    stack = Window:AddTab({ Title = "Tab farm item dcm", Icon = "" }), 
    St = Window:AddTab({ Title = "Sever địt con mẹ mày", Icon = "" }),    
    spl = Window:AddTab({ Title = "Player chỉ số đó cái lol mẹ mày", Icon = "" }),
    De = Window:AddTab({ Title = "Thằng bán trái mất dạy", Icon = "" }),    
    Lc = Window:AddTab({ Title = "Teleport đảo địt con mẹ mày", Icon = "" }),   
    pvp = Window:AddTab({ Title = "HÀNH TRÌNH 30M", Icon = "" }),   
    cailon = Window:AddTab({ Title = "RaceV4-ĐẢO BÍ ẨN LOL", Icon = "" }),
    Se = Window:AddTab({ Title = "Câu 🐟", Icon = "" }),     
    Sh = Window:AddTab({ Title = "Cửa hàng mua bao cao su", Icon = "" }),
    Vl = Window:AddTab({ Title = "Tab visual dcm", Icon = "" }),
    Ms = Window:AddTab({ Title = "Game-Server", Icon = "" }),
    Settings = Window:AddTab({ Title = "Tab Cài đặt độ dài con cu", Icon = "" }),
}
------------------------------------------------------------------------------------------------------------------------------------
Tabs.Wl:AddButton({
        Title = "Click To Discord",
        Description = "https://discord.com/invite/hcJ8PHtkfy",
        Callback = function()            
        setclipboard("https://discord.com/invite/hcJ8PHtkfy") 
    end
    })
    
Tabs.Wl:AddParagraph({
        Title = "Vào discord đi địt mẹ mày",
        Content = "Vào Discord Tao Chỉ Cho Cách Sục!"
    })
------------------------------------------------------------------------------------------------------------------------------------
    local Dropdown = Tabs.Main:AddDropdown("Dropdown", {
    Title = "Dụng Cụ Thủ Dâm",
    Values = {"Đôi tay đầy tinh", "Con Cặc Giả"},
    Multi = false,
    Default = 1,
})

Dropdown:SetValue("Melee")

Dropdown:OnChanged(function(Value)
    _G.SelectWeapon = Value
end)

task.spawn(function()
    while wait() do
        pcall(function()
            local player = game.Players.LocalPlayer
            local backpack = player.Backpack

            if _G.SelectWeapon == "Melee" then
                for i, v in pairs(backpack:GetChildren()) do
                    if v.ToolTip == "Melee" then
                        if backpack:FindFirstChild(tostring(v.Name)) then
                            _G.SelectWeapon = v.Name
                        end
                    end
                end
            elseif _G.SelectWeapon == "Sword" then
                for i, v in pairs(backpack:GetChildren()) do
                    if v.ToolTip == "Sword" then
                        if backpack:FindFirstChild(tostring(v.Name)) then
                            _G.SelectWeapon = v.Name
                        end
                    end
                end
            end
        end)
    end
end)

local SelectFastAttackMode = (SelectFastAttackMode or "Fast Super Fast Attack")
SelectedFastAttackMode = {"Normal Attack","Fast Attack","Super Fast Attack"}
local function ChangeModeFastAttack(SelectFastAttackMode)
	if SelectFastAttackMode == "Normal Attack" then
		FireCooldown = 0.1
	elseif SelectFastAttackMode == "Fast Attack" then
		FireCooldown = 0.07
	elseif SelectFastAttackMode == "Super Fast Attack" then
		FireCooldown = 0.02
	end
end

local SelectedFastAttackModes = Tabs.Main:AddDropdown("SelectedFastAttackModes", {
	Title = "Fast Attack Mode",
	Values = SelectedFastAttackMode,
	Multi = false,
	Default = SelectFastAttackMode,
})

SelectedFastAttackModes:OnChanged(function(value)
	SelectFastAttackMode = value
	ChangeModeFastAttack(SelectFastAttackMode)
end)

    local Autolivi = Tabs.Main:AddToggle("Autolivi", {
    Title = "Auto Farm Level",
    Description = "",
    Default = _G.AutoFarm })
    Autolivi:OnChanged(function(Value)
    _G.AutoFarm = Value
    saveSettings()
end)
    spawn(function()
        while wait() do
            if _G.AutoFarm then
                pcall(function()
                    local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    if not string.find(QuestTitle, NameMon) then
                        StartMagnet = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        StartMagnet = false
                        CheckQuest()
                        if BypassTP then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 2000 then
						        BTP(CFrameQuest)
                            elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 2000 then
                                topos(CFrameQuest)
                                end
                            else
						        topos(CFrameQuest)
					        end
					if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 20 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                    end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        CheckQuest()
                        if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    if v.Name == Mon then
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                            repeat task.wait()
                                                EquipWeapon(_G.SelectWeapon)
                                                NeedAttacking = true
                                                AutoHaki()                        
                                                PosMon = v.HumanoidRootPart.CFrame
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))                                                
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false
                                                StartMagnet = true
                                                if not Fast_Attack then
                                               game:GetService("VirtualUser"):CaptureController()
				       	                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672), game.Workspace.CurrentCamera.CFrame)
				                            end
                                            until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        else
                                            StartMagnet = false
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    end
                                end
                            end
                        else
                            topos(CFrameMon)
                            StartMagnet = false
                            if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                             topos(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(-16748.5273, 127.239319, 1013.28766, 0.924117982, 1.14822631e-08, 0.382107258, -6.77835166e-09, 1, -1.36565497e-08, -0.382107258, 1.00302051e-08, 0.924117982))
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    local ToggleSkipLevelQuest = Tabs.Main:AddToggle("ToggleSkipLevelQuest", {
    Title = "Kaitun 1-Max",
    Description = "",
    Default = false })
ToggleSkipLevelQuest:OnChanged(function(Value)
    _G.RedeemCode = Value
    _G.AutoFarm = Value
    _G.SelectWeapon = " Combat"
    _G.Auto_Stats_Kaitun = Value
    _G.Auto_Saber = Value
    _G.AutoSuperhuman = Value
    _G.AutoBartilo = Value
    _G.AutoBuyLegendarySword = Value
    _G.BuyAllAib = Value
end)
    spawn(function()
    while wait() do
    if _G.RedeemCode then
    if MyLevel >= 10 then
        function RedeemCode(value)
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
        end
        for i,v in pairs(x2Code) do
            RedeemCode(v)
                end
            end
        end
    end
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Auto_Saber and game.Players.LocalPlayer.Data.Level.Value >= 200 and not Check_Sword("Saber") and World1 then
                ToggleFarm:Set(false)
                _G.Auto_Saber = true
            end
        end)
    end
end)

spawn(function()
    while task.wait() do
        if _G.Auto_Saber and game.Players.LocalPlayer.Data.Level.Value >= 200 and not Check_Sword("Saber") and World1 then
                ToggleFarm:Set(false)
                if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
                    if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
                        if (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                            topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
                            wait(1)
                        else
                            topos(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279))
                        end
                    else
                        if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
                            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
                                EquipWeapon("Torch")
                                topos(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09, 0.761243105, -5.70652914e-10, 1, 1.20584542e-09, -0.761243105, 3.47544882e-10, -0.648466587))
                              else
                              topos(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515, 0.965917408))
                            end
                        else
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup")
                                wait(0.5)
                                EquipWeapon("Cup")
                                wait(0.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",game:GetService("Players").LocalPlayer.Character.Cup)
                                wait(0)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan")
                            else
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == nil then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
                                    topos(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559)) 
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Mob Leader" then
                                               if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") then
                                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                    repeat task.wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                                    game:GetService("VirtualUser"):CaptureController()
                                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                    until v.Humanoid.Health <= 0 or not _G.Auto_Saber
                                                 end
                                            end
                                            if game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
                                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader").HumanoidRootPart.CFrame * Farm_Mode)
                                            end
                                        end
                                    end
                                 end
                                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                                    wait(0.5)
                                    EquipWeapon("Relic")
                                    wait(0.5)
                                    topos(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-09, 0.481375456, 2.53851997e-08, 1, -5.79995607e-08, -0.481375456, 6.30572643e-08, 0.876514494))
                                end
                            end
                        end
                    end
                else
                    if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert") then
                        topos(CFrame.new(-1401.85046, 29.9773273, 8.81916237))
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if v.Name == "Saber Expert" then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        --v.Humanoid:ChangeState(11)
                                        --v.Humanoid:ChangeState(14)
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
                                    until v.Humanoid.Health <= 0 or not _G.Auto_Saber
                                    if v.Humanoid.Health <= 0 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic")
                                    end
                                end
                            end
                        end
                    end
                end
        end
    end
end)

spawn(function()
        while wait() do 
            if _G.AutoSuperhuman then
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 150000 then
                    UnEquipWeapon("Combat")
                    wait(.1)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                end   
                if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
                    _G.SelectWeapon = "Superhuman"
                end  
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299 then
                        _G.SelectWeapon = "Black Leg"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299 then
                        _G.SelectWeapon = "Electro"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299 then
                        _G.SelectWeapon = "Fishman Karate"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299 then
                        _G.SelectWeapon = "Dragon Claw"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000 then
                        UnEquipWeapon("Black Leg")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000 then
                        UnEquipWeapon("Black Leg")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then
                        UnEquipWeapon("Electro")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then
                        UnEquipWeapon("Electro")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then
                        UnEquipWeapon("Fishman Karate")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2") 
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then
                        UnEquipWeapon("Fishman Karate")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2") 
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000 then
                        UnEquipWeapon("Dragon Claw")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000 then
                        UnEquipWeapon("Dragon Claw")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                    end 
                end
            end
        end
end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoBartilo then
                if game.Players.LocalPlayer.Data.Level.Value >= 800 then
                    _G.AutoBartilo = true
                    ToggleFarm:Set(false)
                end
            end
        end
    end)
end)


spawn(function()
        while wait(.1) do
            if _G.AutoBartilo then
                if game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then 
                        if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
                            Ms = "Swan Pirate"
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == Ms then
                                    pcall(function()
                                        repeat task.wait()
                                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                            EquipWeapon(_G.SelectWeapon)
                                            AutoHaki()
                                            v.HumanoidRootPart.Transparency = 1
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))													
                                            PosMonBarto =  v.HumanoidRootPart.CFrame
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            AutoBartiloBring = true
                                        until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        AutoBartiloBring = false
                                    end)
                                end
                            end
                        else
                            repeat topos(CFrame.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)).Magnitude <= 10
                        end
                    else
                        repeat topos(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                        wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
                    end 
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") then
                        Ms = "Jeremy"
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == Ms then
                                OldCFrameBartlio = v.HumanoidRootPart.CFrame
                                repeat task.wait()
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                    EquipWeapon(_G.SelectWeapon)
                                    AutoHaki()
                                    v.HumanoidRootPart.Transparency = 1
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    v.HumanoidRootPart.CFrame = OldCFrameBartlio
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false
                            end
                        end
                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy") then
                        repeat topos(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                        wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
                        wait(1)
                        repeat topos(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                        wait(2)
                    else
                        repeat topos(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
                    repeat topos(CFrame.new(-1850.49329, 13.1789551, 1750.89685)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10
                    wait(1)
                    repeat topos(CFrame.new(-1858.87305, 19.3777466, 1712.01807)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10
                    wait(1)
                    repeat topos(CFrame.new(-1803.94324, 16.5789185, 1750.89685)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10
                    wait(1)
                    repeat topos(CFrame.new(-1858.55835, 16.8604317, 1724.79541)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10
                    wait(1)
                    repeat topos(CFrame.new(-1869.54224, 15.987854, 1681.00659)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1869.54224, 15.987854, 1681.00659)).Magnitude <= 10
                    wait(1)
                    repeat topos(CFrame.new(-1800.0979, 16.4978027, 1684.52368)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10
                    wait(1)
                    repeat topos(CFrame.new(-1819.26343, 14.795166, 1717.90625)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1819.26343, 14.795166, 1717.90625)).Magnitude <= 10
                    wait(1)
                    repeat topos(CFrame.new(-1813.51843, 14.8604736, 1724.79541)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10
                end
            end 
        end
end)

spawn(function()
    while wait() do
        if _G.BuyAllAib then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
                if _G.HopBuy then
                    wait(10)
                    Hop()
                end
        end 
    end
end)
    
local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Farm Nearest", Default = false })
    Toggle:OnChanged(function(Value)
        _G.AutoFarmNearest = Value
    end)

spawn(function()
	while wait() do
		if _G.AutoFarmNearest then
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v.Name and v:FindFirstChild("Humanoid") then
			        if v.Humanoid.Health > 0 then
			            repeat wait()
			              EquipWeapon(_G.SelectWeapon)
			                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
			                	local args = {
				                	[1] = "Buso"
			                	}
			                	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			               	end
			                topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
			                v.HumanoidRootPart.CanCollide = false
			                Fastattack = true
			                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
						    game:GetService("VirtualUser"):CaptureController()
				       	    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672), game.Workspace.CurrentCamera.CFrame)
				       	    AutoFarmNearestMagnet = true
				       	    PosMon = v.HumanoidRootPart.CFrame
			            until not _G.AutoFarmNearest or not v.Parent or v.Humanoid.Health <= 0 
			            AutoFarmNearestMagnet = false
			            Fastattack = false
			        end
			    end
			end
		end
	end
    end)
    

    
    if World1 then
        MaterialList = {
          "Magma Ore","Angel Wings","Leather","Scrap Metal","Radioactive Material"
        } elseif World2 then
        MaterialList = {
          "Mystic Droplet","Magma Ore","Leather","Scrap Metal","Demonic Wisp","Vampire Fang","Radioactive Material"
        } elseif World3 then
        MaterialList = {
          "Leather","Scrap Metal","Vampire Fang","Conjured Cocoa","Dragon Scale","Gunpowder","Fish Tail","Mini Tusk","Radioactive Material"
        }
        end
    Tabs.Main:AddSection("Material Farm ")
    local Dropdown = Tabs.Main:AddDropdown("Dropdown", {
        Title = "Material",
        Values = MaterialList,
        Multi = false,
        Default = _G.SelectMaterial,
    })
    Dropdown:SetValue("")
    Dropdown:OnChanged(function(value)
        _G.SelectMaterial = value
    end)
    local CoNguoiDoiGietTao = Tabs.Main:AddToggle("MyToggle", {Title = "Farm Material ", Default = _G.AutoFarmMaterial })
    CoNguoiDoiGietTao:OnChanged(function(value)
        _G.AutoFarmMaterial = value
        saveSettings()
    end)
    spawn(function()
        while wait() do 
            if _G.AutoFarmMaterial then
                MaterialMon()
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild(MMon) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == MMon then
                               if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                   repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        StartMagnet = true
                                        _G.PosMon = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,1))
                                        NeedAttacking = true
                                    until not _G.AutoFarmMaterial or not v.Parent or v.Humanoid.Health <= 0
                                    NeedAttacking = false
                                    StartMagnet = false
                                end
                            end
                        end
                    else
                    if ((MPos).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 4000 then
						topos(MPos)
						end
                    end
                end)
            end
        end
    end)    
spawn(function()
	while task.wait() do
		pcall(function()
			if StartMagnet then
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if (v.HumanoidRootPart.Position-_G.PosMon.Position).Magnitude <= 500 then
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						v.Humanoid:ChangeState(11)
						v.Humanoid.JumpPower = 0
						v.Humanoid.WalkSpeed = 0
						v.HumanoidRootPart.CanCollide = false
						v.HumanoidRootPart.Size = Vector3.new(5,5,5)
						v.HumanoidRootPart.CFrame = _G.PosMon
						sethiddenproperty(game.Players.LocalPlayer, "MaximumSimulationRadius",  math.huge)
						sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  9e20)
					end
				end
			end
		end)
	end
end)

Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Farm Ectoplasm", Default = _G.AutoEctoplasm })
    Toggle:OnChanged(function(Value)
        _G.AutoEctoplasm = Value
        saveSettings()
    end)
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoEctoplasm then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if string.find(v.Name, "Ship") then
                                repeat task.wait()
                                NeedAttacking = true
                                    EquipWeapon(_G.SelectWeapon)
                                    AutoHaki()
                                    if string.find(v.Name,"Ship") then
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                       FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                    else
                                        topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625))
                                    end
                                until _G.AutoEctoplasm == false or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    else
                    NeedAttacking = false
                        local Distance = (Vector3.new(911.35827636719, 125.95812988281, 33159.5390625) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                        if Distance > 18000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                        end
                        topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625))
                    end
                end
            end
        end)
    end)
    
    Tabs.Main:AddSection("Bone")
    
local ListB = {"No Quest", "Quest"}
    BoneFMode = "No Quest"
    
    local methodxuong = Tabs.Main:AddDropdown("DropdownTweenSpeed", {
    Title = "Method Farm Bone",
    Values = ListB,
    Multi = false,
    Default = BoneFMode,
})
methodxuong:SetValue("No Quest")
methodxuong:OnChanged(function(Value)
    BoneFMode = Value
end)
    
local farmbun = Tabs.Main:AddToggle("farmbun", {
    Title = "Auto Farm Bone",
    Description = "sea 3 func, bypass tp to island and farm",
    Default = _G.Auto_Bone })
    farmbun:OnChanged(function(value)
    _G.Auto_Bone = value
    saveSettings()
    end)
local BonePos = CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375)
local BoneQuestPos = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)

spawn(function()
    while wait() do 
        if BoneFMode == "No Quest" and _G.Auto_Bone and World3 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or 
                   game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or 
                   game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or 
                   game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                    NeedAttacking = false
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if (v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or 
                            v.Name == "Demonic Soul" or v.Name == "Posessed Mummy") and 
                            v:FindFirstChild("Humanoid") and 
                            v:FindFirstChild("HumanoidRootPart") and 
                            v.Humanoid.Health > 0 then
                            repeat 
                                task.wait()
                                AutoHaki()
                                EquipWeapon(_G.SelectWeapon)
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false 
                                topos(v.HumanoidRootPart.CFrame * Pos)
                                NeedAttacking = true
                                NameBoneMon = v.Name
                                if v.Name == "Demonic Soul" then
                                    BringMobBone(v.Name, CFrame.new(-9497.908203125, 172.1048126220703, 6148.97119140625))
                                elseif v.Name == "Living Zombie" then
                                    BringMobBone(v.Name, CFrame.new(-10143.466796875, 138.6266632080078, 5974.3330078125))
                                elseif v.Name == "Reborn Skeleton" then
                                    BringMobBone(v.Name, CFrame.new(-8760.986328125, 142.1048126220703, 6039.1083984375))
                                elseif v.Name == "Posessed Mummy" then
                                    BringMobBone(v.Name, CFrame.new(-9575.4267578125, 5.792530536651611, 6226.22900390625))
                                end
                            until not _G.Auto_Bone or not v.Parent or v.Humanoid.Health <= 0
                            NeedAttacking = false
                        end
                    end
                else
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BonePos.Position).Magnitude > 1500 then
                            BTP(BonePos)
                        else
                            topos(BonePos)
                        end
                    else
                        topos(BonePos)
                    end
                    UnEquipWeapon(_G.SelectWeapon)
                    topos(CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375))
                end
            end)
        end
    end
end)

local BoneQuestPos = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)

spawn(function()
    while wait() do
        if BoneFMode == "Quest" and _G.Auto_Bone and World3 then
            pcall(function()
                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, "Demonic Soul") then
                    NeedAttacking = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
                    NeedAttacking = false
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BoneQuestPos.Position).Magnitude > 1500 then
                            BTP(BoneQuestPos)
                        else
                            topos(BoneQuestPos)
                        end
                    else
                        topos(BoneQuestPos)
                    end
                    if (BoneQuestPos.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","HauntedQuest2",1)
                    end
                else
                    if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or 
                       game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or 
                       game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or 
                       game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and 
                               (v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or 
                                v.Name == "Demonic Soul" or v.Name == "Posessed Mummy") then
                                if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Demonic Soul") then
                                    repeat 
                                        task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        AutoHaki()                                            
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false
                                        NeedAttacking = true
                                        NameBoneMon = v.Name
                                        if v.Name == "Demonic Soul" then
                                            BringMobBone(v.Name, CFrame.new(-9497.908203125, 172.1048126220703, 6148.97119140625))
                                        elseif v.Name == "Living Zombie" then
                                            BringMobBone(v.Name, CFrame.new(-10143.466796875, 138.6266632080078, 5974.3330078125))
                                        elseif v.Name == "Reborn Skeleton" then
                                            BringMobBone(v.Name, CFrame.new(-8760.986328125, 142.1048126220703, 6039.1083984375))
                                        elseif v.Name == "Posessed Mummy" then
                                            BringMobBone(v.Name, CFrame.new(-9575.4267578125, 5.792530536651611, 6226.22900390625))
                                        end
                                    until not _G.Auto_Bone or v.Humanoid.Health <= 0 or not v.Parent or 
                                          not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible
                                    NeedAttacking = false
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

    Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Random Bone", Default = _G.Auto_Random_Bone })
    Toggle:OnChanged(function(Value)
		_G.Auto_Random_Bone = Value
		saveSettings()
		end)
    spawn(function()
            while wait(.1) do
                if _G.Auto_Random_Bone then    
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                end
            end
    end)
    
    Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Auto Soul Reaper [ Hallow ]", Default = _G.AutoFarmBossHallow })
    Toggle:OnChanged(function(Value)
        _G.AutoFarmBossHallow = Value
        saveSettings()
    end)
    spawn(function()
    while wait() do
        if _G.AutoFarmBossHallow then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if string.find(v.Name , "Soul Reaper") then
                            repeat task.wait()
                                NeedAttacking = true
                                EquipWeapon(_G.SelectWeapon)
                                AutoHaki()
                                
                                topos(v.HumanoidRootPart.CFrame*Pos)
                                game:GetService("VirtualUser"):CaptureController()
                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
                                v.HumanoidRootPart.Transparency = 1
                                -- sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                            until v.Humanoid.Health <= 0 or _G.AutoFarmBossHallow == false
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                    repeat topos(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8                        
                    EquipWeapon("Hallow Essence")
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                   
                    end
                end
            end)
        end
    end
end)
    
Tabs.Main:AddSection("Cake Prince")
    
    local MobKilled = Tabs.Main:AddParagraph({
        Title = "Dough Boss Status",
        Content = ""
    })
    
    spawn(function()
        while wait() do
            pcall(function()
                if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                    MobKilled:SetDesc("Defeat : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41))
                elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
                    MobKilled:SetDesc("Defeat : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40))
                elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
                    MobKilled:SetDesc("Defeat : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39))
                else
                    MobKilled:SetDesc("Boss Is Spawning")
                end
            end)
        end
    end)
    
local ListC = {"No Quest", "Quest"}
    CakeFMode = "No Quest"
    
    local methodcake = Tabs.Main:AddDropdown("DropdownTweenSpeed", {
    Title = "Method Farm Cake",
    Values = ListC,
    Multi = false,
    Default = CakeFMode,
})
methodcake:SetValue("No Quest")
methodcake:OnChanged(function(Value)
    CakeFMode = Value
end)

doughsex = Tabs.Main:AddToggle("doughsex", {
    Title = "Farm Cake Prince",
    Description = "Auto Killing 500 Mobs To Spawn Cake Prince else if Have Cake Prince or Dough King In Servers then Teleport To Boss and kill",
    Default = _G.AutoDoughtBoss })
doughsex:OnChanged(function(Value)
    _G.AutoDoughtBoss = Value
    saveSettings()
end)

local CakePos = CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375)

spawn(function()
    while wait() do
        if CakeFMode == "No Quest" and _G.AutoDoughtBoss and World3 then
            if _G.AutoDoughtBoss then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cake Prince" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    topos(CFrame.new(-2152.46533, 69.9830399, -12399.1357, 0.998845279, -1.36106415e-08, 0.0480427258, 1.75027015e-08, 1, -8.05917963e-08, -0.0480427258, 8.13396142e-08, 0.998845279)) 
                                    wait(4)
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        NeedAttacking = true
                                        -- sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                    until not _G.AutoDoughtBoss or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        else
                            if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1 then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker") then
                                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                repeat task.wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.Head.CanCollide = false
                                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                                    NeedAttacking = true
                                                    if v.Name == "Cookie Crafter" then
                                                        BringMobCake(v.Name, CFrame.new(-2351.32861328125, 37.7981071472168, -12108.84375))
                                                    elseif v.Name == "Cake Guard" then
                                                        BringMobCake(v.Name, CFrame.new(-1608.6195068359375, 37.79800796508789, -12381.6044921875))
                                                    elseif v.Name == "Baking Staff" then
                                                        BringMobCake(v.Name, CFrame.new(-1865.7054443359375, 37.79812240600586, -12856.1416015625))
                                                    elseif v.Name == "Head Baker" then
                                                        BringMobCake(v.Name, CFrame.new(-2241.444091796875, 53.50244140625, -12868.287109375))
                                                    end
                                                until not _G.AutoDoughtBoss or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]")
                                                NeedAttacking = false
                                            end
                                        end
                                    end
                                else
                                    local SpawnPoints = {
                                        Vector3.new(-2351.3286, 200, -12108.8437),
                                        Vector3.new(-1608.6195, 200, -12381.6045),
                                        Vector3.new(-1865.7054, 200, -12856.1416),
                                        Vector3.new(-2241.4441, 200, -12868.2871)
                                    }
                                    for _, point in pairs(SpawnPoints) do
                                        topos(CFrame.new(point))
                                        task.wait(2)
                                    end
                                    if BypassTP then
                                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakePos.Position).Magnitude > 1500 then
                                            BTP(CakePos)
                                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakePos.Position).Magnitude < 1500 then
                                            topos(CakePos)
                                        end
                                    else
                                        topos(CakePos)
                                    end
                                    UnEquipWeapon(_G.SelectWeapon)
                                    topos(CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375))
                                end
                            end
                        end
                    end
                end)
            end
        end
    end
end)

local CakePos = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
task.spawn(function()
    while wait() do
        if CakeFMode == "Quest" and _G.AutoDoughtBoss and World3 then
            pcall(function()
                if game.ReplicatedStorage:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cake Prince" then
                                topos(CFrame.new(-2152.46533, 69.9830399, -12399.1357, 0.998845279, -1.36106415e-08, 0.0480427258, 1.75027015e-08, 1, -8.05917963e-08, -0.0480427258, 8.13396142e-08, 0.998845279)) 
                                wait(3)
                                repeat task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                                    NeedAttacking = true
                                until not CakeFMode == "Quest" or _G.AutoDoughtBoss == false or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    else
                        topos(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875))
                    end
                else
                    local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    if not string.find(QuestTitle, "Head Baker") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "CakeQuest2", 2)
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                        if game.Workspace.Enemies:FindFirstChild("Baking Staff") or game.Workspace.Enemies:FindFirstChild("Head Baker") or game.Workspace.Enemies:FindFirstChild("Cake Guard") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if (v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker") and v.Humanoid.Health > 0 then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Head Baker") then
                                        repeat task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                                            NeedAttacking = true
                                            if v.Name == "Cookie Crafter" then
                                                BringMobCake(v.Name, CFrame.new(-2351.32861328125, 37.7981071472168, -12108.84375))
                                            elseif v.Name == "Cake Guard" then
                                                BringMobCake(v.Name, CFrame.new(-1608.6195068359375, 37.79800796508789, -12381.6044921875))
                                            elseif v.Name == "Baking Staff" then
                                                BringMobCake(v.Name, CFrame.new(-1865.7054443359375, 37.79812240600586, -12856.1416015625))
                                            elseif v.Name == "Head Baker" then
                                                BringMobCake(v.Name, CFrame.new(-2241.444091796875, 53.50244140625, -12868.287109375))
                                            end
                                        until not CakeFMode == "Quest" or _G.AutoDoughtBoss == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    else
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                    end
                                end
                            end
                        else
                            local SpawnPoints = {
                                Vector3.new(-2351.3286, 200, -12108.8437),
                                Vector3.new(-1608.6195, 200, -12381.6045),
                                Vector3.new(-1865.7054, 200, -12856.1416),
                                Vector3.new(-2241.4441, 200, -12868.2871)
                            }
                            for _, point in pairs(SpawnPoints) do
                                topos(CFrame.new(point))
                                task.wait(2)
                            end
                            if BypassTP then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakePos.Position).Magnitude > 1500 then
                                    BTP(CakePos)
                                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakePos.Position).Magnitude < 1500 then
                                    topos(CakePos)
                                end
                            else
                                topos(CakePos)
                            end
                            UnEquipWeapon(_G.SelectWeapon)
                            topos(CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375))
                        end
                    end
                end
            end)
        end
    end
end)

local AtikiDoughKing = Tabs.Main:AddToggle("MyToggle", {Title = "Attack Dough King", Description = "Sea 3 Function" ,Default = _G.AtikiDoughKing })
AtikiDoughKing:OnChanged(function(Value)
  _G.AtikiDoughKing = Value
  saveSettings()
end)
spawn(function()
  while wait() do
    if _G.AtikiDoughKing and Sea3 then
      pcall(function()
        if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
          for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            if v.Name == "Dough King" then
              if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                repeat task.wait()
                  AutoHaki()
                  NeedAttacking = true
                  EquipWeapon(_G.SelectWeapon)
                  v.HumanoidRootPart.CanCollide = false
                  v.Humanoid.WalkSpeed = 0
                                               
                  topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,30,PosZ))
                  game:GetService("VirtualUser"):CaptureController()
                  game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                until not _G.AtikiDoughKing or not v.Parent or v.Humanoid.Health <= 0
              end
            end
          end
        else
          if game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") then
            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Dough King").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
          end
        end
      end)
    end
  end
end)

    Tabs.Main:AddSection("Farm Mastery")
    
    local matfruit = Tabs.Main:AddToggle("matfruit", {
    Title = "Farm Mastery Fruit",
    Description = "automatically farm fruit mastery but error bring mob",
    Default = _G.AutoFarmFruitMastery })
    matfruit:OnChanged(function(Value)
    _G.AutoFarmFruitMastery = Value
    saveSettings()
    if _G.AutoFarmFruitMastery == false then
		            UseSkill = false 
		        end
    end)
    spawn(function()
        while wait() do
            if _G.AutoFarmFruitMastery then
                pcall(function()
                    local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    if not string.find(QuestTitle, NameMon) then
                        Magnet = false
                        UseSkill = false
                        Skillaimbot = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        StartMasteryFruitMagnet = false
                        UseSkill = false
                        CheckQuest()
                        repeat wait()
                            topos(CFrameQuest)
                        until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoFarmFruitMastery
                        if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                            wait(0.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                            wait(0.1)
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        CheckQuest()
                        if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    if v.Name == Mon then
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                            HealthMs = v.Humanoid.MaxHealth * _G.Kill_At/100
                                            repeat task.wait()
                                                if v.Humanoid.Health <= HealthMs then
                                                    AutoHaki()
                                                    EquipWeapon(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,10,0))
                                                    v.HumanoidRootPart.CanCollide = false
                                                    PosMonMasteryFruit = v.HumanoidRootPart.CFrame
                                                    MonFarm = v.Name                
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.Head.CanCollide = false
                                                    UseSkill = true
                                                    Skillaimbot = true
                                                else           
                                                    UseSkill = false 
                                                    Skillaimbot = false
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    NeedAttacking = true
                                                    MonFarm = v.Name                
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                    v.HumanoidRootPart.CanCollide = false
                                                    
                                                    PosMonMasteryFruit = v.HumanoidRootPart.CFrame
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.Head.CanCollide = false
                                                end
                                                StartMasteryFruitMagnet = true
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            until not _G.AutoFarmFruitMastery or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        else
                                            UseSkill = false
                                            StartMasteryFruitMagnet = false
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    end
                                end
                            end
                        else
                        NeedAttacking = false
                            topos(CFrameMon)
                            StartMasteryFruitMagnet = false   
                            UseSkill = false 
                            Skillaimbot = false
                            local Mob = game:GetService("ReplicatedStorage"):FindFirstChild(Mon) 
                            if Mob then
                                topos(Mob.HumanoidRootPart.CFrame * CFrame.new(0,0,10))
                            else
                                if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                                    game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true
                                    task.wait()
                                    game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)
    spawn(function()
        while wait() do
            if UseSkill then
                pcall(function()
                    CheckQuest()
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                            MasBF = game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value
                        elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                            MasBF = game:GetService("Players").LocalPlayer.Backpack[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                            if _G.SkillZ and _G.HoldZ then 
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                         
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                wait(_G.HoldZ)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                            end
                            if _G.SkillX and _G.HoldX then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                wait(_G.HoldX)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                            end
                            if _G.SkillC and _G.HoldC then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                                wait(_G.HoldC)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                            end
                            if _G.SkillV and _G.HoldV then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
                                wait(_G.HoldV)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
                            end
                        end
                    end
                end)
            end
        end
    end)
    spawn(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            pcall(function()
                if UseSkill then
                    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
                        if v.Name == "NotificationTemplate" then
                            if string.find(v.Text,"Skill locked!") then
                                v:Destroy()
                            end
                        end
                    end
                end
            end)
        end)
    end)
    spawn(function()
        pcall(function()
            game:GetService("RunService").RenderStepped:Connect(function()
                if UseSkill then
                    local args = {
                        [1] = PosMonMasteryFruit.Position
                    }
                    game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
                end
            end)
        end)
    end)
    local matgun = Tabs.Main:AddToggle("matgun", {
    Title = "Farm Mastery Gun",
    Description = "automatically farm gun mastery ez",
    Default = _G.AutoFarmGunMastery })
    matgun:OnChanged(function(Value)
    _G.AutoFarmGunMastery = Value
    saveSettings()
    end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoFarmGunMastery then
                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, NameMon) then
                    Magnet = false                            
                     Skillaimbot = false          
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    SStartMasteryGunMagnet= false
                    CheckQuest()
                        if BypassTP then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 1500 then
                                BTP(CFrameQuest)
                            elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 1500 then
                                topos(CFrameQuest)
                            else
                                topos(CFrameQuest)
                            end
                        else
                            topos(CFrameQuest)
                        end
                    if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                        wait(1.2)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    CheckQuest()
                    if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                        pcall(function()
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == Mon then
                                    repeat task.wait()
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                            HealthMin = v.Humanoid.MaxHealth * _G.Kill_At/100
                                            if v.Humanoid.Health <= HealthMin then                                                
                                                EquipWeapon(SelectWeaponGun)
                                                Skillaimbot = true
                                                AimSkill = v.Engine.CFrame * CFrame.new(0, -15, 0)
                                                AimBotSkillPosition = AimSkill.Position
                                                MonFarm = v.Name                
                                                PosMon = v.HumanoidRootPart.CFrame
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,0,10))
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(2,2,1)
                                                v.Head.CanCollide = false                                                
                                                local args = {
                                                    [1] = v.HumanoidRootPart.Position,
                                                    [2] = v.HumanoidRootPart
                                                }
                                                game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                                                wait(.2)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                                wait(.2)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                            else
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                MonFarm = v.Name                
                                                PosMon = v.HumanoidRootPart.CFrame
                                                NeedAttacking = true
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Head.CanCollide = false               
                                                
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            end
                                            StartMasteryGunMagnet = true 
                                            PosMonMasteryGun = v.HumanoidRootPart.CFrame
                                        else
                                            StartMasteryGunMagnet = true 
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    until v.Humanoid.Health <= 0 or not _G.AutoFarmGunMastery or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    StartMasteryGunMagnet = true 
                                end
                            end
                        end)
                    else
                       topos(CFrameMon)
                        SStartMasteryGunMagnet= false
                        local Mob = game:GetService("ReplicatedStorage"):FindFirstChild(Mon) 
                        if Mob then
                            topos(Mob.HumanoidRootPart.CFrame * CFrame.new(0,0,10))
                        else
                            if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                                game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true
                                task.wait()
                                game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false
                            end
                        end
                    end 
                end
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        if _G.AutoFarmGunMastery then
            while wait() do
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") then
                        if v:FindFirstChild("RemoteFunctionShoot") then
                            SelectWeaponGun = v.Name
                        end
                    end
                end
            end
        end
    end)
end)

    if World1 then
		tableBoss = {"The Gorilla King","Bobby","Yeti","Mob Leader","Vice Admiral","Warden","Chief Warden","Swan","Magma Admiral","Fishman Lord","Wysper","Thunder God","Cyborg","Saber Expert"}
	elseif World2 then
		tableBoss = {"Diamond","Jeremy","Fajita","Don Swan","Smoke Admiral","Cursed Captain","Darkbeard","Order","Awakened Ice Admiral","Tide Keeper"}
	elseif World3 then
		tableBoss = {"Stone","Island Empress","Kilo Admiral","Captain Elephant","Beautiful Pirate","rip_indra True Form","Longma","Soul Reaper","Cake Queen"}
	end
	local Dropdown = Tabs.Main:AddDropdown("Dropdown", {
        Title = "Choose Boss",
        Values = tableBoss,
        Multi = false,
        Default = _G.SelectBoss,
    })
    Dropdown:SetValue("")
    Dropdown:OnChanged(function(Value)
        _G.SelectBoss = Value
    end)
    Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Start Kill Boss", Default = _G.AutoFarmBoss })
    Toggle:OnChanged(function(Value)
        _G.AutoFarmBoss = Value
        saveSettings()
    end)
    spawn(function()
        while wait() do
            if _G.AutoFarmBoss then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == _G.SelectBoss then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                    NeedAttacking = true
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                                                     
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoFarmBoss or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    NeedAttacking = false
                        if game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
------------------------------------------------------------------------------------------------------------------------------------
    Tabs.stack:AddSection("Sea Quest")
    local Quetsi2 = Tabs.stack:AddToggle("Quetsi2", {
    Title = "Auto Complete Quest Sea 2",
    Description = "automatically do all tasks to be able to go to the new world",
    Default = _G.AutoSecondSea })
    Quetsi2:OnChanged(function(Value)
    _G.AutoSecondSea = Value
    saveSettings()
end)
    if World2 then
        spawn(function()
            while wait() do 
                if _G.AutoSecondSea then
                    spawn(function()
                        local MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
                        if MyLevel >= 700 and World1 then
                            if game:GetService("Workspace").Map.Ice.Door.CanCollide == false and game:GetService("Workspace").Map.Ice.Door.Transparency == 1 then
                                local CFrame1 = CFrame.new(4849.29883, 5.65138149, 719.611877)
                                repeat topos(CFrame1) wait() until (CFrame1.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or _G.AutoSecondSea == false
                                wait(1.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
                                wait(0.5)
                                EquipWeapon("Key")
                                repeat topos(CFrame.new(1347.7124, 37.3751602, -1325.6488)) wait() until (Vector3.new(1347.7124, 37.3751602, -1325.6488)-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or _G.AutoSecondSea == false
                                wait(0.5)
                            else
                                if game:GetService("Workspace").Map.Ice.Door.CanCollide == false and game:GetService("Workspace").Map.Ice.Door.Transparency == 1 then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Ice Admiral" then
                                                if not v.Humanoid.Health <= 0 then
                                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                        OldCFrameSecond = v.HumanoidRootPart.CFrame
                                                        repeat task.wait()
                                                        NeedAttacking = true
                                                            AutoHaki()
                                                            EquipWeapon(_G.SelectWeapon)
                                                            v.HumanoidRootPart.CanCollide = false
                                                            v.Humanoid.WalkSpeed = 0
                                                            v.Head.CanCollide = false
                                                            
                                                            v.HumanoidRootPart.CFrame = OldCFrameSecond
                                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                        until not _G.AutoSecondSea or not v.Parent or v.Humanoid.Health <= 0
                                                    end
                                                else 
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                                end
                                            end
                                        end
                                    else
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral") then
                                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                        end
                                    end
                                end
                            end
                        end
                    end)
                end
            end
        end)
    end
    local Quetsi3 = Tabs.stack:AddToggle("Quetsi3", {
    Title = "Auto Complete Quest Sea 3",
    Description = "automatically do all tasks to be able to go to the third world",
    Default = _G.AutoThirdSea })
    Quetsi3:OnChanged(function(Value)
    _G.AutoThirdSea = Value
    saveSettings()
end)
    if World3 then
        spawn(function()
            while wait() do
                if _G.AutoThirdSea then
                    pcall(function()
                        if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 and World2 then
                            _G.AutoFarm = false
                            if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "General") == 0 then
                                topos(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
                                if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                    wait(1.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
                                end
                                wait(1.8)
                                if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "rip_indra" then
                                            OldCFrameThird = v.HumanoidRootPart.CFrame
                                            repeat task.wait()
                                            NeedAttacking = true
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                v.HumanoidRootPart.CFrame = OldCFrameThird
                                                
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                            until _G.AutoThirdSea == false or v.Humanoid.Health <= 0 or not v.Parent
                                        end
                                    end
                                elseif not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") and (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                                    topos(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
                                end
                            end
                        end
                    end)
                end
            end
        end)
    end
    
    Toggle = Tabs.stack:AddToggle("MyToggle", {Title = "Farm Factory", Default = _G.AutoFactory })

    Toggle:OnChanged(function(Value)
        _G.AutoFactory = Value
        saveSettings()
    end)

        spawn(function()
            while wait() do
                spawn(function()
                    if _G.AutoFactory then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Core" and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()         
                                        EquipWeapon(_G.SelectWeapon)           
                                        NeedAttacking = true
                                        topos(CFrame.new(448.46756, 199.356781, -441.389252))                                  
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    until v.Humanoid.Health <= 0 or _G.AutoFactory == false
                                end
                            end
                        else
                        NeedAttacking = false
                            topos(CFrame.new(448.46756, 199.356781, -441.389252))
                        end
                    end
                end)
            end
        end)

local Elite_Hunter_Status = Tabs.stack:AddParagraph({
        Title = "Elite Status",
        Content = ""
    })

	spawn(function()
		while wait() do
			spawn(function()
				if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
					Elite_Hunter_Status:SetDesc("Status : 🟢")	
				else
					Elite_Hunter_Status:SetDesc("Status : 🔴")	
				end
			end)
		end
	end)
	
 Toggle = Tabs.stack:AddToggle("MyToggle", {Title = "Auto Elite Hunter", Default = _G.AutoElitehunter })

    Toggle:OnChanged(function(Value)
        _G.AutoElitehunter = Value
        saveSettings()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
    end)
    
    Toggle = Tabs.stack:AddToggle("MyToggle", {Title = "Auto Elite Hunter Hop", Default = _G.AutoEliteHunterHop })

    Toggle:OnChanged(function(Value)
        _G.AutoEliteHunterHop = Value
        saveSettings()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
    end)

    spawn(function()
        while wait() do
            if _G.AutoElitehunter and World3 then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
										if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat wait()
												AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                NeedAttacking = true
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                game:GetService("VirtualUser"):CaptureController()
                                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                            until _G.AutoElitehunter == false or v.Humanoid.Health <= 0 or not v.Parent
										end
									end
								end
							else
							NeedAttacking = false
								if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
								end
							end                    
						end
					else					
						if _G.AutoEliteHunterHop and game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later." then
							Hop()
						else
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
						end
					end
				end)
			end
		end
	end)
	
occhochest = Tabs.stack:AddToggle("occhochest", {Title = "Farm Chest ┊Tween", Default = AutoFarmChest})

occhochest:OnChanged(function(Value)
    _G.AutoFarmChest = Value
end)

_G.MagnitudeAdd = 0
local function pressSpace()
    local VirtualInputManager = game:GetService("VirtualInputManager")
    VirtualInputManager:SendKeyEvent(true, "Space", false, game)
    wait(0.1)
    VirtualInputManager:SendKeyEvent(false, "Space", false, game)
end
spawn(function()
    while wait() do 
        if _G.AutoFarmChest then
            local chests = {}
            for i, v in pairs(game:GetService("Workspace"):GetChildren()) do 
                if v.Name:find("Chest") then
                    if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000 + _G.MagnitudeAdd then
                        table.insert(chests, v)
                    end
                end
            end
            table.sort(chests, function(a, b)
                return (a.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 
                       (b.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            end)
            for _, chest in ipairs(chests) do
                if not _G.AutoFarmChest then break end
                if chest and chest.Parent then
                    topos(chest.CFrame)
                    while (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - chest.Position).Magnitude > 2 do
                        wait()
                    end
                    pressSpace()
                end
            end
            _G.MagnitudeAdd = _G.MagnitudeAdd + 1500
        end
    end
end)

Toggle = Tabs.stack:AddToggle("MyToggle", {Title = "Stop If Have Darkness Key & Cup", Default = _G.StopChest})
Toggle:OnChanged(function(Value)
    _G.StopChest = Value
    saveSettings()
end)
spawn(function()
    while wait() do
        if _G.StopChest then
            local player = game.Players.LocalPlayer
            local backpack = player.Backpack
            local character = player.Character
            
            if backpack:FindFirstChild("Fist of Darkness") or character:FindFirstChild("Fist of Darkness") or backpack:FindFirstChild("God's Chalice") or character:FindFirstChild("God's Chalice") then
                AutoFarmChest = false
                occhochest:Set(false)
            end
        end
    end
end)

local AutuTouchHaki = Tabs.stack:AddToggle("MyToggle", {Title = "Auto Touch Pad Haki", Description = "Sea 3 Function" ,Default = _G.AutuTouchHaki })
AutuTouchHaki:OnChanged(function(Value)
  _G.AutuTouchHaki = Value
  saveSettings()
end)

spawn(function()
  while wait() do
    if _G.AutuTouchHaki and Sea3 then      
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Pure Red")
      wait(0.5)
      repeat topos(CFrame.new(-5414.41357, 309.865753, -2212.45776)) wait() until not _G.AutuTouchHaki or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5414.41357, 309.865753, -2212.45776)).Magnitude <= 10
      wait(0.5)
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Snow White")
      wait(0.5)
      repeat topos(CFrame.new(-4971.47559, 331.565765, -3720.02954)) wait() until not _G.AutuTouchHaki or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-4971.47559, 331.565765, -3720.02954)).Magnitude <= 10
      wait(0.5)
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Winter Sky")
      wait(0.5)
      repeat topos(CFrame.new(-5420.16602, 1084.9657, -2666.8208)) wait() until not _G.AutuTouchHaki or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5420.16602, 1084.9657, -2666.8208)).Magnitude <= 10
    end
  end
end)
	
 Toggle = Tabs.stack:AddToggle("MyToggle", {Title = "Auto Kill Rip Indra", Default = _G.AutoDarkDagger })

    Toggle:OnChanged(function(Value)
        _G.AutoDarkDagger = Value
        saveSettings()
    end)
 
 local AdminPos = CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781)
        spawn(function()
            pcall(function()
                while wait() do
                    if _G.AutoDarkDagger then
                        if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == ("rip_indra True Form" or v.Name == "rip_indra") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                    repeat task.wait()
                                        pcall(function()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            NeedAttacking = true
                                        end)
                                    until _G.AutoDarkDagger == false or v.Humanoid.Health <= 0
                                end
                            end
                        else
                        if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - AdminPos.Position).Magnitude > 1500 then
                        BTP(AdminPos)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - AdminPos.Position).Magnitude < 1500 then
                        topos(AdminPos)
                        end
                    else
                        topos(AdminPos)
                    end
                            UnEquipWeapon(_G.SelectWeapon)
                            topos(CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781))
                        end
                    end
                end
            end)
        end)    
        
 Toggle = Tabs.stack:AddToggle("MyToggle", {Title = "Auto Dark Fragment", Default = _G.Auto_DarkBoss })
    Toggle:OnChanged(function(Value)
        _G.Auto_DarkBoss = Value
        saveSettings()
    end)
 spawn(function()
        while wait() do
            if _G.Auto_DarkBoss then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Darkbeard" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                    NeedAttacking = true
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                                                     
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.Auto_DarkBoss or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    NeedAttacking = false
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    
    Toggle = Tabs.stack:AddToggle("MyToggle", {Title = "Pirate Raid", Default = _G.AutoRaidPirate })

    Toggle:OnChanged(function(Value)
        _G.AutoRaidPirate = Value
        saveSettings()
    end)
        
        spawn(function()
	while wait() do
		if _G.AutoRaidPirate then
			pcall(function()
				local CFrameBoss = CFrame.new(-5496.17432, 313.768921, -2841.53027, 0.924894512, 7.37058015e-09, 0.380223751, 3.5881019e-08, 1, -1.06665446e-07, -0.380223751, 1.12297109e-07, 0.924894512)
				if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if _G.AutoRaidPirate and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
								repeat wait()
									AutoHaki()
									EquipWeapon(_G.SelectWeapon)
									NeedAttacking = true
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
								until v.Humanoid.Health <= 0 or not v.Parent or _G.AutoRaidPirate == false
								NeedAttacking = false
								StartMagnet = false
							end
						end
					end
				else
					if ((CFrameBoss).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
						topos(CFrameBoss)
					else
						game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5085.23681640625, 316.5072021484375, -3156.202880859375)
					end
				end
			end)
		end
	end
    end)
    
TelepiToFut = Tabs.stack:AddToggle("MyToggle", {Title = "Teleport To Fruit", Description = "Tween to fruit and take" ,Default = _G.TelepiToFut })
TelepiToFut:OnChanged(function(Value)
  _G.TelepiToFut = Value
  saveSettings()
end)

spawn(function()
  while wait(.1) do
    if _G.TelepiToFut then
      for i,v in pairs(game.Workspace:GetChildren()) do
        if string.find(v.Name, "Fruit") then
          topos(v.Handle.CFrame)
        end
      end
    end
  end
end)

TelepiToFutHop = Tabs.stack:AddToggle("MyToggle", {Title = "Teleport To Fruit Hop", Description = "Tween to fruit and take" ,Default = _G.TelepiToFutHop })
TelepiToFutHop:OnChanged(function(Value)
  _G.TelepiToFutHop = Value
  saveSettings()
end)

spawn(function()
  while wait(.1) do
    if _G.TelepiToFut and _G.TelepiToFutHop then
      for i,v in pairs(game.Workspace:GetChildren()) do
        if string.find(v.Name, "Fruit") then
          topos(v.Handle.CFrame)
        elseif not string.find(v.Name, "Fruit") then
          wait(6)
          game.StarterGui:SetCore("SendNotification", {
          Title = "Server Hop..",
          Text = "",
          Duration = 10,
          })
          Hop()
        end
      end
    end
  end
end)

Tabs.stack:AddSection("Misc ")
 
 lawrit = Tabs.stack:AddToggle("MyToggle", {Title = "Auto Law", Description = "Auto Buy chip first [ 1K Fragments ] then kill law" ,Default = _G.TelepiToFut })
lawrit:OnChanged(function(state)
  _G.autoLawRaid = state
  saveSettings()
end)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.autoLawRaid then
                        if
                            not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") and
                                not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") and
                                not game:GetService("Workspace").Enemies:FindFirstChild("Order") and
                                not game:GetService("ReplicatedStorage"):FindFirstChild("Order")
                         then
                            wait(0.3)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "BlackbeardReward",
                                "Microchip",
                                "1"
                            )
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "BlackbeardReward",
                                "Microchip",
                                "2"
                            )
                        end
                    end
                end
            end
        )
    end
)
spawn(
    function()
        pcall(
            function()
                while wait(0.4) do
                    if _G.autoLawRaid then
                        if
                            not game:GetService("Workspace").Enemies:FindFirstChild("Order") and
                                not game:GetService("ReplicatedStorage"):FindFirstChild("Order")
                         then
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip")
                             then
                                fireclickdetector(
                                    game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector
                                )
                            end
                        end
                        if
                            game:GetService("ReplicatedStorage"):FindFirstChild("Order") or
                                game:GetService("Workspace").Enemies:FindFirstChild("Order")
                         then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Order") then
                                for h, i in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if i.Name == "Order" then
                                        repeat task.wait()
                                            NeedAttacking = true
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            topos(i.HumanoidRootPart.CFrame * Pos)
                                            i.HumanoidRootPart.CanCollide = false
                                            i.HumanoidRootPart.Size = Vector3.new(120, 120, 120)
                                        until not i.Parent or i.Humanoid.Health <= 0 or Auto_Law == false
                                    end
                                end
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                                topos(CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875))
                            end
                        end
                    end
                end
            end
        )
    end
)      
    
    Tabs.stack:AddSection("Quest Section")
    
    local sphm = Tabs.stack:AddToggle("sphm", {Title = "Auto SuperHuman ", Default = _G.AutoSuperhuman })

    sphm:OnChanged(function(value)
        _G.AutoSuperhuman = value
        saveSettings()
        end)
        
        spawn(function()
        pcall(function()
            while wait() do 
                if _G.AutoSuperhuman then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 150000 then
                        UnEquipWeapon("Combat")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                    end   
                    if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
                        _G.SelectWeapon = "Superhuman"
                    end  
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299 then
                            _G.SelectWeapon = "Black Leg"
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299 then
                            _G.SelectWeapon = "Electro"
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299 then
                            _G.SelectWeapon = "Fishman Karate"
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299 then
                            _G.SelectWeapon = "Dragon Claw"
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000 then
                            UnEquipWeapon("Black Leg")
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000 then
                            UnEquipWeapon("Black Leg")
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then
                            UnEquipWeapon("Electro")
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then
                            UnEquipWeapon("Electro")
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then
                            UnEquipWeapon("Fishman Karate")
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2") 
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then
                            UnEquipWeapon("Fishman Karate")
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2") 
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000 then
                            UnEquipWeapon("Dragon Claw")
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000 then
                            UnEquipWeapon("Dragon Claw")
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                        end 
                    end
                end
            end
        end)
    end)
        
        local deathstep = Tabs.stack:AddToggle("deathstep", {Title = "Auto Death Step", Default = _G.AutoDeathStep })

    deathstep:OnChanged(function(value)
        _G.AutoDeathStep = value
        saveSettings()
        end)
        
        spawn(function()
        while wait() do wait()
            if _G.AutoDeathStep then
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step") then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                        _G.SelectWeapon = "Death Step"
                    end  
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                        _G.SelectWeapon = "Death Step"
                    end  
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 449 then
                        _G.SelectWeapon = "Black Leg"
                    end 
                else 
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                end
            end
        end
    end)
        
        local skrt = Tabs.stack:AddToggle("skrt", {Title = "Auto Sharkman Karate", Default = _G.AutoSharkman })

    skrt:OnChanged(function(value)
        _G.AutoSharkman = value
        saveSettings()
        end)
        
        spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoSharkman then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                    if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then  
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key") then
                            topos(CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365))
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 then
                        else 
                            Ms = "Tide Keeper"
                            if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then   
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == Ms then    
                                        OldCFrameShark = v.HumanoidRootPart.CFrame
                                        repeat task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.Head.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            
                                            v.HumanoidRootPart.CFrame = OldCFrameShark
                                            topos(v.HumanoidRootPart.CFrame*CFrame.new(2,20,2))
                                            NeedAttacking = true
                                            -- sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                        until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoSharkman == false or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key")
                                    end
                                end
                            else
                                topos(CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202))
                                wait(3)
                            end
                        end
                    else 
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                    end
                end
            end
        end)
    end)
        
        local electricslaw = Tabs.stack:AddToggle("electricslaw", {Title = "Auto Electric Claw", Default = _G.AutoElectricClaw })

    electricslaw:OnChanged(function(value)
        _G.AutoElectricClaw = value
        saveSettings()
        end)
        
        spawn(function()
        pcall(function()
            while wait() do 
                if _G.AutoElectricClaw then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electric Claw") then
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                            _G.SelectWeapon = "Electric Claw"
                        end  
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                            _G.SelectWeapon = "Electric Claw"
                        end  
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 399 then
                            _G.SelectWeapon = "Electro"
                        end 
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                    end
                end
                if _G.AutoElectricClaw then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") then
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
                            if _G.AutoFarm == false then
                                repeat task.wait()
                                    topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
                                wait(2)
                                repeat task.wait()
                                    topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
                                until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10
                                wait(1)
                                repeat task.wait()
                                    topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                                wait(1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                            elseif _G.AutoFarm == true then
                                _G.AutoFarm = false
                                wait(1)
                                repeat task.wait()
                                    topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
                                wait(2)
                                repeat task.wait()
                                    topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
                                until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10
                                wait(1)
                                repeat task.wait()
                                    topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                                wait(1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                                _G.SelectWeapon = "Electric Claw"
                                wait(.1)
                                _G.AutoFarm = true
                            end
                        end
                    end
                end
            end
        end)
    end)
        
        local dratol = Tabs.stack:AddToggle("dratol", {Title = "Auto Dragon Talon", Default = _G.AutoDragonTalon })

    dratol:OnChanged(function(value)
        _G.AutoDragonTalon = value
        saveSettings()
        end)
        
        task.spawn(
            function()
                while wait() do
                    pcall(
                        function()
                            if _G.AutoDragonTalon then
                                if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
                                    if
                                        game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and
                                            game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 399 and
                                            game.Players.LocalPlayer.Character.Humanoid.Health > 0
                                     then
                                        _G.SelectWeapon = "Dragon Claw"
                                    end
                                    if
                                        game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and
                                            game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value <= 399 and
                                            game.Players.LocalPlayer.Character.Humanoid.Health > 0
                                     then
                                        _G.SelectWeapon = "Dragon Claw"
                                    end
        
                                    if
                                        game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and
                                            game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 and
                                            game.Players.LocalPlayer.Character.Humanoid.Health > 0
                                     then
                                        _G.SelectWeapon = "Dragon Claw"
                                        if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3 then
                                            local string_1 = "Bones"
                                            local string_2 = "Buy"
                                            local number_1 = 1
                                            local number_2 = 1
                                            local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"]
                                            Target:InvokeServer(string_1, string_2, number_1, number_2)
        
                                            local string_1 = "BuyDragonTalon"
                                            local bool_1 = true
                                            local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"]
                                            Target:InvokeServer(string_1, bool_1)
                                        elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
                                            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
                                        else
                                            local string_1 = "BuyDragonTalon"
                                            local bool_1 = true
                                            local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"]
                                            Target:InvokeServer(string_1, bool_1)
                                            local string_1 = "BuyDragonTalon"
                                            local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"]
                                            Target:InvokeServer(string_1)
                                        end
                                    end
        
                                    if
                                        game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and
                                            game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 and
                                            game.Players.LocalPlayer.Character.Humanoid.Health > 0
                                     then
                                        _G.SelectWeapon = "Dragon Claw"
                                        if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3 then
                                            local string_1 = "Bones"
                                            local string_2 = "Buy"
                                            local number_1 = 1
                                            local number_2 = 1
                                            local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"]
                                            Target:InvokeServer(string_1, string_2, number_1, number_2)
        
                                            local string_1 = "BuyDragonTalon"
                                            local bool_1 = true
                                            local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"]
                                            Target:InvokeServer(string_1, bool_1)
                                        elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
                                            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
                                        else
                                            local string_1 = "BuyDragonTalon"
                                            local bool_1 = true
                                            local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"]
                                            Target:InvokeServer(string_1, bool_1)
                                            local string_1 = "BuyDragonTalon"
                                            local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"]
                                            Target:InvokeServer(string_1)
                                        end
                                    end
                                end
                            end
                        end
                    )
                end
            end
        )
        
        
    
   local rainbowsex = Tabs.stack:AddToggle("rainbowsex", {Title = "Auto Rainbow Haki", Default = _G.Auto_Rainbow_Haki })

    rainbowsex:OnChanged(function(value)
        _G.Auto_Rainbow_Haki = value
        saveSettings()
        end)

    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Auto_Rainbow_Haki then
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        topos(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
                        if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Stone") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Stone" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        
                                        NeedAttacking = true
                                        -- sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            topos(CFrame.new(-1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 2.03251839e-05, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199))
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Island Empress" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        
                                        NeedAttacking = true
                                        -- sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            topos(CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, -0, -0.994878292, -0, 1, -0, 0.994878292, 0, -0.101080291))
                        end
                    elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Kilo Admiral" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        v.HumanoidRootPart.CanCollide = false
                                        
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        NeedAttacking = true
                                        -- sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            topos(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, -0, -0.143904909, -0, 1.00000012, -0, 0.143904924, 0, -0.989591479))
                        end
                    elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Captain Elephant" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        v.HumanoidRootPart.CanCollide = false
                                        
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        NeedAttacking = true
                                        -- sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            topos(CFrame.new(-13485.0283, 331.709259, -8012.4873, 0.714521289, 7.98849911e-08, 0.69961375, -1.02065748e-07, 1, -9.94383065e-09, -0.69961375, -6.43015241e-08, 0.714521289))
                        end
                    elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Beautiful Pirate" then
                                    OldCFrameRainbow = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        v.HumanoidRootPart.CanCollide = false
                                        
                                        v.HumanoidRootPart.CFrame = OldCFrameRainbow
                                        NeedAttacking = true
                                        -- sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            topos(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359))
                        end
                    else
                        topos(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
                        if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
                        end
                    end
                end
            end
        end)
    end)
    
    local quanxilotkhe = Tabs.stack:AddToggle("quanxilotkhe", {Title = "Auto Rengoku", Default = _G.AutoRengoku })

    quanxilotkhe:OnChanged(function(value)
        _G.AutoRengoku = value
        saveSettings()
        end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoRengoku then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
                        EquipWeapon("Hidden Key")
                        topos(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
                    elseif game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if (v.Name == "Snow Lurker" or v.Name == "Arctic Warrior") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    AutoHaki()
                                    v.HumanoidRootPart.CanCollide = false
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                   NeedAttacking = true
                                   NameRengokuMon = v.Name
                                   if v.Name == "Snow Lurker" then
					                   BringMobRengoku(v.Name, CFrame.new(5542.33447, 28.1321411, -6786.04199, 0.746223629, 0, 0.665695369, 0, 1, 0, -0.665695369, 0, 0.746223629))
					              elseif v.Name == "Arctic Warrior" then
					                   BringMobRengoku(v.Name, CFrame.new(6092.98975, 28.3671188, -6236.60791, -0.951801181, 0, -0.306715637, 0, 1, 0, 0.306715637, 0, -0.951801181))
								  end
                                until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or _G.AutoRengoku == false or not v.Parent or v.Humanoid.Health <= 0
                                NeedAttacking = false
                            end
                        end
                    else
                        NeedAttacking = false
                        topos(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
                    end
                end
            end
        end)
    end)
    local badilo = Tabs.stack:AddToggle("badilo", {Title = "Auto Bartilo Quest", Default = _G.AutoBartilo })
    badilo:OnChanged(function(value)
        _G.AutoBartilo = value
        saveSettings()
        end)
    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.AutoBartilo then
                    if game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then 
                            if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
                                Ms = "Swan Pirate"
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == Ms then
                                        pcall(function()
                                            repeat task.wait()
                                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                                EquipWeapon(_G.SelectWeapon)
                                                AutoHaki()
                                                v.HumanoidRootPart.Transparency = 1
                                                v.HumanoidRootPart.CanCollide = false
                                                topos(v.HumanoidRootPart.CFrame * Pos)													
                                                NeedAttacking = true
                                                NameSwanMon = v.Name
                                                if v.Name == "Swan Pirate" then
					                                BringMobSwan(v.Name, CFrame.new(946.045898, 72.9597092, 1228.28796, 0.241395146, 2.32742075e-08, -0.970426917, -1.1568777e-08, 1, 2.11057216e-08, 0.970426917, 6.13183415e-09, 0.241395146))
								            	end
                                            until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                            NeedAttacking = false
                                        end)
                                    end
                                end
                            else
                                repeat topos(CFrame.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)).Magnitude <= 10
                            end
                        else
                            repeat topos(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                            wait(1.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
                        end 
                    elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") then
                            Ms = "Jeremy"
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == Ms then
                                    OldCFrameBartlio = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        -- sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                        EquipWeapon(_G.SelectWeapon)
                                        AutoHaki()
                                        v.HumanoidRootPart.Transparency = 1
                                        v.HumanoidRootPart.CanCollide = false
                                        
                                        v.HumanoidRootPart.CFrame = OldCFrameBartlio
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        NeedAttacking = true
                                        -- sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false
                                end
                            end
                        elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                            repeat topos(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                            wait(1.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
                            wait(1)
                            repeat topos(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                            wait(2)
                        else
                            repeat topos(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                        end
                    elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
                        repeat topos(CFrame.new(-1850.49329, 13.1789551, 1750.89685)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10
                        wait(1)
                        repeat topos(CFrame.new(-1858.87305, 19.3777466, 1712.01807)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10
                        wait(1)
                        repeat topos(CFrame.new(-1803.94324, 16.5789185, 1750.89685)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10
                        wait(1)
                        repeat topos(CFrame.new(-1858.55835, 16.8604317, 1724.79541)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10
                        wait(1)
                        repeat topos(CFrame.new(-1869.54224, 15.987854, 1681.00659)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1869.54224, 15.987854, 1681.00659)).Magnitude <= 10
                        wait(1)
                        repeat topos(CFrame.new(-1800.0979, 16.4978027, 1684.52368)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10
                        wait(1)
                        repeat topos(CFrame.new(-1819.26343, 14.795166, 1717.90625)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1819.26343, 14.795166, 1717.90625)).Magnitude <= 10
                        wait(1)
                        repeat topos(CFrame.new(-1813.51843, 14.8604736, 1724.79541)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10
                    end
                end 
            end
        end)
    end)
    Toggle = Tabs.stack:AddToggle("MyToggle", {Title = "Auto Get Saber", Default = AutoSaber })
    Toggle:OnChanged(function(autosaberfunc)
        AutoSaber = autosaberfunc
        saveSettings()
        end)
        spawn(function()
        while task.wait() do
            if AutoSaber and game.Players.LocalPlayer.Data.Level.Value >= 200 then
                pcall(function()
                    if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
                        if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
                            if (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                                topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
                                wait(1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
                                wait(1)
                            else
                                topos(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279))
                            end
                        else
                            if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
                                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
                                    EquipWeapon("Torch")
                                    topos(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09, 0.761243105, -5.70652914e-10, 1, 1.20584542e-09, -0.761243105, 3.47544882e-10, -0.648466587))
                                  else
                                  topos(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515, 0.965917408))
                                end
                            else
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup")
                                    wait(0.5)
                                    EquipWeapon("Cup")
                                    wait(0.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",game:GetService("Players").LocalPlayer.Character.Cup)
                                    wait(0)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan")
                                else
                                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == nil then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
										topos(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559)) 
                                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if v.Name == "Mob Leader" then
                                                   if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") then
                                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                        repeat task.wait()
                                                        AutoHaki()
                                                        EquipWeapon(_G.SelectWeapon)
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid.WalkSpeed = 0
                                                                                     
                                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                        game:GetService("VirtualUser"):CaptureController()
                                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                        until v.Humanoid.Health <= 0 or not AutoSaber
                                                     end
                                                end
                                                if game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
                                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]").HumanoidRootPart.CFrame * Farm_Mode)
                                                end
                                            end
                                        end
                                     end
                                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                                        wait(0.5)
                                        EquipWeapon("Relic")
                                        wait(0.5)
                                        topos(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-09, 0.481375456, 2.53851997e-08, 1, -5.79995607e-08, -0.481375456, 6.30572643e-08, 0.876514494))
                                    end
                                end
                            end
                        end
                    else
                        if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    if v.Name == "Saber Expert" then
                                        repeat task.wait()
                                            EquipWeapon(_G.SelectWeapon)
                                            NeedAttacking = true
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            --v.Humanoid:ChangeState(11)
                                            --v.Humanoid:ChangeState(14)
                                            FarmPos = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
                                        until v.Humanoid.Health <= 0 or not AutoSaber
                                        if v.Humanoid.Health <= 0 then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic")
                                        end
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)
    Toggle = Tabs.stack:AddToggle("MyToggle", {Title = "Auto Cavender", Default = _G.AutoCarvender})
Toggle:OnChanged(function(Value)
    _G.AutoCarvender = Value
    saveSettings()
end)
local CavandisPos = CFrame.new(5314.58203, 22.8796749, -125.942276, 1, 1.69639192e-10, 1.5617945e-15, -1.69639192e-10, 1, 5.38001999e-08, -1.55266783e-15, -5.38001999e-08, 1)
spawn(function()
    while wait() do
        if _G.AutoCarvender and World3 then
            pcall(function()
                local enemies = game:GetService("Workspace").Enemies
                local beautifulPirate = enemies:FindFirstChild("Beautiful Pirate")

                if beautifulPirate then
                    for _, v in pairs(enemies:GetChildren()) do
                        if v.Name == "Beautiful Pirate" then
                            local humanoid = v:FindFirstChild("Humanoid")
                            local humanoidRootPart = v:FindFirstChild("HumanoidRootPart")

                            if humanoid and humanoidRootPart and humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    NeedAttacking = true
                                    EquipWeapon(_G.SelectWeapon)
                                    humanoidRootPart.CanCollide = false
                                    humanoid.WalkSpeed = 0
                                    humanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    topos(humanoidRootPart.CFrame * Pos)
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                until not _G.AutoCarvender or not v.Parent or humanoid.Health <= 0
                            end
                        end
                    end
                else
                    local player = game.Players.LocalPlayer
                    local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
                    if hrp then
                        local distance = (hrp.Position - CavandisPos.Position).Magnitude
                        if BypassTP then
                            if distance > 1500 then
                                print("bat dau ")
                            else
                                topos(CavandisPos)
                            end
                        else
                            topos(CavandisPos)
                        end
                        topos(CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875))
                        local replicatedStorage = game:GetService("ReplicatedStorage")
                        local storedPirate = replicatedStorage:FindFirstChild("Beautiful Pirate")
                        if storedPirate then
                            topos(storedPirate.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        elseif _G.AutoCavanderhop then
                            Hop()
                        end
                    end
                end
            end)
        end
    end
end)
Toggle = Tabs.stack:AddToggle("MyToggle", {Title = "Auto Cavender HOP", Default = _G.Hop})
Toggle:OnChanged(function(Value)
_G.Hop = Value
saveSettings()
end) 
Toggle = Tabs.stack:AddToggle("MyToggle", {Title = "Auto Twin Hook", Default = _G.AutoTwinHook})
Toggle:OnChanged(function(Value)
_G.AutoTwinHook = Value
saveSettings()
end) 
local ElephantPos = CFrame.new(-13348.0654296875, 405.8904113769531, -8570.62890625)
    spawn(function()
        while wait() do
            if  _G.AutoTwinHook and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Captain Elephant" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                    NeedAttacking = true
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.AutoTwinHook or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    NeedAttacking = false
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - ElephantPos.Position).Magnitude > 1500 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - ElephantPos.Position).Magnitude < 1500 then
                    topos(ElephantPos)
                    end
                else
                    topos(ElephantPos)
                end
                    topos(CFrame.new(-13348.0654296875, 405.8904113769531, -8570.62890625))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if  _G.AutoTwinHook_Hop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
Toggle = Tabs.stack:AddToggle("MyToggle", {Title = "Auto Twin Hook HOP", Default = _G.Hop})
Toggle:OnChanged(function(Value)
_G.Hop = Value
saveSettings()
end) 
Toggle = Tabs.stack:AddToggle("MyToggle", {Title = "Auto Buy Legends Sword", Default = _G.AutoBuyLegendarySword})
Toggle:OnChanged(function(Value)
    _G.AutoBuyLegendarySword = Value
    saveSettings()
end)
spawn(function()
    while wait() do
        if _G.AutoBuyLegendarySword then
            pcall(function()
                local args1 = { "LegendarySwordDealer", "1" }
                local args2 = { "LegendarySwordDealer", "2" }
                local args3 = { "LegendarySwordDealer", "3" }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args1))
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args2))
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args3))
                if _G.AutoBuyLegendarySword_Hop and _G.AutoBuyLegendarySword and World2 then
                NotificationLibrary:SendNotification("Warning", "Server HOP...", 6)
                    wait(5)
                    Hop()
                end
            end)
        end
    end
end)
Toggle = Tabs.stack:AddToggle("MyToggle", {Title = "Auto Yama", Default = _G.AutoYama })
    Toggle:OnChanged(function(Value)
        _G.AutoYama = Value
        saveSettings()
        end)
        spawn(function()
        while wait() do
            if _G.AutoYama then
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
                    repeat wait(.1)
                        fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                    until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or not _G.AutoYama
                end
            end
        end
    end)
    Toggle = Tabs.stack:AddToggle("MyToggle", {Title = "Auto Tushita", Default = _G.Autotushita })
    Toggle:OnChanged(function(Value)
        _G.Autotushita = value
        saveSettings()
        end)
spawn(function()
        while wait() do
            if  _G.Autotushita and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Longma") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Longma" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                    NeedAttacking = true
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.Autotushita or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    topos(CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Longma") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Longma").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if  _G.Autotushitahop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
    Toggle = Tabs.stack:AddToggle("MyToggle", {Title = "Auto CDK┊New Update", Default = false })

    Toggle:OnChanged(function(Value)
        Auto_Cursed_Dual_Katana = Value
        end)
        
        spawn(function()
        while wait() do
            pcall(function()
                if Auto_Cursed_Dual_Katana then
                    if game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                                EquipWeapon("Yama")
                            end
                        elseif 
                                game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") or game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                        if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                                EquipWeapon("Tushita")
                            end
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Yama")
                    end
                end
            end)
        end
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if Auto_Cursed_Dual_Katana then
                    if GetMaterial("Alucard Fragment") == 0 then
                        Auto_Quest_Yama_1 = true
                        Auto_Quest_Yama_2 = false
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                    elseif GetMaterial("Alucard Fragment") == 1 then
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = true
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                    elseif GetMaterial("Alucard Fragment") == 2 then
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = false
                        Auto_Quest_Yama_3 = true
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                    elseif GetMaterial("Alucard Fragment") == 3 then
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = false
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = true
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                    elseif GetMaterial("Alucard Fragment") == 4 then
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = false
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = true
                        Auto_Quest_Tushita_3 = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                    elseif GetMaterial("Alucard Fragment") == 5 then
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = false
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = true
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                    elseif GetMaterial("Alucard Fragment") == 6 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss") or game:GetService("Workspace").ReplicatedStorage:FindFirstChild("Cursed Skeleton Boss") then
                            Auto_Quest_Yama_1 = false
                            Auto_Quest_Yama_2 = false
                            Auto_Quest_Yama_3 = false
                            Auto_Quest_Tushita_1 = false
                            Auto_Quest_Tushita_2 = false
                            Auto_Quest_Tushita_3 = false
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cursed Skeleton Boss [Lv. 2025] [Boss]" or v.Name == "Cursed Skeleton [Lv. 2200]" then
                                        if v.Humanoid.Health > 0 then
                                            EquipWeapon(Sword)
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            --v.Humanoid:ChangeState(11)
                                            --v.Humanoid:ChangeState(14)
                                            PosMon = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            Click()
                                        end
                                    end
                                end
                            end
                        else
                            if (CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                                wait(1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                                wait(1)
                                topos(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)
                                topos(CFrame.new(-12253.5419921875, 598.8999633789062, -6546.8388671875))
                            else
                                topos(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
                            end   
                        end
                    end
                end
            end)
        end
    end)

    spawn(function()
        while wait() do
            if Auto_Quest_Yama_1 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Mythological Pirate" then
                                repeat wait()
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,0,-2))
                                until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_1 == false
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                            end
                        end
                    else
                        topos(CFrame.new(-13451.46484375, 543.712890625, -6961.0029296875))
                    end
                end)
            end
        end
    end)

    spawn(function()
        while wait() do
            pcall(function()
                if Auto_Quest_Yama_2 then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("HazeESP") then
                            v.HazeESP.Size = UDim2.new(50,50,50,50)
                            v.HazeESP.MaxDistance = "inf"
                        end
                    end
                    for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                        if v:FindFirstChild("HazeESP") then
                            v.HazeESP.Size = UDim2.new(50,50,50,50)
                            v.HazeESP.MaxDistance = "inf"
                        end
                    end
                end
            end)
        end
    end)

    spawn(function()
        while wait() do
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if Auto_Quest_Yama_2 and v:FindFirstChild("HazeESP") and (v.HumanoidRootPart.Position - PosMonsEsp.Position).magnitude <= 300 then
                        v.HumanoidRootPart.CFrame = PosMonsEsp
                        v.HumanoidRootPart.CanCollide = false
                        
                        if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                            local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
                            vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
                            vc.Velocity = Vector3.new(0, 0, 0)
                        end
                    end
                end
            end)
        end
    end)

    spawn(function()
        while wait() do
            if Auto_Quest_Yama_2 then 
                pcall(function() 
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("HazeESP") then
                            repeat wait()
                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                else
                                    EquipWeapon(Sword)
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    --v.Humanoid:ChangeState(11)
                                    --v.Humanoid:ChangeState(14)
                                    PosMon = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    Click()
                                    if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end							
                                end      
                            until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_2 == false or not v.Parent or v.Humanoid.Health <= 0 or not v:FindFirstChild("HazeESP")
                        else
                            for x,y in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                                if y:FindFirstChild("HazeESP") then
                                    if (y.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                                        topos(y.HumanoidRootPart.CFrameMon* Farm_Mode)
                                    else
                                        topos(y.HumanoidRootPart.CFrame * Farm_Mode)
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)

    spawn(function()
        while wait() do
            if Auto_Quest_Yama_3 then
                pcall(function()
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then         
                        topos(game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.CFrame)
                    elseif game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
                        repeat wait()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Hell's Messenger") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cursed Skeleton" or v.Name == "Cursed Skeleton" or v.Name == "Hell's Messenger" then
                                        if v.Humanoid.Health > 0 then
                                            repeat wait()
                                                EquipWeapon(Sword)
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                v.HumanoidRootPart.Transparency = 1
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                --v.Humanoid:ChangeState(11)
                                                --v.Humanoid:ChangeState(14)
                                                PosMon = v.HumanoidRootPart.CFrame
                                                MonFarm = v.Name
                                                Click()
                                                if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy()
                                                end
                                            until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Yama_3 == false
                                        end
                                    end
                                end
                            else
                                wait(5)
                                topos(game:GetService("Workspace").Map.HellDimension.Torch1.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)        
                                topos(game:GetService("Workspace").Map.HellDimension.Torch2.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)     
                                topos(game:GetService("Workspace").Map.HellDimension.Torch3.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)     
                                topos(game:GetService("Workspace").Map.HellDimension.Exit.CFrame)
                            end
                        until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or GetMaterial("Alucard Fragment") == 3
                    else
                        if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") or game.ReplicatedStorage:FindFirstChild("Soul Reaper") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Soul Reaper" then
                                        if v.Humanoid.Health > 0 then
                                            repeat wait()
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                            until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or game:GetService("Workspace").Map:FindFirstChild("HellDimension")
                                        end
                                    end
                                end
                            else
                                topos(CFrame.new(-9570.033203125, 315.9346923828125, 6726.89306640625))
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                        end
                    end
                end)
            end
        end
    end)
    spawn(function()
        while wait() do
            if Auto_Quest_Tushita_1 then
                topos(CFrame.new(-9546.990234375, 21.139892578125, 4686.1142578125))
                wait(5)
                topos(CFrame.new(-6120.0576171875, 16.455780029296875, -2250.697265625))
                wait(5)
                topos(CFrame.new(-9533.2392578125, 7.254445552825928, -8372.69921875))    
            end
        end
    end)
    spawn(function()
        while wait() do
            if Auto_Quest_Tushita_2 then
                pcall(function()
                    if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if Auto_Quest_Tushita_2 and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                                    repeat wait()
                                        EquipWeapon(Sword)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        --v.Humanoid:ChangeState(11)
                                        --v.Humanoid:ChangeState(14)
                                        PosMon = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        Click()
                                        if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                    until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_2 == false
                                end
                            end
                        end
                    else
                        topos(CFrame.new(-5545.1240234375, 313.800537109375, -2976.616455078125))
                    end
                end)
            end
        end
    end)
    spawn(function()
        while wait() do
            if Auto_Quest_Tushita_3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") or game.ReplicatedStorage:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Cake Queen" then
                                    if v.Humanoid.Health > 0 then
                                        repeat wait()
                                            EquipWeapon(Sword)
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            --v.Humanoid:ChangeState(11)
                                            --v.Humanoid:ChangeState(14)
                                            PosMon = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            Click()
                                            if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                        until Auto_Cursed_Dual_Katana == false or Auto_Quest_Tushita_3 == false or game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension")
                                    end
                                end
                            end
                        else
                            topos(CFrame.new(-709.3132934570312, 381.6005859375, -11011.396484375))
                        end
                    elseif game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") then
                        repeat wait()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Heaven's Guardian") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cursed Skeleton" or v.Name == "Cursed Skeleton" or v.Name == "Heaven's Guardian" then
                                        if v.Humanoid.Health > 0 then
                                            repeat wait()
                                                EquipWeapon(Sword)
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                v.HumanoidRootPart.Transparency = 1
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                --v.Humanoid:ChangeState(11)
                                                --v.Humanoid:ChangeState(14)
                                                PosMon = v.HumanoidRootPart.CFrame
                                                MonFarm = v.Name
                                                Click()
                                                if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy()
                                                end
                                            until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_3 == false
                                        end
                                    end
                                end
                            else
                                wait(5)
                                topos(game:GetService("Workspace").Map.HeavenlyDimension.Torch1.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)        
                                topos(game:GetService("Workspace").Map.HeavenlyDimension.Torch2.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)     
                                topos(game:GetService("Workspace").Map.HeavenlyDimension.Torch3.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)     
                                topos(game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame)
                            end
                        until not Auto_Cursed_Dual_Katana or not Auto_Quest_Tushita_3 or GetMaterial("Alucard Fragment") == 6
                    end
                end)
            end
        end
    end)
    Toggle = Tabs.stack:AddToggle("MyToggle", {Title = "Auto Soul Guitar Quest", Default = _G.QuestSoulGuitar })
    Toggle:OnChanged(function(Value)
        _G.QuestSoulGuitar = Value    
        saveSettings()
        end)
    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.QuestSoulGuitar then
                    if GetWeaponInventory("Soul Guitar") == false then
                        if (CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000 then
                            if game:GetService("Workspace").NPCs:FindFirstChild("Skeleton Machine") then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("soulGuitarBuy",true)
                            else
                                if game:GetService("Workspace").Map["Haunted Castle"].Candle1.Transparency == 0 then
                                    if game:GetService("Workspace").Map["Haunted Castle"].Placard1.Left.Part.Transparency == 0 then
                                        Quest2 = true
                                        repeat task.wait() 
                                            topos(CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875)) 
                                        until (CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.QuestSoulGuitar
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard7.Left.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard6.Left.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard5.Left.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard4.Right.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard3.Left.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard2.Right.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard1.Right.ClickDetector)
                                        wait(1)
                                    elseif game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment1:FindFirstChild("ClickDetector") then
                                        if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part1:FindFirstChild("ClickDetector") then
                                            Quest4 = true
                                            repeat task.wait() 
                                                topos(CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625)) 
                                            until (CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.QuestSoulGuitar
                                            wait(1)
                                            topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.CFrame)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.ClickDetector)
                                            wait(1)
                                            topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.CFrame)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                            wait(1)
                                            topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.CFrame)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
                                            wait(1)
                                            topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.CFrame)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.ClickDetector)
                                            wait(1)
                                            topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.CFrame)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                            wait(1)
                                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                        else
                                            Quest3 = true
                                        end
                                    else
                                        if game:GetService("Workspace").NPCs:FindFirstChild("Ghost") then
                                            local args = {
                                                [1] = "GuitarPuzzleProgress",
                                                [2] = "Ghost"
                                            }
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                        end
                                        if game.Workspace.Enemies:FindFirstChild("Living Zombie [Lv. 2000]") then
                                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                                    if v.Name == "Living Zombie [Lv. 2000]" then
                                                        EquipWeapon(_G.SelectWeapon)
                                                        NeedAttacking = true
                                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                        v.HumanoidRootPart.Transparency = 1
                                                        v.Humanoid.JumpPower = 0
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.HumanoidRootPart.CanCollide = false
                                                        --v.Humanoid:ChangeState(11)
                                                        --v.Humanoid:ChangeState(14)
                                                        PosMon = v.HumanoidRootPart.CFrame
                                                        MonFarm = v.Name
                                                        Click()
                                                    end
                                                end
                                            end
                                        else
                                        NeedAttacking = false
                                            topos(CFrame.new(-10160.787109375, 138.6616973876953, 5955.03076171875))
                                        end
                                    end
                                else    
                                    if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Error") then
                                        topos(CFrame.new(-8653.2060546875, 140.98487854003906, 6160.033203125))
                                    elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Nothing") then
                                    else
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2,true)
                                    end
                                end
                            end
                        else
                            topos(CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125))
                        end
                    end
                end
            end)
        end
    end)
Toggle = Tabs.stack:AddToggle("MyToggle", {Title = "Auto Holy Torch", Default = _G.AutoHolyTorch })
    Toggle:OnChanged(function(Value)
        _G.AutoHolyTorch = Value
        saveSettings()
        end)
        spawn(function()
        while wait() do
            if _G.AutoHolyTorch then
                pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5749.7861328125, 611.9736938476562, -276.2497863769531))
                    wait(1)
                     topos(CFrame.new(5154.54785, 142.129684, 916.826294, 0.00160392188, 7.16881203e-08, 0.999998689, 4.34501235e-09, 1, -7.1695176e-08, -0.999998689, 4.45999992e-09, 0.00160392188))
                    wait(15)
                    EquipWeapon("Holy Torch")
                    repeat topos(CFrame.new(-10752, 417, -9366)) wait() until not _G.AutoHolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10752, 417, -9366)).Magnitude <= 10
					wait(1)
					repeat topos(CFrame.new(-11672, 334, -9474)) wait() until not _G.AutoHolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-11672, 334, -9474)).Magnitude <= 10
					wait(1)
					repeat topos(CFrame.new(-12132, 521, -10655)) wait() until not _G.AutoHolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12132, 521, -10655)).Magnitude <= 10
					wait(1)
					repeat topos(CFrame.new(-13336, 486, -6985)) wait() until not _G.AutoHolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13336, 486, -6985)).Magnitude <= 10
					wait(1)
					repeat topos(CFrame.new(-13489, 332, -7925)) wait() until not _G.AutoHolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13489, 332, -7925)).Magnitude <= 10
                end)
            end
        end
    end)
------------------------------------------------------------------------------------------------------------------------------------
    local Time = Tabs.St:AddParagraph({
        Title = "Time Zone",
        Content = ""
    })
    
    local function UpdateOS()
        local date = os.date("*t")
        local hour = (date.hour) % 24
        local ampm = hour < 12 and "AM" or "PM"
        local timezone = string.format("%02i:%02i:%02i %s", ((hour -1) % 12) + 1, date.min, date.sec, ampm)
        local datetime = string.format("%02d/%02d/%04d", date.day, date.month, date.year)
        local LocalizationService = game:GetService("LocalizationService")
        local Players = game:GetService("Players")
        local player = Players.LocalPlayer
        local name = player.Name
        local result, code = pcall(function()
            return LocalizationService:GetCountryRegionForPlayerAsync(player)
        end)
        Time:SetDesc(datetime.." - "..timezone.." [ " .. code .. " ]")
    end
    spawn(function()
        while true do
            UpdateOS()
            game:GetService("RunService").RenderStepped:Wait()
        end
    end)
    
    local Timekl = Tabs.St:AddParagraph({
        Title = "Server Time Log",
        Content = ""
    })
    
    function UpdateTime()
local GameTime = math.floor(workspace.DistributedGameTime+0.5)
local Hour = math.floor(GameTime/(60^2))%24
local Minute = math.floor(GameTime/(60^1))%60
local Second = math.floor(GameTime/(60^0))%60
Timekl:SetDesc("[Time Server] : Hours : "..Hour.. "  Minutes : "..Minute.."  Seconds : "..Second)
end

spawn(function()
 while task.wait() do
 pcall(function()
  UpdateTime()
  end)
 end
 end)
    
    local Kitsune = Tabs.St:AddParagraph({
        Title = "Kitsune Island",
        Content = ""
    })
    
    spawn(function()
        pcall(function()
            while wait() do
    if game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland") then
    Kitsune:SetDesc('🟢')
    else
      Kitsune:SetDesc('🔴' )
            end
               end
        end)
end)
    
    local FrozenIsland = Tabs.St:AddParagraph({
        Title = "Frozen Dimension",
        Content = ""
    })
    
    spawn(function()
    pcall(function()
        while wait() do
            if game.Workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension') then
                FrozenIsland:SetDesc('🟢')
            else
                FrozenIsland:SetDesc('🔴')
            end
        end
    end)
end)
    
    local Mirragecheck = Tabs.St:AddParagraph({
        Title = "Mirrage Island",
        Content = ""
    })
    
    spawn(function()
        pcall(function()
            while wait() do
    if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
    Mirragecheck:SetDesc('🟢')
    else
      Mirragecheck:SetDesc('🔴' )end
            end
        end)
end)
    
    local FM = Tabs.St:AddParagraph({
        Title = "Moon",
        Content = ""
    })
    
    task.spawn(function()
            while task.wait() do
                pcall(function()
                    if game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" then
                        FM:SetDesc("Moon: 5/5")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149052" then
                        FM:SetDesc("Moon: 4/5")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709143733" then
                        FM:SetDesc("Moon: 3/5")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709150401" then
                        FM:SetDesc("Moon: 2/5")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149680" then
                        FM:SetDesc("Moon: 1/5")
                    else
                        FM:SetDesc("Moon: 0/5")
                    end
                end)
            end
    end)
------------------------------------------------------------------------------------------------------------------------------------
Tabs.spl:AddSection("Status")
local lvParagraph
lvParagraph = Tabs.spl:AddParagraph({
    Title = "Your Status",
    Content = ""
})
spawn(function()
    while wait() do
        pcall(function()
            local statusText = string.format("Level: %d\nBeli: %d\nFragments: %d\nRace: %s",
                game:GetService("Players").LocalPlayer.Data.Level.Value,
                game:GetService("Players").LocalPlayer.Data.Beli.Value,
                game:GetService("Players").LocalPlayer.Data.Fragments.Value,
                game:GetService("Players").LocalPlayer.Data.Race.Value
            )
            lvParagraph:SetDesc(statusText)
        end)
    end
end)
Tabs.spl:AddSection("Auto Up Stats")
ToggleMelee = Tabs.spl:AddToggle("ToggleMelee", {Title = "Auto Melee",Description = "", Default = _G.Auto_Stats_Melee })
ToggleMelee:OnChanged(function(Value)
    _G.Auto_Stats_Melee = Value
    saveSettings()
    end)
ToggleDe = Tabs.spl:AddToggle("ToggleDe", {Title = "Auto Defense",Description = "", Default = _G.Auto_Stats_Defense })
ToggleDe:OnChanged(function(Value)
    _G.Auto_Stats_Defense = Value
    saveSettings()
    end)
ToggleSword = Tabs.spl:AddToggle("ToggleSword", {Title = "Auto Sword",Description = "", Default = _G.Auto_Stats_Sword })
ToggleSword:OnChanged(function(Value)
    _G.Auto_Stats_Sword = Value
    saveSettings()
    end)
ToggleGun = Tabs.spl:AddToggle("ToggleGun", {Title = "Auto Gun", Description = "",Default = _G.Auto_Stats_Gun })
ToggleGun:OnChanged(function(Value)
    _G.Auto_Stats_Gun = Value
    saveSettings()
    end)
ToggleFruit = Tabs.spl:AddToggle("ToggleFruit", {Title = "Auto Demon Fruit",Description = "", Default = _G.Auto_Stats_Devil_Fruit })
ToggleFruit:OnChanged(function(Value)
    _G.Auto_Stats_Devil_Fruit = Value
    saveSettings()
    end)
spawn(function()
    while wait() do
        if _G.Auto_Stats_Devil_Fruit then
            local args = {
                [1] = "AddPoint",
                [2] = "Demon Fruit",
                [3] = 3
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while wait() do
        if _G.Auto_Stats_Gun then
            local args = {
                [1] = "AddPoint",
                [2] = "Gun",
                [3] = 3
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while wait() do
        if _G.Auto_Stats_Sword then
            local args = {
                [1] = "AddPoint",
                [2] = "Sword",
                [3] = 3
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while wait() do
        if _G.Auto_Stats_Defense then
            local args = {
                [1] = "AddPoint",
                [2] = "Defense",
                [3] = 3
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while wait() do
        if _G.Auto_Stats_Melee then
            local args = {
                [1] = "AddPoint",
                [2] = "Melee",
                [3] = 3
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)
------------------------------------------------------------------------------------------------------------------------------------
    Tabs.De:AddSection("Devil Fruit Tab ")
    Toggle = Tabs.De:AddToggle("MyToggle", {Title = "Auto Random Fruit", Default = _G.RandomFruit })

    Toggle:OnChanged(function(Value)
        _G.RandomFruit = Value
        saveSettings()
    end)
    
    spawn(function()
        while wait(.1) do
            if _G.RandomFruit then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
            end 
        end
end)
    
    Toggle = Tabs.De:AddToggle("MyToggle", {Title = "Auto Store Fruit", Default = _G.AutoStoreFruit })

    Toggle:OnChanged(function(Value)
        _G.AutoStoreFruit = Value
        saveSettings()
    end)
    
    spawn(function()
    while task.wait() do
        if _G.AutoStoreFruit then
            pcall(function()
                if _G.AutoStoreFruit then
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bomb-Bomb",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spike-Spike",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Chop-Chop",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spring-Spring",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rocket Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rocket-Rocket",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Smoke-Smoke",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spin-Spin",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Flame-Flame",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Falcon",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ice-Ice",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Sand-Sand",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dark-Dark",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ghost Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ghost-Ghost",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Diamond-Diamond",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Light-Light",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Love-Love",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rubber-Rubber",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Barrier-Barrier",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Magma-Magma",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Portal Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Door-Door",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit"))
                    end

                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Quake-Quake",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Human-Human: Buddha",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spider Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spider-Spider",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Phoenix",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rumble-Rumble",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pain Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Pain-Pain",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Gravity-Gravity",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dough-Dough",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Shadow-Shadow",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Venom-Venom",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Control-Control",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spirit Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Soul Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Soul-Soul",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dragon-Dragon",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit"))
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Leopard-Leopard",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit"))
                    end
                end
                end
            end)
        end
        wait(0.3)
    end
    end)
    
		Tabs.De:AddButton({
        Title = "Mở Thằng Bán Trái Mất Dạy",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
      	game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
        end
    })
    
    FruitList = {
  "Bomb-Bomb",
  "Spike-Spike",
  "Chop-Chop",
  "Spring-Spring",
  "Kilo-Kilo",
  "Spin-Spin",
  "Bird: Falcon",
  "Smoke-Smoke",
  "Flame-Flame",
  "Ice-Ice",
  "Sand-Sand",
  "Dark-Dark",
  "Ghost-Ghost",
  "Diamond-Diamond",
  "Light-Light",
  "Love-Love",
  "Rubber-Rubber",
  "Barrier-Barrier",
  "Magma-Magma",
  "Portal-Portal",
  "Quake-Quake",
  "Human-Human: Buddha",
  "Spider-Spider",
  "Bird-Bird: Phoenix",
  "Rumble-Rumble",
  "Pain-Pain",
  "Gravity-Gravity",
  "Dough-Dough",
  "Venom-Venom",
  "Shadow-Shadow",
  "Control-Control",
  "Soul-Soul",
  "Dragon-Dragon",
  "Leopard-Leopard"
 }
    
    local Dropdown = Tabs.De:AddDropdown("Dropdown", {
        Title = "Fruit",
        Values = FruitList,
        Multi = false,
        Default = _G.SelectFruit,
    })

    Dropdown:SetValue("")

    Dropdown:OnChanged(function(Value)
        _G.SelectFruit = Value
        saveSettings()
    end)
    
    Toggle = Tabs.De:AddToggle("MyToggle", {Title = "Buy Fruit", Default = _G.AutoBuyFruitSniper })

    Toggle:OnChanged(function(Value)
        _G.AutoBuyFruitSniper = Value
        saveSettings()
    end)
    
    spawn(function()
  pcall(function()
   while wait(.1) do
   if _G.AutoBuyFruitSniper then
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit",_G.SelectFruit)
   end
   end
   end)
  end)
    
    Toggle = Tabs.De:AddToggle("MyToggle", {Title = "Esp Fruit", Default = false })

    Toggle:OnChanged(function(a)
        DevilFruitESP = a
        while DevilFruitESP do wait()
            UpdateDevilChams() 
        end
    end)
    
    spawn(function()
	    while wait(2) do
		    if DevilFruitESP then
			    UpdateDevilChams() 
		    end
	    end
    end)
    
    Toggle = Tabs.De:AddToggle("MyToggle", {Title = "Tele Fruit┊Tween", Default = Tween_Fruit })

    Toggle:OnChanged(function(Value)
        Tween_Fruit = Value
        saveSettings()
    end)
    
    spawn(function()
		while wait(.1) do
			if Tween_Fruit then
				for i,v in pairs(game.Workspace:GetChildren()) do
					if string.find(v.Name, "Fruit") then
						topos(v.Handle.CFrame)
					end
				end
			end
        end
    end)
    
    Tabs.De:AddSection("Dungeon┊Raid")
    
    local Dropdown = Tabs.De:AddDropdown("Dropdown", {
        Title = "Chip",
        Values = {"Dark","Sand","Magma","Rumble","Flame","Ice","Light","Quake","Human: Buddha","Flame","Bird: Phoenix","Dough"},
        Multi = false,
        Default = _G.SelectChip,
    })

    Dropdown:SetValue("")

    Dropdown:OnChanged(function(Value)
        _G.SelectChip = Value
        saveSettings()
    end)
    Tabs.De:AddButton({
        Title = "Buy Chip",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc","Select",_G.SelectChip)
        end
    })
    Tabs.De:AddButton({
        Title = "Start Raid",
        Description = "",
        Callback = function()
            if World2 then
      		fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
      	elseif World3 then
      	    fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
      	end
        end
    })
   Toggle = Tabs.De:AddToggle("MyToggle", {Title = "Buy MicroChip", Default = _G.AutoBuyChip })
    Toggle:OnChanged(function(Value)
   _G.AutoBuyChip = Value
   saveSettings()
		end)
		
		spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoBuyChip then
                    if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                        if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip)
                        end
                    end
                end
            end
        end)
    end)
    
    Toggle = Tabs.De:AddToggle("MyToggle", {Title = "Next Island", Default = _G.Auto_Dungeon })
    Toggle:OnChanged(function(Value)
   _G.Auto_Dungeon = Value
   saveSettings()
		end)
		
		local islandNames = {"Island 5", "Island 4", "Island 3", "Island 2", "Island 1"}
spawn(function()
    while wait() do
        if _G.Auto_Dungeon then
			if not game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
                for _, islandName in ipairs(islandNames) do
                    local island = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild(islandName)
                    if island then
                        topos(island.CFrame * CFrame.new(0, 70, 100))
                        break
                    end
                end
			end
        end
    end
end)

Toggle = Tabs.De:AddToggle("MyToggle", {Title = "Killaura", Default = _G.concubu })
    Toggle:OnChanged(function(Value)
   _G.concubu = Value
   saveSettings()
		end)
		
		spawn(function()
    while wait() do
        if _G.concubu then
            for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        repeat wait(.1)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                        until not _G.concubu  or not v.Parent or v.Humanoid.Health <= 0
                end
            end
        end
    end
end)
Toggle = Tabs.De:AddToggle("MyToggle", {Title = "Awakening Fruit", Default = _G.Auto_Awakener })
    Toggle:OnChanged(function(Value)
   _G.Auto_Awakener = Value
   saveSettings()
		end)
		
		spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Auto_Awakener then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Check")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
                end
            end
        end)
    end)
------------------------------------------------------------------------------------------------------------------------------------
local sex = {"KITTGAMING","ENYU_IS_PRO","FUDD10","BIGNEWS","THEGREATACE","SUB2GAMERROBOT_EXP1","STRAWHATMAIME","SUB2OFFICIALNOOBIE","SUB2NOOBMASTER123","SUB2DAIGROCK","AXIORE","TANTAIGAMIMG","STRAWHATMAINE","JCWK","FUDD10_V2","SUB2FER999","MAGICBIS","TY_FOR_WATCHING","STARCODEHEO","STAFFBATTLE","ADMIN_STRENGTH","DRAGONABUSE"}

Tabs.Lc:AddButton({
        Title = "Redeem All Code",
        Description = "",
        Callback = function()            
function RedeemCode(value)
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
        end
        for i,v in pairs(sex) do
            RedeemCode(v)
        end
        end
    })
    
    Tabs.Lc:AddButton({
        Title = "Về Sea 1 Giả Bot",
        Description = "faster teleport to old world with 1 click",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
        end
    })
    Tabs.Lc:AddButton({
        Title = "Sang Sea 2 Giả Ngu",
        Description = "faster teleport to new world with 1 click",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
        end
    })
    Tabs.Lc:AddButton({
        Title = "Lên Sea 3 Làm Giàu",
        Description = "faster teleport to third world with 1 click",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
        end
    })

	Tabs.Lc:AddSection("Teleport Tab ")
    
    if World1 then
    local Dropdown = Tabs.Lc:AddDropdown("Dropdown", {
        Title = "Island",
        Values = {"WindMill",
                      "Marine",
                      "Middle Town",
                      "Jungle",
                      "Pirate Village",
                      "Desert",
                      "Snow Island",
                      "MarineFord",
                      "Colosseum",
                      "Sky Island 1",
                      "Sky Island 2",
                      "Sky Island 3",
                      "Prison",
                      "Magma Village",
                      "Under Water Island",
                      "Fountain City",
                      "Shank Room",
                      "Mob Island"},
        Multi = false,
        Default = _G.SelectIsland,
    })

    Dropdown:SetValue("0.15")
    Dropdown:OnChanged(function(Value)
        _G.SelectIsland = Value
    end)
    end
    if World2 then
    local Dropdown = Tabs.Lc:AddDropdown("Dropdown", {
        Title = "Island",
        Values = {"The Cafe",
                                "Frist Spot",
                                "Dark Area",
                                "Flamingo Mansion",
                                "Flamingo Room",
                                "Green Zone",
                                "Factory",
                                "Colossuim",
                                "Zombie Island",
                                "Two Snow Mountain",
                                "Punk Hazard",
                                "Cursed Ship",
                                "Ice Castle",
                                "Forgotten Island",
                                "Ussop Island",
                                "Mini Sky Island"},
        Multi = false,
        Default = _G.SelectIsland,
    })

    Dropdown:SetValue("0.15")
    Dropdown:OnChanged(function(Value)
        _G.SelectIsland = Value
        saveSettings()
    end)
    end
    if World3 then
    local Dropdown = Tabs.Lc:AddDropdown("Dropdown", {
        Title = "Island",
        Values = {"Mansion",
                                          "Port Town",
                                          "Great Tree",
                                          "Castle On The Sea",
                                          "Hydra Island",
                                          "Floating Turtle",
                                          "Haunted Castle",
                                          "Ice Cream Island",
                                          "Peanut Island",
                                          "Cake Island",
                                          "Cocoa Island",
                                          "Candy Island",
"Tiki Outpost"},
        Multi = false,
        Default = _G.SelectIsland,
    })

    Dropdown:SetValue("0.15")
    Dropdown:OnChanged(function(Value)
        _G.SelectIsland = Value
        saveSettings()
    end)
    end
    Toggle = Tabs.Lc:AddToggle("MyToggle", {Title = "Start TP┊Tween", Default = _G.TeleportIsland })

    Toggle:OnChanged(function(Value)
        _G.TeleportIsland = Value
        saveSettings()
		if _G.TeleportIsland == true then
		    repeat wait()
                if _G.SelectIsland == "Middle Town" then
                    topos(CFrame.new(-688, 15, 1585))
                elseif _G.SelectIsland == "MarineFord" then
                    topos(CFrame.new(-4810, 21, 4359))
                elseif _G.SelectIsland == "Marine" then
                    topos(CFrame.new(-2728, 25, 2056))
                elseif _G.SelectIsland == "WindMill" then
                    topos(CFrame.new(889, 17, 1434))
                elseif _G.SelectIsland == "Desert" then
                    topos(CFrame.new(945, 21, 4375))
                elseif _G.SelectIsland == "Snow Island" then
                    topos(CFrame.new(1298, 87, -1344))
                elseif _G.SelectIsland == "Pirate Village" then
                    topos(CFrame.new(-1173, 45, 3837))
                elseif _G.SelectIsland == "Jungle" then
                    topos(CFrame.new(-1614, 37, 146))
                elseif _G.SelectIsland == "Prison" then
                    topos(CFrame.new(4870, 6, 736))
                elseif _G.SelectIsland == "Under Water Island" then
                    topos(CFrame.new(61164, 5, 1820))
                elseif _G.SelectIsland == "Colosseum" then
                    topos(CFrame.new(-1535, 7, -3014))
                elseif _G.SelectIsland == "Magma Village" then
                    topos(CFrame.new(-5290, 9, 8349))
                elseif _G.SelectIsland == "Sky Island 1" then
                    topos(CFrame.new(-4814, 718, -2551))
                elseif _G.SelectIsland == "Sky Island 2" then
                    topos(CFrame.new(-4652, 873, -1754))
                elseif _G.SelectIsland == "Sky Island 3" then
                    topos(CFrame.new(-7895, 5547, -380))
                elseif _G.SelectIsland == "Fountain City" then
                    topos(CFrame.new(5128, 60, 4106))
                elseif _G.SelectIsland == "The Cafe" then
                    topos(CFrame.new(-382, 73, 290))
                elseif _G.SelectIsland == "Frist Spot" then
                    topos(CFrame.new(-11, 29, 2771))
                elseif _G.SelectIsland == "Dark Area" then
                    topos(CFrame.new(3494, 13, -3259))
                elseif _G.SelectIsland == "Flamingo Mansion" then
                    topos(CFrame.new(-317, 331, 597))
                elseif _G.SelectIsland == "Flamingo Room" then
                    topos(CFrame.new(2285, 15, 905))
                elseif _G.SelectIsland == "Green Zone" then
                    topos(CFrame.new(-2258, 73, -2696))
                elseif _G.SelectIsland == "Zombie Island" then
                    topos(CFrame.new(-5552, 194, -776))
                elseif _G.SelectIsland == "Two Snow Mountain" then
                    topos(CFrame.new(752, 408, -5277))
                elseif _G.SelectIsland == "Punk Hazard" then
                    topos(CFrame.new(-5897, 18, -5096))
                elseif _G.SelectIsland == "Cursed Ship" then
                    topos(CFrame.new(919, 125, 32869))
                elseif _G.SelectIsland == "Ice Castle" then
                    topos(CFrame.new(5505, 40, -6178))
                elseif _G.SelectIsland == "Forgotten Island" then
                    topos(CFrame.new(-3050, 240, -10178))
                elseif _G.SelectIsland == "Ussop Island" then
                    topos(CFrame.new(4816, 8, 2863))
                elseif _G.SelectIsland == "Mansion" then
                    topos(CFrame.new(-12471, 374, -7551))
                elseif _G.SelectIsland == "Port Town" then
                    topos(CFrame.new(-334, 7, 5300))
                elseif _G.SelectIsland == "Castle On The Sea" then
                    topos(CFrame.new(-5073, 315, -3153))
                elseif _G.SelectIsland == "Hydra Island" then
                    topos(CFrame.new(5756, 610, -282))
                elseif _G.SelectIsland == "Great Tree" then
                    topos(CFrame.new(2681, 1682, -7190))
                elseif _G.SelectIsland == "Floating Turtle" then
                    topos(CFrame.new(-12528, 332, -8658))
                elseif _G.SelectIsland == "Haunted Castle" then
                    topos(CFrame.new(-9517, 142, 5528))
                elseif _G.SelectIsland == "Ice Cream Island" then
                    topos(CFrame.new(-902, 79, -10988))
                elseif _G.SelectIsland == "Peanut Island" then
                    topos(CFrame.new(-2062, 50, -10232))
                elseif _G.SelectIsland == "Cake Island" then
                    topos(CFrame.new(-1897, 14, -11576))
                elseif _G.SelectIsland == "Candy Cane Island" then
                    topos(CFrame.new(-1038, 10, -14076))
                elseif _G.SelectIsland == "Tiki Outpost" then
                    topos(CFrame.new(-16224, 9, 439))
		        end
		    until not _G.TeleportIsland
		end
    end)
  
    if World1 then
    local Dropdown = Tabs.Lc:AddDropdown("Dropdown", {
        Title = "Island",
        Values = {"WindMill",
                      "Marine",
                      "Middle Town",
                      "Jungle",
                      "Pirate Village",
                      "Desert",
                      "Snow Island",
                      "MarineFord",
                      "Colosseum",
                      "Sky Island 1",
                      "Sky Island 2",
                      "Sky Island 3",
                      "Prison",
                      "Magma Village",
                      "Under Water Island",
                      "Fountain City",
                      "Shank Room",
                      "Mob Island"},
        Multi = false,
        Default = _G.SelectWarp,
    })

    Dropdown:SetValue("0.15")
    Dropdown:OnChanged(function(Value)
        _G.SelectWarp = Value
        saveSettings()
    end)
    end
    if World2 then
    local Dropdown = Tabs.Lc:AddDropdown("Dropdown", {
        Title = "Island",
        Values = {"The Cafe",
                                "Frist Spot",
                                "Dark Area",
                                "Flamingo Mansion",
                                "Flamingo Room",
                                "Green Zone",
                                "Factory",
                                "Colossuim",
                                "Zombie Island",
                                "Two Snow Mountain",
                                "Punk Hazard",
                                "Cursed Ship",
                                "Ice Castle",
                                "Forgotten Island",
                                "Ussop Island",
                                "Mini Sky Island"},
        Multi = false,
        Default = _G.SelectWarp,
    })

    Dropdown:SetValue("0.15")
    Dropdown:OnChanged(function(Value)
        _G.SelectWarp = Value
        saveSettings()
    end)
    end
    if World3 then
    local Dropdown = Tabs.Lc:AddDropdown("Dropdown", {
        Title = "Island",
        Values = {"Mansion",
                                          "Port Town",
                                          "Great Tree",
                                          "Castle On The Sea",
                                          "Hydra Island",
                                          "Floating Turtle",
                                          "Haunted Castle",
                                          "Ice Cream Island",
                                          "Peanut Island",
                                          "Cake Island",
                                          "Cocoa Island",
                                          "Candy Island",
"Tiki Outpost"},
        Multi = false,
        Default = _G.SelectWarp,
    })

    Dropdown:SetValue("0.15")
    Dropdown:OnChanged(function(Value)
        _G.SelectWarp = Value
        saveSettings()
    end)
    end
    Tabs.Lc:AddButton({
        Title = "Start TP┊Bypass",
        Description = "",
        Callback = function()
            if _G.TeleportWarp == "Manslon" then
                elseif _G.SelectWarp == "WindMill" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Marine" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Middle Town" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Jungle" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Pirate Village" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Desert" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Snow Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "MarineFord" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Colosseum" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Sky Island 1" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Prison" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Magma Village" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Under Water Island" then
					wait(.1)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                elseif _G.SelectWarp == "Fountain City" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Shank Room" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1442.16553, 29.8788261, -28.3547478)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Mob Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2850.20068, 7.39224768, 5354.99268)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "The Cafe" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Frist Spot" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Dark Area" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Flamingo Mansion" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")  
                elseif _G.SelectWarp == "Flamingo Room" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2284.4140625, 15.152037620544, 875.72534179688)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Green Zone" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")  
                elseif _G.SelectWarp == "Factory" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(424.12698364258, 211.16171264648, -427.54049682617)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")  
                elseif _G.SelectWarp == "Colossuim" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")      
                elseif _G.SelectWarp == "Zombie Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint") 
                elseif _G.SelectWarp == "Two Snow Mountain" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")    
                elseif _G.SelectWarp == "Punk Hazard" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Cursed Ship" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(923.40197753906, 125.05712890625, 32885.875)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Ice Castle" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Forgotten Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Ussop Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Mini Sky Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-288.74060058594, 49326.31640625, -35248.59375)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Great Tree" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Castle On The Sea" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5085.23681640625, 316.5072021484375, -3156.202880859375)
                elseif _G.SelectWarp == "Port Town" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Hydra Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5749.7861328125, 611.9736938476562, -276.2497863769531)
                elseif _G.SelectWarp == "Floating Turtle" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Mansion" then
					wait(.1)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Haunted Castle" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Ice Cream Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Peanut Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Cake Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375) 
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Sea to Treats Old" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(508.21466064453125, 25.07753562927246, -12438.2294921875) 
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Cake Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1141.0223388671875, 47.25519561767578, -14204.609375) 
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
					elseif _G.SelectWarp == "Tiki Outpost" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-16101.1885, 12.8422165, 380.942291, 0.194113985, 1.39194061e-08, -0.980978966, -9.82904691e-09, 1, 1.22443504e-08, 0.980978966, 7.26528837e-09, 0.194113985) 
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                 end
        end
    })
------------------------------------------------------------------------------------------------------------------------------------
    Playerslist = {}
    
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        table.insert(Playerslist,v.Name)
    end
   
    local SelectedPly = Tabs.pvp:AddDropdown("Dropdown", {
        Title = "Select Player",
        Values = Playerslist,
        Multi = false,
        Default = _G.SelectPly,
    })
    Dropdown:SetValue("XeterAhihi")
    SelectedPly:OnChanged(function(Value)
        _G.SelectPly = Value
    end)
    
    Tabs.pvp:AddButton({
    Title = "Refresh Player",
    Description = "",
    Callback = function()
        Playerslist = {}
        if not SelectedPly then
            SelectedPly = {} 
        end
        if type(SelectedPly.Clear) == "function" then
            SelectedPly:Clear()
        end
        
        for i, v in pairs(game:GetService("Players"):GetChildren()) do  
            table.insert(Playerslist, v.Name)
            if type(SelectedPly.Add) == "function" then
                SelectedPly:Add(v.Name)
            end
        end
    end
})

Toggle = Tabs.pvp:AddToggle("MyToggle", {
    Title = "Tween To Player",
    Default = _G.TeleportPly
})

Toggle:OnChanged(function(Value)
    _G.TeleportPly = Value
    saveSettings()
    
    pcall(function()
        if _G.TeleportPly then
            repeat
                local player = game:GetService("Players"):FindFirstChild(_G.SelectPly)
                if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                    topos(player.Character.HumanoidRootPart.CFrame)
                end
                wait()
            until not _G.TeleportPly
        end
    end)
end)

local Toggle = Tabs.pvp:AddToggle("MyToggle", {
    Title = "Auto Kill Player",
    Default = _G.Auto_Kill_Ply
})

Toggle:OnChanged(function(Value)
    _G.Auto_Kill_Ply = Value
    saveSettings()
    
    spawn(function()
        while wait() do
            if _G.Auto_Kill_Ply then
                pcall(function()
                    if _G.SelectPly ~= nil then
                        local selectedPlayer = game.Players:FindFirstChild(_G.SelectPly)
                        if selectedPlayer and selectedPlayer.Character and selectedPlayer.Character:FindFirstChild("Humanoid") then
                            if selectedPlayer.Character.Humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    AttackFunctgggggion()
                                    EquipWeapon(_G.SelectWeapon)
                                    AutoHaki()
                                    Click()
                                    selectedPlayer.Character.HumanoidRootPart.CanCollide = false
                                    topos(selectedPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 5, 0))
                                    
                                    spawn(function()
                                        pcall(function()
                                            if _G.SelectWeapon == SelectWeaponGun then
                                                local args = {
                                                    [1] = selectedPlayer.Character.HumanoidRootPart.Position,
                                                    [2] = selectedPlayer.Character.HumanoidRootPart
                                                }
                                                game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                                            else
                                                game:GetService("VirtualUser"):CaptureController()
                                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                            end
                                        end)
                                    end)
                                until selectedPlayer.Character.Humanoid.Health <= 0 or not selectedPlayer or not _G.Auto_Kill_Ply
                            end
                        end
                    end
                end)
            end
        end
    end)
end)

    
    local Toggle = Tabs.pvp:AddToggle("MyToggle", {
    Title = "Auto Kill Player Quest",
    Default = _G.AutoPlayerHunter
})

Toggle:OnChanged(function(Killzps)
    _G.AutoPlayerHunter = Killzps
    saveSettings()
    
    spawn(function()
        game:GetService("RunService").Heartbeat:Connect(function()
            pcall(function()
                if _G.AutoPlayerHunter then
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
                        game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                    end
                end
            end)
        end)
    end)

    spawn(function()
        pcall(function()
            while wait(0.1) do
                if _G.AutoPlayerHunter then
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                    end
                end
            end
        end)
    end)

    spawn(function()
        while wait() do
            if _G.AutoPlayerHunter then
                if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
                    wait(0.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
                else
                    for i, v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, v.Name) then
                            repeat
                                wait()
                                AutoHaki()
                                AttackFunctgggggion()
                                Click() 
                                EquipWeapon(_G.SelectWeapon)
                                Useskill = true
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(1, 7, 3))
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                game:GetService("VirtualUser"):CaptureController()
                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                            until not _G.AutoPlayerHunter or v.Humanoid.Health <= 0
                            Useskill = false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        end
                    end
                end
            end
        end
    end)
end)

Tabs.pvp:AddSection("Team") 

Tabs.pvp:AddButton({
        Title = "Join Pirate Team",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates") 
    end
    })
    
    Tabs.pvp:AddButton({
        Title = "Join Marine Team",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines") 
    end
    })

Tabs.pvp:AddSection("Section Aimbot") 

spawn(function()
        while wait() do
            pcall(function()
                local MaxDistance = math.huge
                for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                    if v.Name ~= game:GetService("Players").LocalPlayer.Name then
                        local Distance = v:DistanceFromCharacter(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position)
                        if Distance < MaxDistance then
                            MaxDistance = Distance
                            PlayerSelectAimbot = v.Name
                        end
                    end
                end
            end)
        end
    end)
    
    Toggle = Tabs.pvp:AddToggle("MyToggle", {Title = "Aimbot Gun", Description = "idk work or not aimbot near player", Default = _G.Aimbot_Gun })
    Toggle:OnChanged(function(Value)
        _G.Aimbot_Gun = Value
        saveSettings()
        end)
        
        spawn(
    function()
        while task.wait() do
            if _G.Aimbot_Gun and game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectWeaponGun) then
                pcall(
                    function()
                        game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].Cooldown.Value = 0
                        local args = {
                            [1] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart.Position,
                            [2] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart
                        }
                        game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(
                            unpack(args)
                        )
                        game:GetService "VirtualUser":CaptureController()
                        game:GetService "VirtualUser":Button1Down(Vector2.new(1280, 672))
                    end
                )
            end
        end
    end
)

Toggle = Tabs.pvp:AddToggle("MyToggle", {Title = "Aimbot Near Player", Description = "nah bro please choose dropdown Select player then turn on aimbot", Default = AimSkillNearest })
    Toggle:OnChanged(function(MakoriGG)
        AimSkillNearest = MakoriGG
        saveSettings()
        end)
        
        spawn(function()
	while wait(.1) do
		pcall(function()
			local MaxDistance = math.huge
			for i,v in pairs(game:GetService("Players"):GetPlayers()) do
				if v.Name ~= game.Players.LocalPlayer.Name then
					local Distance = v:DistanceFromCharacter(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
					if Distance < MaxDistance then
						MaxDistance = Distance
						TargetPlayerAim = v.Name
					end
				end
			end
		end)
	end
end)

spawn(function()
	pcall(function()
		game:GetService("RunService").RenderStepped:connect(function()
			if AimSkillNearest and TargetPlayerAim ~= nil and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name]:FindFirstChild("MousePos") then
				local args = {
					[1] = game:GetService("Players"):FindFirstChild(TargetPlayerAim).Character.HumanoidRootPart.Position
				}
				game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
			end
		end)
	end)
end)

Toggle = Tabs.pvp:AddToggle("MyToggle", {Title = "Aimbot All Skills", Default = AimSkillNearest })
    Toggle:OnChanged(function(value)
        _G.Aimbot_Skill = value
        saveSettings()
        end)
        
        spawn(function()
        pcall(function()
            while task.wait() do
                if _G.Aimbot_Skill and PlayerSelectAimbot ~= nil and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name]:FindFirstChild("MousePos") then
                    local args = {
                        [1] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart.Position
                    }
                    
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name).RemoteEvent:FireServer(unpack(args))
                end
            end
        end)
    end)
    
    Toggle = Tabs.pvp:AddToggle("MyToggle", {Title = "Auto Turn On Pvp", Default = _G.EnabledPvP })
    Toggle:OnChanged(function(value)
        _G.EnabledPvP = value
        saveSettings()
        end)

spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.EnabledPvP then
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                    end
                end
            end
        end)
    end)
    
local Toggle = Tabs.pvp:AddToggle("MyToggle", {Title = "TP Safe Enable if low health", Default = _G.Safe_Mode })
Toggle:OnChanged(function(value)
    _G.Safe_Mode = value
    saveSettings()
end)

spawn(function()
    pcall(function()
        while wait(1) do 
            if _G.Safe_Mode and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                local humanoid = game.Players.LocalPlayer.Character.Humanoid
                if humanoid.Health < 3000 then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 200, 0)
                end
            end
        end
    end)
end)

    Toggle = Tabs.pvp:AddToggle("MyToggle", {Title = "Walk On Water", Default = true })
    Toggle:OnChanged(function(Value)
  _G.WalkWater = Value
		end)
		
		spawn(function()
			while task.wait() do
				pcall(function()
					if _G.WalkWater then
						game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
					else
						game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
					end
				end)
			end
		end)
		
local USERACEV3 = Tabs.pvp:AddToggle("Use V3", {Title = "Auto Use Race v3", Default = false })
local USERACEV4 = Tabs.pvp:AddToggle("Use V4", {Title = "Auto Use Race v4", Default = false })
USERACEV3:OnChanged(function(value)
	Enable_RaceV3 = value
	task.spawn(function()
		while Enable_RaceV3 do wait()
			if Enable_RaceV3 then
				game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
			end
		end
	end)
end)
USERACEV4:OnChanged(function(value)
	Enable_RaceV4 = value
	task.spawn(function()
		while Enable_RaceV4 do wait()
			local OpenV4Race = inmyselfss("Awakening")
			if OpenV4Race then
				OpenV4Race.RemoteFunction:InvokeServer(true)
			end
		end
	end)
end)
------------------------------------------------------------------------------------------------------------------------------------
    Tabs.cailon:AddSection("Mirage")
   
    local dealermirrafe = Tabs.cailon:AddToggle("dealermirrafe", {
    Title = "Teleport Advanced Fruit Dealer",
    Description = "teleport to npc seller fruit in Mirage islands faster ez",
    Default = _G.Miragenpc })
    dealermirrafe:OnChanged(function(Value)
    _G.Miragenpc = Value
    saveSettings()
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.Miragenpc then
                if game:GetService("Workspace").NPCs:FindFirstChild("Advanced Fruit Dealer") then
                    topos(CFrame.new(game:GetService("Workspace").NPCs["Advanced Fruit Dealer"].HumanoidRootPart.Position))
                end
            end
        end
    end)
end)
local miricheat = Tabs.cailon:AddToggle("miricheat", {
    Title = "Tween Chest on Mirage Island",
    Description = "ez nothing for read",
    Default = _G.AutoChestMirage })
    miricheat:OnChanged(function(value)
    _G.AutoChestMirage = value
    saveSettings()
end)
_G.MagnitudeAdd = 0
spawn(function()
	while wait() do 
		if _G.AutoChestMirage then
			for i,v in pairs(game:GetService("Workspace"):GetChildren()) do 
				if v.Name:find("FragChest") then
					if game:GetService("Workspace"):FindFirstChild(v.Name) then
						if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000+_G.MagnitudeAdd then
							repeat wait()
								if game:GetService("Workspace"):FindFirstChild(v.Name) then
									topos(v.CFrame)
								end
							until _G.AutoChestMirage == false or not v.Parent
							topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
							_G.MagnitudeAdd = _G.MagnitudeAdd+1500
							break
						end
					end
				end
			end
		end
	end
end)

        Toggle = Tabs.cailon:AddToggle("MyToggle", {Title = "Tween Mystic Island", Default = _G.AutoMysticIsland })
    Toggle:OnChanged(function(Value)
        _G.AutoMysticIsland = Value
        saveSettings()
        end)
        spawn(function()
            pcall(function()
                while wait() do
                    if _G.AutoMysticIsland then
                        if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                            topos(CFrame.new(game:GetService("Workspace").Map.MysticIsland.Center.Position.X,500,game:GetService("Workspace").Map.MysticIsland.Center.Position.Z))
                        end
                    end
                end
            end)
        end)
    Toggle = Tabs.cailon:AddToggle("MyToggle", {Title = "Look Moon", Default = _G.AutoDooHee })
    Toggle:OnChanged(function(Value)
        _G.AutoDooHee = Value
        saveSettings()
        end)
        spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoDooHee then
                local moonDir = game.Lighting:GetMoonDirection()
                local lookAtPos = game.Workspace.CurrentCamera.CFrame.p + moonDir * 100
                game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, lookAtPos)
            end
        end)
    end
end)
Toggle = Tabs.cailon:AddToggle("MyToggle", {Title = "Tween Gear", Default = _G.TweenMGear })
    Toggle:OnChanged(function(Value)
        _G.TweenMGear = Value
        saveSettings()
        end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.TweenMGear then
				if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
					for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do 
						if v:IsA("MeshPart")then 
                            if v.Material ==  Enum.Material.Neon then  
                                topos(v.CFrame)
                            end
                        end
					end
				end
			end
        end
    end)
    end)

Tabs.cailon:AddButton({
        Title = "Reset Character",
        Description = "",
        Callback = function()            
game.Players.LocalPlayer.Character.Head:Destroy()
        end
    })
    Toggle = Tabs.cailon:AddToggle("MyToggle", {Title = "Tween To Gear", Default = _G.TweenMGear })
Toggle:OnChanged(function(Value)
    _G.TweenMGear = Value -- met vl
    saveSettings()
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.TweenMGear then
                if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                    for i, v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
                        if v:IsA("MeshPart") then
                            if v.Material == Enum.Material.Neon then
                                topos(v.CFrame)
                            end
                        end
                    end
                end
            end
        end
    end)
end)
Tabs.cailon:AddButton({
        Title = "Tp To Timple Of Time",
        Description = "",
        Callback = function()            
             game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286, 14897, 103))
        end
    })
Tabs.cailon:AddButton({
    Title = "Tp To Pull Lever",
    Description = "",
    Callback = function()
        TP2(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
    end
})
Tabs.cailon:AddButton({
        Title = "TP Acient One",
        Description = "",
        Callback = function()            
        TP2(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375))
    end
    })
    Tabs.cailon:AddSection("Quest Race and Complete Trial")
Toggle = Tabs.cailon:AddToggle("MyToggle", {Title = "Farm and turn on V4", Default = _G.Auto_Bone })
    Toggle:OnChanged(function(Value)
        _G.Auto_Bone = Value
        saveSettings()
    end)
    
          Tabs.cailon:AddButton({
          Title = "Teleport To Race Door",
          Description = "Tween Race",
          Callback = function()
                 Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103)
                 wait(.1)
                 Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103)
                 wait(.1)
                 Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103)
                 wait(.1)
                 Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103)
	           if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
                TP2(CFrame.new(29221.822265625, 14890.9755859375, -205.99114990234375))
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
                TP2(CFrame.new(28960.158203125, 14919.6240234375, 235.03948974609375))
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
                TP2(CFrame.new(28231.17578125, 14890.9755859375, -211.64173889160156))
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
                TP2(CFrame.new(28502.681640625, 14895.9755859375, -423.7279357910156))
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
                TP2(CFrame.new(28674.244140625, 14890.6767578125, 445.4310607910156))
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
                TP2(CFrame.new(29012.341796875, 14890.9755859375, -380.1492614746094))
				end
end
})

Tabs.cailon:AddButton({
        Title = "Acient Quest 1",
        Description = "",
        Callback = function()            
             game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('UpgradeRace','Buy')
        end
    })
    
    Tabs.cailon:AddButton({
        Title = "Tween To Clock",
        Description = "tween to clock for attach gear",
        Callback = function()            
           TP2(CFrame.new(29553.7812, 15066.6133, -88.2750015, 1, 0, 0, 0, 1, 0, 0, 0, 1))
        end
    })

    function CheckAcientOneStatus()
        if not game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
            return "You have yet to achieve greatness"
        end
        local v227 = nil
        local v228 = nil
        local v229 = nil
        v229, v228, v227 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("UpgradeRace", "Check")
        if v229 == 1 then
            return "Required Train More"
        elseif v229 == 2 or v229 == 4 or v229 == 7 then
            return "Can Buy Gear With " .. v227 .. " Fragments"
        elseif v229 == 3 then
            return "Required Train More"
        elseif v229 == 5 then
            return "You Are Done Your Race."
        elseif v229 == 6 then
            return "Upgrades completed: " .. v228 - 2 .. "/3, Need Trains More"
        end
        if v229 ~= 8 then
            if v229 == 0 then
                return "Ready For Trial"
            else
                return "You have yet to achieve greatness"
            end
        end
        return "Remaining " .. 10 - v228 .. " training sessions."
    end

meobeo = Tabs.cailon:AddParagraph({
        Title = "Acient One Status :",
        Content = CheckAcientOneStatus()
    })

    spawn(
    function()
        while wait(5) do
            meobeo:SetDesc(CheckAcientOneStatus())
        end
    end
)

local DieAfterTrials = Tabs.cailon:AddToggle("Autodieafter", {Title = "Auto Buy Gear", Default = Autodieafter })
DieAfterTrials:OnChanged(function(starts)
	Autodieafter = starts
    saveSettings()
end)
    spawn(function()
        while task.wait() do 
            pcall(function()
                if Autodieafter then 
                    if string.find(CheckAcientOneStatus(),"Can Buy Gear") then
                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("UpgradeRace", "Buy")
                    end
                end
            end)
        end
    end)

local Toggle = Tabs.cailon:AddToggle("Auto Complete Trial", { Title = "Auto Complete Trial", Default = false })

Toggle:OnChanged(function(Value)
    _G.AutoComplete_Race = Value
    StopTween(_G.AutoComplete_Race)
end)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.AutoComplete_Race then
                        if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
                            for i, v in pairs(game.Workspace.Enemies:GetDescendants()) do
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    pcall(function()
                                        repeat 
                                            task.wait(.1)
                                            v.Humanoid.Health = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        until not _G.AutoComplete_Race or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                    )
                                end
                            end
     elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
                            local c1 = game:GetService("Workspace").Map.SkyTrial.Model.FinishPart
                            if (c1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
                                wait(2)
                                topos(c1.CFrame)
                                wait(3)
                            end
                        elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
                            for i, v in pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()) do
                                if v.Name == "HumanoidRootPart" then
                                    topos(v.CFrame* CFrame.new(0, 600, 0))
             for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                    if v:IsA("Tool") then
									if v.ToolTip == "Melee" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.1)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.1)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Blox Fruit" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
					
							wait(0.5)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Sword" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(0.5)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Gun" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
						end
					end
       elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "requestEntrance",
                                Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586)
                            )
                        elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
                            for i, v in pairs(game.Workspace.Enemies:GetDescendants()) do
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    pcall(function()
                                        repeat 
                                            wait(.1)
                                            v.Humanoid.Health = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        until not _G.AutoComplete_Race or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                    )
                                end
                            end
        elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
                            local c0 = game:GetService("Workspace").StartPoint
                            if (c0.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                                topos(c0.CFrame)
                    for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
                    if v:IsA("TouchInterest") or v.Name == "TouchInterest" then
                    if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then          
                                firetouchinterest(v)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        )
    end
)
_G.SkillZ = true
_G.SkillX = true
_G.SkillC = true
_G.SkillV = true
spawn(function()
    while wait() do
        pcall(function()
            if UseSkillKub then
                if _G.SkillZ then
                     game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                     wait(.1)
                     game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                end
                if _G.SkillX then
                     game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                     wait(.1)
                     game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                end
                if _G.SkillC then                  
                     game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                     wait(.1)
                     game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                end
                if _G.SkillV then
                     game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
                     wait(.1)
                     game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
                end
            end
        end
        )
    end
end
)
Toggle = Tabs.cailon:AddToggle("MyToggle", {Title = "Kill Player Trial No Skill", Default = KillPlayer })
    Toggle:OnChanged(function(Value)
        KillPlayer = Value
        StopTween(KillPlayer)
        saveSettings()
    end)
spawn(function()
    while wait() do 
        pcall(function()
            if KillPlayer then
                repeat wait()
                    targettrial()
                    if _G.TargTrial ~= nil and _G.TargTrial.Character.Humanoid.Health < 0 then
                        _G.TargTrial = nil
                        targettrial()
                    end
                    if _G.TargTrial ~= nil then
                        TP2(_G.TargTrial.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,5))
                        AutoHaki()
                        EquipWeapon(_G.SelectWeapon)
                        UsefastattackPlayers = true
                        AttackFunctgggggion()
                        UFFF = true
                        Click()
                        game:GetService("VirtualUser"):CaptureController()
				        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672), game.Workspace.CurrentCamera.CFrame)
                    end
                until not KillPlayer or not v.Parent or v.Humanoid.Health <= 0 
            end
        end)
    end
end)
Toggle = Tabs.cailon:AddToggle("MyToggle", {Title = "Kill Player Trial Spam Skill", Default = KillPlayerSpam })
    Toggle:OnChanged(function(Value)
        KillPlayerSpam = Value
        StopTween(KillPlayerSpam)
        saveSettings()
    end)
spawn(function()
    while wait() do 
        pcall(function()
            if KillPlayerSpam then
                repeat wait()
                    targettrial()
                    if _G.TargTrial ~= nil and _G.TargTrial.Character.Humanoid.Health < 0 then
                        _G.TargTrial = nil
                        targettrial()
                    end
                    if _G.TargTrial ~= nil then
                        TP2(_G.TargTrial.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,5))
                        AutoHaki()
                        EquipWeapon(_G.SelectWeapon)
                        UsefastattackPlayers = true
                        UFFF = true
                        Click()
                        game:GetService("VirtualUser"):CaptureController()
				        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672), game.Workspace.CurrentCamera.CFrame)
                    end
                    wait(2)
                    if _G.SpamSkillZ then
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                    end
                    wait(.2)
                    if _G.SpamSkillX then
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                    end
                    wait(.2)
                    if _G.SpamSkillC then
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(.2)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                    end
                until not KillPlayerSpam or not v.Parent or v.Humanoid.Health <= 0 
            end
        end)
    end
end)
------------------------------------------------------------------------------------------------------------------------------------
if World3 then
 RoughSea = Tabs.Se:AddSection("Kitsune Island Tab")
	 
 StatusKitsune = Tabs.Se:AddParagraph({
    Title = "Kistune Island",
    Content = ""
})
function UpdateKitsune()
    if game.Workspace._WorldOrigin.Locations:FindFirstChild('Kitsune Island') then
        StatusKitsune:SetDesc("Kitsune Island : 🟢")
    else
        StatusKitsune:SetDesc("Kitsune Island : 🔴")
     end
end
spawn(function()
    pcall(function()
        while wait() do
            UpdateKitsune()
        end
    end)
end)

     ToggleEspKitsune = Tabs.Se:AddToggle("ToggleEspKitsune", {Title = "Esp Kitsune Island",Description = "", Default = false })
      ToggleEspKitsune:OnChanged(function(Value)
        KitsuneIslandEsp = Value
        while KitsuneIslandEsp do wait()
            UpdateIslandKisuneESP() 
        end
    end)

      function UpdateIslandKisuneESP() 
        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            pcall(function()
                if KitsuneIslandEsp then 
                    if v.Name == "Kitsune Island" then
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "Code"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(80, 245, 245)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    end

     ToggleTPKitsune = Tabs.Se:AddToggle("ToggleTPKitsune", {Title = "Tween To Kitsune Island",Description = "", Default = _G.TweenToKitsune })
      ToggleTPKitsune:OnChanged(function(Value)
        _G.TweenToKitsune = Value
        saveSettings()
      end)
      spawn(function()
        local kitsuneIsland
        while not kitsuneIsland do
            kitsuneIsland = game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland")
            wait(1)
        end
        while wait() do
            if _G.TweenToKitsune then
                local shrineActive = kitsuneIsland:FindFirstChild("ShrineActive")
                if shrineActive then
                    for _, v in pairs(shrineActive:GetDescendants()) do
                        if v:IsA("BasePart") and v.Name:find("NeonShrinePart") then
                            TP2(v.CFrame)
                        end
                    end
                end
            end
        end
    end)

   ToggleCollectAzure = Tabs.Se:AddToggle("ToggleCollectAzure", {Title = "Collect Azure Amber",Description = "", Default = _G.CollectAzure })
      ToggleCollectAzure:OnChanged(function(Value)
         _G.CollectAzure = Value
         saveSettings()
      end)
spawn(function()
    while wait() do
        if _G.CollectAzure then
            pcall(function()
                if game:GetService("Workspace"):FindFirstChild("AttachedAzureEmber") then
                    TP2(game:GetService("Workspace"):WaitForChild("EmberTemplate"):FindFirstChild("Part").CFrame)
					print("qua r ne")
                end
            end)
        end
    end
end)
end

local seaevent = Tabs.Se:AddSection("Sea Event Section")

Tabs.Se:AddButton({
        Title = "Remove Fog",
        Description = "",
        Callback = function()            
             game:GetService("Lighting").LightingLayers:Destroy()
	game:GetService("Lighting").Sky:Destroy()
end
    })
    
local ListSeaBoat = {
        "Guardian",
        "PirateGrandBrigade",
        "MarineGrandBrigade",
        "PirateBrigade",
        "MarineBrigade",
        "PirateSloop",
        "MarineSloop",
        "BeastHunter",
    }

    local ListSeaZone = {
        "Zone 1",
        "Zone 2",
        "Zone 3",
        "Zone 4",
        "Zone 5",
        "Zone 6",
    }
    
    local selectthuyen = Tabs.Se:AddDropdown("selectthuyen", {
	Title = "Select Boat",
	Values = ListSeaBoat,
	Multi = false,
	Default = _G.SelectedBoat,
})

selectthuyen:OnChanged(function(value)
	_G.SelectedBoat = value
	saveSettings()
end)
print("queue")
local zoneselect = Tabs.Se:AddDropdown("zoneselect", {
	Title = "Zone Select",
	Values = ListSeaZone,
	Multi = false,
	Default = _G.SelectedZone,
})

zoneselect:OnChanged(function(value)
	_G.SelectedZone = value
	saveSettings()
end)

local boattween = Tabs.Se:AddDropdown("boattween", {
    Title = "Speed Tween Boat",
    Values = {"180", "200", "250", "300", "325", "350"},
    Multi = false,
    Default = 300,
})
boattween:SetValue("300")
boattween:OnChanged(function(Value)
    getgenv().SpeedBoat = Value
end)

    spawn(function()
        pcall(function()
            while wait() do
                if _G.SelectedZone == "Zone 1" then
                    CFrameSelectedZone = CFrame.new(-21998.375, 30.0006084, -682.309143, 0.120013528, 0.00690158736, 0.99274826, -0.0574118942, 0.998350561, -2.36509201e-10, -0.991110802, -0.0569955558, 0.120211802)
                elseif _G.SelectedZone == "Zone 2" then
                    CFrameSelectedZone = CFrame.new(-26779.5215, 30.0005474, -822.858032, 0.307457417, 0.019647358, 0.951358974, -0.0637726262, 0.997964442, -4.15334017e-10, -0.949422479, -0.0606706589, 0.308084518)
                elseif _G.SelectedZone == "Zone 3" then
                    CFrameSelectedZone = CFrame.new(-31171.957, 30.0001011, -2256.93774, 0.37637493, 0.0150483791, 0.926345229, -0.0399504974, 0.999201655, 2.70896673e-11, -0.925605655, -0.0370079502, 0.376675636)
                elseif _G.SelectedZone == "Zone 4" then
                    CFrameSelectedZone = CFrame.new(-34054.6875, 30.2187767, -2560.12012, 0.0935864747, -0.00122954219, 0.995610416, 0.0624034069, 0.998040259, -0.00463332096, -0.993653536, 0.062563099, 0.0934797972)
                elseif _G.SelectedZone == "Zone 5" then
                    CFrameSelectedZone = CFrame.new(-38887.5547, 30.0004578, -2162.99023, -0.188895494, -0.00704088295, 0.981971979, -0.0372481011, 0.999306023, -1.39882339e-09, -0.981290519, -0.0365765914, -0.189026669)
                elseif _G.SelectedZone == "Zone 6" then
                    CFrameSelectedZone = CFrame.new(-44541.7617, 30.0003204, -1244.8584, -0.0844199061, -0.00553312758, 0.9964149, -0.0654025897, 0.997858942, 2.02319411e-10, -0.99428153, -0.0651681125, -0.0846010372)
                end
            end
        end)
    end)
print("start")
      local startseaevent = Tabs.Se:AddToggle("startseaevent", {Title = "Start Sea Event",Description = "Click this toggle for start sea event warning: enable toggle kill mob you want", Default = _G.SailBoat })
      startseaevent:OnChanged(function(state)
          _G.SailBoat = state
    end)

function CheckBoat()
    for i, v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
        if v.Name == _G.SelectedBoat then
            for _, child in pairs(v:GetChildren()) do
                if child.Name == "MyBoatEsp" then
                    return v
                end
            end
        end
    end
    return false
end

function CheckEnemiesBoat()
    if (game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") or game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") or game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade")) then
        return true
    end
    return false
end

function CheckShark()
    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if v.Name == "Shark" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
            if game:GetService("Workspace").Enemies:FindFirstChild("Shark") then
                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then
                    return true
                end
            end
        end
    end
    return false
end

function CheckPiranha()
    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if v.Name == "Piranha" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
            if game:GetService("Workspace").Enemies:FindFirstChild("Piranha") then
                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then
                    return true
                end
            end
        end
    end
    return false
end


function AddEsp(Name, Parent)
    local BillboardGui = Instance.new("BillboardGui")
    local TextLabel = Instance.new("TextLabel")

    BillboardGui.Parent = Parent
    BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    BillboardGui.Active = true
    BillboardGui.Name = Name
    BillboardGui.AlwaysOnTop = true
    BillboardGui.LightInfluence = 1.000
    BillboardGui.Size = UDim2.new(0, 200, 0, 50)
    BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

    TextLabel.Parent = BillboardGui
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.Size = UDim2.new(1, 0, 1, 0)
    TextLabel.Font = Enum.Font.GothamBold
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextSize = 15
    TextLabel.Text = "Your Ship"
end
    
    spawn(function()
    while wait() do
        pcall(function()
            if _G.SailBoat then
                if not CheckBoat() then
                    local BuyBoatCFrame = CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781)
                    if (BuyBoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
                        BTP(BuyBoatCFrame)
                    else
                        stoppos = TP2(BuyBoatCFrame)
                    end
                    if (CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                        if stoppos then stoppos:Stop() end
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBoat", _G.SelectedBoat)
                        for i, v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
                            if v.Name == _G.SelectedBoat then
                                if (v.VehicleSeat.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                                    AddEsp('MyBoatEsp', v)
                                end
                            end
                        end
                    end
                else
                    for i, v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
                        if v.Name == _G.SelectedBoat then
                            if v:FindFirstChild("MyBoatEsp") then
                                if not game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit then
                                    if ((CheckShark() and _G.AutoKillShark) or (game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") and _G.AutoTerrorshark) or (CheckPiranha() and _G.AutoKillPiranha) or (game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") and _G.AutoKillFishCrew) or (game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") and _G.RelzFishBoat) or (game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") and _G.RelzPirateBrigade) or (game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade") and _G.RelzPirateGrandBrigade) or (CheckSeaBeast() and _G.AutoSeaBest)) then
                                        if stoppos then stoppos:Stop() end
                                    else
                                        stoppos = TP2(v.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
                                    end
                                else
                                    repeat wait()
                                        stopboat = TPB(CFrameSelectedZone, v.VehicleSeat)
                                    until ((CheckShark() and _G.AutoKillShark) or (game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") and _G.AutoTerrorshark) or (CheckPiranha() and _G.AutoKillPiranha) or (game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") and _G.AutoKillFishCrew) or (game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") and _G.RelzFishBoat) or (game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") and _G.RelzPirateBrigade) or (game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade") and _G.RelzPirateGrandBrigade) or (CheckSeaBeast() and _G.AutoSeaBest)) or not game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit or not _G.SailBoat
                                    if stopboat then stopboat:Stop() end
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, 32, false, game)
                                    wait(0.1)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(false, 32, false, game)
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.SailBoat then
                if ((CheckShark() and _G.AutoKillShark) or (game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") and _G.AutoTerrorshark) or (CheckPiranha() and _G.AutoKillPiranha) or (game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") and _G.AutoKillFishCrew) or (game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") and _G.RelzFishBoat) or (game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") and _G.RelzPirateBrigade) or (game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade") and _G.RelzPirateGrandBrigade) or (CheckSeaBeast() and _G.AutoSeaBest)) then
                    if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, 32, false, game)
                        wait(0.1)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, 32, false, game)
                    end
                end
            end
        end
    end)
end)

    spawn(function()
        while wait() do
            pcall(function()
                if _G.SailBoat then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") and _G.AutoKillFishCrew then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") then
                                if v.Name == "Fish Crew Member" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        TP2(v.HumanoidRootPart.CFrame * Pos)
                                        NeedAttacking = true
                                        _G.SeaSkill = false
                                    until not _G.AutoKillFishCrew or not v.Parent or v.Humanoid.Health <= 0
                                    StartMagnet = false
                                    end
                                end
                            end
                        end
                    elseif game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") and _G.RelzFishBoat then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") then
                                repeat task.wait()
                                    local BoatCFrame = v.Engine.CFrame
                                    if (BoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                        _G.SeaSkill = true
                                    else
                                        _G.SeaSkill = false
                                    end
                                    TP2(BoatCFrame)
                                    Skillaimbot = true
                                    AimSkill = v.Engine.CFrame * CFrame.new(0, -15, 0)
                                    AimBotSkillPosition = AimSkill.Position
                                until not v.Parent or v.Health < 0 or not game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") or not v:FindFirstChild("Engine") or not _G.RelzFishBoat
                                Skillaimbot = false
                                _G.SeaSkill = false
                            end
                        end
                    elseif game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade") and _G.RelzPirateGrandBrigade then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade") then
                                repeat task.wait()
                                    local BoatCFrame = v.Engine.CFrame
                                    if (BoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                        _G.SeaSkill = true
                                    else
                                        _G.SeaSkill = false
                                    end
                                    TP2(BoatCFrame)
                                    Skillaimbot = true
                                    AimSkill = v.Engine.CFrame * CFrame.new(0, -15, 0)
                                    AimBotSkillPosition = AimSkill.Position
                                until not v.Parent or v.Health.Value < 0 or not game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade") or not v:FindFirstChild("Engine") or not _G.RelzPirateGrandBrigade
                                Skillaimbot = false
                                _G.SeaSkill = false
                            end
                        end
                    elseif game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") and _G.RelzPirateBrigade then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") then
                                repeat task.wait()
                                    local BoatCFrame = v.Engine.CFrame
                                    if (BoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                        _G.SeaSkill = true
                                    else
                                        _G.SeaSkill = false
                                    end
                                    TP2(BoatCFrame)
                                    Skillaimbot = true
                                    AimSkill = v.Engine.CFrame * CFrame.new(0, -15, 0)
                                    AimBotSkillPosition = AimSkill.Position
                                until not v.Parent or v.Health.Value < 0 or not game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") or not v:FindFirstChild("Engine") or not _G.RelzPirateBrigade
                                Skillaimbot = false
                                _G.SeaSkill = false
                            end
                        end
                    elseif CheckSeaBeast() and _G.AutoSeaBest then
                        if game:GetService("Workspace"):FindFirstChild("SeaBeasts") then
                            for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                                if CheckSeaBeast() then
                                repeat wait()
                                    CFrameSeaBeast = v.HumanoidRootPart.CFrame * CFrame.new(0,200,0)
                                    if (CFrameSeaBeast.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 200 then
                                        _G.SeaSkill = true
                                    else
                                        _G.SeaSkill = false
                                    end
                                    Skillaimbot = true
                                    AimBotSkillPosition = v.HumanoidRootPart.CFrame.Position
                                    TP2(CFrameSeaBeast * Pos)
                                until not _G.AutoSeaBest or CheckSeaBeast() == false or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health < 0 or not v.Parent
                                Skillaimbot = false
                                _G.SeaSkill = false
                                else
                                Skillaimbot = false
                                _G.SeaSkill = false
                                end
                            end
                        end
                    elseif game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") and _G.AutoTerrorshark then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") then
                                if v.Name == "Terrorshark" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat task.wait(0.15)
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            NeedAttacking = true
                                            _G.SeaSkill = false
                                            TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 60, 0))
                                        until not  _G.AutoTerrorshark or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        end
                    elseif CheckPiranha() and _G.AutoKillPiranha then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if game:GetService("Workspace").Enemies:FindFirstChild("Piranha") then
                                if v.Name == "Piranha" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        TP2(v.HumanoidRootPart.CFrame * Pos)
                                        NeedAttacking = true
                                        _G.SeaSkill = false
                                    until not _G.AutoKillPiranha or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        end
                    elseif CheckShark() and _G.AutoKillShark then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if game:GetService("Workspace").Enemies:FindFirstChild("Shark") then
                                if v.Name == "Shark" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        TP2(v.HumanoidRootPart.CFrame * Pos)
                                        NeedAttacking = true
                                        _G.SeaSkill = false
                                    until not _G.AutoKillShark or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        end
                    else
                        Skillaimbot = false
                        _G.SeaSkill = false
                        UnEquipWeapon(_G.SelectWeapon)
                    end
                end
            end)
        end
    end)
    local toggleshark = Tabs.Se:AddToggle("toggleshark", {Title = "Auto Kill Shark",Description = "Enable for kill normal shark if have", Default = _G.AutoKillShark })
      toggleshark:OnChanged(function(value)
          _G.AutoKillShark = value
        saveSettings()
    end)
local piranhatoggle = Tabs.Se:AddToggle("piranhatoggle", {Title = "Auto Kill Piranha",Description = "Enable for kill Piranha if have", Default = _G.AutoKillPiranha })
      piranhatoggle:OnChanged(function(value)
          _G.AutoKillPiranha = value
        saveSettings()
    end)
    local fishcrew = Tabs.Se:AddToggle("fishcrew", {Title = "Auto Kill Piranha",Description = "Enable for kill Crew Fish if have", Default = _G.AutoKillFishCrew })
      fishcrew:OnChanged(function(value)
          _G.AutoKillFishCrew = value
        saveSettings()
    end)
    -- spawn(function()
    --     while wait() do
    --         pcall(function()
    --             if _G.AutoKillShark and  World3 then
    --                 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    --                     if v.Name == "Shark" then
    --                         if (v.HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 500 then
    --                         if game:GetService("Workspace").Enemies:FindFirstChild(v.Name) then
    --                         if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
    --                             repeat task.wait()
    --                                 AutoHaki()
    --                                 EquipWeapon(_G.SelectWeapon)
    --                                 
    --                                 v.HumanoidRootPart.CanCollide = false
    --                                 TP2(v.HumanoidRootPart.CFrame * Pos)
    --                                 NeedAttacking = true
                                    -- sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
    --                             until not _G.AutoKillShark or not v.Parent or v.Humanoid.Health <= 0
    --                         end
    --                         end
    --                         end
    --                     end
    --                 end
    --             end
    --         end)
    --     end
    -- end)
    -- spawn(function()
    --     while wait() do
    --         pcall(function()
    --             if _G.AutoKillPiranha and World3 then
    --                 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    --                     if v.Name == "Piranha" then
    --                         if (v.HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 500 then
    --                         if game:GetService("Workspace").Enemies:FindFirstChild(v.Name) then
    --                         if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
    --                             repeat task.wait()
    --                                 AutoHaki()
    --                                 EquipWeapon(_G.SelectWeapon)
    --                                 
    --                                 v.HumanoidRootPart.CanCollide = false
    --                                 TP2(v.HumanoidRootPart.CFrame * Pos)
    --                                 NeedAttacking = true
    --                             until not _G.AutoKillPiranha or not v.Parent or v.Humanoid.Health <= 0
    --                         end
    --                         end
    --                         end
    --                     end
    --                 end
    --             end
    --         end)
    --     end
    -- end)
    -- spawn(function()
    --     while wait() do
    --         pcall(function()
    --             if _G.AutoKillFishCrew and  World3 then
    --                 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    --                     if v.Name == "Fish Crew Member" then
    --                         if (v.HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 500 then
    --                         if game:GetService("Workspace").Enemies:FindFirstChild(v.Name) then
    --                         if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
    --                             repeat task.wait()
    --                                 AutoHaki()
    --                                 EquipWeapon(_G.SelectWeapon)
    --                                 v.HumanoidRootPart.CanCollide = false
    --                                 
    --                                 TP2(v.HumanoidRootPart.CFrame * Pos)
    --                                 NeedAttacking = true
    --                                 StartMagnet = true
    --                                 MonFarm = v.Name
    --                                 PosMon = v.HumanoidRootPart.CFrame
    --                             until not _G.AutoKillFishCrew or not v.Parent or v.Humanoid.Health <= 0
    --                         end
    --                         end
    --                         end
    --                     end
    --                 end
    --             end
    --         end)
    --     end
    -- end)
    -- spawn(function()
    --     while wait() do
    --         if  _G.AutoTerrorshark and World3 then
    --             pcall(function()
    --                 if game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") then
    --                     for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    --                         if v.Name == "Terrorshark" then
    --                             if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
    --                                 repeat task.wait()
    --                                     AutoHaki()
    --                                     EquipWeapon(_G.SelectWeapon)
    --                                     v.HumanoidRootPart.CanCollide = false
    --                                     v.Humanoid.WalkSpeed = 0
    --                                     
    --                                     NeedAttacking = true
    --                                     if game.Players.LocalPlayer.Character.Humanoid.Health < 2000 then
    --                                         fastpos(v.HumanoidRootPart.CFrame * CFrame.new(0, 300, 0))
    --                                         wait(10)
    --                                     else
    --                                         TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 55, 0))
    --                                     end
    --                                     TerrorSharkpos = v.HumanoidRootPart.CFrame
    --                                 until not  _G.AutoTerrorshark or not v.Parent or v.Humanoid.Health <= 0
    --                             end
    --                         end
    --                     end
    --                 end
    --             end)
    --         end
    --     end
    -- end)
    -- spawn(function()
    --     while wait() do
    --         pcall(function()
    --             if _G.AutoTerrorshark then
    --                 if (game:GetService("Workspace").Enemies["Terrorshark"].HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 150 then
    --                     repeat wait()
    --                     NeedAttacking = true
    --                     until not _G.AutoTerrorshark
    --                 end
    --             end
    --         end)
    --     end
    -- end)
    function UpDownPos(pos)
        fastpos(pos * CFrame.new(0, 40, 0))
        wait(2)
        fastpos(pos * CFrame.new(0, 300, 0))
        wait(3)
    end
local ghostship = Tabs.Se:AddToggle("ghostship", {
    Title = "Auto Kill Ghost Ship",
    Description = "Enable for kill ghost ship if have",
    Default = _G.RelzFishBoat
})
ghostship:OnChanged(function(value)
    _G.RelzFishBoat = value
    saveSettings()
    if not _G.RelzFishBoat then
        _G.SeaSkill = false
        Skillaimbot = false
    end
end)
   local piratebrigade = Tabs.Se:AddToggle("piratebrigade", {
    Title = "Auto Kill Pirate Brigade",
    Description = "Enable for kill Pirate Brigade if have",
    Default = _G.RelzPirateBrigade
})
piratebrigade:OnChanged(function(value)
    _G.RelzPirateBrigade = value
    saveSettings()
end)
local grand = Tabs.Se:AddToggle("grand", {
    Title = "Auto Kill Pirate Grand Brigade",
    Description = "Enable for kill Pirate Grand Brigade if have",
    Default = _G.RelzPirateGrandBrigade
})
grand:OnChanged(function(value)
    _G.RelzPirateGrandBrigade = value
    saveSettings()
end)
    -- spawn(function()
    --         while wait() do
    --             pcall(function()
    --                     if _G.RelzFishBoat then
    --                         for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    --                         if game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") then
    --                             repeat task.wait()
    --                                 CFrameFishBoat = v.Engine.CFrame * CFrame.new(0, 10, 0)
    --                                 if (v.Engine.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
    --                                     _G.SeaSkill = true
    --                                 else
    --                                     _G.SeaSkill = false
    --                                 end
    --                                 TP2(CFrameFishBoat)
    --                                 Skillaimbot = true
    --                                 AimBotSkillPosition = v.Engine.Position
    --                             until not v.Parent or v.Health.Value < 0 or not game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") or not v:FindFirstChild("Engine") or not _G.RelzFishBoat
    --                             Skillaimbot = false
    --                             _G.SeaSkill = false
    --                         end
    --                     end
    --                 end
    --             end)
    --         end
    --     end)
local terrror = Tabs.Se:AddToggle("terrror", {
    Title = "Auto Kill Terror Shark",
    Description = "Enable for kill Terror Shark if have",
    Default = _G.AutoTerrorshark
})
terrror:OnChanged(function(value)
    _G.AutoTerrorshark = value
    saveSettings()
end)
local seabitch = Tabs.Se:AddToggle("seabitch", {
    Title = "Auto Kill Sea Beast",
    Description = "Enable for kill sea beast if have",
    Default = _G.AutoSeaBest
})
seabitch:OnChanged(function(value)
    _G.AutoSeaBest = value
        saveSettings()
        if not _G.AutoSeaBest then
            _G.SeaSkill = false
            Skillaimbot = false
        end
end)
    function CheckSeaBeast()
        if game:GetService("Workspace"):FindFirstChild("SeaBeasts") then
            for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                if v:FindFirstChild("Humanoid") or v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health < 0 then
                    return true
                end
            end
        end
        return false
    end
        -- spawn(function()
        --     while wait() do
        --         if _G.AutoSeaBest then
        --                 pcall(function()
        --                 if game:GetService("Workspace"):FindFirstChild("SeaBeasts") then
        --                     for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
        --                         if CheckSeaBeast() then
        --                         repeat wait()
        --                             CFrameSeaBeast = v.HumanoidRootPart.CFrame * CFrame.new(0,400,0)
        --                             if (CFrameSeaBeast.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 50 then
        --                                 _G.SeaSkill = true
        --                             else
        --                                 _G.SeaSkill = false
        --                             end
        --                             Skillaimbot = true
        --                             AimBotSkillPosition = v.HumanoidRootPart.CFrame.Position
        --                             TP2(CFrameSeaBeast)
        --                         until not _G.AutoSeaBest or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health < 0 or not v.Parent
        --                         Skillaimbot = false
        --                         _G.SeaSkill = false
        --                         end
        --                     end
        --                 end
        --                 end)
        --             end
        --         end
        --     end)
             Tabs.Se:AddSection("Settings Sea Event")
             local bright = Tabs.Se:AddSlider("bright", {
        Title = "Brightness",
        Description = "",
        Default = 200,
        Min = 0,
        Max = 300,
        Rounding = 1,
        Callback = function(Value)
            BrightValue = value
            saveSettings()
        end
    })
            Tabs.Se:AddButton({
        Title = "Set Brightness",
        Description = "",
        Callback = function()            
             game:GetService("Lighting").Brightness = BrightValue
        end
    })
           local speedshit = Tabs.Se:AddToggle("speedshit", {
    Title = "Enable Speed Boat",
    Description = "change boat speed after you choose dropdown",
    Default = _G.IncreaseBoatSpeed
})
speedshit:OnChanged(function(value)
    _G.IncreaseBoatSpeed = value
        saveSettings()
end)
            spawn(function()
                while wait() do 
                    pcall(function()
                        local vehicleSeats = {}
                        for i, v in pairs(game.Workspace.Boats:GetDescendants()) do
                            if v:IsA("VehicleSeat") then
                                table.insert(vehicleSeats, v)
                            end
                        end
                        if _G.IncreaseBoatSpeed then
                            for _, v in pairs(vehicleSeats) do
                                v.MaxSpeed = 350
                            end
                        else
                            for _, v in pairs(vehicleSeats) do
                                v.MaxSpeed = 150
                            end
                        end
                    end)
                end
            end)
            local boatclip = Tabs.Se:AddToggle("boatclip", {
    Title = "NoClip Rock",
    Description = "",
    Default = _G.NoClipRock
})
boatclip:OnChanged(function(state)
    _G.NoClipRock = state
        saveSettings()
end)
            spawn(function()
                while wait() do
                    pcall(function()
                    for i, boat in pairs(game:GetService("Workspace").Boats:GetChildren()) do
                        for _, v in pairs(game:GetService("Workspace").Boats[boat.Name]:GetDescendants()) do
                            if v:IsA("BasePart") then
                                if _G.NoClipRock or _G.SailBoat then
                                    v.CanCollide = false
                                else
                                    v.CanCollide = true
                                end
                            end
                        end
                    end
                    end)
                end
            end)
            local wpress = Tabs.Se:AddToggle("wpress", {
    Title = "Press W Auto",
    Description = "",
    Default = _G.AutoPressW
})
wpress:OnChanged(function(state)
    _G.AutoPressW = state 
        saveSettings()
end)
            spawn(function()
                while wait() do
                    pcall(function()
                        if _G.AutoPressW then
                            if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"W",false,game)
                        end
                        end
                    end)
                end
            end)
            DoneSkillGun = false
            DoneSkillSword = false
            DoneSkillFruit = false
            DoneSkillMelee = false
            spawn(function()
                while wait() do
                    pcall(function()
                        if _G.SeaSkill then
                            if _G.UseSeaFruitSkill and DoneSkillFruit == false then
                                for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                    if v:IsA("Tool") then
                                        if v.ToolTip == "Blox Fruit" then
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                        end
                                    end
                                end
                            if _G.SkillFruitZ then
                                game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                wait(_G.SeaHoldSKillZ)
                                game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                            end
            
                            if _G.SkillFruitX then
                            game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                            wait(_G.SeaHoldSKillX)
                            game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                            end
                            
                            if _G.SkillFruitC then
                            game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                            wait(_G.SeaHoldSKillC)
                            game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                            end
            
                            if _G.SkillFruitV then
                            game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                            wait(_G.SeaHoldSKillV)
                            game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                            end
            
                            if _G.SkillFruitF then
                            game:service('VirtualInputManager'):SendKeyEvent(true, "F", false, game)
                            wait(_G.SeaHoldSKillF)
                            game:service('VirtualInputManager'):SendKeyEvent(false, "F", false, game)
                            end

                            DoneSkillFruit = true
                            end
            
                            if _G.UseSeaMeleeSkill and DoneSkillMelee == false then 
                                for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                    if v:IsA("Tool") then
                                        if v.ToolTip == "Melee" then
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                        end
                                    end
                                end
                                if _G.SkillMeleeZ then
                                game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                wait(0)
                                game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                end
                
                                if _G.SkillMeleeX then
                                game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                wait(0)
                                game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                end
                                
                                if _G.SkillMeleeC then
                                game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                wait(0)
                                game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                end
                
                                if _G.SkillMeleeV then
                                game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                wait(0)
                                game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                end

                                DoneSkillMelee = true
                            end

                            if _G.UseSeaSwordSkill and DoneSkillSword == false then 
                                for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                    if v:IsA("Tool") then
                                        if v.ToolTip == "Sword" then
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                        end
                                    end
                                end
                                if _G.SkillSwordZ then
                                game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                wait(0)
                                game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                end
                
                                if _G.SkillSwordX then
                                game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                wait(0)
                                game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                end

                                DoneSkillSword = true
                            end

                            if _G.UseSeaGunSkill and DoneSkillGun == false then 
                                for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                    if v:IsA("Tool") then
                                        if v.ToolTip == "Gun" then
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                        end
                                    end
                                end
                                if _G.SkillGunZ then
                                game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                wait(.1)
                                game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                end
                
                                if _G.SkillGunX then
                                game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                wait(.1)
                                game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                end

                                DoneSkillGun = true
                            end
            
                            DoneSkillGun = false
                            DoneSkillSword = false
                            DoneSkillFruit = false
                            DoneSkillMelee = false
                        end
                    end)
                end
            end)

Tabs.Se:AddSection("Settings Skills Only Sea Event")
local fruitsk = Tabs.Se:AddToggle("fruitsk", {
    Title = "Enable Fruit Skill",
    Description = "Use fruit skill when farming sea event",
    Default = _G.UseSeaFruitSkill
})
fruitsk:OnChanged(function(value)
    _G.UseSeaFruitSkill = value
        saveSettings()
end)
local melesk = Tabs.Se:AddToggle("melesk", {
    Title = "Enable Mele Skill",
    Description = "Use mele skill when farming sea event",
    Default = _G.UseSeaMeleeSkill
})
melesk:OnChanged(function(value)
    _G.UseSeaMeleeSkill = value
        saveSettings()
end)
    local swordsk = Tabs.Se:AddToggle("swordsk", {
    Title = "Enable Sword Skill",
    Description = "Use sword skill when farming sea event",
    Default = _G.UseSeaSwordSkill
})
swordsk:OnChanged(function(value)
    _G.UseSeaSwordSkill = value
        saveSettings()
end)
local gunsk = Tabs.Se:AddToggle("gunsk", {
    Title = "Enable Gun Skill",
    Description = "Use gun skill when farming sea event",
    Default = _G.UseSeaGunSkill
})
gunsk:OnChanged(function(value)
    _G.UseSeaGunSkill = value
        saveSettings()
end)
    Tabs.Se:AddSection("Setting Fruit Skill")
    local fruitskz = Tabs.Se:AddToggle("fruitskz", {
    Title = "Use Skill Z",
    Description = "Use Skill Z Devil Fruit",
    Default = _G.SkillFruitZ
})
fruitskz:OnChanged(function(value)
    _G.SkillFruitZ = value
        saveSettings()
end)
    local fruitskx = Tabs.Se:AddToggle("fruitskx", {
    Title = "Use Skill X",
    Description = "Use Skill X Devil Fruit",
    Default = _G.SkillFruitX
})
fruitskx:OnChanged(function(value)
    _G.SkillFruitX = value
        saveSettings()
end)
    local fruitskc = Tabs.Se:AddToggle("fruitskc", {
    Title = "Use Skill C",
    Description = "Use Skill C Devil Fruit",
    Default = _G.SkillFruitC
})

fruitskc:OnChanged(function(value)
    _G.SkillFruitC = value
        saveSettings()
end)
    
    local fruitskv = Tabs.Se:AddToggle("fruitskv", {
    Title = "Use Skill V",
    Description = "Use Skill V Devil Fruit",
    Default = _G.SkillFruitV
})

fruitskv:OnChanged(function(value)
    _G.SkillFruitV = value
        saveSettings()
end)
    
    local fruitskf = Tabs.Se:AddToggle("fruitskf", {
    Title = "Use Skill F",
    Description = "Use Skill F Devil Fruit",
    Default = _G.SkillFruitF
})

fruitskf:OnChanged(function(value)
    _G.SkillFruitF = value
        saveSettings()
end)

Tabs.Se:AddSection("Setting Mele Skill")

local meleskz = Tabs.Se:AddToggle("meleskz", {
    Title = "Use Skill Z Mele",
    Description = "",
    Default = _G.SkillMeleeZ
})

meleskz:OnChanged(function(value)
    _G.SkillMeleeZ = value
        saveSettings()
end)

local meleskx = Tabs.Se:AddToggle("meleskx", {
    Title = "Use Skill X Mele",
    Description = "",
    Default = _G.SkillMeleeX
})

meleskx:OnChanged(function(value)
    _G.SkillMeleeX = value
        saveSettings()
end)
    
local meleskc = Tabs.Se:AddToggle("meleskc", {
    Title = "Use Skill C Mele",
    Description = "",
    Default = _G.SkillMeleeC
})

meleskc:OnChanged(function(value)
    _G.SkillMeleeC = value
        saveSettings()
end)
    
   Tabs.Se:AddSection("Setting Sword and Gun")

local skillzswordandgun = Tabs.Se:AddToggle("skillzswordandgun", {
    Title = "Use Skill Z | Sword And Gun",
    Description = "",
    Default = false
})
skillzswordandgun:OnChanged(function(value)
    _G.SkillSwordZ = value
    _G.SkillGunZ = value
        saveSettings()
end)
    
    local skillxswordandgun = Tabs.Se:AddToggle("skillxswordandgun", {
    Title = "Use Skill X | Sword And Gun",
    Description = "",
    Default = false
})
skillxswordandgun:OnChanged(function(value)
    _G.SkillSwordX = value
    _G.SkillGunX = value
        saveSettings()
end)
    
function EquipAllWeapon()
	pcall(function()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA('Tool') and not (v.Name == "Summon Sea Beast" or v.Name == "Water Body" or v.Name == "Awakening") then
				local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name) 
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
                wait(1)
			end
		end
	end)
end
        
local gg = getrawmetatable(game)
local old = gg.__namecall
setreadonly(gg,false)
gg.__namecall = newcclosure(function(...)
	local method = getnamecallmethod()
	local args = {...}
	if tostring(method) == "FireServer" then
		if tostring(args[1]) == "RemoteEvent" then
			if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
				if Skillaimbot then
					args[2] = AimBotSkillPosition
					return old(unpack(args))
				end
			end
		end
	end
	return old(...)
end)

spawn(function()
    while wait() do
        pcall(function()
            if UseSkill then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Kill_At / 100 then
                if _G.SkillZ then
                    game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                    wait(_G.HoldSKillZ)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                end
                if _G.SkillX then
                    game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                    wait(_G.HoldSKillX)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                end
                if _G.SkillC then
                    game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                    wait(_G.HoldSKillC)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                end
                if _G.SkillV then
                    game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                    wait(_G.HoldSKillV)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                end
                if _G.SkillF then
                    game:service('VirtualInputManager'):SendKeyEvent(true, "F", false, game)
                    wait(_G.HoldSKillF)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "F", false, game)
                end
            end
            end
            end
        end)
    end
end)


spawn(function()
    while wait() do
        pcall(function()
            if UseGunSkill then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Kill_At / 100 then
                if _G.SkillZ then
                    game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                    wait(0.5)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                end
                if _G.SkillX then
                    game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                    wait(0.5)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                end
            end
            end
            end
        end)
    end
end)
------------------------------------------------------------------------------------------------------------------------------------
    Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "Hide Mobs", Description = "invisible monster for have better fps", Default = false })
    Toggle:OnChanged(function(Value)
        _G.hadesinvis = Value		
        saveSettings() 
    end)
    spawn(function()
    while wait() do
        if _G.hadesinvis then
            pcall(function()
                for i, v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                    if v.ClassName == "MeshPart" then
                        v.Transparency = 1
                    end
                end
                for i, v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                    if v.Name == "Head" then
                        v.Transparency = 1
                    end
                end
                for i, v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                    if v.ClassName == "Accessory" then
                        v.Handle.Transparency = 1
                    end
                end
                for i, v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                    if v.ClassName == "Decal" then
                        v.Transparency = 1
                    end
                end
            end)
        end
    end
end)

    Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "Bypass Tp", Default = true })
    Toggle:OnChanged(function(Value)
        BypassTP = Value		
        saveSettings() 
    end)
    
    local DropdownTweenSpeed = Tabs.Settings:AddDropdown("DropdownTweenSpeed", {
    Title = "Speed Tween",
    Values = {"100", "150", "250", "300", "325", "350"},
    Multi = false,
    Default = 325,
})
DropdownTweenSpeed:SetValue("TweenSpeed")
DropdownTweenSpeed:OnChanged(function(Value)
    getgenv().TweenSpeed = Value
    saveSettings()
end)
    
    Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "Auto Haki", Default = true })
    Toggle:OnChanged(function(Value)
        _G.AUTOHAKI = Value
        saveSettings()
    end)
    spawn(function()
    while wait(.1) do
        if _G.AUTOHAKI then 
            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                local args = {
                    [1] = "Buso"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
    end
end)
Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "Auto Ken Haki", Default = _G.AUTOKen })
    Toggle:OnChanged(function(Value)
        _G.AUTOKen = Value
        saveSettings()
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if _G.AUTOKen then
                    repeat task.wait()
                        if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                            game:GetService('VirtualUser'):CaptureController()
                            game:GetService('VirtualUser'):SetKeyDown('0x65')
                            wait(2)
                            game:GetService('VirtualUser'):SetKeyUp('0x65')
                        end
                    until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not _G.AUTOKen
                end
            end)
        end
    end)    
    
    local autoclick = Tabs.Settings:AddToggle("autoclick", {Title = "Auto Clicker", Description = "", Default = false })
autoclick:OnChanged(function(Value)
   UFFF = Value
   saveSettings()
end) 

local spin = Tabs.Settings:AddToggle("spin", {
    Title = "Spin Pos",
    Description = "Rotate When Farming",
    Default = true })
    spin:OnChanged(function(Value)
    _G.SpinPos = Value
    saveSettings()
    end)

local DMGAU = Tabs.Settings:AddToggle("Damage_Aura", {Title = "Damage Aura", Default = true })
DMGAU:OnChanged(function(value)
	DamageAura = value
	saveSettings()
end)
    
Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "Fast Attack", Description = "Better than old attack recommended", Default = true })
Toggle:OnChanged(function(value)
    Fast_Attack = value
    ClickNoCooldown = value
	DmgAttack.Enabled = not value	
    saveSettings()
end) 

local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
Mouse.Button1Down:Connect(function()
	if ClickNoCooldown then
		local ac = CombatFrameworkR.activeController
		if ac and ac.equipped then
			ac.hitboxMagnitude = 60
			pcall(AttackFunction,3)
		end
	end
end)

    Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "Remove Notification", Default = RemoveNotify })
    Toggle:OnChanged(function(Value)
        RemoveNotify = Value
        saveSettings()
    end)
    
    spawn(function()
        while wait() do
            if RemoveNotify then
                game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false
            else
                game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true
            end
        end
    end)
    
    Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "Remove Text", Default = Removetext })
    Toggle:OnChanged(function(Value)
        Removetext = Value
        saveSettings()
    end)
    
    spawn(function()
    while wait(1) do 
        if Removetext then
            game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
        else
            game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
        end
    end
end)

		Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "Anti Afk", Default = true })
    Toggle:OnChanged(function(Value)
  local Value = game:GetService("VirtualUser")
		repeat wait() until game:IsLoaded() 
			game:GetService("Players").LocalPlayer.Idled:connect(function()
		    game:GetService("VirtualUser"):ClickButton2(Vector2.new())
				vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
				wait(1)
				vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		   end)
		end)

    local Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "Bring Mob", Default = true })

    Toggle:OnChanged(function(Mag)
        _G.BringMonster = Mag
    end)
    
    task.spawn(function()
    while task.wait() do
        if _G.BringMonster then
            pcall(function()
                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if not string.find(v.Name, "Boss") and v.Name == MonFarm and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300 then
                        if InMyNetWork(v.HumanoidRootPart) then
                            if InMyNetWork(v.HumanoidRootPart) then
                                v.HumanoidRootPart.CFrame = PosMon
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                task.wait(0.1) -- Thêm khoảng thời gian chờ 0.1 giây giữa mỗi lần di chuyển mob
                            end
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait() do
        spawn(function()
            if _G.BringMonster then
                CheckQuest()
                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if _G.AutoFarm and StartMagnet and v.Name == Mon and (Mon == "Factory Staff" or Mon == "Monkey" or Mon == "Dragon Crew Warrior" or Mon == "Dragon Crew Archer") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 220 then
                        v.HumanoidRootPart.Size = Vector3.new(70, 70, 70)
                        v.HumanoidRootPart.CFrame = PosMon
                        v.Humanoid:ChangeState(14)
                        v.HumanoidRootPart.CanCollide = false
                        v.Head.CanCollide = false
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        task.wait(0.1) -- Thêm khoảng thời gian chờ 0.1 giây giữa mỗi lần di chuyển mob
                    elseif _G.AutoFarm and StartMagnet and v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode then
                        v.HumanoidRootPart.Size = Vector3.new(70, 70, 70)
                        v.HumanoidRootPart.CFrame = PosMon
                        v.Humanoid:ChangeState(14)
                        v.HumanoidRootPart.CanCollide = false
                        v.Head.CanCollide = false
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        task.wait(0.1) -- Thêm khoảng thời gian chờ 0.1 giây giữa mỗi lần di chuyển mob
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if _G.BringMob and bringmob then
                    if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                        if v.Name == "Factory Staff" then
                            if (v.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 500 then
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                v.HumanoidRootPart.CFrame = FarmPos
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                task.wait(0.1) -- Thêm khoảng thời gian chờ 0.1 giây giữa mỗi lần di chuyển mob
                            end
                        elseif v.Name == MonFarm then
                            if (v.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 450 then
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                v.HumanoidRootPart.CFrame = FarmPos
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                task.wait(0.1) -- Thêm khoảng thời gian chờ 0.1 giây giữa mỗi lần di chuyển mob
                            end
                        end
                    end
                end
            end
        end)
    end
end)

task.spawn(function()
    while true do wait()
        if setscriptable then
            setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
        end
        if sethiddenproperty then
            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
        end
    end
end)

function InMyNetWork(object)
    if isnetworkowner then
        return isnetworkowner(object)
    else
        if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode then 
            return true
        end
        return false
    end
end

task.spawn(function()
    while task.wait() do
        if MakoriGayMag and _G.BringMonster then
            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                if not string.find(v.Name, "Boss") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode then
                    if InMyNetWork(v.HumanoidRootPart) then
                        v.HumanoidRootPart.CFrame = PosGay
                        v.Humanoid.JumpPower = 0
                        v.Humanoid.WalkSpeed = 0
                        v.HumanoidRootPart.Size = Vector3.new(70, 70, 70)
                        v.HumanoidRootPart.Transparency = 1
                        v.HumanoidRootPart.CanCollide = false
                        v.Head.CanCollide = false
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        v.Humanoid:ChangeState(11)
                        v.Humanoid:ChangeState(14)
                        task.wait(0.1) -- Thêm khoảng thời gian chờ 0.1 giây giữa mỗi lần di chuyển mob
                    end
                end
            end
        end
    end
end)

function BringMob()
    if not BringMobChoosen then
        repeat
            task.wait()
        until BringMobChoosen
    end
    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
    if LockCFrame then
        for r, v in pairs(game.Workspace.Enemies:GetChildren()) do
            if
                (LockCFrame.Position - v.HumanoidRootPart.Position).Magnitude < 350 and
                (LockCFrame.Position - v.HumanoidRootPart.Position).Magnitude > 3 and
                chodonandngu(v.HumanoidRootPart.Position)
            then
                v.HumanoidRootPart.CFrame = LockCFrame
                SizePart(v)
                for al, ax in pairs(v:GetDescendants()) do
                    if ax:IsA("BasePart") or ax:IsA("Part") then
                        ax.CanCollide = false
                    end
                end
                task.wait(0.1) -- Thêm khoảng thời gian chờ 0.1 giây giữa mỗi lần di chuyển mob
            end
        end
    end
        if BringMobChoosen then
        for r, v in pairs(game.Workspace.Enemies:GetChildren()) do
            if
                (BringMobChoosen.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < 350 and
                (BringMobChoosen.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude > 3 and
                GetNearestPlayer(v.HumanoidRootPart.Position)
            then
                v.HumanoidRootPart.CFrame = BringMobChoosen.HumanoidRootPart.CFrame
                SizePart(v)
                for al, ax in pairs(v:GetDescendants()) do
                    if ax:IsA("BasePart") or ax:IsA("Part") then
                        ax.CanCollide = false
                    end
                end
                task.wait(0.1) -- Thêm khoảng thời gian chờ 0.1 giây giữa mỗi lần di chuyển mob
            end
        end
    end
end

function tvk1308deptraiso1()
    local c = function1()
    local ao = game.workspace.Enemies:GetChildren()
    if #ao > 1 then
        for ap = 1, #ao do
            for k, v in pairs(game.workspace.Enemies:GetChildren()) do
                if function0(v) and (v.HumanoidRootPart.Position - c.Position).Magnitude < 350 then
                    v.HumanoidRootPart.CFrame = c
                    v.Humanoid:ChangeState(11)
                    v.HumanoidRootPart.CanCollide = false
                    v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                    v.HumanoidRootPart.Transparency = 1
                    for al, f in pairs(v:GetChildren()) do
                        if v:IsA("BasePart") then
                            v.Velocity = Vector3.new(0, 0, 0)
                            v.CanCollide = 0
                            v.Anchored = true
                        end
                    end
                    if v:FindFirstChild("Humanoid") then
                        v.Humanoid.WalkSpeed = 0
                        v.Humanoid.JumpPower = 0
                    else
                        return
                    end
                    if v.Humanoid:FindFirstChild("Animator") then
                        v.Humanoid.Animator:Destroy()
                    end
                    v.Humanoid:ChangeState(11)
                    task.wait(0.1) -- Thêm khoảng thời gian chờ 0.1 giây giữa mỗi lần di chuyển mob
                end
            end
        end
    end
end

local az = {}
for r, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
    if not az[v.Name] or az[v.Name] == nil then
        az[v.Name] = {v.CFrame}
    elseif az[v.Name] then
        table.insert(az[v.Name], v.CFrame)
    end
end
function CheckMobInDistance(aA)
    idot = {["Workspace"] = false, ["ReplicatedStorage"] = false, ["NilInstace"] = false}
    for r, v in pairs(game.Workspace.Enemies:GetChildren()) do
        if table.find(aA, v.Name) then
            idot["Workspace"] = true
        end
    end
    for r, v in pairs(game.ReplicatedStorage:GetChildren()) do
        if table.find(aA, v.Name) then
            idot["ReplicatedStorage"] = true
        end
    end
    allnilinstance = getnilinstances()
    for r, v in pairs(allnilinstance) do
        if table.find(aA, v.Name) then
            idot["NilInstace"] = true
        end
    end
    return idot
end
function deobiettengi(aB, aC)
    for r, v in pairs(aB) do
        for O, P in pairs(aC) do
            if string.find(v, O) then
                return true
            end
        end
    end
    return false
end
function deobiettengi2(aD, aC)
    for r, v in pairs(aC) do
        if string.find(r, aD) then
            return true
        end
    end
end
function getLargestNumber(aE)
    s = 0
    for r, v in pairs(aE) do
        if type(r) == "number" and r > s then
            s = r
        end
    end
    return s
end
function removeNumber(aD)
    if type(aD) ~= "string" then
        return ""
    end
    str2 = aD:split(" ")
    str3 = ""
    str5 = getLargestNumber(str2)
    for r, v in pairs(str2) do
        if r < str5 then
            if r == 0 then
                str3 = v
            else
                str3 = str3 .. " " .. v
            end
        end
    end
    return str3
end
task.spawn(
    function()
        while task.wait() do
            if bringmob then
                pcall(
                    function()
                        BringMob()
                    end
                )
            end
        end
    end
)
    
function InMyNetWork(object)
	if isnetworkowner then
		return isnetworkowner(object)
	else
		if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode then 
			return true
		end
		return false
	end
end

task.spawn(function()
	while task.wait() do
		pcall(function()
			if _G.AutoFarmNearest and AutoFarmNearestMagnet or SelectMag and _G.BringMonster then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode then
						if InMyNetWork(v.HumanoidRootPart) then
							v.HumanoidRootPart.CFrame = PosMon
							v.Humanoid.JumpPower = 0
							v.Humanoid.WalkSpeed = 0
							v.HumanoidRootPart.Size = Vector3.new(70,70,70)
							v.HumanoidRootPart.Transparency = 1
							v.HumanoidRootPart.CanCollide = false
							v.Head.CanCollide = false
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy()
							end
							v.Humanoid:ChangeState(11)
							v.Humanoid:ChangeState(14)
						end
					end
				end
			end
		end)
	end
    end)
    
local Dropdown = Tabs.Settings:AddDropdown("Dropdown", {
        Title = "Bring Mob",
        Values = {"Low", "Normal", "Super Bring"},
        Multi = false,
        Default = 1,
    })
    Dropdown:SetValue("Normal")
    Dropdown:OnChanged(function(Value)
        _G.BringMode = Value
    end)
  
spawn(function()
    while wait(.1) do
        if _G.BringMode then
            pcall(function()
                if _G.BringMode == "Low" then
                    _G.BringMode = 250
                elseif _G.BringMode == "Normal" then
                    _G.BringMode = 300
                elseif _G.BringMode == "Super Bring" then
                    _G.BringMode = 350
                end
            end)
        end
    end
end)

    local Slider = Tabs.Settings:AddSlider("Slider", {
        Title = "PosY",
        Description = "",
        Default = 20,
        Min = 0,
        Max = 100,
        Rounding = 5,
        Callback = function(Value)
            PosY = Value
            saveSettings()
        end
    })

    local Slider = Tabs.Settings:AddSlider("Slider", {
        Title = "MobHealth",
        Description = "",
        Default = 85,
        Min = 0,
        Max = 100,
        Rounding = 5,
        Callback = function(Value)
            _G.Kill_At = Value
            saveSettings()
        end
    })
Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "Skill Z", Default = true })
    Toggle:OnChanged(function(Value)
        _G.SkillZ = Value
        saveSettings()
    end)
    local Slider = Tabs.Settings:AddSlider("Slider", {
        Title = "Skill Z",
        Description = "",
        Default = 0,
        Min = 0,
        Max = 5,
        Rounding = 1,
        Callback = function(Value)
            _G.HoldZ = Value
            saveSettings()
        end
    })
Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "Skill X", Default = true })
    Toggle:OnChanged(function(Value)
        _G.SkillX = Value
        saveSettings()
    end)
    local Slider = Tabs.Settings:AddSlider("Slider", {
        Title = "Skill X",
        Description = "",
        Default = 0,
        Min = 0,
        Max = 5,
        Rounding = 1,
        Callback = function(Value)
            _G.HoldX = Value
            saveSettings()
        end
    })
Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "Skill C", Default = true })
    Toggle:OnChanged(function(Value)
        _G.SkillC = Value
        saveSettings()
    end)
local Slider = Tabs.Settings:AddSlider("Slider", {
        Title = "Skill C",
        Description = "",
        Default = 0,
        Min = 0,
        Max = 5,
        Rounding = 1,
        Callback = function(Value)
            _G.HoldC = Value
            saveSettings()
        end
    })
Toggle = Tabs.Settings:AddToggle("MyToggle", {Title = "Skill V", Default = true })

    Toggle:OnChanged(function(Value)
        _G.SkillV = Value
        saveSettings()
    end)

local Slider = Tabs.Settings:AddSlider("Slider", {
        Title = "Skill V",
        Description = "",
        Default = 0,
        Min = 0,
        Max = 5,
        Rounding = 1,
        Callback = function(Value)
            _G.HoldV = Value
            saveSettings()
        end
    })
   

function BringMobBone(name, CFrameMon)
		spawn(function()
			wait(0.1)
			for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
				if v.name == name and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 400 then
					v.Humanoid.WalkSpeed = 0
					v.Humanoid.JumpPower = 0
					v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
					v.HumanoidRootPart.CanCollide = false
					v.Head.CanCollide = false
					v.HumanoidRootPart.CFrame = CFrameMon
					if v.Humanoid:FindFirstChild('Animator') then
						v.Humanoid.Animator:Destroy()
					end
					v.Humanoid:ChangeState(11)
					v.Humanoid:ChangeState(14)
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
				end
			end
		end)
	end
	
	function BringMobCake(name, CFrameMon)
		spawn(function()
			wait(0.5)
			for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
				if v.name == name and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 400 then
					v.Humanoid.WalkSpeed = 0
					v.Humanoid.JumpPower = 0
					v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
					v.HumanoidRootPart.CanCollide = false
					v.Head.CanCollide = false
					v.HumanoidRootPart.CFrame = CFrameMon
					if v.Humanoid:FindFirstChild('Animator') then
						v.Humanoid.Animator:Destroy()
					end
					v.Humanoid:ChangeState(11)
					v.Humanoid:ChangeState(14)
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
				end
			end
		end)
	end
	
	function BringMobSwan(name, CFrameMon)
		spawn(function()
			wait(0.5)
			for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
				if v.name == name and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 400 then
					v.Humanoid.WalkSpeed = 0
					v.Humanoid.JumpPower = 0
					v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
					v.HumanoidRootPart.CanCollide = false
					v.Head.CanCollide = false
					v.HumanoidRootPart.CFrame = CFrameMon
					if v.Humanoid:FindFirstChild('Animator') then
						v.Humanoid.Animator:Destroy()
					end
					v.Humanoid:ChangeState(11)
					v.Humanoid:ChangeState(14)
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
				end
			end
		end)
	end
	function BringMobRengoku(name, CFrameMon)
		spawn(function()
			wait(0.5)
			for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
				if v.name == name and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 400 then
					v.Humanoid.WalkSpeed = 0
					v.Humanoid.JumpPower = 0
					v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
					v.HumanoidRootPart.CanCollide = false
					v.Head.CanCollide = false
					v.HumanoidRootPart.CFrame = CFrameMon
					if v.Humanoid:FindFirstChild('Animator') then
						v.Humanoid.Animator:Destroy()
					end
					v.Humanoid:ChangeState(11)
					v.Humanoid:ChangeState(14)
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
				end
			end
		end)
	end
------------------------------------------------------------------------------------------------------------------------------------
    Tabs.Sh:AddSection("Melee Store") 
    local melees = {
    ["Select"] = function() end,
    ["Black Leg"] = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
    end,
    ["Electro"] = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
    end,
    ["Fishman Karate"] = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
    end,
    ["Dragon Claw"] = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
    end,
    ["Superhuman"] = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
    end,
    ["Death Step"] = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
    end,
    ["Sharkman Karate"] = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
    end,
    ["Electric Claw"] = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
    end,
    ["Dragon Talon"] = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
    end,
    ["Godhuman"] = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
    end,
    ["Sanguine Art"] = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
    end
}

local Chon_Melee = Tabs.Sh:AddDropdown("Chon_Melee", {
    Title = "Buy Fighting Style",
    Description = "",
    Values = {"Select", "Black Leg", "Electro", "Fishman Karate", "Dragon Claw", "Superhuman", "Death Step", "Sharkman Karate", "Electric Claw", "Dragon Talon", "Godhuman" },
    Multi = false,
    Default = 1,
})
Chon_Melee:SetValue("Select")
Chon_Melee:OnChanged(function(Value)
    getgenv().FightingStyle = Value
    if melees[Value] then
        melees[Value]()
    end
end)

    Tabs.Sh:AddSection("Abilities Shop")
    Tabs.Sh:AddButton({Title = "Buy Sky Jumb", Description = "", Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
        end
    })
    Tabs.Sh:AddButton({Title = "Buy Buso Haki", Description = "", Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
        end
    })
    Tabs.Sh:AddButton({Title = "Buy Observation haki", Description = "", Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
        end
    })
    Tabs.Sh:AddButton({Title = "Buy Soru", Description = "", Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
        end
    })
    Tabs.Sh:AddSection("Maybe Working")
    Tabs.Sh:AddButton({Title = "Buy Ghoul Race", Description = "", Callback = function()            
local args = {[1] = "Ectoplasm", [2] = "BuyCheck", [3] = 4}
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        local args = {[1] = "Ectoplasm", [2] = "Change", [3] = 4}
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    })
    Tabs.Sh:AddButton({
        Title = "Buy Cyborg Race",
        Description = "",
        Callback = function()            
local args = {[1] = "CyborgTrainer", [2] = "Buy"}
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    })
    Tabs.Sh:AddButton({
        Title = "Reroll Race",
        Description = "",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","1")
	    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","2")
        end
    })
    Tabs.Sh:AddButton({
        Title = "Refund Stats",
        Description = "",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
        end
    })
------------------------------------------------------------------------------------------------------------------------------------
Tabs.Vl:AddSection("Fake")

Tabs.Vl:AddButton({
Title = "Mưa trái ác quỷ",
Description = "",
Callback = function()
    for i, v in pairs(game:GetObjects("rbxassetid://14759368201")[1]:GetChildren()) do
        v.Parent = game.Workspace.Map
        v:MoveTo(game.Players.LocalPlayer.Character.PrimaryPart.Position + Vector3.new(math.random(-50, 50), 100, math.random(-50, 50)))
        if v.Fruit:FindFirstChild("AnimationController") then
            v.Fruit:FindFirstChild("AnimationController"):LoadAnimation(v.Fruit:FindFirstChild("Idle")):Play()
        end
        v.Handle.Touched:Connect(function(otherPart)
            if otherPart.Parent == game.Players.LocalPlayer.Character then
                v.Parent = game.Players.LocalPlayer.Backpack
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            end
        end)
    end
end
})

Tabs.Vl:AddButton({
Title = "Nhận Level/Beli/EXP",
Description = "",
Callback = function()
    local plr = game:GetService("Players").LocalPlayer
    local Notification = require(game:GetService("ReplicatedStorage").Notification)
    local Data = plr:WaitForChild("Data")
    local EXPFunction = require(game.ReplicatedStorage:WaitForChild("EXPFunction"))
    local LevelUp = require(game:GetService("ReplicatedStorage").Effect.Container.LevelUp)
    local Sound = require(game:GetService("ReplicatedStorage").Util.Sound)
    local LevelUpSound = game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp_Proxy") or game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp")
    function v129(p15)
        local v130 = p15;
        while true do
            local v131, v132 = string.gsub(v130, "^(-?%d+)(%d%d%d)", "%1,%2");
            v130 = v131;
            if v132 == 0 then
                break;
            end;    
        end;
        return v130;
    end;
    
    Notification.new("<Color=Red>QUEST COMPLETED!<Color=/>"):Display()
    Notification.new("Earned <Color=Black>9,999,999,999,999 Exp.<Color=/> (+ None)"):Display()
    Notification.new("Earned <Color=Green>$9,999,999,999,999<Color=/>"):Display()
    plr.Data.Exp.Value = 999999999999
    plr.Data.Beli.Value = plr.Data.Beli.Value + 999999999999
    
    delay = 0
    count = 0
    while plr.Data.Exp.Value - EXPFunction(Data.Level.Value) > 0 do
        plr.Data.Exp.Value = plr.Data.Exp.Value - EXPFunction(Data.Level.Value)
        plr.Data.Level.Value = plr.Data.Level.Value + 1
        plr.Data.Points.Value = plr.Data.Points.Value + 3
        LevelUp({ plr })
        Sound.Play(Sound, LevelUpSound.Value)
        Notification.new("<Color=Green>LEVEL UP!<Color=/> (" .. plr.Data.Level.Value .. ")"):Display()
        count = count + 1
        if count >= 5 then
            delay = tick()
            count = 0
            wait(2)
        end
    end
end
})

Tabs.Vl:AddInput("Input_Level", {
Title = "Tăng Level",
Default = "",
Placeholder = "input",
Numeric = false, 
Finished = false,
Callback = function(value)
    game:GetService("Players")["LocalPlayer"].Data.Level.Value = tonumber(value)
end
})

Tabs.Vl:AddInput("Input_EXP", {
Title = "Tăng Exp",
Default = "",
Placeholder = "input",
Numeric = false, 
Finished = false,
Callback = function(value)
    game:GetService("Players")["LocalPlayer"].Data.Exp.Value = tonumber(value)
end
})

Tabs.Vl:AddInput("Input_Beli", {
Title = "Tăng Beli",
Default = "",
Placeholder = "input",
Numeric = false, 
Finished = false,
Callback = function(value)
    game:GetService("Players")["LocalPlayer"].Data.Beli.Value = tonumber(value)
end
})

Tabs.Vl:AddInput("Input_Fragments", {
Title = "Tăng Fragment",
Default = "",
Placeholder = "input",
Numeric = false, 
Finished = false,
Callback = function(value)
    game:GetService("Players")["LocalPlayer"].Data.Fragments.Value = tonumber(value)
end
})

Tabs.Vl:AddInput("Input_Health", {
Title = "Tăng Points",
Default = "",
Placeholder = "input",
Numeric = false, 
Finished = false,
Callback = function(value)
    game:GetService("Players")["LocalPlayer"].Data.Points.Value = tonumber(value)
end
})

Tabs.Vl:AddInput("Input_Health", {
Title = "Tăng Bounty",
Default = "",
Placeholder = "input",
Numeric = false, 
Finished = false,
Callback = function(value)
    game:GetService("Players")["LocalPlayer"].leaderstats["Bounty/Honor"].Value = tonumber(value)
end
})
------------------------------------------------------------------------------------------------------------------------------------
    Tabs.Ms:AddSection("Job ID Join")
    local Input = Tabs.Ms:AddInput("Input", {
        Title = "Job Id discord của tao",
        Default = "",
        Placeholder = "Paste Job Id",
        Numeric = false, 
        Finished = false, 
        Callback = function(Value)
            _G.Job = Value
        end
    })
    
    Tabs.Ms:AddButton({
        Title = "Copy Job ID Của Tao",
        Description = "",
        Callback = function()
            setclipboard(tostring(game.JobId))
        end
    })
    
    Tabs.Ms:AddButton({
        Title = "Join Job ID Của Tao",
        Description = "",
        Callback = function()
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId,_G.Job, game.Players.LocalPlayer)
        end
    })
    
    Toggle = Tabs.Ms:AddToggle("MyToggle", {Title = "Spam Join Job Id", Default = _G.Join })
    Toggle:OnChanged(function(Value)
  _G.Join = Value
  saveSettings()
		end)
		
		spawn(function()
while wait() do
if _G.Join then
game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId,_G.Job, game.Players.LocalPlayer)
end
end
end)

		Tabs.Ms:AddButton({
        Title = "Rejoin Server",
        Description = "",
        Callback = function()
            game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
        end
    })
    
    Tabs.Ms:AddButton({
        Title = "Server Hop",
        Description = "",
        Callback = function()
           Hop() 
        end
    })
    
  local Rejoin = Tabs.Ms:AddToggle("MyToggle", {Title = "Auto Rejoin If Disconnect or Kicked", Default = true })
Rejoin:OnChanged(function(Value)
  _G.Rejoin = Value
  saveSettings()
  
  if _G.Rejoin then
    if not getgenv().rejoinConnection then
      getgenv().rejoinConnection = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
        if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
          game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
        end
      end)
    end
  else
    if getgenv().rejoinConnection then
      getgenv().rejoinConnection:Disconnect()
      getgenv().rejoinConnection = nil
    end
  end
end)

    Tabs.Ms:AddButton({
        Title = "Mở Màu Da",
        Description = "",
        Callback = function()
            game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
        end
    })
    
    Tabs.Ms:AddButton({
        Title = "Mở tên phim sex",
        Description = "",
        Callback = function()
            local args = {
        [1] = "getTitles"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
      	game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
        end
    })
------------------------------------------------------------------------------------------------------------------------------------
local players = game:GetService("Players")
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "BID HUB";
    Text = "Loading Thành Công Rồi Địt Mẹ Mày!";
    Icon = "rbxthumb://type=Asset&id=9614132122&w=150&h=150";
    Duration = 7
})

spawn(function()
    while wait() do
    for i,v in pairs(game.Players:GetPlayers()) do
        if v.Name == "red_game43" or v.Name == "rip_indra" or v.Name == "Axiore" or v.Name == "Polkster" or v.Name == "wenlocktoad" or v.Name == "Daigrock" or v.Name == "toilamvidamme" or v.Name == "oofficialnoobie" or v.Name == "Uzoth" or v.Name == "Azarth" or v.Name == "arlthmetic" or v.Name == "Death_King" or v.Name == "Lunoven" or v.Name == "TheGreateAced" or v.Name == "rip_fud" or v.Name == "drip_mama" or v.Name == "layandikit12" or v.Name == "Hingoi" then
            Hop()
            end
        end
    end
end)

local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
local CombatFrameworkR = getupvalues(CombatFramework)[2]
local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
local RigControllerR = getupvalues(RigController)[2]
local realbhit = require(game.ReplicatedStorage.CombatFramework.RigLib)
local cooldownfastattack = tick()

new = {}
function FastAttackConnectorFunction()
    repeat wait() until game:IsLoaded()
    repeat task.wait() until game.ReplicatedStorage
    repeat task.wait() until game.Players
    repeat task.wait() until game.Players.LocalPlayer
    repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
    local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
    local CombatFrameworkR = getupvalues(CombatFramework)[2]
    local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
    local RigControllerR = getupvalues(RigController)[2]
    local realbhit = require(game.ReplicatedStorage.CombatFramework.RigLib)
    local cooldownfastattack = tick()
    
    ReturnFunctions = {}
    function CurrentWeapon()
        local ac = CombatFrameworkR.activeController
        local ret = ac.blades[1]
        if not ret then
            return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
        end
        pcall(
            function()
                while ret.Parent ~= game.Players.LocalPlayer.Character do
                    ret = ret.Parent
                end
            end
        )
        if not ret then
            return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
        end
        return ret
    end
    function AttackFunctgggggion()
        if game.Players.LocalPlayer.Character.Stun.Value ~= 0 then
            return nil
        end
        local ac = CombatFrameworkR.activeController
        ac.hitboxMagnitude = 55
        if ac and ac.equipped then
            for indexincrement = 1, 1 do
                local bladehit =require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(game.Players.LocalPlayer.Character,{game.Players.LocalPlayer.Character.HumanoidRootPart},60)
                if #bladehit > 0 then
                    local AcAttack8 = debug.getupvalue(ac.attack, 5)
                    local AcAttack9 = debug.getupvalue(ac.attack, 6)
                    local AcAttack7 = debug.getupvalue(ac.attack, 4)
                    local AcAttack10 = debug.getupvalue(ac.attack, 7)
                    local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
                    local NumberAc13 = AcAttack7 * 798405
                    (function()
                        NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
                        AcAttack8 = math.floor(NumberAc12 / AcAttack9)
                        AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
                    end)()
                    AcAttack10 = AcAttack10 + 1
                    debug.setupvalue(ac.attack, 5, AcAttack8)
                    debug.setupvalue(ac.attack, 6, AcAttack9)
                    debug.setupvalue(ac.attack, 4, AcAttack7)
                    debug.setupvalue(ac.attack, 7, AcAttack10)
                    for k, v in pairs(ac.animator.anims.basic) do
                        v:Play(0.01,0.01,0.01)
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then
                        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer(
                            "weaponChange",
                            tostring(CurrentWeapon())
                        )
                        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 2, "")
                    end
                end
            end
        end
    end
    CountAttack = 0  
    TickCountAttack = tick()
    spawn(function()
        local MT = getrawmetatable(game)
        local OldNameCall = MT.__namecall
        setreadonly(MT, false)
        MT.__namecall = newcclosure(function(self, ...)
            local Method = getnamecallmethod()
            local Args = {...}
            if Method == 'FireServer' and self.Name == "RigControllerEvent" and  Args[1] == "hit"  then
                CountAttack = CountAttack + 1 
                TickCountAttack = tick()
            end
            return OldNameCall(self, unpack(Args))
        end)
    end)
    function ReturnFunctions:GetCount()
        return CountAttack
    end
    function ReturnFunctions:Attack(k)
        UFFF = k 
    end
    FastAttackSettings = {
        ["CDAAT"] = 80,
        ["TimeWait"] = 10
    }
    spawn(function()
        local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)
        CameraShakerR:Stop()
    end)
    function ReturnFunctions:InputValue(CDAAT,TimeWait)
        FastAttackSettings["CDAAT"] = CDAAT
        FastAttackSettings["TimeWait"] = TimeWait
    end
    function ReturnFunctions:InputSetting(tbbb)
        conchosetting = tbbb
    end
    function atack()
        pcall(function()
            AttackFunctgggggion()
        end)
    end
    ToiCanOxi = 0
    conchosetting = {}
    function ReturnFunctions:GetMethod()
        MethodAttack = "Slow"
        if CountAttack < FastAttackSettings["CDAAT"] then 
            MethodAttack = "Fast"
        end 
        return MethodAttack
    end
    spawn(function()
        while task.wait() do 
            if UFFF then 
                pcall(function()
                    if conchosetting and type(conchosetting) == "table" then 
                        if conchosetting and conchosetting["Mastery Farm"] then 
                            ToiCanOxi = 2 
                            atack()
                            if conchosetting["DelayAttack"] and type(conchosetting["DelayAttack"]) == "number" and conchosetting["DelayAttack"] >= 0.1 then 
                                wait(conchosetting["DelayAttack"])
                            else
                                conchosetting["DelayAttack"] = 0.2 
                                wait(conchosetting["DelayAttack"])
                            end
                        elseif CountAttack < FastAttackSettings["CDAAT"] then 
                            ToiCanOxi = ToiCanOxi +1
                            atack()
                        elseif CountAttack >= FastAttackSettings["CDAAT"] then 
                            ToiCanOxi = ToiCanOxi +1
                            atack()
                            if conchosetting["DelayAttack"] and type(conchosetting["DelayAttack"]) == "number" and conchosetting["DelayAttack"] >= 0.1 then 
                                wait(conchosetting["DelayAttack"]*2)
                            else
                                conchosetting["DelayAttack"] = 0.2 
                                wait(conchosetting["DelayAttack"]*2)
                            end
                        end
                    end
                end)
            end
        end
    end) 
    spawn(function()
        while task.wait() do 
            pcall(function() 
                if tick()-TickCountAttack >= FastAttackSettings["TimeWait"] then 
                    CountAttack = 0 
                end
            end)
        end
    end)
    spawn(function()
        while task.wait() do 
            if UFFF then 
                pcall(function()
                    local Fastflux = getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))[2]
                    Fastflux.activeController.hitboxMagnitude = 55
                    Fastflux.activeController.timeToNextAttack = 0
                    Fastflux.activeController.attacking = false
                    Fastflux.activeController.increment = 3
                    Fastflux.activeController.blocking = false
                    Fastflux.activeController.timeToNextBlock = 0
                    Fastflux.activeController:attack()
                    task.wait(0.2)
                end)
            end
        end
    end)
    spawn(function()
        while task.wait() do 
            if UFFF then 
                pcall(function()
                    local Fastflux = getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))[2]
                    Fastflux.activeController.hitboxMagnitude = 55
                    Fastflux.activeController.timeToNextAttack = 0
                    Fastflux.activeController.attacking = false
                    Fastflux.activeController.increment = 3
                    Fastflux.activeController.blocking = false
                    Fastflux.activeController.timeToNextBlock = 0
                    a = math.random(1,5)
                    if a > 1 then 
                        game:GetService "VirtualUser":CaptureController()
                        game:GetService "VirtualUser":Button1Down(Vector2.new(50, 50))
                    end
                    task.wait(0.2)
                end)
            end
        end
    end)
    spawn(function()
        while wait() do 
            if UFFF then
                pcall(function() 
                    if CountAttack >= FastAttackSettings["CDAAT"] then 
                        TickFastAttackF = tick()
                        repeat wait() until tick()-TickFastAttackF >= FastAttackSettings["TimeWait"]
                        CountAttack = 0
                    end    
                end)  
            end
        end
    end)
    return ReturnFunctions
end
return FastAttackConnectorFunction()