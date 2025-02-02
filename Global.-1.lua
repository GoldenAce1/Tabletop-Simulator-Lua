--[[ Lua code. See documentation: http://berserk-games.com/knowledgebase/scripting/ --]]
require("vscode/console")

--local SetNotesId = 'eab95f'
--local SetNotesXMLId = '218b75'
local NewSetXMLId = '86377f'
local VisibleToAll = "White|Brown|Red|Orange|Yellow|Green|Teal|Blue|Purple|Pink|Grey|Black"
local VisibleToNone = "Grey|Black"
local CurrentFedsRaid = 0
local CurrentDeepOnes = 0
local CurrentMonstersInArkham = 0
local CurrentMonstersInOutskirts = 0
local CurrentTerror = 0
local CurrentDoom = 0
local CurrentGates = 0
local CurrentDunwichTokens = 0
local CurrentKingsportRift1 = 0
local CurrentKingsportRift2 = 0
local CurrentKingsportRift3 = 0

local players = {}
local nrPlayers = 0
local minimized = false
numberFrames = 0
NumberFramesMythosCount = 0
local onLoadGetMythos = false
local playerLocations = {}

function onSave()
    local state = {}
    
    state.players = players
    state.nrPlayers = nrPlayers
    
    
    return JSON.encode_pretty(state)
end

--[[ The onLoad event is called after the game save finishes loading. --]]
function onLoad(saveState)
    
    self.createButton(ShuffleNorthsideButton)
    self.createButton(ShuffleDowntownButton)
    self.createButton(ShuffleEasttownButton)
    self.createButton(ShuffleMerchantButton)
    self.createButton(ShuffleRivertownButton)
    self.createButton(ShuffleMiskatonicButton)
    self.createButton(ShuffleFrenchButton)
    self.createButton(ShuffleUptownButton)
    self.createButton(ShuffleSouthsideButton)
    
    
    if saveState ~= "" then
        
        local data = JSON.decode(saveState)
        
        players = data.players
        nrPlayers = data.nrPlayers
        
        if players == nil then
            players = {}
        end
        
        if nrPlayers == nil then
            nrPlayers = 0
        end
        onLoadGetMythos = true
        
        local GlobalVariablesId = '7fc89f'
        local GlobalVariables = getObjectFromGUID(GlobalVariablesId) 
        local isSetupPerformed = GlobalVariables.call('getisSetupPerformed')
        
        if isSetupPerformed == true then
            
            Global.UI.hide("SetupWindow") 
            Global.UI.setAttribute("SetupWindow", "active", false)
            Global.UI.setAttribute("SetupShow", "active", false)
            maximize()
            
            InnsmouthSet = GlobalVariables.call('isInnsmouthSet')
            KingsportSet = GlobalVariables.call('isKingsportSet')
            DunwichSet = GlobalVariables.call('isDunwichSet')
            PharaohSet = GlobalVariables.call('isPharaohSet')    
            
            if PharaohSet then
                UI.setAttribute("AncientWhispers","visibility", VisibleToAll)        
            end
            
            if InnsmouthSet then
                UI.setAttribute("InnsmouthMartialLaw","visibility", VisibleToAll)
                UI.setAttribute("FedsRaidInnsmouthClues","visibility", VisibleToAll)
                UI.setAttribute("DeepOnesRisingTrack","visibility", VisibleToAll)        
            end
            
            if DunwichSet then
                UI.setAttribute("DunwichHorrorTokens","visibility", VisibleToAll)        
            end 
            
            if KingsportSet then
                UI.setAttribute("KingsportRifts","visibility", VisibleToAll)        
                UI.setAttribute("KingsportRiftStatus","visibility", VisibleToAll)
            end
        else
            minimize()
            UI.setAttribute("ArkhamStatusShow", "active", false)
        end
        
    else    
        players = {}
        nrPlayers = 0
        onLoadGetMythos = false
        minimize()
        UI.setAttribute("ArkhamStatusShow", "active", false)
    end
    
    
end


--[[ The onUpdate event is called once per frame. --]]
function onUpdate ()
    
    local GlobalVariablesId = '7fc89f'
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId) 
    
    local getisSetupPerformed = GlobalVariables.call('getisSetupPerformed')
    
    if minimized == false then
        if getisSetupPerformed ~= nil then
            if getisSetupPerformed == true then
                numberFrames = numberFrames + 1
                if  numberFrames > 60 then
                    
                    local SetNotesXML = getObjectFromGUID(NewSetXMLId)
                    
                    --Current Phase
                    local CurrentPhase = SetNotesXML.call('getCurrentPhase')
                    UI.setAttribute("CurrentPhaseText","Text", CurrentPhase)
                    -- # Players
                    UI.setAttribute("NrActiveInvestigators","Text", nrPlayers)
                    
                    -- Investigator List
                    if nrPlayers > 0 then
                        local InvestigatorNumber = 1
                        for _,investigatorID in ipairs(players) do
                            local theInvestigator = getObjectFromGUID(investigatorID)
                            
                            UI.setAttribute("AddInvestigator"..InvestigatorNumber,"visibility", VisibleToAll)
                            
                            local InvestigatorName = theInvestigator.getName()
                            local delayed = theInvestigator.call('getDelayedStatus')
                            
                            if delayed == true then
                                InvestigatorName = InvestigatorName .. '<i> (Delayed)</i>'
                            end
                            
                            UI.setAttribute("Investigator"..InvestigatorNumber,"Text", InvestigatorName)
                            
                            local CurrentLocationVariables = SetNotesXML.call('GetLocationInvestigator',theInvestigator)
                            --1 - Location
                            --2 - OW/Arkham
                            --3 - Text Color
                            --4 - List (Otherworld Colors)
                            
                            --Only changes if the investigator changes places
                            if playerLocations[InvestigatorNumber] ~= CurrentLocationVariables[1] then
                                UI.setAttribute("Investigator"..InvestigatorNumber.."Place","Text", CurrentLocationVariables[1])    
                                UI.setAttribute("Investigator"..InvestigatorNumber.."Place","color", CurrentLocationVariables[3])
                                
                                if CurrentLocationVariables[2] == 'Otherworld' then
                                    local colorIdent = 1
                                    -- 4 iterations max
                                    for colorIdent =1, 4,1 do
                                        ColorListItem = CurrentLocationVariables[4][colorIdent] 
                                        if(ColorListItem == nil) then
                                            UI.setAttribute("OWColor"..colorIdent .."Inv"..InvestigatorNumber,"color", "#69696940")
                                            UI.setAttribute("OWColor"..colorIdent .."Inv"..InvestigatorNumber,"fontStyle", "Normal")
                                        else
                                            UI.setAttribute("OWColor"..colorIdent .."Inv"..InvestigatorNumber,"color", ColorListItem)
                                            UI.setAttribute("OWColor"..colorIdent .."Inv"..InvestigatorNumber,"fontStyle", "Bold") 
                                        end
                                    end
                                end
                                playerLocations[InvestigatorNumber] = CurrentLocationVariables[1]
                            end
                            InvestigatorNumber = InvestigatorNumber + 1
                        end
                    end
                    
                    -- # Doom Tokens
                    local CurrentDoomTokens = SetNotesXML.call('GetNumberDoomTokens')
                    
                    if CurrentDoomTokens ~= CurrentDoom then
                        UI.setAttribute("DoomTokens","Text", CurrentDoomTokens) 
                        if CurrentDoomTokens <= 3 then
                            UI.setAttribute("DoomTokens","color", "#346520")
                        else
                            if CurrentDoomTokens > 3 and CurrentDoomTokens <= 6 then
                                UI.setAttribute("DoomTokens","color", "#CAC00C")
                            else
                                UI.setAttribute("DoomTokens","color", "#CA2C0C")
                            end
                        end
                        CurrentDoom = CurrentDoomTokens                    
                    end
                    
                    -- # Monsters in Arkham
                    local MonstersInArkhamTokens = SetNotesXML.call('GetNumberMonstersInArkham')
                    if MonstersInArkhamTokens ~= CurrentMonstersInArkham then
                        UI.setAttribute("MonstersinArkham","Text", MonstersInArkhamTokens)
                        if MonstersInArkhamTokens <= 3 then
                            UI.setAttribute("MonstersinArkham","color", "#346520")
                        else
                            if MonstersInArkhamTokens > 3 and MonstersInArkhamTokens <= 6 then
                                UI.setAttribute("MonstersinArkham","color", "#CAC00C")
                            else
                                UI.setAttribute("MonstersinArkham","color", "#CA2C0C")
                            end
                        end
                        CurrentMonstersInArkham = MonstersInArkhamTokens                       
                    end
                    
                    -- # Monsters in Outskirts
                    local MonstersInOutskirtsTokens = SetNotesXML.call('GetMonstersInOutskirts')
                    if CurrentMonstersInOutskirts ~= MonstersInOutskirtsTokens then
                        UI.setAttribute("MonstersinOutskirts","Text", MonstersInOutskirtsTokens)
                        if MonstersInOutskirtsTokens <= 1 then
                            UI.setAttribute("MonstersinOutskirts","color", "#346520")
                        else
                            if MonstersInOutskirtsTokens > 1 and MonstersInOutskirtsTokens <= 2 then
                                UI.setAttribute("MonstersinOutskirts","color", "#CAC00C")
                            else
                                UI.setAttribute("MonstersinOutskirts","color", "#CA2C0C")
                            end
                        end
                        CurrentMonstersInOutskirts = MonstersInOutskirtsTokens
                    end
                    
                    -- # Terror Track
                    local TerrorStatus = SetNotesXML.call('GetTerrorLevel')
                    if TerrorStatus ~= CurrentTerror then
                        UI.setAttribute("TerrorLevel","Text", TerrorStatus)
                        if TerrorStatus <= 3 then
                            UI.setAttribute("TerrorLevel","color", "#346520")
                        else
                            if TerrorStatus > 3 and TerrorStatus <= 6 then
                                UI.setAttribute("TerrorLevel","color", "#CAC00C")
                            else
                                UI.setAttribute("TerrorLevel","color", "#CA2C0C")
                            end
                        end
                        CurrentTerror = TerrorStatus
                    end
                    
                    
                    -- # Gates
                    local NumberGates = SetNotesXML.call('GetNumberGates')
                    if NumberGates ~= CurrentGates then
                        UI.setAttribute("GatesInArkham","Text", NumberGates)
                        if NumberGates <= 3 then
                            UI.setAttribute("GatesInArkham","color", "#346520")
                        else
                            if NumberGates > 3 and NumberGates <= 6 then
                                UI.setAttribute("GatesInArkham","color", "#CAC00C")
                            else
                                UI.setAttribute("GatesInArkham","color", "#CA2C0C")
                            end
                        end
                        CurrentGates = NumberGates
                    end
                    
                    local isInnsmouthSet = GlobalVariables.call('isInnsmouthSet')
                    local isKingsportSet = GlobalVariables.call('isKingsportSet')
                    local isDunwichSet = GlobalVariables.call('isDunwichSet')
                    local isPharaohSet = GlobalVariables.call('isPharaohSet')
                    
                    --Ancient Whispers
                    if isPharaohSet == true then
                        local AncientWhispersArray = SetNotesXML.call('GetAncientWhipers')
                        UI.setAttribute("AncientWhispers1Place","Text", AncientWhispersArray[1])
                        UI.setAttribute("AncientWhispers1Place","color", AncientWhispersArray[2])
                    end
                    
                    -- # Feds raid Innsmouth Track and Deep ones Rising Track
                    if isInnsmouthSet == true then
                        if CurrentDoom > 5 then
                            UI.setAttribute("InnsmouthCurrentStatus","color", "#CA2C0C")
                            UI.setAttribute("InnsmouthCurrentStatus","text", "Check if Martial Law")
                        else
                            if CurrentDoom > 2 and CurrentDoom <= 5 then
                                UI.setAttribute("InnsmouthCurrentStatus","color", "#CAC00C")
                                UI.setAttribute("InnsmouthCurrentStatus","text", "Martial Law imminent")
                            else
                                UI.setAttribute("InnsmouthCurrentStatus","color", "#346520")
                                UI.setAttribute("InnsmouthCurrentStatus","text", "Normal")
                            end
                        end
                        
                        local InnsmouthArray = SetNotesXML.call('GetNumberInnsmouthHorror')-- We press the button and it automatically starts searching for components that are not on the table
                        
                        if InnsmouthArray ~= nil then -- Feds Raid Innsmouth Track
                            
                            if CurrentFedsRaid ~= InnsmouthArray[1] then
                                UI.setAttribute("FedsRaidInnsmouthCluesNr","Text", InnsmouthArray[1])
                                
                                if InnsmouthArray[1] <= 1 then --Feds raid Innsmouth Track
                                    UI.setAttribute("FedsRaidInnsmouthCluesNr","color", "#CA2C0C")
                                else
                                    if InnsmouthArray[1] > 1 and InnsmouthArray[1] <= 3 then
                                        UI.setAttribute("FedsRaidInnsmouthCluesNr","color", "#CAC00C")
                                    else
                                        UI.setAttribute("FedsRaidInnsmouthCluesNr","color", "#346520")
                                    end
                                end
                                CurrentFedsRaid = InnsmouthArray[1]                              
                            end
                            
                            -- Deep ones Rising Track
                            UI.setAttribute("DeepOnesRisingTrackNr","Text", InnsmouthArray[2])
                            
                            if CurrentDeepOnes ~= InnsmouthArray[2] then
                                if InnsmouthArray[2] <= 1 then
                                    UI.setAttribute("DeepOnesRisingTrackNr","color", "#346520")
                                else
                                    if InnsmouthArray[2] > 1 and InnsmouthArray[2] <= 3 then
                                        UI.setAttribute("DeepOnesRisingTrackNr","color", "#CAC00C")
                                    else
                                        UI.setAttribute("DeepOnesRisingTrackNr","color", "#CA2C0C")
                                    end
                                end
                                CurrentDeepOnes = InnsmouthArray[2]   
                            end
                            
                        end
                        
                        
                    end                
                    -- # Dunwich Horror Tokens
                    if isDunwichSet == true then
                        
                        local DunwichTokens = SetNotesXML.call('GetNumberDunwichHorror')
                        -- We press the button and it automatically starts searching for
                        -- components that are not on the table
                        
                        if DunwichTokens ~= nil then
                            if CurrentDunwichTokens ~= DunwichTokens then
                                UI.setAttribute("DunwichHorrorTokensNr","Text", DunwichTokens)
                                --Feds raid Innsmouth Track
                                if DunwichTokens <= 1 then
                                    UI.setAttribute("DunwichHorrorTokensNr","color","#346520")
                                else
                                    if DunwichTokens == 2 then
                                        UI.setAttribute("DunwichHorrorTokensNr","color", "#CAC00C")
                                    else
                                        UI.setAttribute("DunwichHorrorTokensNr","color", "#CA2C0C")
                                    end
                                end
                                CurrentDunwichTokens = DunwichTokens                              
                            end
                        end 
                    end                 
                    
                    -- # Kingsport Horror Rifts
                    if isKingsportSet == true then
                        
                        local KingsportArray = SetNotesXML.call('GetNumberKingsportHorror')
                        -- We press the button and it automatically starts searching for
                        -- components that are not on the table
                        
                        if KingsportArray ~= nil then
                            --Rift1
                            if CurrentKingsportRift1 ~= KingsportArray[1] then
                                UI.setAttribute("RiftNr1","Text", KingsportArray[1])
                                if KingsportArray[1] <= 1 then
                                    UI.setAttribute("RiftNr1","color","#346520")
                                else
                                    if KingsportArray[1] == 2 then
                                        UI.setAttribute("RiftNr1","color", "#CAC00C")
                                    else
                                        UI.setAttribute("RiftNr1","color", "#CA2C0C")
                                    end
                                end
                                CurrentKingsportRift1 = KingsportArray[1]
                            end
                            
                            if CurrentKingsportRift2 ~= KingsportArray[2] then
                                UI.setAttribute("RiftNr2","Text", KingsportArray[2])
                                if KingsportArray[2] <= 1 then
                                    UI.setAttribute("RiftNr2","color","#346520")
                                else
                                    if KingsportArray[2] == 2 then
                                        UI.setAttribute("RiftNr2","color", "#CAC00C")
                                    else
                                        UI.setAttribute("RiftNr2","color", "#CA2C0C")
                                    end
                                end
                                CurrentKingsportRift2 = KingsportArray[2]
                            end
                            
                            if CurrentKingsportRift3 ~= KingsportArray[3] then
                                UI.setAttribute("RiftNr3","Text", KingsportArray[3])
                                
                                if KingsportArray[3] <= 1 then
                                    UI.setAttribute("RiftNr3","color","#346520")
                                else
                                    if KingsportArray[3] == 2 then
                                        UI.setAttribute("RiftNr3","color", "#CAC00C")
                                    else
                                        UI.setAttribute("RiftNr3","color", "#CA2C0C")
                                    end
                                end
                                CurrentKingsportRift3 = KingsportArray[3]
                            end  
                        end 
                    end  
                    
                    --Making sure it stays as false after the initial load
                    onLoadGetMythos = false
                    
                    numberFrames = 0
                end
            end
        end
    end
end

function addPlayer(guid)
    nrPlayers = nrPlayers + 1
    players[nrPlayers] = guid
    local investigatorFigurine = getObjectFromGUID(guid)
    if investigatorFigurine ~= nil then
        broadcastToAll("The Investigator ".. investigatorFigurine.getName() .. " is on the case.")
    else
        broadcastToAll("Please remove figurine from the bag.")
    end
end

function removePlayer(guid)
    for i, player in ipairs(players) do
        if players[i] == guid then
            table.remove(players, i)
            UI.setAttribute("AddInvestigator"..nrPlayers,"visibility", VisibleToNone)
        end
    end
    local investigatorFigurine = getObjectFromGUID(guid)
    if investigatorFigurine ~= nil then
        broadcastToAll("The Investigator ".. getObjectFromGUID(guid).getName() .. " has left the case.")
    end
    
    if nrPlayers > 0 then
        nrPlayers = nrPlayers - 1
    end
end

-- Function to minimize the window
function minimize(player, value, id)
    UI.hide("Window")
    UI.setAttribute("ArkhamStatusShow", "active", true)
    minimized = true
end

-- Function to minimize the window
function maximize(player, value, id)
    UI.show("Window")
    minimized = false
    UI.setAttribute("ArkhamStatusShow", "active", false)
end

function Setup(player, value, id)
    --minimize(player, value, id)
    UI.show("SetupWindow")
end

function minimizeSetup(player, value, id)
    UI.hide("SetupWindow") 
end
