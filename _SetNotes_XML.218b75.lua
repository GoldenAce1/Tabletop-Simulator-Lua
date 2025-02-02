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
-- loops the available investigators, sends to the function,
-- sends notebook to screen
function getPlacements(variableTable)

    local players = variableTable[1]
    local nrPlayers = variableTable[2]
    local NumberFramesMythosCount = variableTable[3]
    local onLoadGetMythos = variableTable[4]
    local minimized = variableTable[5]

    local TableEnd = "</TableLayout>"    

    -- local notebook = '[sub]'
    local notebook = ''
    --Current Phase
    local PhaseController = getObjectFromGUID(PhaseControllerId)
    local CurrentPhase = PhaseController.call('getCurrentPhase')

    --local CurrentPhaseTableBegin = "<TableLayout \nid=\"CurrentPhaseTable\" cellBackgroundColor=\"clear\">"

    local CurrentPhaseText = ''
    if CurrentPhase ~= nil then
        --notebook = notebook .. 'Current Phase: ' .. CurrentPhase .. '\n-----------------\n'
        CurrentPhaseText = 'Current Phase: ' .. CurrentPhase
    else
        --notebook = notebook .. 'Current Phase:      '
        CurrentPhaseText =  'Current Phase:      '
    end

    local rowCurrentPhase = "<Row class=\"DefRow\">\n<Cell>\n<Text class=\"TextTest\">".. CurrentPhaseText .."</Text>\n</Cell>\n</Row>"

    --notebook =  notebook .. CurrentPhaseTableBegin .. rowCurrentPhase .. TableEnd
    notebook =  notebook .. rowCurrentPhase

    -- # Active Investigators
    --local nrPlayersTableBegin = "<TableLayout \nid=\"nrPlayersTable\" cellBackgroundColor=\"clear\">"

    --notebook = notebook ..'Nr of active Investigators: ' .. nrPlayers .. '\n-----------------\n'
    local nrPlayersText = 'Nr of active Investigators: ' .. nrPlayers
    local rownrPlayers = "<Row class=\"DefRow\">\n<Cell>\n<Text class=\"TextTest\">".. nrPlayersText .."</Text>\n</Cell>\n</Row>"
    

    --notebook =  notebook .. nrPlayersTableBegin .. rownrPlayers .. TableEnd
    notebook =  notebook .. rownrPlayers
    --notebook =  notebook .. rownrPlayers

    -- # Active Investigators
    --local PlayersTableBegin = "<TableLayout \nid=\"PlayersTable\" cellBackgroundColor=\"clear\">"    
    local ActiveInvestigatorsText = 'Investigators:'

    local rowinvestigatorID = "<Row class=\"DefRow\">\n<Cell>\n<Text class=\"TextTest\">".. ActiveInvestigatorsText .."</Text>\n</Cell>\n</Row>"

    local investigatorIDText = '' 

    local rowInvestigatorText = ''

    for _,investigatorID in ipairs(players) do
        rowInvestigatorText = ''
        local theInvestigator = getObjectFromGUID(investigatorID)
        --notebook = notebook.. " "..formatNotebookInvestigator(theInvestigator)
        rowInvestigatorText = formatNotebookInvestigator(theInvestigator)
        --notebook = notebook.. " ".."\n"
        local investigatorIDText = investigatorIDText .. "<Row class=\"DefRow\">\n<Cell>\n<Text class=\"TextTest\">".. rowInvestigatorText .."</Text>\n</Cell>\n</Row>"        
    end

    --notebook =  notebook .. PlayersTableBegin .. rowinvestigatorID .. investigatorIDText .. TableEnd
       
    notebook =  notebook .. rowinvestigatorID .. investigatorIDText
    

    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local PharaohSet = GlobalVariables.call('isPharaohSet')
    -- Innsmouth Horror (if Innsmouth Horror is on Board)
    local InnsmouthSet = GlobalVariables.call('isInnsmouthSet')
    -- Dunwich Horror (if Dunwich Horror is on Board)
    local DunwichSet = GlobalVariables.call('isDunwichSet')
    -- Kingsport Horror (if Kingsport Horror is on Board)
    local KingsportSet = GlobalVariables.call('isKingsportSet')

    -- # Doom Tokens
    if CurrentPhase == 'Mythos' and NumberFramesMythosCount == 2 then
        -- notebook = notebook.. "-----------------\n"
        --notebook = notebook.. "\n"
        notebook = notebook.. " "..formatNotebookDoomTokens(InnsmouthSet)
        -- notebook = notebook.. "-----------------\n"
    else
        -- notebook = notebook.. "-----------------\n"
        --notebook = notebook.. "\n"
        
        notebook = notebook.. " " .. DoomTokensText
        -- notebook = notebook.. "-----------------\n"
    end

    -- Fixing a bug when you load a game and it will only show you the number
    -- of monsters in Arkham in your Mythos phase
    if onLoadGetMythos == true then
        -- notebook = notebook.. "\n-----------------"
        --notebook = notebook.. "\n"
        --notebook = notebook.. " "..formatNotebookDoomTokens(InnsmouthSet) .. "\n"
        notebook = notebook.. " "..formatNotebookDoomTokens(InnsmouthSet)
    end

    -- Monster count is only made in mythos Phase or on load

    if CurrentPhase == 'Mythos' and NumberFramesMythosCount == 2 then
        -- notebook = notebook.. "-----------------\n"
        --notebook = notebook.. "\n"
        notebook = notebook.. " "..formatNotebookMonstersInArkham()
    else
        -- notebook = notebook.. "-----------------\n"
        --notebook = notebook.. "\n"
        notebook = notebook.. " " .. MonstersInArkhamText
    end

    -- Fixing a bug when you load a game and it will only show you the number
    -- of monsters in Arkham in your Mythos phase
    if onLoadGetMythos == true then
        -- notebook = notebook.. "\n-----------------"
        --notebook = notebook.. "\n"
        notebook = notebook.. " "..formatNotebookMonstersInArkham()
    end

    notebook = notebook.. "<Row class=\"DefRow\">\n<Cell>\n<Text class=\"TextTest\">".. CountMonstersInOutskirts() .."</Text>\n</Cell>\n</Row>" 

   -- notebook = notebook.. "\n "..CountMonstersInOutskirts()
   -- notebook = notebook.. "\n"
    -- notebook = notebook.. "\n-----------------".."\n"

    -- Gate count is only made in mythos Phase or on load

    if CurrentPhase == 'Mythos' and NumberFramesMythosCount == 2 then
        -- notebook = notebook.. "-----------------\n"
        --notebook = notebook.. "\n"
        notebook = notebook.. formatNotebookGates()
        --notebook = notebook.. " "..formatNotebookGates()
    else
        -- notebook = notebook.. "-----------------\n"
        --notebook = notebook.. "\n"
        --notebook = notebook.. " " .. GatesInArkhamText
        notebook = notebook .. GatesInArkhamText
    end

    -- Fixing a bug when you load a game and it will only show you the number
    -- of gates in arkham in your Mythos phase
    if onLoadGetMythos == true then
        -- notebook = notebook.. "\n-----------------"
        --notebook = notebook.. "\n"
        --notebook = notebook.. " "..formatNotebookGates()
        notebook = notebook.. formatNotebookGates()
    end

    --notebook = notebook.. "\n"
    -- Terror Level

    AHBoard = getObjectFromGUID(AHBoardId)

    local TerrorTrack = AHBoard.call('getCurrentPositionTerror')

    local TerrorTracktext = ''

    if TerrorTrack <= 3 then
        -- notebook =  notebook.. 'Terror level: '..'<textcolor  color="#62A400">' .. TerrorTrack .. '</textcolor>'
        TerrorTracktext = 'Terror level: '..'<textcolor  color="#62A400"><b>' .. TerrorTrack .. '</b></textcolor>'
    else
        if TerrorTrack > 3 and TerrorTrack <= 6 then
            TerrorTracktext = 'Terror level: '..'<textcolor  color="#CAC00C"><b>' .. TerrorTrack .. '</b></textcolor>'
        else
            TerrorTracktext = 'Terror level: '..'<textcolor  color="#CA2C0C"><b>' .. TerrorTrack .. '</b></textcolor>'
        end

    end

    local TerrorTracktextTotal = "<Row class=\"DefRow\">\n<Cell>\n<Text class=\"TextTest\">".. TerrorTracktext .. "</Text>\n</Cell>\n</Row>"

    notebook =  notebook.. TerrorTracktextTotal

    -- Ancient Whispers (if The Curse of The Dark Pharaoh Revised is on Board)
    if PharaohSet == true then
        -- notebook = notebook.. "-----------------".."\n"
        --notebook = notebook.. "\n"
        notebook = notebook.. " "..formatNotebookAncientWhipers()
    end

    -- Feds Raid Innsmouth and Deep one Rising Track (if Innsmouth Horror is on Board)
    if InnsmouthSet == true then
        if (CurrentPhase == 'Mythos' and NumberFramesMythosCount == 2)
        or (onLoadGetMythos == true) then
            formatNotebookInnsmouthHorror()
        end
        -- notebook = notebook.. "-----------------".."\n"
        --notebook = notebook .. "\n"
        notebook =  notebook .. FedsRaidText .. '\n' .. DeepOnesRisingText .."\n"
    end

    -- Dunwich Horror Tokens (if Dunwich Horror is on Board)
    if DunwichSet == true then
        if (CurrentPhase == 'Mythos' and NumberFramesMythosCount == 2)
        or (onLoadGetMythos == true) then
            formatNotebookDunwichHorror()
        end
        -- notebook = notebook.. "-----------------".."\n"
       -- notebook = notebook.."\n"
        notebook =  notebook .. DHorrorText .. '\n'
    end

    -- All Rift Progress Markers (if Dunwich Horror is on Board)
    if KingsportSet == true then
        if (CurrentPhase == 'Mythos' and NumberFramesMythosCount == 2)
        or (onLoadGetMythos == true) then
            formatNotebookKingsportHorror()
        end
        -- notebook = notebook.. "-----------------".."\n"
        --notebook = notebook.."\n"
        --notebook =  notebook .. KHorrorText .. '\n'
        notebook =  notebook .. "<Row class=\"DefRow\">\n<Cell>\n<Text class=\"TextTest\">".. KHorrorText .. "</Text>\n</Cell>\n</Row>"
    end

    if oldNotes ~= notebook then
        createXML(notebook, nrPlayers, minimized)
        oldNotes = notebook
    end

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
function formatNotebookInvestigator(theInvestigator)
    -- Stupid onUpdate does not get variables declared outside....
    GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local ending = ''
    local color = ''
    local notebook = ''

    if theInvestigator ~= nil then
        local currentTile = theInvestigator.call('getCurrentTile')

        local InvestigatorName = theInvestigator.getName()
        local delayed = theInvestigator.call('getDelayedStatus')

        if delayed == true then
            InvestigatorName = InvestigatorName .. '<i> (Delayed)</i>'
        end

        local investigator_locations = Switch_All_Locations(switch_locations,currentTile)

        local investigatortext = ''
        local investigatorFinaltext = ''

        if investigator_locations == true then
            --We know he is in a location
            --Is he in an other World?
            local investigator_Other_World = GlobalVariables.call('isInvestigatorInOtherWorld', currentTile)

            if investigator_Other_World == true then

                local colors = GlobalVariables.call('getOtherWorldColorXML', currentTile)

                investigatortext = InvestigatorName .. " " .. 'is in '.. '<textcolor  color="#B1B1B1">' .. currentTile .. ' '.. '</textcolor>' .. colors .. ending

            else
                local color =  GlobalVariables.call('getLocationsColorXML', currentTile)
                if currentTile == 'Arkham Horror Core Board' then
                    currentTile = 'Lost in time and Space'
                    investigatortext =  InvestigatorName .. ' is <textcolor  color="#'.. color .. '">' .. currentTile .. ending .. '</textcolor>'
                else
                    local board = GlobalVariables.call('getInvestigatorBoard', currentTile)
                    investigatortext = InvestigatorName .. " is in " .. board .. ': <textcolor  color="#' ..color..'">' .. currentTile .. ending .. '</textcolor>'
                end
            end
        else
            investigatortext = InvestigatorName .. " " .. 'is Not on board' .. ending
        end
    else
        investigatortext =  'Remove figurine from bag' .. ending
    end

    investigatorFinaltext = "<Row class=\"DefRow\">\n<Cell>\n<Text class=\"TextTest\">".. investigatortext .. "</Text>\n</Cell>\n</Row>" 

    notebook =  notebook .. investigatorFinaltext

    return investigatortext
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

    local AncientWhisperstext = ''
    local AncientWhispersFinaltext = ''

    if PharaohAncientWhispers ~= nil then

        local currentTile = PharaohAncientWhispers.call('getCurrentTile')
        local PharaohAncientWhispersName = PharaohAncientWhispers.getName()

        local PharaohAncientWhispers_locations = Switch_All_Locations(switch_locations,currentTile)
        if PharaohAncientWhispers_locations == true then
            local color =  GlobalVariables.call('getLocationsColorXML', currentTile)
            if currentTile == 'Arkham Horror Core Board' then
                AncientWhisperstext = PharaohAncientWhispersName .. " " .. '<b>must be</b> in a street area' .. ending .. '</textcolor>'
            else
                AncientWhisperstext = PharaohAncientWhispersName .. " is in " .. ': <textcolor  color="#' ..color..'">' .. currentTile .. ending .. '</textcolor>'
            end
        end
    end

    AncientWhispersFinaltext = "<Row class=\"DefRow\">\n<Cell>\n<Text class=\"TextTest\">".. AncientWhisperstext .."</Text>\n</Cell>\n</Row>"

    notebook =  notebook .. AncientWhispersFinaltext

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
--[[         <TableLayout
        id="InnsmouthTable"
        rectAlignment="MiddleLeft"
        cellBackgroundColor="clear"
        >
        <Row class=\"DefRow\">
            <Cell>
              <Button id="berserkInvButton" class="invItem">
                <Image id="berserkInvImage" class="invItem" image="berserk">
                  <Text id="berserkInvText" class="invItem"/>
                </Image>
              </Button>
            </Cell><
        </Row> --]]

        local TableBegin = "<TableLayout \nid=\"InnsmouthTable\" cellBackgroundColor=\"clear\">"

        if FedsRaid <= 1 then
            FedsRaidText = "#Feds Raid Innsmouth Clues : " .. '<textcolor  color="#CA2C0C"><b>' .. FedsRaid .. ending .. '</b></textcolor>'

        else
            if FedsRaid > 1 and FedsRaid <= 3 then
                FedsRaidText = "#Feds Raid Innsmouth Clues : " .. '<textcolor  color="#CAC00C"><b>' .. FedsRaid .. ending .. '</b></textcolor>'
            else
                FedsRaidText = "#Feds Raid Innsmouth Clues : " .. '<textcolor  color="#62A400"><b>' .. FedsRaid .. ending .. '</b></textcolor>'
            end
        end

        local rowFeds = "<Row class=\"DefRow\">\n<Cell>\n<Text>"..FedsRaidText .."</Text>\n</Cell>\n</Row>"

        if DeepOnesRising <= 1 then
            DeepOnesRisingText = "#Deep Ones Rising Track : " .. '<textcolor  color="#62A400"><b>' .. DeepOnesRising .. ending .. '</b></textcolor>'
        else
            if DeepOnesRising > 1 and DeepOnesRising <= 3 then
                DeepOnesRisingText = "#Deep Ones Rising Track : " .. '<textcolor  color="#CAC00C"><b>' .. DeepOnesRising .. ending .. '</b></textcolor>'
            else
                DeepOnesRisingText = "#Deep Ones Rising Track : " .. '<textcolor  color="#CA2C0C"><b>' .. DeepOnesRising .. ending .. '</b></textcolor>'
            end
        end
        local rowDeepOnes = "<Row class=\"DefRow\">\n<Cell>\n<Text class=\"TextTest\">"..DeepOnesRisingText .."</Text>\n</Cell>\n</Row>"
        local TableEnd = "</TableLayout>"
        notebook =  notebook .. TableBegin .. rowFeds .. rowDeepOnes .. TableEnd
        return notebook
    end  
    --notebook =  notebook .. TableBegin .. rowFeds .. rowDeepOnes .. TableEnd
    --notebook =  notebook .. FedsRaidText .. '\n' .. DeepOnesRisingText

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
        local TableBegin = "<TableLayout \nid=\"DHorrorTable\" cellBackgroundColor=\"clear\">"
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

        if DunwichHorrorTokens <= 1 then
            DHorrorText = "#Dunwich Horror Tokens : " .. '<textcolor  color="#62A400"><b>' .. DunwichHorrorTokens .. ending .. '</b></textcolor>'
        else
            if DunwichHorrorTokens == 2 then
                DHorrorText = "#Dunwich Horror Tokens : " .. '<textcolor  color="#CAC00C"><b>' .. DunwichHorrorTokens .. ending .. '</b></textcolor>'
            else
                DHorrorText = "#Dunwich Horror Tokens : " .. '<textcolor  color="#CA2C0C"><b>' .. DunwichHorrorTokens .. ending .. '</b></textcolor>'
            end
        end
        local rowDunwichHorrorTokens = "<Row class=\"DefRow\">\n<Cell>\n<Text class=\"TextTest\">"..DHorrorText .."</Text>\n</Cell>\n</Row>"
        local TableEnd = "</TableLayout>"
        notebook =  notebook .. TableBegin .. rowDunwichHorrorTokens .. TableEnd
        return notebook

    end
    --notebook =  notebook.. '#ffffff ' .. DHorrorText

    return notebook
end

function formatNotebookDoomTokens(InnsmouthSet)
    local GreatOOScriptingZone = getObjectFromGUID(GreatOOScriptingZoneId)

    local ending = ''
    local notebook = ''

    DoomTokens = 0

    --Get All objects from the selected Scripting Zone
    local objectsInZone = GreatOOScriptingZone.getObjects()

    --local TableBegin = "<TableLayout \nid=\"DoomTokensTable\" cellBackgroundColor=\"clear\">"

    for _, obj in pairs(objectsInZone) do
        if obj.getName() == 'Doom Token' then
            DoomTokens = DoomTokens + 1
        end
    end

    if DoomTokens <= 3 then
        DoomTokensText = "#Doom Tokens : " .. '<textcolor  color="#62A400"><b>' .. DoomTokens .. ending .. '</b></textcolor>'
    else
        if DoomTokens > 3 and DoomTokens <= 6 then
            DoomTokensText = "#Doom Tokens : " .. '<textcolor  color="#CAC00C"><b>' .. DoomTokens .. ending .. '</b></textcolor>'
        else
            DoomTokensText = "#Doom Tokens : " .. '<textcolor  color="#CA2C0C"><b>' .. DoomTokens .. ending .. '</b></textcolor>' 
            if InnsmouthSet == true then
                DoomTokensText =  DoomTokensText.. "\n".. '<textcolor  color="#CA2C0C"><b> Check if Innsmouth is under Matrial Law</b></textcolor>\n'
            end
        end
    end

    local rowDoomTokensText = "<Row class=\"DefRow\">\n<Cell>\n<Text class=\"TextTest\">".. DoomTokensText .."</Text>\n</Cell>\n</Row>"
    --local TableEnd = "</TableLayout>"
    --notebook =  notebook .. TableBegin .. rowDoomTokensText .. TableEnd
    notebook =  notebook .. rowDoomTokensText
 
    --notebook =  notebook .. DoomTokensText

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
    --local TableBegin = "<TableLayout \nid=\"MonstersInArkhamTable\" cellBackgroundColor=\"clear\">"

    if MonstersInArkham <= 1 then
        MonstersInArkhamText = "#Monsters in Arkham : " .. '<textcolor  color="#62A400"><b>' .. MonstersInArkham .. ending .. '</b></textcolor>'
    else
        if MonstersInArkham > 1 and MonstersInArkham <= 3 then
            MonstersInArkhamText = "#Monsters in Arkham : " .. '<textcolor  color="#CAC00C"><b>' .. MonstersInArkham .. ending .. '</b></textcolor>'
        else
            MonstersInArkhamText = "#Monsters in Arkham : " .. '<textcolor  color="#CA2C0C"><b>' .. MonstersInArkham .. ending .. '</b></textcolor>'
        end
    end

    -- MonstersInArkhamText = "#Monsters in Arkham : " .. '#808080' .. MonstersInArkham .. ending .. '#ffffff '

    local rowMonstersInArkham = "<Row class=\"DefRow\">\n<Cell>\n<Text class=\"TextTest\">".. MonstersInArkhamText .."</Text>\n</Cell>\n</Row>"
    --local TableEnd = "</TableLayout>"
    --notebook =  notebook .. TableBegin .. rowMonstersInArkham .. TableEnd
    notebook =  notebook .. rowMonstersInArkham

    --notebook =  notebook .. MonstersInArkhamText

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
    --local TableBegin = "<TableLayout \nid=\"MonstersInOutskirtsTable\" cellBackgroundColor=\"clear\">"

    if ObjectsOutskirtsScriptingZone ~= nil then
        for _, obj in pairs(ObjectsOutskirtsScriptingZone) do
            if obj.getDescription() == 'Monster' then
                MonstersInOutskirts = MonstersInOutskirts + 1
            end
        end
    end

    local MonstersInOutskirtsText = ''

    if MonstersInOutskirts == 0 then
        --notebook =  notebook .. "#Monsters in the Outskirts : " .. '<textcolor  color="#62A400"><b>' .. MonstersInOutskirts .. ending .. '</b></textcolor>'
        MonstersInOutskirtsText = "#Monsters in the Outskirts : " .. '<textcolor  color="#62A400"><b>' .. MonstersInOutskirts .. ending .. '</b></textcolor>'        
    else
        if MonstersInOutskirts >= 1 and MonstersInOutskirts <= 2 then
            --notebook =  notebook .. "#Monsters in the Outskirts : " .. '<textcolor  color="#CAC00C"><b>' .. MonstersInOutskirts .. ending .. '</b></textcolor>'
            MonstersInOutskirtsText = "#Monsters in the Outskirts : " .. '<textcolor  color="#CAC00C"><b>' .. MonstersInOutskirts .. ending .. '</b></textcolor>'
        else
            --notebook =  notebook .. "#Monsters in the Outskirts : " .. '<textcolor  color="#CA2C0C"><b>' .. MonstersInOutskirts .. ending .. '</b></textcolor>'
            MonstersInOutskirtsText = "#Monsters in the Outskirts : " .. '<textcolor  color="#CA2C0C"><b>' .. MonstersInOutskirts .. ending .. '</b></textcolor>'
        end
    end
    local rowMonstersInOutskirts = "<Row class=\"DefRow\">\n<Cell>\n<Text class=\"TextTest\">"..MonstersInOutskirtsText .."</Text>\n</Cell>\n</Row>"
    --local TableEnd = "</TableLayout>"
    --notebook =  notebook .. TableBegin .. rowMonstersInOutskirts .. TableEnd
    notebook =  notebook .. MonstersInOutskirtsText
    --notebook =  notebook .. rowMonstersInOutskirts
    return notebook
end

function formatNotebookGates()

    GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local ScriptingZonesTable =  GlobalVariables.call('getArkhamScriptingZones')

    local ending = ''
    local notebook = ''

    GatesInArkham = 0

    --local TableBegin = "<TableLayout \nid=\"GatesInArkhamTable\" cellBackgroundColor=\"clear\">"

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
        GatesInArkhamText = "#Gates in Arkham : " .. '<textcolor  color="#62A400"><b>' .. GatesInArkham .. ending .. '</b></textcolor>'
    else
        if GatesInArkham >= 3 and GatesInArkham <= 5 then
            GatesInArkhamText = "#Gates in Arkham : " .. '<textcolor  color="#CAC00C"><b>' .. GatesInArkham .. ending .. '</b></textcolor>'
        else
            GatesInArkhamText = "#Gates in Arkham : " .. '<textcolor  color="#CA2C0C"><b>' .. GatesInArkham .. ending .. '</b></textcolor>'
        end
    end

    local rowGatesInArkham = "<Row class=\"DefRow\">\n<Cell>\n<Text class=\"TextTest\">"..GatesInArkhamText .."</Text>\n</Cell>\n</Row>"
    local TableEnd = "</TableLayout>"
    --notebook =  notebook .. TableBegin .. rowGatesInArkham .. TableEnd
    notebook =  notebook .. rowGatesInArkham

    --notebook =  notebook .. GatesInArkhamText

    return notebook

end

function formatNotebookKingsportHorror()

    local ending = ''
    local notebook = ''

    -- Top to Bottom
    RiftProgressTokens1 = 0
    RiftProgressTokens2 = 0
    RiftProgressTokens3 = 0

    --local TableBegin = "<TableLayout \nid=\"RiftProgressTable\" cellBackgroundColor=\"clear\">"


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

    if RiftProgressTokens1 <= 1 then
        RiftProgressTokens1Text = "#Rift Progress 1 : " .. '<textcolor  color="#62A400"><b>' .. RiftProgressTokens1 .. ending .. '</b></textcolor>'
    else
        if RiftProgressTokens1 >= 2 and RiftProgressTokens1 <= 3 then
            RiftProgressTokens1Text = "#Rift Progress 1 : " .. '<textcolor  color="#CAC00C"><b>' .. RiftProgressTokens1 .. ending .. '</b></textcolor>'
        else
            RiftProgressTokens1Text = "#Rift Progress 1 : " .. '<textcolor  color="#CA2C0C"><b>' .. RiftProgressTokens1 .. ending .. '</b></textcolor>'
        end
    end

    local rowRiftProgressTokens1 = "<Row class=\"DefRow\">\n<Cell>\n<Text>"..RiftProgressTokens1Text .."</Text>\n</Cell>\n</Row>"

    if RiftProgressTokens2 <= 1 then
        RiftProgressTokens2Text = "#Rift Progress 2 : " .. '<textcolor  color="#62A400"><b>' .. RiftProgressTokens2 .. ending .. '</b></textcolor>'
    else
        if RiftProgressTokens2 >= 2 and RiftProgressTokens2 <= 3 then
            RiftProgressTokens2Text = "#Rift Progress 2 : " .. '<textcolor  color="#CAC00C"><b>' .. RiftProgressTokens2 .. ending .. '</b></textcolor>'
        else
            RiftProgressTokens2Text = "#Rift Progress 2 : " .. '<textcolor  color="#CA2C0C"><b>' .. RiftProgressTokens2 .. ending .. '</b></textcolor>'
        end
    end

    local rowRiftProgressTokens2 = "<Row class=\"DefRow\">\n<Cell>\n<Text>"..RiftProgressTokens2Text .."</Text>\n</Cell>\n</Row>"

    if RiftProgressTokens3 <= 1 then
        RiftProgressTokens3Text = "#Rift Progress 3 : " .. '<textcolor  color="#62A400"><b>' .. RiftProgressTokens3 .. ending .. '</b></textcolor>'
    else
        if RiftProgressTokens3 >= 2 and RiftProgressTokens3 <= 3 then
            RiftProgressTokens3Text = "#Rift Progress 3 : " .. '<textcolor  color="#CAC00C"><b>' .. RiftProgressTokens3 .. ending .. '</b></textcolor>'
        else
            RiftProgressTokens3Text = "#Rift Progress 3 : " .. '<textcolor  color="#CA2C0C"><b>' .. RiftProgressTokens3 .. ending .. '</b></textcolor>'
        end
    end

    local rowRiftProgressTokens3 = "<Row class=\"DefRow\">\n<Cell>\n<Text class=\"TextTest\">"..RiftProgressTokens3Text .."</Text>\n</Cell>\n</Row>"
    local TableEnd = "</TableLayout>"
    --notebook =  notebook .. TableBegin .. rowRiftProgressTokens1 .. rowRiftProgressTokens2 .. rowRiftProgressTokens3 .. TableEnd
    notebook =  notebook .. rowRiftProgressTokens1 .. rowRiftProgressTokens2 .. rowRiftProgressTokens3

    --KHorrorText =  RiftProgressTokens1Text .. '\n'.. RiftProgressTokens2Text .. '\n'.. RiftProgressTokens3Text .. '\n'
    --notebook =  notebook .. KHorrorText

    return notebook

end

--Creates the whole XML from Scratch to insert in the UI
function createXML(notes, nrPlayers)

    -- The XML
    -- <Defaults>
    --   <Panel class="Window" width="385" height="300" rectAlignment="LowerRight" returnToOriginalPositionWhenReleased="false" allowDragging="true" color="#69696940" outline="#404040"/>
    --   <Panel class="TopBar"  height="30" width="385" rectAlignment="UpperCenter" color="Black" outline="#00008B"/>
    --   <Button class="topButtons" width="20" height="20" rectAlignment="UpperRight" color="#eeeeee"/>
    --   <Text class="WindowTitle" text="Arkham Status" fontSize="18" height="20" fontStyle="Bold" rectAlignment="UpperCenter" color="#FFFFFF" />
    --   <Text class="WindowText" text="Loading..." fontSize="10" fontStyle="Bold" rectAlignment="UpperLeft" color="#FFFFFF"/>
    --
    -- </Defaults>
    --
    -- <!-- The layout of the window -->
    -- <Panel class="Window" id="Window">
    --   <Panel class="TopBar" id="TopBar"/>
    --   <Text id="WindowTitle"
    --     class="WindowTitle"
    --     offsetXY="0 -5"/>
    --   <Button id="minimizeButton"
    --     class="topButtons"
    --     textColor="#000000"
    --     text="_"
    --     offsetXY="-5 -5"
    --     onClick="minimize"/>
    --
    --
    --     <Panel class="WindowText" id="Lowerwindow">
    --         <!-- <Text class="WindowText" id="ArkhamStatus"/> -->
    --     </Panel>
    --
    -- </Panel>

    local count = 0
    total = ''

    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local PharaohSet = GlobalVariables.call('isPharaohSet')

    if PharaohSet == true then
        count = count + 1
    end

    -- Innsmouth Horror (if Innsmouth Horror is on Board)
    local InnsmouthSet = GlobalVariables.call('isInnsmouthSet')
    if InnsmouthSet == true then
        count = count + 1
    end

    -- Dunwich Horror (if Dunwich Horror is on Board)
    local DunwichSet = GlobalVariables.call('isDunwichSet')

    if DunwichSet == true then
        count = count + 1
    end

    -- Dunwich Horror (if Dunwich Horror is on Board)
    local KingsportSet = GlobalVariables.call('isKingsportSet')

    if KingsportSet == true then
        count = count + 1
    end

    local l1 = "<Defaults>"

    --Window size changes depending on how many expansions we have

    local l2 = ''
    local set = false

    if count == 0  and nrPlayers < 5 then
         set = true
        l2 = "<Panel class=\"Window\" width=\"350\" height=\"350\" rectAlignment=\"LowerRight\" returnToOriginalPositionWhenReleased=\"false\" allowDragging=\"true\" color=\"#69696980\" outline=\"#404040\"/>"
    end

    if count == 1  and nrPlayers <5 then
        set = true
        l2 = "<Panel class=\"Window\" width=\"350\" height=\"350\" rectAlignment=\"LowerRight\" returnToOriginalPositionWhenReleased=\"false\" allowDragging=\"true\" color=\"#69696980\" outline=\"#404040\"/>"
    end

    if count == 2 and nrPlayers < 5 then
        l2 = "<Panel class=\"Window\" width=\"350\" height=\"400\" rectAlignment=\"LowerRight\" returnToOriginalPositionWhenReleased=\"false\" allowDragging=\"true\" color=\"#69696980\" outline=\"#404040\"/>"
    else
        if count > 2 and nrPlayers < 5 then
            l2 = "<Panel class=\"Window\" width=\"350\" height=\"500\" rectAlignment=\"LowerRight\" returnToOriginalPositionWhenReleased=\"false\" allowDragging=\"true\" color=\"#69696980\" outline=\"#404040\"/>"
        else
            if set == false then
                l2 = "<Panel class=\"Window\" width=\"350\" height=\"575\" rectAlignment=\"LowerRight\" returnToOriginalPositionWhenReleased=\"false\" allowDragging=\"true\" color=\"#69696980\" outline=\"#404040\"/>"
            end
        end
    end

    -- local l2 = "<Panel class=\"Window\" width=\"350\" height=\"500\" rectAlignment=\"LowerRight\" returnToOriginalPositionWhenReleased=\"false\" allowDragging=\"false\" color=\"#69696980\" outline=\"#404040\"/>"
    local l3 = "<Panel class=\"TopBar\"  height=\"30\" width=\"350\" rectAlignment=\"UpperCenter\" color=\"Black\" outline=\"#00008B\"/>"
    local l4 = "<Button class=\"topButtons\" width=\"20\" height=\"20\" rectAlignment=\"UpperRight\" color=\"#eeeeee\"/>"
    local l5 = "<Text class=\"WindowTitle\" text=\"Arkham Status\" fontSize=\"18\" height=\"20\" fontStyle=\"Bold\" rectAlignment=\"UpperCenter\" color=\"#FFFFFF\" />"
    local l6 = "<Text class=\"WindowText\" text=\"Loading...\" fontSize=\"10\" fontStyle=\"Bold\" color=\"#FFFFFF\"/>"
    local l61 = "<Text class=\"TextTest\" fontSize=\"14\" fontStyle=\"Bold\" color=\"#FFFFFF\"/>"
    local l62 = "<Row class=\"DefRow\" height=\"14\" fontStyle=\"Bold\" color=\"#FFFFFF\" padding = \"1 1 1 1\" />" 

    local l7 = "</Defaults>"

    local l9 = "<Panel class=\"Window\" id=\"Window\">"
    local l10 = "<Panel class=\"TopBar\" id=\"TopBar\">"
    local l11 = "<Text id=\"WindowTitle\" class=\"WindowTitle\" offsetXY=\"0 -5\"/>"
    local l12 = "<Button id=\"minimizeButton\" class=\"topButtons\" textColor=\"#000000\" text=\"_\" offsetXY=\"-5 -5\" onClick=\"minimize\"/>"

    --local l13 = "<Panel class=\"WindowText\" id=\"Lowerwindow\">"
    local l13 = "<Panel class=\"WindowText\" id=\"Lowerwindow\">\n<TableLayout id=\"ArkhamWindowTable\" columnWidths=\"auto-size\" cellBackgroundColor=\"clear\" cellSpacing=\"1\">" 

    --local l14 = "</Panel>"
    local l14 = "\n</TableLayout>\n</Panel>"

    --local l15 = "<Text color=\"#FFFFFF\" fontStyle=\"Bold\">" .. notes .. "</Text>"
    local l15 = notes

    local l16 = "</Panel>"

    -- local total = l1..l2..l3..l4..l5..l6..l7..l9..l10..l11..l12..l13..l14..l15..l16
    --local total = l1..l2..l3..l4..l5..l6..l7..l9..l10..l11..l12..l13..l14..l15..l16
    local total = l1..l2..l3..l4..l5..l6..l61..l7..l9..l10..l11..l12..l16..l13..l15..l14..l16
  
    log(total)
    
    Global.UI.setXml(total)
    --Global.UI.setXml(total)

--[[     if minimized == true then
        Global.call("minimize")
    end --]]

end


require("Strings")