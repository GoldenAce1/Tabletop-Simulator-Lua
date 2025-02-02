--[[ --setup
--Places the pieces in their playing position
-- local SetupVariables = getObjectFromGUID('2a8dee')
local SetupVariablesNew = getObjectFromGUID('2a8dee')

--The Pannel Itself
local ControlPanelVariables = getObjectFromGUID('bf1ea5')

local GlobalVariablesId = '7fc89f'
local GlobalVariables = getObjectFromGUID(GlobalVariablesId)

--variables
local YellowVariables = getObjectFromGUID('2be879')
local PharaohVariables = getObjectFromGUID('43e2a0')
local LurkerVariables = getObjectFromGUID('edd1ef')
local KingsportVariables = getObjectFromGUID('00ac75')
local InnsmouthVariables = getObjectFromGUID('5c39a4')
local GoatVariables = getObjectFromGUID('293f5a')
local DunwichVariables = getObjectFromGUID('5932f9')

-- board types - If big expansion apply, only one will be lit
local InnsmouthSolo = false
local KingsportSolo = false
local DunwichSolo = false
local KingsportDunwich = false
local InnsmouthKingsport = false
local InnsmouthDunwich = false
-- The bravest man of all - All boards!
local AllThreeBoards = false --]]

--[[ function PlaceInnsmouth()
    
    InnsmouthSolo = GlobalVariables.call('getInnsmouthSolo')
    KingsportSolo = GlobalVariables.call('getKingsportSolo')
    DunwichSolo = GlobalVariables.call('getDunwichSolo')
    KingsportDunwich = GlobalVariables.call('getKingsportDunwich')
    InnsmouthKingsport = GlobalVariables.call('getInnsmouthKingsport')
    InnsmouthDunwich = GlobalVariables.call('getInnsmouthDunwich')
    AllThreeBoards = GlobalVariables.call('getAllThreeBoards')
    
    local Innsmouth_Northside_deck_id = InnsmouthVariables.call("getInnsmouthNorthsideDeckId")
    local Innsmouth_Downtown_deck_id = InnsmouthVariables.call("getInnsmouthDowntownDeckId")
    local Innsmouth_Easttown_deck_id = InnsmouthVariables.call("getInnsmouthEasttownDeckId")
    local Innsmouth_Merchant_deck_id = InnsmouthVariables.call("getInnsmouthMerchantDeckId")
    local Innsmouth_Rivertown_deck_id = InnsmouthVariables.call("getInnsmouthRivertownDeckId")
    local Innsmouth_Miskatonic_deck_id = InnsmouthVariables.call("getInnsmouthMiskatonicDeckId")
    local Innsmouth_French_deck_id = InnsmouthVariables.call("getInnsmouthFrenchDeckId")
    local Innsmouth_Uptown_deck_id = InnsmouthVariables.call("getInnsmouthUptownDeckId")
    local Innsmouth_Southside_deck_id = InnsmouthVariables.call("getInnsmouthSouthsideDeckId")
    local Innsmouth_Skills_deck_id = InnsmouthVariables.call("getInnsmouthSkillsDeckId")
    local Innsmouth_Mythos_deck_id = InnsmouthVariables.call("getInnsmouthMythosDeckId")
    local Innsmouth_Gate_deck_id = InnsmouthVariables.call("getInnsmouthGateDeckId")
    local Innsmouth_Look_Deck_id = InnsmouthVariables.call("getInnsmouthLookDeckId")
    local Innsmouth_Factory_Deck_id = InnsmouthVariables.call("getInnsmouthFactoryDeckId")
    local Innsmouth_Shore_Deck_id = InnsmouthVariables.call("getInnsmouthShoreDeckId")
    local Innsmouth_Church_Deck_id = InnsmouthVariables.call("getInnsmouthChurchDeckId")
    local Innsmouth_Deep_one_Uprising_Token_id = InnsmouthVariables.call("getInnsmouthDeepTokenId")
    -- local Innsmouth_Clue_Deck_id = InnsmouthVariables.call("getInnsmouthClueDeckId")
    local Innsmouth_Monster_bag_id = InnsmouthVariables.call("getInnsmouthMonsterBagId")
    local Innsmouth_Clue_Tokens_id = InnsmouthVariables.call("getInnsmouthClueTokensId")
    local Innsmouth_Board_id = InnsmouthVariables.call("getInnsmouthBoardId")
    
    
    local InnsmouthScriptingZoneID = InnsmouthVariables.call("getInnsmouthScriptingZone")
    
    local InnsmouthScriptingZone = getObjectFromGUID(InnsmouthScriptingZoneID)
    
    local ObjectsInInnsmouthZone = InnsmouthScriptingZone.getObjects()
    
    for _, obj in pairs(ObjectsInInnsmouthZone) do
        
        local objTags = obj.getTags()
        
        --      Know that objecta can have multiple flags. If found a tag to place, no need to check next tags.
        local foundTag = false
        local objGUID = obj.getGUID()
        if objGUID ~= '4ee1f2' then
            for _,tag in pairs(objTags) do
                log('Innsmouth ' .. tag)
                if tag == 'Northside' then
                    foundTag = true
                    --Get the expansion's deck ID
                    local BoardNorthsideDeckId = SetupVariablesNew.call('getBoardNorthsidedeckId')
                    local BoardNorthsideDeck = getObjectFromGUID(BoardNorthsideDeckId)
                    BoardNorthsideDeck.putObject(obj)                
                end
                
                if tag == 'Downtown' then
                    foundTag = true
                    --Get the expansion's deck ID
                    local BoardDowntownDeckId = SetupVariablesNew.call('getBoardDowntowndeckId')
                    local BoardDowntownDeck = getObjectFromGUID(BoardDowntownDeckId)
                    BoardDowntownDeck.putObject(obj)                
                end
                
                if Tag == 'Easttown' then
                    foundTag = true
                    --Get the expansion's deck ID
                    local BoardEasttownDeckId = SetupVariablesNew.call('getBoardEasttowndeckId')
                    local BoardEasttownDeck = getObjectFromGUID(BoardEasttownDeckId)
                    BoardEasttownDeck.putObject(obj)                                
                end
                
                if Tag == 'Merchant District' then
                    foundTag = true
                    --Get the expansion's deck ID
                    local BoardMerchantDeckId = SetupVariablesNew.call('getBoardMerchantdeckId')
                    local BoardMerchantDeck = getObjectFromGUID(BoardMerchantDeckId)
                    BoardMerchantDeck.putObject(obj)                                
                end
                
                if Tag == 'Rivertown' then
                    foundTag = true
                    --Get the expansion's deck ID
                    local BoardRivertownDeckId = SetupVariablesNew.call('getBoardRivertowndeckId')
                    local BoardRivertownDeck = getObjectFromGUID(BoardRivertownDeckId)
                    BoardRivertownDeck.putObject(obj)                                
                end
                
                if Tag == 'Miskatonic University' then
                    foundTag = true                
                    --Get the expansion's deck ID
                    local BoardMiskatonicDeckId = SetupVariablesNew.call('getBoardMiskatonicdeckId')
                    local BoardMiskatonicDeck = getObjectFromGUID(BoardMiskatonicDeckId)
                    BoardMiskatonicDeck.putObject(obj)                
                end
                
                if Tag == 'French Hill' then
                    foundTag = true                 
                    --Get the expansion's deck ID
                    local BoardFrenchDeckId = SetupVariablesNew.call('getBoardFrenchdeckId')
                    local BoardFrenchDeck = getObjectFromGUID(BoardFrenchDeckId)
                    BoardFrenchDeck.putObject(obj)                
                end
                
                if Tag == 'Uptown' then
                    foundTag = true                  
                    --Get the expansion's deck ID
                    local BoardUptownDeckId = SetupVariablesNew.call('getBoardUptowndeckId')
                    local BoardUptownDeck = getObjectFromGUID(BoardUptownDeckId)
                    BoardUptownDeck.putObject(obj)                
                end
                
                if Tag == 'Southside' then
                    foundTag = true 
                    --Get the expansion's deck ID
                    local BoardSouthsideDeckId = SetupVariablesNew.call('getBoardSouthsidedeckId')
                    local BoardSouthsideDeck = getObjectFromGUID(BoardSouthsideDeckId)
                    BoardSouthsideDeck.putObject(obj)                
                end
                
                if Tag == 'Common Item' then
                    foundTag = true 
                    --Get the expansion's deck ID
                    local BoardCommonDeckId = SetupVariablesNew.call('getBoardCommondeckId')
                    local BoardSouthsideDeck = getObjectFromGUID(BoardCommonDeckId)
                    BoardCommonDeck.putObject(obj)                
                end
                
                if Tag == 'Unique Item' then
                    foundTag = true 
                    --Get the expansion's deck ID
                    local BoardUniqueDeckId = SetupVariablesNew.call('getBoardUniquedeckId')
                    local BoardUniqueDeck = getObjectFromGUID(BoardUniqueDeckId)
                    BoardUniqueDeck.putObject(obj)            
                end
                
                if Tag == 'Skill' then
                    foundTag = true 
                    --Get the expansion's deck ID
                    local BoardSkillsDeckId = SetupVariablesNew.call('getBoardSkillsdeckId')
                    local BoardSkillsDeck = getObjectFromGUID(BoardSkillsDeckId)
                    BoardSkillsDeck.putObject(obj)       
                end
                
                if Tag == 'Ally' then
                    foundTag = true 
                    --Get the expansion's deck ID
                    local BoardAlliesDeckId = SetupVariablesNew.call('getBoardAlliesdeckId')
                    local BoardAlliesDeck = getObjectFromGUID(BoardAlliesDeckId)
                    BoardAlliesDeck.putObject(obj)  
                end
                
                if Tag == 'Mythos' then
                    foundTag = true 
                    --Get the expansion's deck ID
                    local BoardMythosDeckId = SetupVariablesNew.call('getBoardMythosdeckId')
                    local BoardMythosDeck = getObjectFromGUID(BoardMythosDeckId)
                    BoardMythosDeck.putObject(obj)
                end
                
                if Tag == 'Gate_Deck' then
                    foundTag = true 
                    --Get the expansion's deck ID
                    local BoardGateDeckId = SetupVariablesNew.call('getBoardGatedeckId')
                    local BoardGateDeck = getObjectFromGUID(BoardGateDeckId)
                    BoardGateDeck.putObject(obj)
                end    
                
                -- Expansion-specific
                
                if Tag == 'Innsmouth_Look' then
                    foundTag = true 
                    -- Innsmouth is always the first one, so no need to check position
                    -- We can use Solo (Yang chas Solo chone Wookiee!)
                    
                    local Innsmouth_Look_Deck_id = InnsmouthVariables.call('getBoardPositionsInnsmouthSoloById')
                    --get the position for the gate deck in the expansion line
                    local InnsmouthLookPosition = SetupVariablesNew.call('getBoardPositionsInnsmouthSoloById',{Innsmouth_Look_Deck_id})
                    
                    obj.setPosition(InnsmouthLookPosition)
                end  
                
                if Tag == 'Factory District' then
                    foundTag = true 
                    -- Innsmouth is always the first one, so no need to check position
                    -- We can use Solo (Yang chas Solo chone Wookiee!)
                    
                    local InnsmouthFactoryPosition = SetupVariablesNew.call('getBoardPositionsInnsmouthSoloById',{Innsmouth_Factory_Deck_id})
                    obj.setPosition(InnsmouthFactoryPosition)
                    -- obj.rotate({0, 270, 0})
                    obj.randomize()
                end   
                
                if Tag == 'Innsmouth Shore' then
                    foundTag = true 
                    -- Innsmouth is always the first one, so no need to check position
                    -- We can use Solo (Yang chas Solo chone Wookiee!)
                    
                    local InnsmouthShorePosition = SetupVariablesNew.call('getBoardPositionsInnsmouthSoloById',{Innsmouth_Shore_Deck_id})
                    obj.setPosition(InnsmouthShorePosition)
                    -- obj.rotate({0, 270, 0})
                    obj.randomize()
                end   
                
                if Tag == 'Church Green' then
                    foundTag = true 
                    -- Innsmouth is always the first one, so no need to check position
                    -- We can use Solo (Yang chas Solo chone Wookiee!)
                    
                    local InnsmouthChurchPosition = SetupVariablesNew.call('getBoardPositionsInnsmouthSoloById',{Innsmouth_Church_Deck_id})
                    obj.setPosition(InnsmouthChurchPosition)
                    -- obj.rotate({0, 270, 0})
                    obj.randomize()
                end   
                
                if Tag == 'Uprising Token' then
                    foundTag = true 
                    -- Innsmouth is always the first one, so no need to check position
                    -- We can use Solo (Yang chas Solo chone Wookiee!)
                    
                    local InnsmouthUprisingPosition = SetupVariablesNew.call('getBoardPositionsInnsmouthSoloById',{objGUID})
                    obj.setPosition(InnsmouthUprisingPosition)
                end 
                
                if Tag == 'Mythos' then
                    foundTag = true 
                    -- Innsmouth is always the first one, so no need to check position
                    -- We can use Solo (Yang chas Solo chone Wookiee!)
                    
                    --Get the expansion's deck ID
                    local BoardMythosDeckId = SetupVariablesNew.call('getBoardMythosdeckId')
                    local BoardMythosDeck = getObjectFromGUID(BoardMythosDeckId)
                    BoardMythosDeck.putObject(obj)
                end 
                
                if Tag == 'Innsmouth monsters' then
                    foundTag = true 
                    -- Innsmouth is always the first one, so no need to check position
                    -- We can use Solo (Yang chas Solo chone Wookiee!)
                    
                    local InnsmouthMonsterPosition = SetupVariablesNew.call('getBoardPositionsInnsmouthSoloById',{Innsmouth_Monster_bag_id})
                    obj.setPosition(InnsmouthMonsterPosition)
                    obj.randomize()
                end 
                
                if Tag == 'Innsmouth Clue Tokens' then
                    foundTag = true 
                    -- Innsmouth is always the first one, so no need to check position
                    -- We can use Solo (Yang chas Solo chone Wookiee!)
                    
                    local InnsmouthClueTokensPosition = SetupVariablesNew.call('getBoardPositionsInnsmouthSoloById',{Innsmouth_Clue_Tokens_id})
                    obj.setPosition(InnsmouthClueTokensPosition)
                end
                
                if Tag == 'Innsmouth Board' then
                    foundTag = true 
                    -- Innsmouth is always the first one, so no need to check position
                    -- We can use Solo (Yang chas Solo chone Wookiee!)
                    
                    local InnsmouthBoardTokensPosition = SetupVariablesNew.call('getBoardPositionsInnsmouthSoloById',{Innsmouth_Board_id})
                    obj.setPosition(InnsmouthBoardTokensPosition)
                    -- SetupVariablesNew.call('scaleUpInnsmouthBoard')
                    obj.setScale({6.85, 1.00, 6.85})
                    Wait.time(function() obj.locked = true  end,2)
                end
                
                if foundTag == true then
                    break
                end
            end
            if foundTag == false then
                log('Innsmouth not found ' .. objGUID)
            end  
        end                   
    end                        
end

function PlaceKingsport()
    
    InnsmouthSolo = GlobalVariables.call('getInnsmouthSolo')
    KingsportSolo = GlobalVariables.call('getKingsportSolo')
    DunwichSolo = GlobalVariables.call('getDunwichSolo')
    KingsportDunwich = GlobalVariables.call('getKingsportDunwich')
    InnsmouthKingsport = GlobalVariables.call('getInnsmouthKingsport')
    InnsmouthDunwich = GlobalVariables.call('getInnsmouthDunwich')
    AllThreeBoards = GlobalVariables.call('getAllThreeBoards')
    
    local Kingsport_Northside_deck_id = KingsportVariables.call("getKingsportNorthsideDeckId")
    local Kingsport_Downtown_deck_id = KingsportVariables.call("getKingsportDowntownDeckId")
    local Kingsport_Easttown_deck_id = KingsportVariables.call("getKingsportEasttownDeckId")
    local Kingsport_Merchant_deck_id = KingsportVariables.call("getKingsportMerchantDeckId")
    local Kingsport_Rivertown_deck_id = KingsportVariables.call("getKingsportRivertownDeckId")
    local Kingsport_Miskatonic_deck_id = KingsportVariables.call("getKingsportMiskatonicDeckId")
    local Kingsport_French_deck_id = KingsportVariables.call("getKingsportFrenchDeckId")
    local Kingsport_Uptown_deck_id = KingsportVariables.call("getKingsportUptownDeckId")
    local Kingsport_Southside_deck_id = KingsportVariables.call("getKingsportSouthsideDeckId")
    local Kingsport_Skills_deck_id = KingsportVariables.call("getKingsportSkillsDeckId")
    local Kingsport_Mythos_deck_id = KingsportVariables.call("getKingsportMythosDeckId")
    local Kingsport_Gate_deck_id = KingsportVariables.call("getKingsportGateDeckId")
    
    local Kingsport_Common_deck_id= KingsportVariables.call("getKingsportCommonDeckId")
    local Kingsport_Unique_deck_id= KingsportVariables.call("getKingsportUniqueDeckId")
    local Kingsport_Spells_deck_id= KingsportVariables.call("getKingsportSpellsDeckId")
    local Kingsport_Spells_deck_id= KingsportVariables.call("getKingsportSpellsDeckId")
    local Kingsport_Allies_deck_id= KingsportVariables.call("getKingsportAlliesDeckId")
    -- local Kingsport_Clue_Deck_id = KingsportVariables.call("getKingsportClueDeckId")
    local Kingsport_Captain_Deck_id = KingsportVariables.call("getKingsportCaptainDeckId")
    local Kingsport_Changed_Deck_id = KingsportVariables.call("getKingsportChangedDeckId")
    local Kingsport_Head_Deck_id = KingsportVariables.call("getKingsportHeadDeckId")
    local Kingsport_Harborside_Deck_id = KingsportVariables.call("getKingsportHarborsideDeckId")
    local Kingsport_Central_Hill_Deck_id = KingsportVariables.call("getKingsportCentralHillDeckId")
    local Kingsport_South_Shore_Deck_id = KingsportVariables.call("getKingsportSouthShoreDeckId")
    
    --Bags
    local Kingsport_Rift_Marker_Bag_id = KingsportVariables.call("getKingsportRiftMarkerBagId")
    local Kingsport_Rift_Progress_Marker_Bag_id = KingsportVariables.call("getKingsportRiftProgressBagId")
    local Kingsport_Monster_bag_id = KingsportVariables.call("getKingsportMonsterBagId")
    local Kingsport_Gate_Marker_Bag_id = KingsportVariables.call("getKingsportGateMarkerBagId")
    local Kingsport_Board_Id = KingsportVariables.call("getKingsportBoardId")
    
    local KingsportScriptingZoneID = KingsportVariables.call("getKingsportScriptingZone")
    
    local KingsportScriptingZone = getObjectFromGUID(KingsportScriptingZoneID)
    
    local ObjectsInKingsportZone = KingsportScriptingZone.getObjects()
    
    for _, obj in pairs(ObjectsInKingsportZone) do
        local objTags = obj.getTags()
        
        --      Know that an object can have multiple flags. If found a tag to place, no need to check next tags.
        local foundTag = false
        local objGUID = obj.getGUID()
        if objGUID ~= '4ee1f2' then
            for _,tag in pairs(objTags) do
                log('Kingsport ' .. tag)
                if tag == 'Northside' then
                    foundTag = true
                    --Get the expansion's deck ID
                    local BoardNorthsideDeckId = SetupVariablesNew.call('getBoardNorthsidedeckId')
                    local BoardNorthsideDeck = getObjectFromGUID(BoardNorthsideDeckId)
                    BoardNorthsideDeck.putObject(obj)                
                end
                
                if tag == 'Downtown' then
                    foundTag = true
                    --Get the expansion's deck ID
                    local BoardDowntownDeckId = SetupVariablesNew.call('getBoardDowntowndeckId')
                    local BoardDowntownDeck = getObjectFromGUID(BoardDowntownDeckId)
                    BoardDowntownDeck.putObject(obj)                
                end
                
                if Tag == 'Easttown' then
                    foundTag = true
                    --Get the expansion's deck ID
                    local BoardEasttownDeckId = SetupVariablesNew.call('getBoardEasttowndeckId')
                    local BoardEasttownDeck = getObjectFromGUID(BoardEasttownDeckId)
                    BoardEasttownDeck.putObject(obj)                                
                end
                
                if Tag == 'Merchant District' then
                    foundTag = true
                    --Get the expansion's deck ID
                    local BoardMerchantDeckId = SetupVariablesNew.call('getBoardMerchantdeckId')
                    local BoardMerchantDeck = getObjectFromGUID(BoardMerchantDeckId)
                    BoardMerchantDeck.putObject(obj)                                
                end
                
                if Tag == 'Rivertown' then
                    foundTag = true
                    --Get the expansion's deck ID
                    local BoardRivertownDeckId = SetupVariablesNew.call('getBoardRivertowndeckId')
                    local BoardRivertownDeck = getObjectFromGUID(BoardRivertownDeckId)
                    BoardRivertownDeck.putObject(obj)                                
                end
                
                if Tag == 'Miskatonic University' then
                    foundTag = true                
                    --Get the expansion's deck ID
                    local BoardMiskatonicDeckId = SetupVariablesNew.call('getBoardMiskatonicdeckId')
                    local BoardMiskatonicDeck = getObjectFromGUID(BoardMiskatonicDeckId)
                    BoardMiskatonicDeck.putObject(obj)                
                end
                
                if Tag == 'French Hill' then
                    foundTag = true                 
                    --Get the expansion's deck ID
                    local BoardFrenchDeckId = SetupVariablesNew.call('getBoardFrenchdeckId')
                    local BoardFrenchDeck = getObjectFromGUID(BoardFrenchDeckId)
                    BoardFrenchDeck.putObject(obj)                
                end
                
                if Tag == 'Uptown' then
                    foundTag = true                  
                    --Get the expansion's deck ID
                    local BoardUptownDeckId = SetupVariablesNew.call('getBoardUptowndeckId')
                    local BoardUptownDeck = getObjectFromGUID(BoardUptownDeckId)
                    BoardUptownDeck.putObject(obj)                
                end
                
                if Tag == 'Southside' then
                    foundTag = true 
                    --Get the expansion's deck ID
                    local BoardSouthsideDeckId = SetupVariablesNew.call('getBoardSouthsidedeckId')
                    local BoardSouthsideDeck = getObjectFromGUID(BoardSouthsideDeckId)
                    BoardSouthsideDeck.putObject(obj)                
                end
                
                if Tag == 'Common Item' then
                    foundTag = true 
                    --Get the expansion's deck ID
                    local BoardCommonDeckId = SetupVariablesNew.call('getBoardCommondeckId')
                    local BoardSouthsideDeck = getObjectFromGUID(BoardCommonDeckId)
                    BoardCommonDeck.putObject(obj)                
                end
                
                if Tag == 'Unique Item' then
                    foundTag = true 
                    --Get the expansion's deck ID
                    local BoardUniqueDeckId = SetupVariablesNew.call('getBoardUniquedeckId')
                    local BoardUniqueDeck = getObjectFromGUID(BoardUniqueDeckId)
                    BoardUniqueDeck.putObject(obj)            
                end
                
                if Tag == 'Spell' then
                    foundTag = true 
                    --Get the expansion's deck ID
                    local BoardSpellsDeckId = SetupVariablesNew.call('getBoardSpellsdeckId')
                    local BoardSpellsDeck = getObjectFromGUID(BoardSpellsDeckId)
                    BoardSpellsDeck.putObject(obj)      
                end
                
                if Tag == 'Skill' then
                    foundTag = true 
                    --Get the expansion's deck ID
                    local BoardSkillsDeckId = SetupVariablesNew.call('getBoardSkillsdeckId')
                    local BoardSkillsDeck = getObjectFromGUID(BoardSkillsDeckId)
                    BoardSkillsDeck.putObject(obj)       
                end
                
                if Tag == 'Ally' then
                    foundTag = true 
                    --Get the expansion's deck ID
                    local BoardAlliesDeckId = SetupVariablesNew.call('getBoardAlliesdeckId')
                    local BoardAlliesDeck = getObjectFromGUID(BoardAlliesDeckId)
                    BoardAlliesDeck.putObject(obj)  
                end
                
                if Tag == 'Mythos' then
                    foundTag = true 
                    --Get the expansion's deck ID
                    local BoardMythosDeckId = SetupVariablesNew.call('getBoardMythosdeckId')
                    local BoardMythosDeck = getObjectFromGUID(BoardMythosDeckId)
                    BoardMythosDeck.putObject(obj)
                end
                
                if Tag == 'Gate_Deck' then
                    foundTag = true 
                    --Get the expansion's deck ID
                    local BoardGateDeckId = SetupVariablesNew.call('getBoardGatedeckId')
                    local BoardGateDeck = getObjectFromGUID(BoardGateDeckId)
                    BoardGateDeck.putObject(obj)
                end    
                
                -- Expansion-specific
                
                if Tag == 'Captain' then
                    foundTag = true 
                    local KingsportCaptainPosition
                    if KingsportSolo == true or KingsportDunwich == true then
                        KingsportCaptainPosition = SetupVariablesNew.call('getBoardPositionsKingsportSoloById',{objGUID})
                    end
                    if InnsmouthKingsport == true then
                        KingsportCaptainPosition = SetupVariablesNew.call('getBoardPositionsInnsmouthKingsportById',{objGUID})
                    end
                    if AllThreeBoards == true then
                        KingsportCaptainPosition = SetupVariablesNew.call('getBoardPositions3BoardsById',{objGUID})
                    end
                    obj.setPosition(KingsportCaptainPosition)
                end  
                
                if Tag == 'Kingsport Head' then
                    foundTag = true 
                    local KingsportHeadPosition
                    if KingsportSolo == true or KingsportDunwich == true then
                        KingsportHeadPosition = SetupVariablesNew.call('getBoardPositionsKingsportSoloById',{objGUID})
                    end
                    if InnsmouthKingsport == true then
                        KingsportHeadPosition = SetupVariablesNew.call('getBoardPositionsInnsmouthKingsportById',{objGUID})
                    end
                    if AllThreeBoards == true then
                        KingsportHeadPosition = SetupVariablesNew.call('getBoardPositions3BoardsById',{objGUID})
                    end
                    obj.setPosition(KingsportHeadPosition)
                    obj.randomize()
                end   
                
                if Tag == 'Harborside' then
                    foundTag = true 
                    local KingsportHarborsidePosition
                    if KingsportSolo == true or KingsportDunwich == true then
                        KingsportHarborsidePosition = SetupVariablesNew.call('getBoardPositionsKingsportSoloById',{objGUID})
                    end
                    
                    if InnsmouthKingsport == true then
                        KingsportHarborsidePosition = SetupVariablesNew.call('getBoardPositionsInnsmouthKingsportById',{objGUID})
                    end
                    if AllThreeBoards == true then
                        KingsportHarborsidePosition = SetupVariablesNew.call('getBoardPositions3BoardsById',{objGUID})
                    end
                    obj.setPosition(KingsportHarborsidePosition)
                    obj.randomize()
                end   
                
                if Tag == 'Central Hill' then
                    foundTag = true 
                    local KingsportCentralPosition
                    if KingsportSolo == true or KingsportDunwich == true then
                        KingsportCentralPosition = SetupVariablesNew.call('getBoardPositionsKingsportSoloById',{objGUID})
                    end
                    
                    if InnsmouthKingsport == true then
                        KingsportCentralPosition = SetupVariablesNew.call('getBoardPositionsInnsmouthKingsportById',{objGUID})
                    end
                    if AllThreeBoards == true then
                        KingsportCentralPosition = SetupVariablesNew.call('getBoardPositions3BoardsById',{objGUID})
                    end
                    obj.setPosition(KingsportCentralPosition)
                    obj.randomize()
                end   
                
                if Tag == 'South Shore' then
                    foundTag = true 
                    local KingsportSouthPosition
                    if KingsportSolo == true or KingsportDunwich == true then
                        KingsportSouthPosition = SetupVariablesNew.call('getBoardPositionsKingsportSoloById',{objGUID})
                    end
                    
                    if InnsmouthKingsport == true then
                        KingsportSouthPosition = SetupVariablesNew.call('getBoardPositionsInnsmouthKingsportById',{objGUID})
                    end
                    if AllThreeBoards == true then
                        KingsportSouthPosition = SetupVariablesNew.call('getBoardPositions3BoardsById',{objGUID})
                    end
                    obj.setPosition(KingsportSouthPosition)
                    -- obj.rotate({0, 270, 0})
                    obj.randomize()
                end   
                
                if Tag == 'Changed' then
                    foundTag = true 
                    local KingsportChangedPosition
                    if KingsportSolo == true or KingsportDunwich == true then
                        KingsportChangedPosition = SetupVariablesNew.call('getBoardPositionsKingsportSoloById',{objGUID})
                    end
                    if InnsmouthKingsport == true then
                        KingsportChangedPosition = SetupVariablesNew.call('getBoardPositionsInnsmouthKingsportById',{objGUID})
                    end
                    if AllThreeBoards == true then
                        KingsportChangedPosition = SetupVariablesNew.call('getBoardPositions3BoardsById',{objGUID})
                    end
                    --Removed rotation due to change of position of the special Cards
                    --obj.rotate({0, 90, 0})
                    obj.setPosition(KingsportChangedPosition)
                end 
                
                if Tag == 'Rift Marker' then
                    foundTag = true 
                    local KingsportRiftMarkerPosition
                    if KingsportSolo == true or KingsportDunwich == true then
                        KingsportRiftMarkerPosition = SetupVariablesNew.call('getBoardPositionsKingsportSoloById',{objGUID})
                    end
                    if InnsmouthKingsport == true then
                        KingsportRiftMarkerPosition = SetupVariablesNew.call('getBoardPositionsInnsmouthKingsportById',{objGUID})
                    end
                    if AllThreeBoards == true then
                        KingsportRiftMarkerPosition = SetupVariablesNew.call('getBoardPositions3BoardsById',{objGUID})
                    end
                    obj.setPosition(KingsportRiftMarkerPosition)
                end 
                
                if Tag == 'Rift Progress Marker' then
                    foundTag = true 
                    local KingsportRiftProgressPosition
                    if KingsportSolo == true or KingsportDunwich == true then
                        KingsportRiftProgressPosition = SetupVariablesNew.call('getBoardPositionsKingsportSoloById',{objGUID})
                    end
                    if InnsmouthKingsport == true then
                        KingsportRiftProgressPosition = SetupVariablesNew.call('getBoardPositionsInnsmouthKingsportById',{objGUID})
                    end
                    if AllThreeBoards == true then
                        KingsportRiftProgressPosition = SetupVariablesNew.call('getBoardPositions3BoardsById',{objGUID})
                    end
                    obj.setPosition(KingsportRiftProgressPosition)
                end
                -- Gate Markers Bag
                if Tag == 'Gate Markers Bag' then
                    foundTag = true 
                    local KingsportGateMarkerPosition
                    if KingsportSolo == true or KingsportDunwich == true then
                        KingsportGateMarkerPosition = SetupVariablesNew.call('getBoardPositionsKingsportSoloById',{objGUID})
                    end
                    if InnsmouthKingsport == true then
                        KingsportGateMarkerPosition = SetupVariablesNew.call('getBoardPositionsInnsmouthKingsportById',{objGUID})
                    end
                    if AllThreeBoards == true then
                        KingsportGateMarkerPosition = SetupVariablesNew.call('getBoardPositions3BoardsById',{objGUID})
                    end
                    obj.setPosition(KingsportGateMarkerPosition)
                end
                
                if Tag == 'Kingsport Monsters' then
                    foundTag = true 
                    --They're always setup in the same place, no matter the board position
                    local KingsportMonsterPosition = SetupVariablesNew.call('getBoardPositionsKingsportSoloById',{objGUID})
                    obj.setPosition(KingsportMonsterPosition)
                end
                
                if Tag == 'Kingsport Board' then
                    foundTag = true 
                    local KingsportBoardPosition
                    if KingsportSolo == true or KingsportDunwich == true then
                        KingsportBoardPosition = SetupVariablesNew.call('getBoardPositionsKingsportSoloById',{objGUID})
                    end
                    if InnsmouthKingsport == true then
                        KingsportBoardPosition = SetupVariablesNew.call('getBoardPositionsInnsmouthKingsportById',{objGUID})
                    end
                    if AllThreeBoards == true then
                        KingsportBoardPosition = SetupVariablesNew.call('getBoardPositions3BoardsById',{objGUID})
                    end
                    obj.setPosition(KingsportBoardPosition)
                    obj.setScale({6.85, 1.00, 6.85})
                    Wait.time(function() obj.locked = true  end,2)
                    -- obj.locked = true
                end
                
                if foundTag == true then
                    break
                end
            end
        end
    end
end

function PlaceDunwich()
    
    InnsmouthSolo = GlobalVariables.call('getInnsmouthSolo')
    KingsportSolo = GlobalVariables.call('getKingsportSolo')
    DunwichSolo = GlobalVariables.call('getDunwichSolo')
    KingsportDunwich = GlobalVariables.call('getKingsportDunwich')
    InnsmouthKingsport = GlobalVariables.call('getInnsmouthKingsport')
    InnsmouthDunwich = GlobalVariables.call('getInnsmouthDunwich')
    AllThreeBoards = GlobalVariables.call('getAllThreeBoards')
    
    local DunwichScriptingZoneID = DunwichVariables.call("getDunwichScriptingZone")
    
    local DunwichScriptingZone = getObjectFromGUID(DunwichScriptingZoneID)
    
    local ObjectsInDunwichZone = DunwichScriptingZone.getObjects()
    
    for _, obj in pairs(ObjectsInDunwichZone) do
        local objGUID = obj.getGUID()
        
        local objTags = obj.getTags()   
        --      Know that an object can have multiple flags. If found a tag to place, no need to check next tags.
        local foundTag = false
        if objGUID ~= '4ee1f2' then
            log('Dunwich ' .. objGUID)
            for _,tag in pairs(objTags) do
                log('Dunwich ' .. tag)
                if tag == 'Northside' then
                    foundTag = true
                    --Get the expansion's deck ID
                    local BoardNorthsideDeckId = SetupVariablesNew.call('getBoardNorthsidedeckId')
                    local BoardNorthsideDeck = getObjectFromGUID(BoardNorthsideDeckId)
                    BoardNorthsideDeck.putObject(obj)                
                end
                
                if tag == 'Downtown' then
                    foundTag = true
                    --Get the expansion's deck ID
                    local BoardDowntownDeckId = SetupVariablesNew.call('getBoardDowntowndeckId')
                    local BoardDowntownDeck = getObjectFromGUID(BoardDowntownDeckId)
                    BoardDowntownDeck.putObject(obj)                
                end
                
                if Tag == 'Easttown' then
                    foundTag = true
                    --Get the expansion's deck ID
                    local BoardEasttownDeckId = SetupVariablesNew.call('getBoardEasttowndeckId')
                    local BoardEasttownDeck = getObjectFromGUID(BoardEasttownDeckId)
                    BoardEasttownDeck.putObject(obj)                                
                end
                
                if Tag == 'Merchant District' then
                    foundTag = true
                    --Get the expansion's deck ID
                    local BoardMerchantDeckId = SetupVariablesNew.call('getBoardMerchantdeckId')
                    local BoardMerchantDeck = getObjectFromGUID(BoardMerchantDeckId)
                    BoardMerchantDeck.putObject(obj)                                
                end
                
                if Tag == 'Rivertown' then
                    foundTag = true
                    --Get the expansion's deck ID
                    local BoardRivertownDeckId = SetupVariablesNew.call('getBoardRivertowndeckId')
                    local BoardRivertownDeck = getObjectFromGUID(BoardRivertownDeckId)
                    BoardRivertownDeck.putObject(obj)                                
                end
                
                if Tag == 'Miskatonic University' then
                    foundTag = true                
                    --Get the expansion's deck ID
                    local BoardMiskatonicDeckId = SetupVariablesNew.call('getBoardMiskatonicdeckId')
                    local BoardMiskatonicDeck = getObjectFromGUID(BoardMiskatonicDeckId)
                    BoardMiskatonicDeck.putObject(obj)                
                end
                
                if Tag == 'French Hill' then
                    foundTag = true                 
                    --Get the expansion's deck ID
                    local BoardFrenchDeckId = SetupVariablesNew.call('getBoardFrenchdeckId')
                    local BoardFrenchDeck = getObjectFromGUID(BoardFrenchDeckId)
                    BoardFrenchDeck.putObject(obj)                
                end
                
                if Tag == 'Uptown' then
                    foundTag = true                  
                    --Get the expansion's deck ID
                    local BoardUptownDeckId = SetupVariablesNew.call('getBoardUptowndeckId')
                    local BoardUptownDeck = getObjectFromGUID(BoardUptownDeckId)
                    BoardUptownDeck.putObject(obj)                
                end
                
                if Tag == 'Southside' then
                    foundTag = true 
                    --Get the expansion's deck ID
                    local BoardSouthsideDeckId = SetupVariablesNew.call('getBoardSouthsidedeckId')
                    local BoardSouthsideDeck = getObjectFromGUID(BoardSouthsideDeckId)
                    BoardSouthsideDeck.putObject(obj)                
                end
                
                if Tag == 'Common Item' then
                    foundTag = true 
                    --Get the expansion's deck ID
                    local BoardCommonDeckId = SetupVariablesNew.call('getBoardCommondeckId')
                    local BoardSouthsideDeck = getObjectFromGUID(BoardCommonDeckId)
                    BoardCommonDeck.putObject(obj)                
                end
                
                if Tag == 'Unique Item' then
                    foundTag = true 
                    --Get the expansion's deck ID
                    local BoardUniqueDeckId = SetupVariablesNew.call('getBoardUniquedeckId')
                    local BoardUniqueDeck = getObjectFromGUID(BoardUniqueDeckId)
                    BoardUniqueDeck.putObject(obj)            
                end
                
                if Tag == 'Skill' then
                    foundTag = true 
                    --Get the expansion's deck ID
                    local BoardSkillsDeckId = SetupVariablesNew.call('getBoardSkillsdeckId')
                    local BoardSkillsDeck = getObjectFromGUID(BoardSkillsDeckId)
                    BoardSkillsDeck.putObject(obj)       
                end
                
                if Tag == 'Spell' then
                    foundTag = true 
                    --Get the expansion's deck ID
                    local BoardSpellsDeckId = SetupVariablesNew.call('getBoardSpellsdeckId')
                    local BoardSpellsDeck = getObjectFromGUID(BoardSpellsDeckId)
                    BoardSpellsDeck.putObject(obj)      
                end
                
                if Tag == 'Ally' then
                    foundTag = true 
                    --Get the expansion's deck ID
                    local BoardAlliesDeckId = SetupVariablesNew.call('getBoardAlliesdeckId')
                    local BoardAlliesDeck = getObjectFromGUID(BoardAlliesDeckId)
                    BoardAlliesDeck.putObject(obj)  
                end
                
                if Tag == 'Mythos' then
                    foundTag = true 
                    --Get the expansion's deck ID
                    local BoardMythosDeckId = SetupVariablesNew.call('getBoardMythosdeckId')
                    local BoardMythosDeck = getObjectFromGUID(BoardMythosDeckId)
                    BoardMythosDeck.putObject(obj)
                end
                
                if Tag == 'Gate_Deck' then
                    foundTag = true 
                    --Get the expansion's deck ID
                    local BoardGateDeckId = SetupVariablesNew.call('getBoardGatedeckId')
                    local BoardGateDeck = getObjectFromGUID(BoardGateDeckId)
                    BoardGateDeck.putObject(obj)
                end    
                
                -- Expansion-specific
                if Tag == 'Dunwich Monsters' then
                    foundTag = true 
                    --They're always setup in the same place, no matter the board position
                    local DunwichMonsterPosition = SetupVariablesNew.call('getBoardPositionsDunwichSoloById',{objGUID})
                    obj.setPosition(DunwichMonsterPosition)
                end  

                if Tag == 'Gate Markers Bag' then
                    foundTag = true 
                    local DunwichGateMarkerPosition
                    if DunwichSolo == true then
                        DunwichGateMarkerPosition = SetupVariablesNew.call('getBoardPositionsDunwichSoloById',{objGUID})
                    end
                    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
                        DunwichGateMarkerPosition = SetupVariablesNew.call('getBoardPositionsInnsmouthDunwichById',{objGUID})
                    end
                    obj.setPosition(DunwichGateMarkerPosition)
                end   
                
                if Tag == 'Dunwich Horror Cards' then
                    foundTag = true 
                    local DunwichSouthPosition
                    if DunwichSolo == true then
                        DunwichSouthPosition = SetupVariablesNew.call('getBoardPositionsDunwichSoloById',{objGUID})
                    end
                    
                    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
                        DunwichSouthPosition = SetupVariablesNew.call('getBoardPositionsInnsmouthDunwichById',{objGUID})
                    end
                    obj.setPosition(DunwichSouthPosition)
                    obj.rotate({0, 0, 0})
                end   
                
                if Tag == 'Blasted Heath' then
                    foundTag = true 
                    local DunwichBlastedHeathPosition
                    if DunwichSolo == true then
                        DunwichBlastedHeathPosition = SetupVariablesNew.call('getBoardPositionsDunwichSoloById',{objGUID})
                    end
                    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
                        DunwichBlastedHeathPosition = SetupVariablesNew.call('getBoardPositionsInnsmouthDunwichById',{objGUID})
                    end
                    obj.setPosition(DunwichBlastedHeathPosition)
                    obj.randomize()
                end   
                
                if Tag == 'Condition' then
                    foundTag = true 
                    local DunwichConditionPosition
                    if DunwichSolo == true then
                        DunwichConditionPosition = SetupVariablesNew.call('getBoardPositionsDunwichSoloById',{objGUID})
                    end
                    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
                        DunwichConditionPosition = SetupVariablesNew.call('getBoardPositionsInnsmouthDunwichById',{objGUID})
                    end
                    obj.setPosition(DunwichConditionPosition)
                    obj.randomize()
                end   
                
                if Tag == 'Rail Pass' then
                    foundTag = true 
                    local DunwichRailPassPosition
                    if DunwichSolo == true then
                        DunwichRailPassPosition = SetupVariablesNew.call('getBoardPositionsDunwichSoloById',{objGUID})
                    end
                    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
                        DunwichRailPassPosition = SetupVariablesNew.call('getBoardPositionsInnsmouthDunwichById',{objGUID})
                    end
                    obj.setPosition(DunwichRailPassPosition)
                    obj.randomize()
                end 
                
                -- The Monster Itself
                if Tag == 'Dunwich Horror Monster' then
                    foundTag = true 
                    local DunwichMonsterPosition
                    if DunwichSolo == true then
                        DunwichMonsterPosition = SetupVariablesNew.call('getBoardPositionsDunwichSoloById',{objGUID})
                    end
                    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
                        DunwichMonsterPosition = SetupVariablesNew.call('getBoardPositionsInnsmouthDunwichById',{objGUID})
                    end
                    obj.setPosition(DunwichMonsterPosition)
                end 
                
                if Tag == 'Sheldon Gang' then
                    foundTag = true 
                    local DunwichSheldonGangPosition
                    if DunwichSolo == true then
                        DunwichSheldonGangPosition = SetupVariablesNew.call('getBoardPositionsDunwichSoloById',{objGUID})
                    end
                    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
                        DunwichSheldonGangPosition = SetupVariablesNew.call('getBoardPositionsInnsmouthDunwichById',{objGUID})
                    end
                    
                    obj.setPosition(DunwichSheldonGangPosition)
                end
                -- Gate Markers Bag
                if Tag == 'Gate Markers Bag' then
                    foundTag = true 
                    local KingsportGateMarkerPosition
                    if KingsportSolo == true or KingsportDunwich == true then
                        KingsportGateMarkerPosition = SetupVariablesNew.call('getBoardPositionsKingsportSoloById',{objGUID})
                    end
                    if InnsmouthKingsport == true then
                        KingsportGateMarkerPosition = SetupVariablesNew.call('getBoardPositionsInnsmouthKingsportById',{objGUID})
                    end
                    if AllThreeBoards == true then
                        KingsportGateMarkerPosition = SetupVariablesNew.call('getBoardPositions3BoardsById',{objGUID})
                    end
                    obj.setPosition(KingsportGateMarkerPosition)
                end
                
                -- The Three tokens
                if Tag == 'Dunwich Horror Token' then
                    foundTag = true 
                    local DunwichHorrorTokenPosition
                    if DunwichSolo == true then
                        DunwichHorrorTokenPosition = SetupVariablesNew.call('getBoardPositionsDunwichSoloById',{objGUID})
                    end
                    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
                        DunwichHorrorTokenPosition = SetupVariablesNew.call('getBoardPositionsInnsmouthDunwichById',{objGUID})
                    end
                    obj.setPosition(DunwichHorrorTokenPosition)
                end
                
                if Tag == 'Village Commons' then
                    foundTag = true 
                    local DunwichVillageCommonsPosition
                    if DunwichSolo == true then
                        DunwichVillageCommonsPosition = SetupVariablesNew.call('getBoardPositionsDunwichSoloById',{objGUID})
                    end
                    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
                        DunwichVillageCommonsPosition = SetupVariablesNew.call('getBoardPositionsInnsmouthDunwichById',{objGUID})
                    end
                    obj.setPosition(DunwichVillageCommonsPosition)
                    obj.randomize()
                end
                
                if Tag == 'Backwoods Country' then
                    foundTag = true 
                    local DunwichBackwoodsPosition
                    if DunwichSolo == true then
                        DunwichBackwoodsPosition = SetupVariablesNew.call('getBoardPositionsDunwichSoloById',{objGUID})
                    end
                    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
                        DunwichBackwoodsPosition = SetupVariablesNew.call('getBoardPositionsInnsmouthDunwichById',{objGUID})
                    end
                    obj.setPosition(DunwichBackwoodsPosition)
                    obj.randomize()
                end
                
                if Tag == 'Dunwich Board' then
                    foundTag = true 
                    local DunwichBoardPosition
                    if DunwichSolo == true then
                        DunwichBoardPosition = SetupVariablesNew.call('getBoardPositionsDunwichSoloById',{objGUID})
                    end
                    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
                        DunwichBoardPosition = SetupVariablesNew.call('getBoardPositionsInnsmouthDunwichById',{objGUID})
                    end
                    obj.setPosition(DunwichBoardPosition)
                    obj.setScale({6.85, 1.00, 6.85})
                    Wait.time(function() obj.locked = true  end,2)
                end
                
                if foundTag == true then
                    break
                end
            end
            if foundTag == false then
                log('Dunwich not found ' .. objGUID)
                --log('Name ' .. objGUID.getName())
                --log('Name ' .. objGUID.getDescription())
            end
        end
    end
end
 --]]
--[[ function PlaceYellow()
    
    YellowOriginalActs = ControlPanelVariables.call('isYellowOriginalActs')
    
    local Yellow_Northside_deck_id = YellowVariables.call("getYellowNorthsideDeckId")
    local Yellow_Downtown_deck_id = YellowVariables.call("getYellowDowntownDeckId")
    local Yellow_Easttown_deck_id = YellowVariables.call("getYellowEasttownDeckId")
    local Yellow_Merchant_deck_id = YellowVariables.call("getYellowMerchantDeckId")
    local Yellow_Rivertown_deck_id = YellowVariables.call("getYellowRivertownDeckId")
    local Yellow_Miskatonic_deck_id = YellowVariables.call("getYellowMiskatonicDeckId")
    local Yellow_French_deck_id = YellowVariables.call("getYellowFrenchDeckId")
    local Yellow_Uptown_deck_id = YellowVariables.call("getYellowUptownDeckId")
    local Yellow_Southside_deck_id = YellowVariables.call("getYellowSouthsideDeckId")
    local Yellow_Skills_deck_id = YellowVariables.call("getYellowSkillsDeckId")
    local Yellow_Mythos_deck_id = YellowVariables.call("getYellowMythosDeckId")
    local Yellow_Gate_deck_id = YellowVariables.call("getYellowGateDeckId")
    
    local Yellow_Common_deck_id= YellowVariables.call("getYellowCommonDeckId")
    local Yellow_Unique_deck_id= YellowVariables.call("getYellowUniqueDeckId")
    local Yellow_Spells_deck_id= YellowVariables.call("getYellowSpellsDeckId")
    local Yellow_Spells_deck_id= YellowVariables.call("getYellowSpellsDeckId")
    --local Yellow_Allies_deck_id= YellowVariables.call("getYellowAlliesDeckId")
    
    local Yellow_Acts_Deck_id = YellowVariables.call("getYellowActsDeckId")
    local Yellow_Original_Acts_Deck_id = YellowVariables.call("getYellowOriginalActsDeckId")
    local Yellow_Magical_Effect_Deck_id = YellowVariables.call("getYellowMagicalEffectsDeckId")
    
    local YellowScriptingZoneID = YellowVariables.call("getYellowScriptingZone")
    
    local YellowScriptingZone = getObjectFromGUID(YellowScriptingZoneID)
    
    local ObjectsInYellowZone = YellowScriptingZone.getObjects()
    
    for _, obj in pairs(ObjectsInYellowZone) do
        local objGUID = obj.getGUID()
        if objGUID == Yellow_Gate_deck_id then
            --Get the expansion's deck ID
            local BoardGateDeckId = SetupVariablesNew.call('getBoardGatedeckId')
            local BoardGateDeck = getObjectFromGUID(BoardGateDeckId)
            BoardGateDeck.putObject(obj)
            
        end
        if objGUID == Yellow_Mythos_deck_id then
            --Get the expansion's deck ID
            local BoardDowntownDeckId = SetupVariablesNew.call('getBoardMythosdeckId')
            local BoardDowntownDeck = getObjectFromGUID(BoardDowntownDeckId)
            BoardDowntownDeck.putObject(obj)
            
        end
        if objGUID == Yellow_Northside_deck_id then
            --Get the expansion's deck ID
            local BoardNorthsideDeckId = SetupVariablesNew.call('getBoardNorthsidedeckId')
            local BoardNorthsideDeck = getObjectFromGUID(BoardNorthsideDeckId)
            BoardNorthsideDeck.putObject(obj)
            
        end
        if objGUID == Yellow_Downtown_deck_id then
            --Get the expansion's deck ID
            local BoardDowntownDeckId = SetupVariablesNew.call('getBoardDowntowndeckId')
            local BoardDowntownDeck = getObjectFromGUID(BoardDowntownDeckId)
            BoardDowntownDeck.putObject(obj)
            
        end
        if objGUID == Yellow_Easttown_deck_id then
            --Get the expansion's deck ID
            local BoardEasttownDeckId = SetupVariablesNew.call('getBoardEasttowndeckId')
            local BoardEasttownDeck = getObjectFromGUID(BoardEasttownDeckId)
            BoardEasttownDeck.putObject(obj)
            
        end
        if objGUID == Yellow_Merchant_deck_id then
            --Get the expansion's deck ID
            local BoardMerchantDeckId = SetupVariablesNew.call('getBoardMerchantdeckId')
            local BoardMerchantDeck = getObjectFromGUID(BoardMerchantDeckId)
            BoardMerchantDeck.putObject(obj)
            
        end
        if objGUID == Yellow_Rivertown_deck_id then
            --Get the expansion's deck ID
            local BoardRivertownDeckId = SetupVariablesNew.call('getBoardRivertowndeckId')
            local BoardRivertownDeck = getObjectFromGUID(BoardRivertownDeckId)
            BoardRivertownDeck.putObject(obj)
            
        end
        if objGUID == Yellow_Miskatonic_deck_id then
            --Get the expansion's deck ID
            local BoardMiskatonicDeckId = SetupVariablesNew.call('getBoardMiskatonicdeckId')
            local BoardMiskatonicDeck = getObjectFromGUID(BoardMiskatonicDeckId)
            BoardMiskatonicDeck.putObject(obj)
            
        end
        if objGUID == Yellow_French_deck_id then
            --Get the expansion's deck ID
            local BoardFrenchDeckId = SetupVariablesNew.call('getBoardFrenchdeckId')
            local BoardFrenchDeck = getObjectFromGUID(BoardFrenchDeckId)
            BoardFrenchDeck.putObject(obj)
            
        end
        if objGUID == Yellow_Uptown_deck_id then
            --Get the expansion's deck ID
            local BoardUptownDeckId = SetupVariablesNew.call('getBoardUptowndeckId')
            local BoardUptownDeck = getObjectFromGUID(BoardUptownDeckId)
            BoardUptownDeck.putObject(obj)
            
        end
        if objGUID == Yellow_Southside_deck_id then
            --Get the expansion's deck ID
            local BoardSouthsideDeckId = SetupVariablesNew.call('getBoardSouthsidedeckId')
            local BoardSouthsideDeck = getObjectFromGUID(BoardSouthsideDeckId)
            BoardSouthsideDeck.putObject(obj)
            
        end
        if objGUID == Yellow_Common_deck_id then
            --Get the expansion's deck ID
            local BoardCommonDeckId = SetupVariablesNew.call('getBoardCommondeckId')
            local BoardCommonDeck = getObjectFromGUID(BoardCommonDeckId)
            BoardCommonDeck.putObject(obj)
            
        end
        if objGUID == Yellow_Unique_deck_id then
            --Get the expansion's deck ID
            local BoardUniqueDeckId = SetupVariablesNew.call('getBoardUniquedeckId')
            local BoardUniqueDeck = getObjectFromGUID(BoardUniqueDeckId)
            BoardUniqueDeck.putObject(obj)
            
        end
        if objGUID == Yellow_Spells_deck_id then
            --Get the expansion's deck ID
            local BoardSpellsDeckId = SetupVariablesNew.call('getBoardSpellsdeckId')
            local BoardSpellsDeck = getObjectFromGUID(BoardSpellsDeckId)
            BoardSpellsDeck.putObject(obj)
            
        end
        if objGUID == Yellow_Skills_deck_id then
            --Get the expansion's deck ID
            local BoardSkillsDeckId = SetupVariablesNew.call('getBoardSkillsdeckId')
            local BoardSkillsDeck = getObjectFromGUID(BoardSkillsDeckId)
            BoardSkillsDeck.putObject(obj)
            
        end
        -- if objGUID == Yellow_Allies_deck_id then
            --
            --     --Get the expansion's deck ID
            --     local BoardAlliesDeckId = SetupVariablesNew.call('getBoardAlliesdeckId')
            --     local BoardAlliesDeck = getObjectFromGUID(BoardAlliesDeckId)
            --     BoardAlliesDeck.putObject(obj)
            -- end
            -- Expansion-specific
            if objGUID == Yellow_Acts_Deck_id then
                --Get the expansion's deck ID
                local BoardActsPosition = SetupVariablesNew.call('getBoardPositionsDecksById',{objGUID})
                obj.setPosition(BoardActsPosition)
            end
            
            if objGUID == Yellow_Original_Acts_Deck_id then
                --Get the expansion's deck ID
                local BoardActsPosition = SetupVariablesNew.call('getBoardPositionsDecksById',{objGUID})
                obj.setPosition(BoardActsPosition)
            end
            
            if objGUID == Yellow_Magical_Effect_Deck_id then
                BoardMagicalEffectPosition = SetupVariablesNew.call('getBoardPositionsDecksById',{objGUID})
                obj.setPosition(BoardMagicalEffectPosition)
                --Removed rotation due to change of position of the special Cards
                -- obj.rotate({0, 90, 0})
            end
        end
    end
 --]]    
--[[     function PlaceGoat()
        
        local Goat_Northside_deck_id = GoatVariables.call("getGoatNorthsideDeckId")
        local Goat_Downtown_deck_id = GoatVariables.call("getGoatDowntownDeckId")
        local Goat_Easttown_deck_id = GoatVariables.call("getGoatEasttownDeckId")
        local Goat_Merchant_deck_id = GoatVariables.call("getGoatMerchantDeckId")
        local Goat_Rivertown_deck_id = GoatVariables.call("getGoatRivertownDeckId")
        local Goat_Miskatonic_deck_id = GoatVariables.call("getGoatMiskatonicDeckId")
        local Goat_French_deck_id = GoatVariables.call("getGoatFrenchDeckId")
        local Goat_Uptown_deck_id = GoatVariables.call("getGoatUptownDeckId")
        local Goat_Southside_deck_id = GoatVariables.call("getGoatSouthsideDeckId")
        local Goat_Skills_deck_id = GoatVariables.call("getGoatSkillsDeckId")
        local Goat_Mythos_deck_id = GoatVariables.call("getGoatMythosDeckId")
        local Goat_Gate_deck_id = GoatVariables.call("getGoatGateDeckId")
        
        local Goat_Common_deck_id= GoatVariables.call("getGoatCommonDeckId")
        local Goat_Unique_deck_id= GoatVariables.call("getGoatUniqueDeckId")
        local Goat_Spells_deck_id= GoatVariables.call("getGoatSpellsDeckId")
        local Goat_Spells_deck_id= GoatVariables.call("getGoatSpellsDeckId")
        --local Goat_Allies_deck_id= GoatVariables.call("getGoatAlliesDeckId")
        
        -- Black Goat Specific Items
        
        local Goat_Encounters_Deck_id = GoatVariables.call("getGoatEncountersDeckId")
        local Goat_Membership_Deck_id = GoatVariables.call("getGoatMembershipDeckId")
        local Goat_Red_Corruption_Deck_id = GoatVariables.call("getGoatRedCorruptionDeckId")
        local Goat_Green_Corruption_Deck_Id = GoatVariables.call("getGoatGreenCorruptionDeckId")
        local Goat_Monster_Bag_Id = GoatVariables.call("getGoatMonsterBagId")
        
        local GoatScriptingZoneID = GoatVariables.call("getGoatScriptingZone")
        
        local GoatScriptingZone = getObjectFromGUID(GoatScriptingZoneID)
        
        local ObjectsInGoatZone = GoatScriptingZone.getObjects()
        
        for _, obj in pairs(ObjectsInGoatZone) do
            local objGUID = obj.getGUID()
            if objGUID == Goat_Gate_deck_id then
                --Get the expansion's deck ID
                local BoardGateDeckId = SetupVariablesNew.call('getBoardGatedeckId')
                local BoardGateDeck = getObjectFromGUID(BoardGateDeckId)
                BoardGateDeck.putObject(obj)
                
            end
            if objGUID == Goat_Mythos_deck_id then
                --Get the expansion's deck ID
                local BoardDowntownDeckId = SetupVariablesNew.call('getBoardMythosdeckId')
                local BoardDowntownDeck = getObjectFromGUID(BoardDowntownDeckId)
                BoardDowntownDeck.putObject(obj)
                
            end
            if objGUID == Goat_Northside_deck_id then
                --Get the expansion's deck ID
                local BoardNorthsideDeckId = SetupVariablesNew.call('getBoardNorthsidedeckId')
                local BoardNorthsideDeck = getObjectFromGUID(BoardNorthsideDeckId)
                BoardNorthsideDeck.putObject(obj)
                
            end
            if objGUID == Goat_Downtown_deck_id then
                --Get the expansion's deck ID
                local BoardDowntownDeckId = SetupVariablesNew.call('getBoardDowntowndeckId')
                local BoardDowntownDeck = getObjectFromGUID(BoardDowntownDeckId)
                BoardDowntownDeck.putObject(obj)
                
            end
            if objGUID == Goat_Easttown_deck_id then
                --Get the expansion's deck ID
                local BoardEasttownDeckId = SetupVariablesNew.call('getBoardEasttowndeckId')
                local BoardEasttownDeck = getObjectFromGUID(BoardEasttownDeckId)
                BoardEasttownDeck.putObject(obj)
                
            end
            if objGUID == Goat_Merchant_deck_id then
                --Get the expansion's deck ID
                local BoardMerchantDeckId = SetupVariablesNew.call('getBoardMerchantdeckId')
                local BoardMerchantDeck = getObjectFromGUID(BoardMerchantDeckId)
                BoardMerchantDeck.putObject(obj)
                
            end
            if objGUID == Goat_Rivertown_deck_id then
                --Get the expansion's deck ID
                local BoardRivertownDeckId = SetupVariablesNew.call('getBoardRivertowndeckId')
                local BoardRivertownDeck = getObjectFromGUID(BoardRivertownDeckId)
                BoardRivertownDeck.putObject(obj)
                
            end
            if objGUID == Goat_Miskatonic_deck_id then
                --Get the expansion's deck ID
                local BoardMiskatonicDeckId = SetupVariablesNew.call('getBoardMiskatonicdeckId')
                local BoardMiskatonicDeck = getObjectFromGUID(BoardMiskatonicDeckId)
                BoardMiskatonicDeck.putObject(obj)
                
            end
            if objGUID == Goat_French_deck_id then
                --Get the expansion's deck ID
                local BoardFrenchDeckId = SetupVariablesNew.call('getBoardFrenchdeckId')
                local BoardFrenchDeck = getObjectFromGUID(BoardFrenchDeckId)
                BoardFrenchDeck.putObject(obj)
                
            end
            if objGUID == Goat_Uptown_deck_id then
                --Get the expansion's deck ID
                local BoardUptownDeckId = SetupVariablesNew.call('getBoardUptowndeckId')
                local BoardUptownDeck = getObjectFromGUID(BoardUptownDeckId)
                BoardUptownDeck.putObject(obj)
                
            end
            if objGUID == Goat_Southside_deck_id then
                --Get the expansion's deck ID
                local BoardSouthsideDeckId = SetupVariablesNew.call('getBoardSouthsidedeckId')
                local BoardSouthsideDeck = getObjectFromGUID(BoardSouthsideDeckId)
                BoardSouthsideDeck.putObject(obj)
                
            end
            if objGUID == Goat_Common_deck_id then
                --Get the expansion's deck ID
                local BoardCommonDeckId = SetupVariablesNew.call('getBoardCommondeckId')
                local BoardCommonDeck = getObjectFromGUID(BoardCommonDeckId)
                BoardCommonDeck.putObject(obj)
                
            end
            if objGUID == Goat_Unique_deck_id then
                --Get the expansion's deck ID
                local BoardUniqueDeckId = SetupVariablesNew.call('getBoardUniquedeckId')
                local BoardUniqueDeck = getObjectFromGUID(BoardUniqueDeckId)
                BoardUniqueDeck.putObject(obj)
                
            end
            if objGUID == Goat_Spells_deck_id then
                --Get the expansion's deck ID
                local BoardSpellsDeckId = SetupVariablesNew.call('getBoardSpellsdeckId')
                local BoardSpellsDeck = getObjectFromGUID(BoardSpellsDeckId)
                BoardSpellsDeck.putObject(obj)
                
            end
            if objGUID == Goat_Skills_deck_id then
                --Get the expansion's deck ID
                local BoardSkillsDeckId = SetupVariablesNew.call('getBoardSkillsdeckId')
                local BoardSkillsDeck = getObjectFromGUID(BoardSkillsDeckId)
                BoardSkillsDeck.putObject(obj)
                
            end
            -- if objGUID == Goat_Allies_deck_id then
                --
                --     --Get the expansion's deck ID
                --     local BoardAlliesDeckId = SetupVariablesNew.call('getBoardAlliesdeckId')
                --     local BoardAlliesDeck = getObjectFromGUID(BoardAlliesDeckId)
                --     BoardAlliesDeck.putObject(obj)
                -- end
                -- Expansion-specific
                if objGUID == Goat_Encounters_Deck_id then
                    --Get the expansion's deck ID
                    local BoardEncountersPosition = SetupVariablesNew.call('getBoardPositionsDecksById',{objGUID})
                    obj.setPosition(BoardEncountersPosition)
                    obj.randomize()
                end
                if objGUID == Goat_Red_Corruption_Deck_id then
                    --Get the expansion's deck ID
                    local BoardRedCorruptionPosition = SetupVariablesNew.call('getBoardPositionsDecksById',{objGUID})
                    obj.setPosition(BoardRedCorruptionPosition)
                    obj.randomize()
                end
                if objGUID == Goat_Green_Corruption_Deck_Id then
                    --Get the expansion's deck ID
                    local BoardGreenCorruptionPosition = SetupVariablesNew.call('getBoardPositionsDecksById',{objGUID})
                    obj.setPosition(BoardGreenCorruptionPosition)
                    obj.randomize()
                end
                if objGUID == Goat_Membership_Deck_id then
                    --Get the expansion's deck ID
                    local BoardMembershipPosition = SetupVariablesNew.call('getBoardPositionsDecksById',{objGUID})
                    obj.setPosition(BoardMembershipPosition)
                end
                if objGUID == Goat_Monster_Bag_Id then
                    BoardMonsterBagPosition = SetupVariablesNew.call('getBoardPositionsDecksById',{objGUID})
                    obj.setPosition(BoardMonsterBagPosition)
                end
            end
        end --]]
        
--[[         function PlacePharaoh()
            
            local Pharaoh_Northside_deck_id = PharaohVariables.call("getPharaohNorthsideDeckId")
            local Pharaoh_Downtown_deck_id = PharaohVariables.call("getPharaohDowntownDeckId")
            local Pharaoh_Easttown_deck_id = PharaohVariables.call("getPharaohEasttownDeckId")
            local Pharaoh_Merchant_deck_id = PharaohVariables.call("getPharaohMerchantDeckId")
            local Pharaoh_Rivertown_deck_id = PharaohVariables.call("getPharaohRivertownDeckId")
            local Pharaoh_Miskatonic_deck_id = PharaohVariables.call("getPharaohMiskatonicDeckId")
            local Pharaoh_French_deck_id = PharaohVariables.call("getPharaohFrenchDeckId")
            local Pharaoh_Uptown_deck_id = PharaohVariables.call("getPharaohUptownDeckId")
            local Pharaoh_Southside_deck_id = PharaohVariables.call("getPharaohSouthsideDeckId")
            local Pharaoh_Skills_deck_id = PharaohVariables.call("getPharaohSkillsDeckId")
            local Pharaoh_Mythos_deck_id = PharaohVariables.call("getPharaohMythosDeckId")
            local Pharaoh_Gate_deck_id = PharaohVariables.call("getPharaohGateDeckId")
            
            -- local Pharaoh_Common_deck_id= PharaohVariables.call("getPharaohCommonDeckId")
            -- local Pharaoh_Unique_deck_id= PharaohVariables.call("getPharaohUniqueDeckId")
            local Pharaoh_Spells_deck_id= PharaohVariables.call("getPharaohSpellsDeckId")
            local Pharaoh_Spells_deck_id= PharaohVariables.call("getPharaohSpellsDeckId")
            local Pharaoh_Allies_deck_id= PharaohVariables.call("getPharaohAlliesDeckId")
            
            -- Dark Pharaoh Specific Items
            
            local Pharaoh_Benefits_Deck_id = PharaohVariables.call("getPharaohBenefitsDeckId")
            local Pharaoh_Detriments_Deck_id = PharaohVariables.call("getPharaohDetrimentsDeckId")
            local Pharaoh_Exhibit_Item_Deck_id = PharaohVariables.call("getPharaohExhibitItemDeckId")
            local Pharaoh_Exhibit_Encounter_Deck_Id = PharaohVariables.call("getPharaohExhibitEncounterDeckId")
            local Pharaoh_Patrol_Marker_Id = PharaohVariables.call("getPharaohPatrolMarkerId")
            local Pharaoh_Ancient_Whispers_Token_Id = PharaohVariables.call("getPharaohAncientWhispersTokenId")
            
            local PharaohScriptingZoneID = PharaohVariables.call("getPharaohScriptingZone")
            
            local PharaohScriptingZone = getObjectFromGUID(PharaohScriptingZoneID)
            
            local ObjectsInPharaohZone = PharaohScriptingZone.getObjects()
            
            for _, obj in pairs(ObjectsInPharaohZone) do
                local objGUID = obj.getGUID()
                if objGUID == Pharaoh_Gate_deck_id then
                    --Get the expansion's deck ID
                    local BoardGateDeckId = SetupVariablesNew.call('getBoardGatedeckId')
                    local BoardGateDeck = getObjectFromGUID(BoardGateDeckId)
                    BoardGateDeck.putObject(obj)
                    
                end
                if objGUID == Pharaoh_Mythos_deck_id then
                    --Get the expansion's deck ID
                    local BoardDowntownDeckId = SetupVariablesNew.call('getBoardMythosdeckId')
                    local BoardDowntownDeck = getObjectFromGUID(BoardDowntownDeckId)
                    BoardDowntownDeck.putObject(obj)
                    
                end
                if objGUID == Pharaoh_Northside_deck_id then
                    --Get the expansion's deck ID
                    local BoardNorthsideDeckId = SetupVariablesNew.call('getBoardNorthsidedeckId')
                    local BoardNorthsideDeck = getObjectFromGUID(BoardNorthsideDeckId)
                    BoardNorthsideDeck.putObject(obj)
                    
                end
                if objGUID == Pharaoh_Downtown_deck_id then
                    --Get the expansion's deck ID
                    local BoardDowntownDeckId = SetupVariablesNew.call('getBoardDowntowndeckId')
                    local BoardDowntownDeck = getObjectFromGUID(BoardDowntownDeckId)
                    BoardDowntownDeck.putObject(obj)
                    
                end
                if objGUID == Pharaoh_Easttown_deck_id then
                    --Get the expansion's deck ID
                    local BoardEasttownDeckId = SetupVariablesNew.call('getBoardEasttowndeckId')
                    local BoardEasttownDeck = getObjectFromGUID(BoardEasttownDeckId)
                    BoardEasttownDeck.putObject(obj)
                    
                end
                if objGUID == Pharaoh_Merchant_deck_id then
                    --Get the expansion's deck ID
                    local BoardMerchantDeckId = SetupVariablesNew.call('getBoardMerchantdeckId')
                    local BoardMerchantDeck = getObjectFromGUID(BoardMerchantDeckId)
                    BoardMerchantDeck.putObject(obj)
                    
                end
                if objGUID == Pharaoh_Rivertown_deck_id then
                    --Get the expansion's deck ID
                    local BoardRivertownDeckId = SetupVariablesNew.call('getBoardRivertowndeckId')
                    local BoardRivertownDeck = getObjectFromGUID(BoardRivertownDeckId)
                    BoardRivertownDeck.putObject(obj)
                    
                end
                if objGUID == Pharaoh_Miskatonic_deck_id then
                    --Get the expansion's deck ID
                    local BoardMiskatonicDeckId = SetupVariablesNew.call('getBoardMiskatonicdeckId')
                    local BoardMiskatonicDeck = getObjectFromGUID(BoardMiskatonicDeckId)
                    BoardMiskatonicDeck.putObject(obj)
                    
                end
                if objGUID == Pharaoh_French_deck_id then
                    --Get the expansion's deck ID
                    local BoardFrenchDeckId = SetupVariablesNew.call('getBoardFrenchdeckId')
                    local BoardFrenchDeck = getObjectFromGUID(BoardFrenchDeckId)
                    BoardFrenchDeck.putObject(obj)
                    
                end
                if objGUID == Pharaoh_Uptown_deck_id then
                    --Get the expansion's deck ID
                    local BoardUptownDeckId = SetupVariablesNew.call('getBoardUptowndeckId')
                    local BoardUptownDeck = getObjectFromGUID(BoardUptownDeckId)
                    BoardUptownDeck.putObject(obj)
                    
                end
                if objGUID == Pharaoh_Southside_deck_id then
                    --Get the expansion's deck ID
                    local BoardSouthsideDeckId = SetupVariablesNew.call('getBoardSouthsidedeckId')
                    local BoardSouthsideDeck = getObjectFromGUID(BoardSouthsideDeckId)
                    BoardSouthsideDeck.putObject(obj)
                    
                end
                -- if objGUID == Pharaoh_Common_deck_id then
                    --     --Get the expansion's deck ID
                    --     local BoardCommonDeckId = SetupVariablesNew.call('getBoardCommondeckId')
                    --     local BoardCommonDeck = getObjectFromGUID(BoardCommonDeckId)
                    --     BoardCommonDeck.putObject(obj)
                    --
                    -- end
                    -- if objGUID == Pharaoh_Unique_deck_id then
                        --     --Get the expansion's deck ID
                        --     local BoardUniqueDeckId = SetupVariablesNew.call('getBoardUniquedeckId')
                        --     local BoardUniqueDeck = getObjectFromGUID(BoardUniqueDeckId)
                        --     BoardUniqueDeck.putObject(obj)
                        --
                        -- end
                        if objGUID == Pharaoh_Spells_deck_id then
                            --Get the expansion's deck ID
                            local BoardSpellsDeckId = SetupVariablesNew.call('getBoardSpellsdeckId')
                            local BoardSpellsDeck = getObjectFromGUID(BoardSpellsDeckId)
                            BoardSpellsDeck.putObject(obj)
                            
                        end
                        if objGUID == Pharaoh_Skills_deck_id then
                            --Get the expansion's deck ID
                            local BoardSkillsDeckId = SetupVariablesNew.call('getBoardSkillsdeckId')
                            local BoardSkillsDeck = getObjectFromGUID(BoardSkillsDeckId)
                            BoardSkillsDeck.putObject(obj)
                            
                        end
                        if objGUID == Pharaoh_Allies_deck_id then
                            
                            --Get the expansion's deck ID
                            local BoardAlliesDeckId = SetupVariablesNew.call('getBoardAlliesdeckId')
                            local BoardAlliesDeck = getObjectFromGUID(BoardAlliesDeckId)
                            BoardAlliesDeck.putObject(obj)
                        end
                        -- Expansion-specific
                        if objGUID == Pharaoh_Benefits_Deck_id then
                            --Get the expansion's deck ID
                            local BoardBenefitsPosition = SetupVariablesNew.call('getBoardPositionsDecksById',{objGUID})
                            obj.setPosition(BoardBenefitsPosition)
                        end
                        if objGUID == Pharaoh_Detriments_Deck_id then
                            --Get the expansion's deck ID
                            local BoardDetrimentsPosition = SetupVariablesNew.call('getBoardPositionsDecksById',{objGUID})
                            obj.setPosition(BoardDetrimentsPosition)
                        end
                        if objGUID == Pharaoh_Exhibit_Item_Deck_id then
                            --Get the expansion's deck ID
                            local BoardExhibitItemPosition = SetupVariablesNew.call('getBoardPositionsDecksById',{objGUID})
                            obj.setPosition(BoardExhibitItemPosition)
                            obj.randomize()
                        end
                        if objGUID == Pharaoh_Exhibit_Encounter_Deck_Id then
                            --Get the expansion's deck ID
                            local BoardExhibitEncounterPosition = SetupVariablesNew.call('getBoardPositionsDecksById',{objGUID})
                            obj.setPosition(BoardExhibitEncounterPosition)
                            obj.randomize()
                        end
                        if objGUID == Pharaoh_Patrol_Marker_Id then
                            BoardPatrolMarkerPosition = SetupVariablesNew.call('getBoardPositionsDecksById',{objGUID})
                            obj.setPosition(BoardPatrolMarkerPosition)
                        end
                        if objGUID == Pharaoh_Ancient_Whispers_Token_Id then
                            BoardAncientWhispersPosition = SetupVariablesNew.call('getBoardPositionsDecksById',{objGUID})
                            obj.setPosition(BoardAncientWhispersPosition)
                        end
                    end
                end
                
                function PlaceLurker()
                    
                    local KingsportSet = ControlPanelVariables.call('isKingsportSet')
                    local DunwichSet = ControlPanelVariables.call('isDunwichSet')
                    
                    local Lurker_Northside_deck_id = LurkerVariables.call("getLurkerNorthsideDeckId")
                    local Lurker_Downtown_deck_id = LurkerVariables.call("getLurkerDowntownDeckId")
                    local Lurker_Easttown_deck_id = LurkerVariables.call("getLurkerEasttownDeckId")
                    local Lurker_Merchant_deck_id = LurkerVariables.call("getLurkerMerchantDeckId")
                    local Lurker_Rivertown_deck_id = LurkerVariables.call("getLurkerRivertownDeckId")
                    local Lurker_Miskatonic_deck_id = LurkerVariables.call("getLurkerMiskatonicDeckId")
                    local Lurker_French_deck_id = LurkerVariables.call("getLurkerFrenchDeckId")
                    local Lurker_Uptown_deck_id = LurkerVariables.call("getLurkerUptownDeckId")
                    local Lurker_Southside_deck_id = LurkerVariables.call("getLurkerSouthsideDeckId")
                    local Lurker_Skills_deck_id = LurkerVariables.call("getLurkerSkillsDeckId")
                    local Lurker_Mythos_deck_id = LurkerVariables.call("getLurkerMythosDeckId")
                    local Lurker_Gate_deck_id = LurkerVariables.call("getLurkerGateDeckId")
                    
                    local Lurker_Common_deck_id= LurkerVariables.call("getLurkerCommonDeckId")
                    local Lurker_Unique_deck_id= LurkerVariables.call("getLurkerUniqueDeckId")
                    local Lurker_Spells_deck_id= LurkerVariables.call("getLurkerSpellsDeckId")
                    local Lurker_Spells_deck_id= LurkerVariables.call("getLurkerSpellsDeckId")
                    --local Lurker_Allies_deck_id= LurkerVariables.call("getLurkerAlliesDeckId")
                    
                    -- Lurker Specific Items
                    local Lurker_Gate_Marker_Bag_id = LurkerVariables.call("getLurkerGateMarkerBagId")
                    local Lurker_Dunw_Gate_Marker_Bag_id = LurkerVariables.call("getLurkerDunwGateMarkerBagId")
                    local Lurker_King_Gate_Marker_Bag_id = LurkerVariables.call("getLurkerKingGateMarkerBagId")
                    
                    local LurkerScriptingZoneID = LurkerVariables.call("getLurkerScriptingZone")
                    
                    local LurkerScriptingZone = getObjectFromGUID(LurkerScriptingZoneID)
                    
                    local ObjectsInLurkerZone = LurkerScriptingZone.getObjects()
                    
                    for _, obj in pairs(ObjectsInLurkerZone) do
                        local objGUID = obj.getGUID()
                        if objGUID == Lurker_Gate_deck_id then
                            --Get the expansion's deck ID
                            local BoardGateDeckId = SetupVariablesNew.call('getBoardGatedeckId')
                            local BoardGateDeck = getObjectFromGUID(BoardGateDeckId)
                            BoardGateDeck.putObject(obj)
                            
                        end
                        if objGUID == Lurker_Mythos_deck_id then
                            --Get the expansion's deck ID
                            local BoardDowntownDeckId = SetupVariablesNew.call('getBoardMythosdeckId')
                            local BoardDowntownDeck = getObjectFromGUID(BoardDowntownDeckId)
                            BoardDowntownDeck.putObject(obj)
                            
                        end
                        if objGUID == Lurker_Northside_deck_id then
                            --Get the expansion's deck ID
                            local BoardNorthsideDeckId = SetupVariablesNew.call('getBoardNorthsidedeckId')
                            local BoardNorthsideDeck = getObjectFromGUID(BoardNorthsideDeckId)
                            BoardNorthsideDeck.putObject(obj)
                            
                        end
                        if objGUID == Lurker_Downtown_deck_id then
                            --Get the expansion's deck ID
                            local BoardDowntownDeckId = SetupVariablesNew.call('getBoardDowntowndeckId')
                            local BoardDowntownDeck = getObjectFromGUID(BoardDowntownDeckId)
                            BoardDowntownDeck.putObject(obj)
                            
                        end
                        if objGUID == Lurker_Easttown_deck_id then
                            --Get the expansion's deck ID
                            local BoardEasttownDeckId = SetupVariablesNew.call('getBoardEasttowndeckId')
                            local BoardEasttownDeck = getObjectFromGUID(BoardEasttownDeckId)
                            BoardEasttownDeck.putObject(obj)
                            
                        end
                        if objGUID == Lurker_Merchant_deck_id then
                            --Get the expansion's deck ID
                            local BoardMerchantDeckId = SetupVariablesNew.call('getBoardMerchantdeckId')
                            local BoardMerchantDeck = getObjectFromGUID(BoardMerchantDeckId)
                            BoardMerchantDeck.putObject(obj)
                            
                        end
                        if objGUID == Lurker_Rivertown_deck_id then
                            --Get the expansion's deck ID
                            local BoardRivertownDeckId = SetupVariablesNew.call('getBoardRivertowndeckId')
                            local BoardRivertownDeck = getObjectFromGUID(BoardRivertownDeckId)
                            BoardRivertownDeck.putObject(obj)
                            
                        end
                        if objGUID == Lurker_Miskatonic_deck_id then
                            --Get the expansion's deck ID
                            local BoardMiskatonicDeckId = SetupVariablesNew.call('getBoardMiskatonicdeckId')
                            local BoardMiskatonicDeck = getObjectFromGUID(BoardMiskatonicDeckId)
                            BoardMiskatonicDeck.putObject(obj)
                            
                        end
                        if objGUID == Lurker_French_deck_id then
                            --Get the expansion's deck ID
                            local BoardFrenchDeckId = SetupVariablesNew.call('getBoardFrenchdeckId')
                            local BoardFrenchDeck = getObjectFromGUID(BoardFrenchDeckId)
                            BoardFrenchDeck.putObject(obj)
                            
                        end
                        if objGUID == Lurker_Uptown_deck_id then
                            --Get the expansion's deck ID
                            local BoardUptownDeckId = SetupVariablesNew.call('getBoardUptowndeckId')
                            local BoardUptownDeck = getObjectFromGUID(BoardUptownDeckId)
                            BoardUptownDeck.putObject(obj)
                            
                        end
                        if objGUID == Lurker_Southside_deck_id then
                            --Get the expansion's deck ID
                            local BoardSouthsideDeckId = SetupVariablesNew.call('getBoardSouthsidedeckId')
                            local BoardSouthsideDeck = getObjectFromGUID(BoardSouthsideDeckId)
                            BoardSouthsideDeck.putObject(obj)
                            
                        end
                        if objGUID == Lurker_Common_deck_id then
                            --Get the expansion's deck ID
                            local BoardCommonDeckId = SetupVariablesNew.call('getBoardCommondeckId')
                            local BoardCommonDeck = getObjectFromGUID(BoardCommonDeckId)
                            BoardCommonDeck.putObject(obj)
                            
                        end
                        if objGUID == Lurker_Unique_deck_id then
                            --Get the expansion's deck ID
                            local BoardUniqueDeckId = SetupVariablesNew.call('getBoardUniquedeckId')
                            local BoardUniqueDeck = getObjectFromGUID(BoardUniqueDeckId)
                            BoardUniqueDeck.putObject(obj)
                            
                        end
                        if objGUID == Lurker_Spells_deck_id then
                            --Get the expansion's deck ID
                            local BoardSpellsDeckId = SetupVariablesNew.call('getBoardSpellsdeckId')
                            local BoardSpellsDeck = getObjectFromGUID(BoardSpellsDeckId)
                            BoardSpellsDeck.putObject(obj)
                            
                        end
                        if objGUID == Lurker_Skills_deck_id then
                            --Get the expansion's deck ID
                            local BoardSkillsDeckId = SetupVariablesNew.call('getBoardSkillsdeckId')
                            local BoardSkillsDeck = getObjectFromGUID(BoardSkillsDeckId)
                            BoardSkillsDeck.putObject(obj)
                            
                        end
                        -- if objGUID == Lurker_Allies_deck_id then
                            --
                            --     --Get the expansion's deck ID
                            --     local BoardAlliesDeckId = SetupVariablesNew.call('getBoardAlliesdeckId')
                            --     local BoardAlliesDeck = getObjectFromGUID(BoardAlliesDeckId)
                            --     BoardAlliesDeck.putObject(obj)
                            -- end
                            -- Expansion-specific
                            if objGUID == Lurker_Gate_Marker_Bag_id then
                                --Get the expansion's deck ID
                                local BoardGateMarkerPosition = SetupVariablesNew.call('getBoardPositionsDecksById',{objGUID})
                                obj.setPosition(BoardGateMarkerPosition)
                            end
                            if objGUID == Lurker_Dunw_Gate_Marker_Bag_id then
                                if DunwichSet == true then
                                    --Get the expansion's deck ID
                                    local BoardDunwGateMarkerPosition = SetupVariablesNew.call('getBoardPositionsDecksById',{objGUID})
                                    obj.setPosition(BoardDunwGateMarkerPosition)
                                end
                            end
                            if objGUID == Lurker_King_Gate_Marker_Bag_id then
                                if KingsportSet == true then
                                    --Get the expansion's deck ID
                                    local BoardKingGateMarkerPosition = SetupVariablesNew.call('getBoardPositionsDecksById',{objGUID})
                                    obj.setPosition(BoardKingGateMarkerPosition)
                                end
                            end
                        end
                    end --]]