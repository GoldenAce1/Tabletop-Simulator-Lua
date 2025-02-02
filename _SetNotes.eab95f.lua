local GlobalVariablesId = '7fc89f'
local ControlPanelVariablesId = 'bf1ea5'
local PhaseControllerId = '5db38d'
local AHBoardId = '1d5b69'
local GreatOOScriptingZoneId = '9af796'
local GlobalVariables = getObjectFromGUID(GlobalVariablesId)

NumberFramesMythosCount = 0
local onLoadGetMythos = false

MonstersInArkhamText = ''
GatesInArkhamText = ''
FedsRaidText = ''
DeepOnesRisingText = ''
DHorrorText = ''
DoomTokensText = ''

-- Used as a switch to check if the figurine is in a location
local switch_locations = {
    ["Ye Olde Magick Shoppe"] = function (x)  end,
    ["Woods"] = function (x)  end,
    ["Historical Society"] = function (x)  end,
    ["South Church"] = function (x)  end,
    ["Ma's Boarding House"] = function (x)  end,
    ["Southside Streets"] = function (x)  end,
    ["Uptown Streets"] = function (x)  end,
    ["St. Mary's Hospital"] = function (x)  end,
    ["Administration"] = function (x)  end,
    ["Library"] = function (x)  end,
    ["Science Building"] = function (x)  end,
    ["Silver Twilight Lodge"] = function (x)  end,
    ["The Witch House"] = function (x)  end,
    ["French Hill Streets"] = function (x)  end,
    ["Miskatonic University Streets"] = function (x)  end,
    ["River Docks"] = function (x)  end,
    ["The Unnamable"] = function (x)  end,
    ["General Store"] = function (x)  end,
    ["Black Cave"] = function (x)  end,
    ["Graveyard"] = function (x)  end,
    ["Rivertown Streets"] = function (x)  end,
    ["Merchant District Streets"] = function (x)  end,
    ["Unvisited Isle"] = function (x)  end,
    ["Curiositie Shoppe"] = function (x)  end,
    ["Easttown Streets"] = function (x)  end,
    ["Police Station"] = function (x)  end,
    ["Velma's Diner"] = function (x)  end,
    ["Hibb's Roadhouse"] = function (x)  end,
    ["Downtown Streets"] = function (x)  end,
    ["Northside Streets"] = function (x)  end,
    ["Newspaper"] = function (x)  end,
    ["Train Station"] = function (x)  end,
    ["Bank of Arkham"] = function (x)  end,
    ["Arkham Asylum"] = function (x)  end,
    ["Independence Square"] = function (x)  end,
    ["Another Dimention"] = function (x)  end,
    ["Abyss"] = function (x)  end,
    ["City of the Great Race"] = function (x)  end,
    ["Yuggoth"] = function (x)  end,
    ["Great Hall of Celeano"] = function (x)  end,
    ["The Dreamlands"] = function (x)  end,
    ["Plateau of Leng"] = function (x)  end,
    ["R'lyeh"] = function (x)  end,
    ["Falcon Point"] = function (x)  end,
    ["Innsmouth Shore Streets"] = function (x)  end,
    ["Marsh Refinery"] = function (x)  end,
    ["Gilman House Hotel"] = function (x)  end,
    ["First National Grocery"] = function (x)  end,
    ["Factory District Streets"] = function (x)  end,
    ["Church Green Streets"] = function (x)  end,
    ["Joe Sargent's Bus Service"] = function (x)  end,
    ["Y'ha-Nthlei"] = function (x)  end,
    ["Devil Reef"] = function (x)  end,
    ["Esoteric Order of Dagon"] = function (x)  end,
    ["Sawbone Alley"] = function (x)  end,
    ["Innsmouth Jail"] = function (x)  end,
    ["Darke's Carnival"] = function (x)  end,
    ["Bishop's Brook Bridge"] = function (x)  end,
    ["Dunwich Village"] = function (x)  end,
    ["Harney Jones' Shack"] = function (x)  end,
    ["Cold Spring Glen"] = function (x)  end,
    ["Village Commons Streets"] = function (x)  end,
    ["Devil's Hopyard"] = function (x)  end,
    ["Blasted Heath Streets"] = function (x)  end,
    ["Sentinel Hill"] = function (x)  end,
    ["Backwoods Country Streets"] = function (x)  end,
    ["Wizard's Hill"] = function (x)  end,
    ["Whateley Farm"] = function (x)  end,
    ["Gardners' Place"] = function (x)  end,
    ["Another Time"] = function (x)  end,
    ["Lost Carcosa"] = function (x)  end,
    ["Neil's Curiosity Shop"] = function (x)  end,
    ["The Hall School"] = function (x)  end,
    ["Artists' Colony"] = function (x)  end,
    ["7th House on the left"] = function (x)  end,
    ["Congregational Hospital"] = function (x)  end,
    ["Central Hill Streets"] = function (x)  end,
    ["South Shore Streets"] = function (x)  end,
    ["The Causeway"] = function (x)  end,
    ["Harborside Streets"] = function (x)  end,
    ["St. Erasmus's Home"] = function (x)  end,
    ["607 Water St"] = function (x)  end,
    ["The Rope and Anchor"] = function (x)  end,
    ["North Point Lighthouse"] = function (x)  end,
    ["Wireless Station"] = function (x)  end,
    ["Strange High House in The Mist"] = function (x)  end,
    ["The Underworld"] = function (x)  end,
    ["Unknown Kadath"] = function (x)  end,
    ["Arkham Horror Core Board"] = function (x)  end,
    ["default"] = function (x)  end
}
-- loops the available investigators, sends to the function,
-- sends notebook to screen
function getPlacements(variableTable)

    local players = variableTable[1]
    local nrPlayers = variableTable[2]
    local NumberFramesMythosCount = variableTable[3]
    local onLoadGetMythos = variableTable[4]

    local notebook = '[sub]'
    --Current Phase
    local PhaseController = getObjectFromGUID(PhaseControllerId)
    local CurrentPhase = PhaseController.call('getCurrentPhase')

    if CurrentPhase ~= nil then
        notebook = notebook .. 'Current Phase: ' .. CurrentPhase .. '\n-----------------\n'
    else
        notebook = notebook .. 'Current Phase:      ' .. '\n-----------------\n'
    end

    -- # Active Investigators
    notebook = notebook ..'Nr of active Investigators: ' .. nrPlayers .. '\n-----------------\n'

    -- # Active Investigators
    notebook = notebook ..'Investigators: \n'

    for _,investigatorID in ipairs(players) do
        local theInvestigator = getObjectFromGUID(investigatorID)
        notebook = notebook.. " "..formatNotebook(theInvestigator)
        notebook = notebook.. " ".."\n"
    end

    local ControlPanelVariables = getObjectFromGUID(ControlPanelVariablesId)
    local PharaohSet = ControlPanelVariables.call('isPharaohSet')
    -- Innsmouth Horror (if Innsmouth Horror is on Board)
    local InnsmouthSet = ControlPanelVariables.call('isInnsmouthSet')
    -- Dunwich Horror (if Dunwich Horror is on Board)
    local DunwichSet = ControlPanelVariables.call('isDunwichSet')

    -- # Doom Tokens
    if CurrentPhase == 'Mythos' and NumberFramesMythosCount == 2 then
        notebook = notebook.. "-----------------\n"
        notebook = notebook.. " "..formatNotebookDoomTokens(InnsmouthSet)
        -- notebook = notebook.. "-----------------\n"
    else
        notebook = notebook.. "-----------------\n"
        notebook = notebook.. " ".. '[ffffff] ' .. DoomTokensText
        -- notebook = notebook.. "-----------------\n"
    end

    -- Fixing a bug when you load a game and it will only show you the number
    -- of monsters in Arkham in your Mythos phase
    if onLoadGetMythos == true then
        notebook = notebook.. "\n-----------------"
        notebook = notebook.. " "..formatNotebookDoomTokens(InnsmouthSet) .. "\n"
    end

    -- Ancient Whispers (if The Curse of The Dark Pharaoh Revised is on Board)

    if PharaohSet == true then
        notebook = notebook.. "-----------------".."\n"
        notebook = notebook.. " "..formatNotebookAncientWhipers()
    end

    if InnsmouthSet == true then
        if (CurrentPhase == 'Mythos' and NumberFramesMythosCount == 2)
        or (onLoadGetMythos == true) then
            formatNotebookInnsmouthHorror()
        end
        notebook = notebook.. "-----------------".."\n"
        notebook =  notebook.. '[ffffff] ' .. FedsRaidText .. '\n' .. DeepOnesRisingText .."\n"
    end


    if DunwichSet == true then
        if (CurrentPhase == 'Mythos' and NumberFramesMythosCount == 2)
        or (onLoadGetMythos == true) then
            formatNotebookDunwichHorror()
        end
        notebook = notebook.. "-----------------".."\n"
        notebook =  notebook.. '[ffffff] ' .. DHorrorText .. '\n'
    end

    -- Monster count is only made in mythos Phase or on load

    if CurrentPhase == 'Mythos' and NumberFramesMythosCount == 2 then
        notebook = notebook.. "-----------------\n"
        notebook = notebook.. " "..formatNotebookMonstersInArkham()
    else
        notebook = notebook.. "-----------------\n"
        notebook = notebook.. " ".. '[ffffff] ' .. MonstersInArkhamText
    end

    -- Fixing a bug when you load a game and it will only show you the number
    -- of monsters in Arkham in your Mythos phase
    if onLoadGetMythos == true then
        notebook = notebook.. "\n-----------------"
        notebook = notebook.. " "..formatNotebookMonstersInArkham()
    end

    notebook = notebook.. " "..CountMonstersInOutskirts()
    notebook = notebook.. "\n-----------------".."\n"

    -- Gate count is only made in mythos Phase or on load

    if CurrentPhase == 'Mythos' and NumberFramesMythosCount == 2 then
        notebook = notebook.. "-----------------\n"
        notebook = notebook.. " "..formatNotebookGates()
    else
        notebook = notebook.. "-----------------\n"
        notebook = notebook.. " ".. '[ffffff] ' .. GatesInArkhamText
    end

    -- Fixing a bug when you load a game and it will only show you the number
    -- of gates in arkham in your Mythos phase
    if onLoadGetMythos == true then
        notebook = notebook.. "\n-----------------"
        notebook = notebook.. " "..formatNotebookGates()
    end

    notebook = notebook.. "\n"
    -- Terror Level

    AHBoard = getObjectFromGUID(AHBoardId)

    local TerrorTrack = AHBoard.call('getCurrentPositionTerror')

    if TerrorTrack <= 3 then
        notebook =  notebook.. 'Terror level: '..'[375A05] ' .. TerrorTrack .. '[ffffff] '
    else
        if TerrorTrack > 3 and TerrorTrack <= 6 then
            notebook =  notebook.. 'Terror level: '..'[CAC00C] ' .. TerrorTrack .. '[ffffff] '
        else
            notebook =  notebook.. 'Terror level: '..'[CA2C0C] ' .. TerrorTrack .. '[ffffff] '
        end

    end

    notebook = notebook ..'[/sub]'
    setNotes(notebook)
    -- return notebook
end

local function Switch_All_Locations(statement, input)

    if statement[input] ~= nil then
        statement[input]()
        return true
    else
        statement.default()
    end
end
-- Receives the investigator, generates his notebook line
function formatNotebook(theInvestigator)
    -- Stupid onUpdate does not get variables declared outside....
    GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local ending = ''
    local color = ''
    local notebook = ''

    if theInvestigator ~= nil then
        local currentTile = theInvestigator.call('getCurrentTile')

        local InvestigatorName = theInvestigator.getName()

        local investigator_locations = Switch_All_Locations(switch_locations,currentTile)

        if investigator_locations == true then
            --We know he is in a location
            --Is he in an other World?
            local investigator_Other_World = GlobalVariables.call('isInvestigatorInOtherWorld', currentTile)

            if investigator_Other_World == true then

                local colors = GlobalVariables.call('getOtherWorldColor', currentTile)

                notebook =  notebook.. '[ffffff] ' .. InvestigatorName .. " " .. 'is in '.. '[B1B1B1]' .. currentTile .. ' ' .. colors .. ending .. '[ffffff] '

            else
                local color =  GlobalVariables.call('getLocationsColor', currentTile)
                if currentTile == 'Arkham Horror Core Board' then
                    currentTile = 'Lost in time and Space'
                    notebook =  notebook.. '[ffffff] ' .. InvestigatorName .. " is " .. color .. currentTile .. ending .. '[ffffff] '
                else
                    local board = GlobalVariables.call('getInvestigatorBoard', currentTile)
                    notebook =  notebook.. '[ffffff] ' .. InvestigatorName .. " is in " .. board .. ": " .. color .. currentTile .. ending .. '[ffffff] '
                end
            end
        else
            notebook =  notebook.. '[ffffff] ' .. InvestigatorName .. " " .. 'is Not on board' .. ending .. '[ffffff] '
        end
    else
        notebook =  notebook.. '[ffffff] ' .. 'Remove figurine from bag' .. ending .. '[ffffff] '
    end
    return notebook
end

function formatNotebookAncientWhipers()
    -- Stupid onUpdate does not get variables declared outside....
    local PharaohVariables = getObjectFromGUID('43e2a0')
    GlobalVariables = getObjectFromGUID(GlobalVariablesId)

    local ending = ''
    local color = ''
    local notebook = ''

    local PharaohAncientWhispersId = PharaohVariables.call('getPharaohAncientWhispersTokenId')
    local PharaohAncientWhispers = getObjectFromGUID(PharaohAncientWhispersId)

    if PharaohAncientWhispers ~= nil then

        local currentTile = PharaohAncientWhispers.call('getCurrentTile')
        local PharaohAncientWhispersName = PharaohAncientWhispers.getName()

        local PharaohAncientWhispers_locations = Switch_All_Locations(switch_locations,currentTile)
        if PharaohAncientWhispers_locations == true then
            local color =  GlobalVariables.call('getLocationsColor', currentTile)
            if currentTile == 'Arkham Horror Core Board' then
                notebook =  notebook.. '[ffffff] ' .. PharaohAncientWhispersName .. " " .. '[b]must be[/b] in a street area' .. ending .. '[ffffff] '
            else
                notebook =  notebook.. '[ffffff] ' .. PharaohAncientWhispersName .. " is in " .. ": " .. color .. currentTile .. ending .. '[ffffff] '
            end
        end
    end

    return notebook
end

function formatNotebookInnsmouthHorror()

    local ScriptingZonesExpansions = getObjectFromGUID('70a568')
    local DeepRisingScrZoneId = ScriptingZonesExpansions.call('getInnsmouthScrZoneDeepRisingid')
    local DeepRisingScrZone = getObjectFromGUID(DeepRisingScrZoneId)

    local FedsRaid = 0
    local DeepOnesRising = 0

    local ending = ''
    local color = ''
    local notebook = ''

    if DeepRisingScrZone ~= nil then
        local objectsInZone = DeepRisingScrZone.getObjects()

        if objectsInZone ~= nil then
            for _,obj in ipairs(objectsInZone) do
                local objName = obj.getName()
                if objName ~= nil then
                    if obj.getName() == 'Uprising Token' then
                        DeepOnesRising = DeepOnesRising + 1
                    end

                    local isSubStr = isSubstring(objName, 'Clue')

                    if isSubStr == true then
                        FedsRaid = FedsRaid + 1
                    end
                end
            end
        end

        if FedsRaid <= 1 then
            FedsRaidText = "#Feds Raid Innsmouth Clues : " .. '[CA2C0C]' .. FedsRaid .. ending .. '[ffffff] '

        else
            if FedsRaid > 1 and FedsRaid <= 3 then
                FedsRaidText = "#Feds Raid Innsmouth Clues : " .. '[CAC00C]' .. FedsRaid .. ending .. '[ffffff] '
            else
                FedsRaidText = "#Feds Raid Innsmouth Clues : " .. '[375A05]' .. FedsRaid .. ending .. '[ffffff] '
            end
        end

        if DeepOnesRising <= 1 then
            DeepOnesRisingText = "#Deep Ones Rising Track : " .. '[375A05]' .. DeepOnesRising .. ending .. '[ffffff] '
        else
            if DeepOnesRising > 1 and DeepOnesRising <= 3 then
                DeepOnesRisingText = "#Deep Ones Rising Track : " .. '[CAC00C]' .. DeepOnesRising .. ending .. '[ffffff] '
            else
                DeepOnesRisingText = "#Deep Ones Rising Track : " .. '[CA2C0C]' .. DeepOnesRising .. ending .. '[ffffff] '
            end
        end
    end

    notebook =  notebook.. '[ffffff] ' .. FedsRaidText .. '\n' .. DeepOnesRisingText

    return notebook
end

function formatNotebookDunwichHorror()

    local ScriptingZonesExpansions = getObjectFromGUID('70a568')
    local DHorrorScrZoneId = ScriptingZonesExpansions.call('getDunwichScrZoneDHorrorid')
    local DHorrorScrZone = getObjectFromGUID(DHorrorScrZoneId)

    local DunwichHorrorTokens = 0

    local ending = ''
    local color = ''
    local notebook = ''

    if DHorrorScrZone ~= nil then
        local objectsInZone = DHorrorScrZone.getObjects()

        if objectsInZone ~= nil then
            for _,obj in ipairs(objectsInZone) do
                local objName = obj.getName()
                if objName ~= nil then
                    if obj.getName() == 'Dunwich Horror Tokens' then
                        DunwichHorrorTokens = DunwichHorrorTokens + 1
                    end
                end
            end
        end

        if DunwichHorrorTokens <= 1 then
            DHorrorText = "#Dunwich Horror Tokens : " .. '[375A05]' .. DunwichHorrorTokens .. ending .. '[ffffff] '
        else
            if DunwichHorrorTokens == 2 then
                DHorrorText = "#Dunwich Horror Tokens : " .. '[CAC00C]' .. DunwichHorrorTokens .. ending .. '[ffffff] '
            else
                DHorrorText = "#Dunwich Horror Tokens : " .. '[CA2C0C]' .. DunwichHorrorTokens .. ending .. '[ffffff] '
            end
        end
    end
    notebook =  notebook.. '[ffffff] ' .. DHorrorText

    return notebook
end

function formatNotebookDoomTokens(InnsmouthSet)
    local GreatOOScriptingZone = getObjectFromGUID(GreatOOScriptingZoneId)

    local ending = ''
    local notebook = ''

    DoomTokens = 0

    --Get All objects from the selected Scripting Zone
    local objectsInZone = GreatOOScriptingZone.getObjects()

    for _, obj in pairs(objectsInZone) do
        if obj.getName() == 'Doom Token' then
            DoomTokens = DoomTokens + 1
        end
    end

    if DoomTokens <= 3 then
        DoomTokensText = "#Doom Tokens : " .. '[375A05]' .. DoomTokens .. ending .. '[ffffff] ' .. "\n"
    else
        if DoomTokens > 3 and DoomTokens <= 6 then
            DoomTokensText = "#Doom Tokens : " .. '[CAC00C]' .. DoomTokens .. ending .. '[ffffff] ' .. "\n"
        else
            DoomTokensText = "#Doom Tokens : " .. '[CA2C0C]' .. DoomTokens .. ending .. '[ffffff] ' .. "\n"
            if InnsmouthSet == true then
                DoomTokensText =  DoomTokensText.. '[CA2C0C] Check in Innsmouth is under Matrial Law'  .. '[ffffff] ' .. "\n"
            end
        end
    end

    notebook =  notebook.. '[ffffff] ' .. DoomTokensText

    return notebook
end


function formatNotebookMonstersInArkham()
    GlobalVariables = getObjectFromGUID(GlobalVariablesId)

    local ScriptingZonesTable =  GlobalVariables.call('getArkhamScriptingZones')

    local ending = ''
    local notebook = ''

    MonstersInArkham = 0

    -- A total of 35 Zones + Sky
    for _, zoneId in pairs(ScriptingZonesTable) do

        local zone = getObjectFromGUID(zoneId)

        --Get All objects from the selected Scripting Zone
        local objectsInZone = zone.getObjects()

        -- There aren't that many Objects in each zone, so, this is not too heavy
        -- I hope......
        for _, obj in pairs(objectsInZone) do
            if obj.getDescription() == 'Monster' then
                MonstersInArkham = MonstersInArkham + 1
            end
        end
    end

    if MonstersInArkham <= 1 then
        MonstersInArkhamText = "#Monsters in Arkham : " .. '[375A05]' .. MonstersInArkham .. ending .. '[ffffff] '
    else
        if MonstersInArkham > 1 and MonstersInArkham <= 3 then
            MonstersInArkhamText = "#Monsters in Arkham : " .. '[CAC00C]' .. MonstersInArkham .. ending .. '[ffffff] '
        else
            MonstersInArkhamText = "#Monsters in Arkham : " .. '[CA2C0C]' .. MonstersInArkham .. ending .. '[ffffff] '
        end
    end

    -- MonstersInArkhamText = "#Monsters in Arkham : " .. '[808080]' .. MonstersInArkham .. ending .. '[ffffff] '

    notebook =  notebook.. '[ffffff] ' .. MonstersInArkhamText

    return notebook
end

function CountMonstersInOutskirts()

    local ending = ''
    local notebook = ''

    GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local OutskirtsScriptingZoneId =  GlobalVariables.call('getOutskirtsScriptingZoneId')

    local OutskirtsScriptingZone = getObjectFromGUID(OutskirtsScriptingZoneId)

    local ObjectsOutskirtsScriptingZone = OutskirtsScriptingZone.getObjects()
    -- Zone.getObjects() returns {Object, ...}

    MonstersInOutskirts = 0

    if ObjectsOutskirtsScriptingZone ~= nil then
        for _, obj in pairs(ObjectsOutskirtsScriptingZone) do
            if obj.getDescription() == 'Monster' then
                MonstersInOutskirts = MonstersInOutskirts + 1
            end
        end
    end

    if MonstersInOutskirts == 0 then
        notebook =  notebook.. '[ffffff] ' .. "#Monsters in the Outskirts : " .. '[375A05]' .. MonstersInOutskirts .. ending .. '[ffffff] '
    else
        if MonstersInOutskirts >= 1 and MonstersInOutskirts <= 2 then
            notebook =  notebook.. '[ffffff] ' .. "#Monsters in the Outskirts : " .. '[CAC00C]' .. MonstersInOutskirts .. ending .. '[ffffff] '
        else
            notebook =  notebook.. '[ffffff] ' .. "#Monsters in the Outskirts : " .. '[CA2C0C]' .. MonstersInOutskirts .. ending .. '[ffffff] '
        end
    end
    return notebook
end

function formatNotebookGates()

    GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local ScriptingZonesTable =  GlobalVariables.call('getArkhamScriptingZones')

    local ending = ''
    local notebook = ''

    GatesInArkham = 0

    -- A total of 35 Zones + Sky
    for _, zoneId in pairs(ScriptingZonesTable) do

        local zone = getObjectFromGUID(zoneId)
        --Get All objects from the selected Scripting Zone
        local objectsInZone = zone.getObjects()

        -- There aren't that many Objects in each zone, so, this is not too heavy
        -- I hope......
        for _, obj in pairs(objectsInZone) do
            if obj.getDescription() == 'Gate Marker' then
                GatesInArkham = GatesInArkham + 1
            end
        end
    end

    local ControlPanelVariables = getObjectFromGUID(ControlPanelVariablesId)
    local InnsmouthSet = ControlPanelVariables.call('isInnsmouthSet')
    local DunwichSet = ControlPanelVariables.call('isDunwichSet')

    local ScriptingZonesExpansions = getObjectFromGUID('70a568')

    if InnsmouthSet == true then

        local InnsmouthScrZoneMarshRefineryId = ScriptingZonesExpansions.call('getInnsmouthScrZoneMarshRefineryid')
        local InnsmouthScrZoneMarshRefinery = getObjectFromGUID(InnsmouthScrZoneMarshRefineryId)
        if InnsmouthScrZoneMarshRefinery ~= nil then
            local InnsmouthScrZoneMarshRefineryObj = InnsmouthScrZoneMarshRefinery.getObjects()
        end

        if InnsmouthScrZoneMarshRefineryObj ~= nil then
            for _, obj in pairs(InnsmouthScrZoneMarshRefineryObj) do
                if obj.getDescription() == 'Gate Marker' then
                    GatesInArkham = GatesInArkham + 1
                end
            end
        end

        local InnsmouthScrZoneEsotericDagonId = ScriptingZonesExpansions.call('getInnsmouthScrZoneEsotericDagonid')
        local InnsmouthScrZoneEsotericDagon = getObjectFromGUID(InnsmouthScrZoneEsotericDagonId)

        if InnsmouthScrZoneEsotericDagon ~= nil then
            local InnsmouthScrZoneEsotericDagonObj = InnsmouthScrZoneEsotericDagon.getObjects()
        end

        if InnsmouthScrZoneEsotericDagonObj ~= nil then
            for _, obj in pairs(InnsmouthScrZoneEsotericDagonObj) do
                if obj.getDescription() == 'Gate Marker' then
                    GatesInArkham = GatesInArkham + 1
                end
            end
        end

        local InnsmouthScrZoneDevilReefId = ScriptingZonesExpansions.call('getInnsmouthScrZoneDevilReefid')
        local InnsmouthScrZoneDevilReef = getObjectFromGUID(InnsmouthScrZoneDevilReefId)

        if InnsmouthScrZoneDevilReef ~= nil then
            local InnsmouthScrZoneDevilReefObj = InnsmouthScrZoneDevilReef.getObjects()
        end

        if InnsmouthScrZoneDevilReefObj ~= nil then
            for _, obj in pairs(InnsmouthScrZoneDevilReefObj) do
                if obj.getDescription() == 'Gate Marker' then
                    GatesInArkham = GatesInArkham + 1
                end
            end
        end

        local InnsmouthScrZoneYhaNthleiId = ScriptingZonesExpansions.call('getInnsmouthScrZoneYhaNthleiid')
        local InnsmouthScrZoneYhaNthlei = getObjectFromGUID(InnsmouthScrZoneYhaNthleiId)

        if InnsmouthScrZoneYhaNthlei ~= nil then
            local InnsmouthScrZoneYhaNthleiObj = InnsmouthScrZoneYhaNthlei.getObjects()
        end

        if InnsmouthScrZoneYhaNthleiObj ~= nil then
            for _, obj in pairs(InnsmouthScrZoneYhaNthleiObj) do
                if obj.getDescription() == 'Gate Marker' then
                    GatesInArkham = GatesInArkham + 1
                end
            end
        end
    end

    if DunwichSet == true then

        local DunwichScrZoneWhateleyFarmId = ScriptingZonesExpansions.call('getDunwichScrZoneWhateleyFarmid')
        local DunwichScrZoneWhateleyFarm = getObjectFromGUID(DunwichScrZoneWhateleyFarmId)

        if DunwichScrZoneWhateleyFarm ~= nil then
            local DunwichScrZoneWhateleyFarmObj = DunwichScrZoneWhateleyFarm.getObjects()
        end

        if DunwichScrZoneWhateleyFarmObj ~= nil then
            for _, obj in pairs(DunwichScrZoneWhateleyFarmObj) do
                if obj.getDescription() == 'Gate Marker' then
                    GatesInArkham = GatesInArkham + 1
                end
            end
        end

        local DunwichScrZoneWizardsHillId = ScriptingZonesExpansions.call('getDunwichScrZoneWizardsHillid')
        local DunwichScrZoneWizardsHill = getObjectFromGUID(DunwichScrZoneWizardsHillId)

        if DunwichScrZoneWizardsHill ~= nil then
            local DunwichScrZoneWizardsHillObj = DunwichScrZoneWizardsHill.getObjects()
        end

        if DunwichScrZoneWizardsHillObj ~= nil then
            for _, obj in pairs(DunwichScrZoneWizardsHillObj) do
                if obj.getDescription() == 'Gate Marker' then
                    GatesInArkham = GatesInArkham + 1
                end
            end
        end

        local DunwichScrZoneColdSpringId = ScriptingZonesExpansions.call('getDunwichScrZoneColdSpringid')
        local DunwichScrZoneColdSpring = getObjectFromGUID(DunwichScrZoneColdSpringId)

        if DunwichScrZoneColdSpring ~= nil then
            local DunwichScrZoneColdSpringObj = DunwichScrZoneColdSpring.getObjects()
        end

        if DunwichScrZoneColdSpringObj ~= nil then
            for _, obj in pairs(DunwichScrZoneColdSpringObj) do
                if obj.getDescription() == 'Gate Marker' then
                    GatesInArkham = GatesInArkham + 1
                end
            end
        end

        local DunwichScrZoneGardnersPlaceId = ScriptingZonesExpansions.call('getDunwichScrZoneGardnersPlaceid')
        local DunwichScrZoneGardnersPlace = getObjectFromGUID(DunwichScrZoneGardnersPlaceId)

        if DunwichScrZoneGardnersPlace ~= nil then
            local DunwichScrZoneGardnersPlaceObj = DunwichScrZoneGardnersPlace.getObjects()
        end

        if DunwichScrZoneGardnersPlaceObj ~= nil then
            for _, obj in pairs(DunwichScrZoneGardnersPlaceObj) do
                if obj.getDescription() == 'Gate Marker' then
                    GatesInArkham = GatesInArkham + 1
                end
            end
        end

        local DunwichScrZoneDevilsHopyardId = ScriptingZonesExpansions.call('getDunwichScrZoneDevilsHopyardid')
        local DunwichScrZoneDevilsHopyard = getObjectFromGUID(DunwichScrZoneDevilsHopyardId)

        if DunwichScrZoneDevilsHopyard ~= nil then
            local DunwichScrZoneDevilsHopyardObj = DunwichScrZoneDevilsHopyard.getObjects()
        end

        if DunwichScrZoneDevilsHopyardObj ~= nil then
            for _, obj in pairs(DunwichScrZoneDevilsHopyardObj) do
                if obj.getDescription() == 'Gate Marker' then
                    GatesInArkham = GatesInArkham + 1
                end
            end
        end
    end

    if GatesInArkham <= 2 then
        GatesInArkhamText = "#Gates in Arkham : " .. '[375A05]' .. GatesInArkham .. ending .. '[ffffff] '
    else
        if GatesInArkham >= 3 and GatesInArkham <= 5 then
            GatesInArkhamText = "#Gates in Arkham : " .. '[CAC00C]' .. GatesInArkham .. ending .. '[ffffff] '
        else
            GatesInArkhamText = "#Gates in Arkham : " .. '[CA2C0C]' .. GatesInArkham .. ending .. '[ffffff] '
        end
    end

    notebook =  notebook.. '[ffffff] ' .. GatesInArkhamText

    return notebook
end

require("Strings")