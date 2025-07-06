local function NPCSpawn()
local PlayerPed = PlayerPedId()
local PlayerCoords = GetEntityCoords(PlayerPed)
local PlayerHeading = GetEntityHeading(PlayerPed)
local distance3 = 3
local NPCcoords = PlayerCoords+vec3(distance3, distance3, .5)
local PedModel = `a_m_o_soucent_03`

    RequestModel(PedModel)
    while not HasModelLoaded(PedModel) do
        Wait(10)
    end

local PedOne = CreatePed(4, PedModel, NPCcoords.x, NPCcoords.y, NPCcoords.z, PlayerHeading, true, false)
local PedTwo = CreatePed(4, PedModel, NPCcoords.x, NPCcoords.y, NPCcoords.z, PlayerHeading, true, false)
local PedThree = CreatePed(4, PedModel, NPCcoords.x, NPCcoords.y, NPCcoords.z, PlayerHeading, true, false)
local PedFour = CreatePed(4, PedModel, NPCcoords.x, NPCcoords.y, NPCcoords.z, PlayerHeading, true, false)
local PedFive = CreatePed(4, PedModel, NPCcoords.x, NPCcoords.y, NPCcoords.z, PlayerHeading, true, false)
local PedSix = CreatePed(4, PedModel, NPCcoords.x, NPCcoords.y, NPCcoords.z, PlayerHeading, true, false)
local PedSeven = CreatePed(4, PedModel, NPCcoords.x, NPCcoords.y, NPCcoords.z, PlayerHeading, true, false)
local PedEight = CreatePed(4, PedModel, NPCcoords.x, NPCcoords.y, NPCcoords.z, PlayerHeading, true, false)
local PedNine = CreatePed(4, PedModel, NPCcoords.x, NPCcoords.y, NPCcoords.z, PlayerHeading, true, false)
local PedTen = CreatePed(4, PedModel, NPCcoords.x, NPCcoords.y, NPCcoords.z, PlayerHeading, true, false)

    TaskFollowToOffsetOfEntity(PedOne, PlayerPed, 0.0, 0.0, 0.0, 2.0, -1, 3.0, true)
SetPedFleeAttributes(PedOne, 0, false)
SetPedCombatAttributes(PedOne, 46, false)
SetPedCanBeTargetted(PedOne, false)
SetBlockingOfNonTemporaryEvents(PedOne, true)

    TaskFollowToOffsetOfEntity(PedTwo, PlayerPed, 0.0, 0.0, 0.0, 2.0, -1, 3.0, true)
SetPedFleeAttributes(PedTwo, 0, false)
SetPedCombatAttributes(PedTwo, 46, false)
SetPedCanBeTargetted(PedTwo, false)
SetBlockingOfNonTemporaryEvents(PedTwo, true)

    TaskFollowToOffsetOfEntity(PedThree, PlayerPed, 0.0, 0.0, 0.0, 2.0, -1, 3.0, true)
SetPedFleeAttributes(PedThree, 0, false)
SetPedCombatAttributes(PedThree, 46, false)
SetPedCanBeTargetted(PedThree, false)
SetBlockingOfNonTemporaryEvents(PedThree, true)

    TaskFollowToOffsetOfEntity(PedFour, PlayerPed, 0.0, 0.0, 0.0, 2.0, -1, 3.0, true)
SetPedFleeAttributes(PedFour, 0, false)
SetPedCombatAttributes(PedFour, 46, false)
SetPedCanBeTargetted(PedFour, false)
SetBlockingOfNonTemporaryEvents(PedFour, true)

    TaskFollowToOffsetOfEntity(PedFive, PlayerPed, 0.0, 0.0, 0.0, 2.0, -1, 3.0, true)
SetPedFleeAttributes(PedFive, 0, false)
SetPedCombatAttributes(PedFive, 46, false)
SetPedCanBeTargetted(PedFive, false)
SetBlockingOfNonTemporaryEvents(PedFive, true)

    TaskFollowToOffsetOfEntity(PedSix, PlayerPed, 0.0, 0.0, 0.0, 2.0, -1, 3.0, true)
SetPedFleeAttributes(PedSix, 0, false)
SetPedCombatAttributes(PedSix, 46, false)
SetPedCanBeTargetted(PedSix, false)
SetBlockingOfNonTemporaryEvents(PedSix, true)

    TaskFollowToOffsetOfEntity(PedSeven, PlayerPed, 0.0, 0.0, 0.0, 2.0, -1, 3.0, true)
SetPedFleeAttributes(PedSeven, 0, false)
SetPedCombatAttributes(PedSeven, 46, false)
SetPedCanBeTargetted(PedSeven, false)
SetBlockingOfNonTemporaryEvents(PedSeven, true)

    TaskFollowToOffsetOfEntity(PedEight, PlayerPed, 0.0, 0.0, 0.0, 2.0, -1, 3.0, true)
SetPedFleeAttributes(PedEight, 0, false)
SetPedCombatAttributes(PedEight, 46, false)
SetPedCanBeTargetted(PedEight, false)
SetBlockingOfNonTemporaryEvents(PedEight, true)

    TaskFollowToOffsetOfEntity(PedNine, PlayerPed, 0.0, 0.0, 0.0, 2.0, -1, 3.0, true)
SetPedFleeAttributes(PedNine, 0, false)
SetPedCombatAttributes(PedNine, 46, false)
SetPedCanBeTargetted(PedNine, false)
SetBlockingOfNonTemporaryEvents(PedNine, true)

    TaskFollowToOffsetOfEntity(PedTen, PlayerPed, 0.0, 0.0, 0.0, 2.0, -1, 3.0, true)
SetPedFleeAttributes(PedTen, 0, false)
SetPedCombatAttributes(PedTen, 46, false)
SetPedCanBeTargetted(PedTen, false)
SetBlockingOfNonTemporaryEvents(PedTen, true)
end

local function ScriptStarted()
    print('NPC SPAWNER STARTED')
end

RegisterCommand('npcspawn', function()
    NPCSpawn() 
end, false)

ScriptStarted()