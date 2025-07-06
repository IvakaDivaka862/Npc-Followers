
local function ConfigurePed(PedModel, PlayerPed)
    TaskFollowToOffsetOfEntity(PedModel, PlayerPed, 0.0, 0.0, 0.0, 2.0, -1, 3.0, true)
    SetPedFleeAttributes(PedModel, 0, false)
    SetPedCombatAttributes(PedModel, 46, false)
    SetPedCanBeTargetted(PedModel, false)
    SetBlockingOfNonTemporaryEvents(PedModel, true)
end
local Peds = {}
local function NPCSpawn()
    local PlayerPedID = PlayerPedId()
    local PlayerCoords = GetEntityCoords(PlayerPedID)
    local PlayerHeading = GetEntityHeading(PlayerPedID)
    local distance3 = 3
    local NPCcoords = PlayerCoords+vec3(distance3, distance3, .5)
    local PedHash = `a_m_o_soucent_03`

    RequestModel(PedHash)
    while not HasModelLoaded(PedHash) do
        Wait(10)
    end

    for i = 1, 10 do
        local ped = CreatePed(4, PedHash, NPCcoords.x, NPCcoords.y, NPCcoords.z, PlayerHeading, true, false)
        ConfigurePed(ped, PlayerPedID)
        table.insert(Peds, ped)
    end
end

local function NPCStop()
    for i = 1, #Peds do
    ClearPedTasks(Peds[i])
    end
end

local function NPCdelete()
    for i = 1, #Peds do
        DeleteEntity(Peds[i])
        Peds[i] = nil
    end
end

local function ScriptStarted()
    print('NPC SPAWNER STARTED')
end

RegisterCommand('npcspawn', function()
    NPCSpawn()
end, false)

RegisterCommand('npcstopfollow', function()
    NPCStop()
    NPCdelete()
end, false)

ScriptStarted()