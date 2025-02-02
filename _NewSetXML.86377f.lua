--local GlobalVariablesId = '7fc89f'
--local ControlPanelVariablesId = 'bf1ea5'

local GlobalVariablesId = '7fc89f'
GlobalVariables = getObjectFromGUID(GlobalVariablesId)
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
KHorrorText = ''
DoomTokensText = ''
oldNotes = ''

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

function getCurrentPhase()
    --Current Phase
    local PhaseController = getObjectFromGUID(PhaseControllerId)
    local CurrentPhase = PhaseController.call('getCurrentPhase')
    
    local CurrentPhaseText = ''
    if CurrentPhase ~= nil then
        CurrentPhaseText =  CurrentPhase
    else
        CurrentPhaseText =  '<b>Current Phase:</b> Mythos'
    end
    
    return CurrentPhaseText
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
function GetLocationInvestigator(theInvestigator)
    
    -- Stupid onUpdate does not get variables declared outside....
    GlobalVariables = getObjectFromGUID(GlobalVariablesId)   
    
    local currentTile = ''
    local ArkhamTextColor = ''
    local playerEncounterType = ''
    local OWcolors = {}
    
    if theInvestigator ~= nil then
        currentTile = theInvestigator.call('getCurrentTile')
        local investigator_locations = Switch_All_Locations(switch_locations,currentTile)
        if investigator_locations == true then
            --We know he is in a location
            --Is he in an other World?
            BoardVariables = getObjectFromGUID('1b6b2d')
            local locationVariables = BoardVariables.call('getLocationDetails', {currentTile})
            
            playerEncounterType = locationVariables[4]
            
            if playerEncounterType == 'Otherworld' then
                
                OWcolors = GlobalVariables.call('getOtherWorldColorArrayXML', currentTile)
                
                ArkhamTextColor = "#B1B1B1"
                
            else
                ArkhamTextColor =  GlobalVariables.call('getLocationsColorXML', currentTile)
                
                if currentTile == 'Arkham Horror Core Board' then
                    currentTile = 'Lost in time and Space'
                    ArkhamTextColor = "#B1B1B1"
                    OWcolors = {}
                end
            end
        else
            investigatortext = 'is Not on board'
            ArkhamTextColor = "#B1B1B1"
            OWcolors = {}
        end
    else
        investigatortext =  'Remove figurine from bag'
        ArkhamTextColor = "#B1B1B1"
        OWcolors = {} 
    end
    --1 - Location
    --2 - OW/Arkham
    --3 - Text Color
    --4 - List (Otherworld Colors)
    
    --Because "Attempt to perform operations with resources owned by different scripts"
    local OWcolors1 = {}
    for k,v in pairs(OWcolors) do
        OWcolors1[k] = v
    end
    
    local ReturnedText = {}
    ReturnedText[1] = currentTile
    ReturnedText[2] = playerEncounterType
    ReturnedText[3] = ArkhamTextColor
    ReturnedText[4] = OWcolors1
    
    return ReturnedText
end

function GetAncientWhipers()
    -- Stupid onUpdate does not get variables declared outside....
    local GlobalVariablesId = '7fc89f'
    GlobalVariables = getObjectFromGUID(GlobalVariablesId)

    AncientWhispersArray ={}
    
    local PharaohAncientWhispersId = GlobalVariables.call('getPharaohAncientWhispersTokenId')
    local PharaohAncientWhispers = getObjectFromGUID(PharaohAncientWhispersId)
    local color = ''
    
    if PharaohAncientWhispers ~= nil then
        
        local currentTile = PharaohAncientWhispers.call('getCurrentTile')
        local PharaohAncientWhispers_locations = Switch_All_Locations(switch_locations,currentTile)
        
        if PharaohAncientWhispers_locations == true then
            color =  GlobalVariables.call('getLocationsColorXML', currentTile)
            if currentTile == 'Arkham Horror Core Board' then
                AncientWhisperstext = 'must be in a street area'
                color = "#B1B1B1"
            else
                AncientWhisperstext = currentTile
            end
        end
    end
    
    AncientWhispersArray[1] = AncientWhisperstext
    AncientWhispersArray[2] = color
    
    return AncientWhispersArray
end

function GetNumberInnsmouthHorror()
    
    local ScriptingZonesExpansions = getObjectFromGUID('70a568')
    local DeepRisingScrZoneId = ScriptingZonesExpansions.call('getInnsmouthScrZoneDeepRisingid')
    local DeepRisingScrZone = getObjectFromGUID(DeepRisingScrZoneId)
    
    local FedsRaid = 0
    local DeepOnesRising = 0
    local InnsmouthNumbers = {}
    
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
        
        InnsmouthNumbers[1] = FedsRaid
        InnsmouthNumbers[2] = DeepOnesRising
    else
        InnsmouthNumbers[1] = 0
        InnsmouthNumbers[2] = 0
    end    
        
    return InnsmouthNumbers
end

function GetNumberDunwichHorror()
    
    local ScriptingZonesExpansions = getObjectFromGUID('70a568')
    local DHorrorScrZoneId = ScriptingZonesExpansions.call('getDunwichScrZoneDHorrorid')
    local DHorrorScrZone = getObjectFromGUID(DHorrorScrZoneId)
    
    local DunwichHorrorTokens = 0
    
    if DHorrorScrZone ~= nil then
        local objectsInZone = DHorrorScrZone.getObjects()
        
        if objectsInZone ~= nil then
            for _,obj in ipairs(objectsInZone) do
                local objName = obj.getName()
                if objName ~= nil then
                    if obj.getName() == 'Dunwich Horror Token' then
                        DunwichHorrorTokens = DunwichHorrorTokens + 1
                    end
                end
            end
        end
    else
        DunwichHorrorTokens = 0
    end
    
    return DunwichHorrorTokens
end

function GetNumberDoomTokens()
    local GreatOOScriptingZone = getObjectFromGUID(GreatOOScriptingZoneId) 
    DoomTokens = 0
    
    --Get All objects from the selected Scripting Zone
    local objectsInZone = GreatOOScriptingZone.getObjects()
    
    for _, obj in pairs(objectsInZone) do
        if obj.getName() == 'Doom Token' then
            DoomTokens = DoomTokens + 1
        end
    end
    
    return DoomTokens
end


function GetNumberMonstersInArkham()
    GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    
    local ScriptingZonesTable =  GlobalVariables.call('getArkhamScriptingZones')
    
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
    
    return MonstersInArkham
end

function GetMonstersInOutskirts()
    
    GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local OutskirtsScriptingZoneId =  GlobalVariables.call('getOutskirtsScriptingZoneId')
    
    local OutskirtsScriptingZone = getObjectFromGUID(OutskirtsScriptingZoneId)
    
    local ObjectsOutskirtsScriptingZone = OutskirtsScriptingZone.getObjects()
    
    MonstersInOutskirts = 0
    
    if ObjectsOutskirtsScriptingZone ~= nil then
        for _, obj in pairs(ObjectsOutskirtsScriptingZone) do
            if obj.getDescription() == 'Monster' then
                MonstersInOutskirts = MonstersInOutskirts + 1
            end
        end
    end
    
    return MonstersInOutskirts
end

function GetTerrorLevel()
    
    -- Terror Level
    AHBoard = getObjectFromGUID(AHBoardId)
    local TerrorTrack = AHBoard.call('getCurrentPositionTerror')
    
    return TerrorTrack
    
end

function GetNumberGates()
    
    GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local ScriptingZonesTable =  GlobalVariables.call('getArkhamScriptingZones')
    
    local GatesInArkham = 0
    
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
    
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local InnsmouthSet = GlobalVariables.call('isInnsmouthSet')
    local DunwichSet = GlobalVariables.call('isDunwichSet')
    
    local ScriptingZonesExpansions = getObjectFromGUID('70a568')
    
    if InnsmouthSet == true then
        
        local InnsmouthScrZoneMarshRefineryId = ScriptingZonesExpansions.call('getInnsmouthScrZoneMarshRefineryid')
        local InnsmouthScrZoneMarshRefinery = getObjectFromGUID(InnsmouthScrZoneMarshRefineryId)
        local InnsmouthScrZoneMarshRefineryObj = ''
        if InnsmouthScrZoneMarshRefinery ~= nil then
            InnsmouthScrZoneMarshRefineryObj = InnsmouthScrZoneMarshRefinery.getObjects()
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
        local InnsmouthScrZoneEsotericDagonObj = ''
        
        if InnsmouthScrZoneEsotericDagon ~= nil then
            InnsmouthScrZoneEsotericDagonObj = InnsmouthScrZoneEsotericDagon.getObjects()
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
        local InnsmouthScrZoneDevilReefObj = ''


        if InnsmouthScrZoneDevilReef ~= nil then
            InnsmouthScrZoneDevilReefObj = InnsmouthScrZoneDevilReef.getObjects()
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
        local InnsmouthScrZoneYhaNthleiObj = ''
        
        if InnsmouthScrZoneYhaNthlei ~= nil then
            InnsmouthScrZoneYhaNthleiObj = InnsmouthScrZoneYhaNthlei.getObjects()
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
        local DunwichScrZoneWhateleyFarmObj = ''

        if DunwichScrZoneWhateleyFarm ~= nil then
            DunwichScrZoneWhateleyFarmObj = DunwichScrZoneWhateleyFarm.getObjects()
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
        local DunwichScrZoneWizardsHillObj = ''
        
        if DunwichScrZoneWizardsHill ~= nil then
            DunwichScrZoneWizardsHillObj = DunwichScrZoneWizardsHill.getObjects()
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
        local DunwichScrZoneColdSpringObj = ''
        
        if DunwichScrZoneColdSpring ~= nil then
            DunwichScrZoneColdSpringObj = DunwichScrZoneColdSpring.getObjects()
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
        local DunwichScrZoneGardnersPlaceObj = ''
        
        if DunwichScrZoneGardnersPlace ~= nil then
            DunwichScrZoneGardnersPlaceObj = DunwichScrZoneGardnersPlace.getObjects()
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
        local DunwichScrZoneDevilsHopyardObj = ''
        
        if DunwichScrZoneDevilsHopyard ~= nil then
            DunwichScrZoneDevilsHopyardObj = DunwichScrZoneDevilsHopyard.getObjects()
        end
        
        if DunwichScrZoneDevilsHopyardObj ~= nil then
            for _, obj in pairs(DunwichScrZoneDevilsHopyardObj) do
                if obj.getDescription() == 'Gate Marker' then
                    GatesInArkham = GatesInArkham + 1
                end
            end
        end
    end
    
    return GatesInArkham
    
end

function GetNumberKingsportHorror()
    
    -- Top to Bottom
    RiftProgressTokens1 = 0
    RiftProgressTokens2 = 0
    RiftProgressTokens3 = 0 
    
    local ScriptingZonesExpansions = getObjectFromGUID('70a568')
    
    local KingsportScrzoneRiftProgress1Id = ScriptingZonesExpansions.call('getKingsportScrzoneRiftProgress1id')
    local KingsportScrzoneRiftProgress1 = getObjectFromGUID(KingsportScrzoneRiftProgress1Id)
    
    local KingsportScrzoneRiftProgress1Obj
    if KingsportScrzoneRiftProgress1 ~= nil then
        KingsportScrzoneRiftProgress1Obj = KingsportScrzoneRiftProgress1.getObjects()
    end
    
    if KingsportScrzoneRiftProgress1Obj ~= nil then
        for _, obj in pairs(KingsportScrzoneRiftProgress1Obj) do
            if obj.getDescription() == 'Rift Progress Marker' then
                RiftProgressTokens1 = RiftProgressTokens1 + 1
            end
        end
    end
    
    local KingsportScrzoneRiftProgress2Id = ScriptingZonesExpansions.call('getKingsportScrzoneRiftProgress2id')
    local KingsportScrzoneRiftProgress2 = getObjectFromGUID(KingsportScrzoneRiftProgress2Id)
    local KingsportScrzoneRiftProgress2Obj
    if KingsportScrzoneRiftProgress2 ~= nil then
        KingsportScrzoneRiftProgress2Obj = KingsportScrzoneRiftProgress2.getObjects()
    end
    
    if KingsportScrzoneRiftProgress2Obj ~= nil then
        for _, obj in pairs(KingsportScrzoneRiftProgress2Obj) do
            if obj.getDescription() == 'Rift Progress Marker' then
                RiftProgressTokens2 = RiftProgressTokens2 + 1
            end
        end
    end
    
    local KingsportScrzoneRiftProgress3Id = ScriptingZonesExpansions.call('getKingsportScrzoneRiftProgress3id')
    local KingsportScrzoneRiftProgress3 = getObjectFromGUID(KingsportScrzoneRiftProgress3Id)
    local KingsportScrzoneRiftProgress3Obj
    if KingsportScrzoneRiftProgress3 ~= nil then
        KingsportScrzoneRiftProgress3Obj = KingsportScrzoneRiftProgress3.getObjects()
    end
    
    if KingsportScrzoneRiftProgress3Obj ~= nil then
        for _, obj in pairs(KingsportScrzoneRiftProgress3Obj) do
            if obj.getDescription() == 'Rift Progress Marker' then
                RiftProgressTokens3 = RiftProgressTokens3 + 1
            end
        end
    end
    
    local KingsportArray = {}
    KingsportArray[1] = RiftProgressTokens1
    KingsportArray[2] = RiftProgressTokens2
    KingsportArray[3] = RiftProgressTokens3

    return KingsportArray
    
end

require("Strings")