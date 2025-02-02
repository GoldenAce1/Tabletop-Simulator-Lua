function SetNewKingsportSmallCardsOnTable()
    
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
        local GlobalVariablesId = '7fc89f'
    GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    --Get the bag ID
    local KingsportBagId = SetupVariablesNew.call('getKingsportBagId')
    
    --Get the bag
    local KingsportBag = getObjectFromGUID(KingsportBagId)
    
    for _, obj in pairs(KingsportBag.getObjects()) do
        
        local objGUID = obj.guid
        
        local objTags = obj.tags   
        --      Know that an object can have multiple flags. If found a tag to place, no need to check next tags.
        local foundTag = false
        
        for _,tag in pairs(objTags) do
            
            if tag == 'Common Item' then
                foundTag = true
                
                local item = KingsportBag.takeObject({guid = objGUID})                
                
                --Get the expansion's deck ID
                local BoardCommonDeckId = GlobalVariables.call('getBoardCommondeckId')
                local BoardCommonDeck = getObjectFromGUID(BoardCommonDeckId)
                BoardCommonDeck.putObject(item)                
            end
            
            if tag == 'Unique Item' then
                foundTag = true 
                
                local item = KingsportBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardUniqueDeckId = GlobalVariables.call('getBoardUniquedeckId')
                local BoardUniqueDeck = getObjectFromGUID(BoardUniqueDeckId)
                BoardUniqueDeck.putObject(item)            
            end
            
            if tag == 'Skill' then
                foundTag = true
                
                local item = KingsportBag.takeObject({guid = objGUID})
                
                local BoardSkillsDeckId = GlobalVariables.call('getBoardSkillsdeckId')
                -- To be sure it, puts on the object so it retains its GUID
                local BoardSkillsDeck = getObjectFromGUID(BoardSkillsDeckId)
                BoardSkillsDeck.putObject(item)
                
            end
            
            if tag == 'Spell' then
                foundTag = true 
                
                local item = KingsportBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardSpellsDeckId = GlobalVariables.call('getBoardSpellsdeckId')
                local BoardSpellsDeck = getObjectFromGUID(BoardSpellsDeckId)
                BoardSpellsDeck.putObject(item)      
            end
            
            if tag == 'Ally' then
                foundTag = true 
                
                local item = KingsportBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardAlliesDeckId = GlobalVariables.call('getBoardAlliesdeckId')
                local BoardAlliesDeck = getObjectFromGUID(BoardAlliesDeckId)
                BoardAlliesDeck.putObject(item)  
            end
        end
    end
end

function SetNewKingsportMonstersOnTable()
    
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
    --Get the bag ID
    local KingsportBagId = SetupVariablesNew.call('getKingsportBagId')
    
    --Get the bag
    local KingsportBag = getObjectFromGUID(KingsportBagId)
    
    for _, obj in pairs(KingsportBag.getObjects()) do
        local objGUID = obj.guid
        local objTags = obj.tags   
        --      Know that an object can have multiple flags. If found a tag to place, no need to check next tags.
        local foundTag = false
        
        for _,tag in pairs(objTags) do
            -- Expansion-specific
            if tag == 'Kingsport Monsters' then
                foundTag = true 
                
                local item = KingsportBag.takeObject({guid = objGUID})
                SetupVariablesNew.call('setKingsportMonsterBagid',objGUID)              
                local pos = SetupVariablesNew.call('getKingsportMonsterbagpos')
                
                -- look up the position based on the guid
                item.setPosition(pos)                
                
            end  
            
            if foundTag == true then
                break
            end
        end
    end
end

function SetNewKingsportComponentsOnTable(LurkerGateSet)
    
    local isLurkerGateSet = false
    local GlobalVariablesId = '7fc89f'
    GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    
    local InnsmouthSolo = GlobalVariables.call('getInnsmouthSolo')
    local KingsportSolo = GlobalVariables.call('getKingsportSolo')
    local DunwichSolo = GlobalVariables.call('getDunwichSolo')
    local KingsportDunwich = GlobalVariables.call('getKingsportDunwich')
    local InnsmouthKingsport = GlobalVariables.call('getInnsmouthKingsport')
    local InnsmouthDunwich = GlobalVariables.call('getInnsmouthDunwich')
    local AllThreeBoards = GlobalVariables.call('getAllThreeBoards') 
    
    isLurkerGateSet = LurkerGateSet
    
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
    --Get the bag ID
    local KingsportBagId = SetupVariablesNew.call('getKingsportBagId')
    
    --Get the bag
    local KingsportBag = getObjectFromGUID(KingsportBagId)
    
    for _, obj in pairs(KingsportBag.getObjects()) do
        
        local objGUID = obj.guid
        
        local objTags = obj.tags   
        --      Know that an object can have multiple flags. If found a tag to place, no need to check next tags.
        local foundTag = false
        
        for _,tag in pairs(objTags) do
            
            if tag == 'Northside' then
                foundTag = true
                
                local item = KingsportBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardNorthsideDeckId = GlobalVariables.call('getBoardNorthsidedeckId')
                local BoardNorthsideDeck = getObjectFromGUID(BoardNorthsideDeckId)
                BoardNorthsideDeck.putObject(item)                
            end
            
            if tag == 'Downtown' then
                foundTag = true
                
                local item = KingsportBag.takeObject({guid = obj.guid})
                
                --Get the expansion's deck ID
                local BoardDowntownDeckId = GlobalVariables.call('getBoardDowntowndeckId')
                local BoardDowntownDeck = getObjectFromGUID(BoardDowntownDeckId)
                BoardDowntownDeck.putObject(item)                
            end
            
            if tag == 'Easttown' then
                foundTag = true
                
                local item = KingsportBag.takeObject({guid = obj.guid})
                
                --Get the expansion's deck ID
                local BoardEasttownDeckId = GlobalVariables.call('getBoardEasttowndeckId')
                local BoardEasttownDeck = getObjectFromGUID(BoardEasttownDeckId)
                BoardEasttownDeck.putObject(item)                                
            end
            
            if tag == 'Merchant District' then
                foundTag = true
                
                local item = KingsportBag.takeObject({guid = obj.guid})
                
                --Get the expansion's deck ID
                local BoardMerchantDeckId = GlobalVariables.call('getBoardMerchantdeckId')
                local BoardMerchantDeck = getObjectFromGUID(BoardMerchantDeckId)
                BoardMerchantDeck.putObject(item)                                
            end
            
            if tag == 'Rivertown' then
                foundTag = true
                
                local item = KingsportBag.takeObject({guid = obj.guid})
                
                --Get the expansion's deck ID
                local BoardRivertownDeckId = GlobalVariables.call('getBoardRivertowndeckId')
                local BoardRivertownDeck = getObjectFromGUID(BoardRivertownDeckId)
                BoardRivertownDeck.putObject(item)                                
            end
            
            if tag == 'Miskatonic University' then
                foundTag = true 
                
                local item = KingsportBag.takeObject({guid = obj.guid})                
                
                --Get the expansion's deck ID
                local BoardMiskatonicDeckId = GlobalVariables.call('getBoardMiskatonicdeckId')
                local BoardMiskatonicDeck = getObjectFromGUID(BoardMiskatonicDeckId)
                BoardMiskatonicDeck.putObject(item)                
            end
            
            if tag == 'French Hill' then
                foundTag = true
                
                local item = KingsportBag.takeObject({guid = obj.guid})
                
                --Get the expansion's deck ID
                local BoardFrenchDeckId = GlobalVariables.call('getBoardFrenchdeckId')
                local BoardFrenchDeck = getObjectFromGUID(BoardFrenchDeckId)
                BoardFrenchDeck.putObject(item)                
            end
            
            if tag == 'Uptown' then
                foundTag = true                  
                
                local item = KingsportBag.takeObject({guid = obj.guid})
                
                --Get the expansion's deck ID
                local BoardUptownDeckId = GlobalVariables.call('getBoardUptowndeckId')
                local BoardUptownDeck = getObjectFromGUID(BoardUptownDeckId)
                BoardUptownDeck.putObject(item)                
            end
            
            if tag == 'Southside' then
                foundTag = true 
                
                local item = KingsportBag.takeObject({guid = obj.guid})
                
                --Get the expansion's deck ID
                local BoardSouthsideDeckId = GlobalVariables.call('getBoardSouthsidedeckId')
                local BoardSouthsideDeck = getObjectFromGUID(BoardSouthsideDeckId)
                BoardSouthsideDeck.putObject(item)                
            end
            
            if tag == 'Common Item' then
                foundTag = true
                
                local item = KingsportBag.takeObject({guid = obj.guid})                
                
                --Get the expansion's deck ID
                local BoardCommonDeckId = GlobalVariables.call('getBoardCommondeckId')
                local BoardCommonDeck = getObjectFromGUID(BoardCommonDeckId)
                BoardCommonDeck.putObject(item)                
            end
            
            if tag == 'Unique Item' then
                foundTag = true 
                
                local item = KingsportBag.takeObject({guid = obj.guid})
                
                --Get the expansion's deck ID
                local BoardUniqueDeckId = GlobalVariables.call('getBoardUniquedeckId')
                local BoardUniqueDeck = getObjectFromGUID(BoardUniqueDeckId)
                BoardUniqueDeck.putObject(item)            
            end
            
            if tag == 'Skill' then
                foundTag = true
                
                local item = KingsportBag.takeObject({guid = obj.guid})
                
                local BoardSkillsDeckId = GlobalVariables.call('getBoardSkillsdeckId')
                -- To be sure it, puts on the object so it retains its GUID
                local BoardSkillsDeck = getObjectFromGUID(BoardSkillsDeckId)
                BoardSkillsDeck.putObject(item)
                
            end
            
            if tag == 'Spell' then
                foundTag = true 
                
                local item = KingsportBag.takeObject({guid = obj.guid})
                
                --Get the expansion's deck ID
                local BoardSpellsDeckId = GlobalVariables.call('getBoardSpellsdeckId')
                local BoardSpellsDeck = getObjectFromGUID(BoardSpellsDeckId)
                BoardSpellsDeck.putObject(item)      
            end
            
            if tag == 'Ally' then
                foundTag = true 
                
                local item = KingsportBag.takeObject({guid = obj.guid})
                
                --Get the expansion's deck ID
                local BoardAlliesDeckId = GlobalVariables.call('getBoardAlliesdeckId')
                local BoardAlliesDeck = getObjectFromGUID(BoardAlliesDeckId)
                BoardAlliesDeck.putObject(item)  
            end
            
            if tag == 'Mythos' then
                foundTag = true 
                
                local item = KingsportBag.takeObject({guid = obj.guid})                
                
                local scale = GlobalVariables.call('getBoardMythosScaledeckid')
                item.setScale({scale[1], scale[2], scale[3]})
                
                -- To be sure it, puts on the object so it retains its GUID
                local BoardMythosDeckId = GlobalVariables.call('getBoardMythosdeckId')
                local BoardMythosDeck = getObjectFromGUID(BoardMythosDeckId)
                BoardMythosDeck.putObject(item)
            end
            
            if tag == 'Gate_Deck' then 
                foundTag = true        
                
                local item = KingsportBag.takeObject({guid = obj.guid})                
                
                --Get the expansion's deck ID
                local BoardGateDeckId = GlobalVariables.call('getBoardGatedeckId')
                local BoardGateDeck = getObjectFromGUID(BoardGateDeckId)
                BoardGateDeck.putObject(item)                    
                
            end    
            
            -- Expansion-specific
            
            -- Gate Markers Bag
            if tag == 'Gate Markers Bag' then
                foundTag = true
                
                local item = KingsportBag.takeObject({guid = obj.guid})
                
                if isLurkerGateSet == false then                 
                    
                    -- look up the position based on the guid
                    local KingsportGateMarkerBagposition = SetupVariablesNew.call('getKingsportGateMarkerBagpos')
                    
                    item.setPosition({KingsportGateMarkerBagposition[1], KingsportGateMarkerBagposition[2],KingsportGateMarkerBagposition[3]})
                end
            end            
            
            if tag == 'Kingsport Monsters' then
                foundTag = true 
                
                local item = KingsportBag.takeObject({guid = obj.guid})
                
                SetupVariablesNew.call('setKingsportMonsterBagid',obj.guid)
                
                local pos = SetupVariablesNew.call('getKingsportMonsterbagpos')
                
                -- look up the position based on the guid
                item.setPosition(pos)                
                
            end  
            
            if tag == 'Captain' then
                foundTag = true 
                
                local item = KingsportBag.takeObject({guid = obj.guid})
                
                GlobalVariables.call('setKingsportCaptainDeckId',obj.guid)
                local KingsportCaptainPosition = SetupVariablesNew.call('getKingsportCaptainDeckPosition')
                local KingsportCaptainRotation = SetupVariablesNew.call('getKingsportCaptainDeckRotation')
                
                item.setPosition(KingsportCaptainPosition)
                item.setRotation({KingsportCaptainRotation[1], KingsportCaptainRotation[2], KingsportCaptainRotation[3]})
                item.setName('Captain of the White Ship')
                item.setDescription('Kingsport Horror')                 
                item.randomize()
            end   
            
            if tag == 'Changed' then
                foundTag = true 
                
                local item = KingsportBag.takeObject({guid = obj.guid})
                
                GlobalVariables.call('setKingsportChangedDeckId',obj.guid)
                local KingsportChangedPosition = SetupVariablesNew.call('getKingsportChangedDeckPosition')
                local KingsportChangedRotation = SetupVariablesNew.call('getKingsportChangedDeckRotation')
                
                
                item.setPosition(KingsportChangedPosition)
                item.setRotation(KingsportChangedRotation)
                item.setName('Changed')
                item.setDescription('Kingsport Horror')                 
                item.randomize()
            end   
            
            if tag == 'Kingsport Head' then
                foundTag = true 
                
                local item = KingsportBag.takeObject({guid = obj.guid})
                
                GlobalVariables.call('setKingsportHeadDeckId',obj.guid)
                local KingsportHeadPosition = SetupVariablesNew.call('getKingsportHeadDeckPosition')
                local KingsportHeadRotation = SetupVariablesNew.call('getKingsportHeadDeckRotation')
                
                
                item.setPosition(KingsportHeadPosition)
                item.setRotation(KingsportHeadRotation)
                item.setName('Kingsport Head')
                item.setDescription('Kingsport Horror')                  
                item.randomize()
                
            end   
            
            if tag == 'Harborside' then
                foundTag = true 
                
                local item = KingsportBag.takeObject({guid = obj.guid})
                
                GlobalVariables.call('setKingsportHarborsideDeckId',obj.guid)
                local KingsportHarborsidePosition = SetupVariablesNew.call('getKingsportHarborsideDeckPosition')
                local KingsportHarborsideRotation = SetupVariablesNew.call('getKingsportHarborsideDeckRotation')
                
                
                item.setPosition(KingsportHarborsidePosition)
                item.setRotation(KingsportHarborsideRotation)
                item.setName('Harborside')
                item.setDescription('Kingsport Horror')   
                item.randomize()
            end 
            
            if tag == 'Central Hill' then
                foundTag = true 
                
                local item = KingsportBag.takeObject({guid = obj.guid})
                
                GlobalVariables.call('setKingsportCentralHillDeckId',obj.guid)
                local KingsportCentralHillPosition = SetupVariablesNew.call('getKingsportCentralHillDeckPosition')
                local KingsportCentralHillRotation = SetupVariablesNew.call('getKingsportCentralHillDeckRotation')
                
                
                item.setPosition(KingsportCentralHillPosition)
                item.setRotation(KingsportCentralHillRotation)
                item.setName('Central Hill')
                item.setDescription('Kingsport Horror')   
                item.randomize()
            end             
            
            if tag == 'South Shore' then
                foundTag = true 
                
                local item = KingsportBag.takeObject({guid = obj.guid})
                
                GlobalVariables.call('setKingsportSouthShoreDeckId',obj.guid)
                local KingsportSouthShorePosition = SetupVariablesNew.call('getKingsportSouthShoreDeckPosition')
                local KingsportSouthShoreRotation = SetupVariablesNew.call('getKingsportSouthShoreDeckRotation')
                
                item.setPosition(KingsportSouthShorePosition)
                item.setRotation(KingsportSouthShoreRotation)
                item.setName('South Shore')
                item.setDescription('Kingsport Horror')                
                item.randomize()
            end
            -- The Three tokens
            if tag == 'Rift Marker' then
                foundTag = true 
                
                local item = KingsportBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID()
                
                SetupVariablesNew.call('setKingsportRiftMarkerBagid',obj.guid)
                local KingsportRiftMarkerBagposition = SetupVariablesNew.call('getKingsportRiftMarkerBagpos')
                
                item.setPosition({KingsportRiftMarkerBagposition[1],KingsportRiftMarkerBagposition[2],KingsportRiftMarkerBagposition[3]})
                item.randomize()
            end
            
            -- Rift Progress Markers Bag
            if tag == 'Rift Progress Marker' then
                foundTag = true 
                
                local item = KingsportBag.takeObject({guid = obj.guid})
                
                local objGUID = item.getGUID()
                
                GlobalVariables.call('setKingsportRiftProgressMarkerBagid',obj.guid)
                
                local KingsportRiftProgressTokenPosition
                if KingsportSolo == true or KingsportDunwich == true then
                    KingsportRiftProgressTokenPosition = SetupVariablesNew.call('getBoardPositionsKingsportSoloById',{objGUID})
                end
                if InnsmouthKingsport == true then
                    KingsportRiftProgressTokenPosition = SetupVariablesNew.call('getBoardPositionsInnsmouthKingsportById',{obj.guid})
                end
                if AllThreeBoards == true then
                    KingsportRiftProgressTokenPosition = SetupVariablesNew.call('getBoardPositions3BoardsById',{obj.guid})
                end           
                
                item.setPosition({KingsportRiftProgressTokenPosition[1],KingsportRiftProgressTokenPosition[2],KingsportRiftProgressTokenPosition[3]})
                local KingsportHorrorTokenRotation = SetupVariablesNew.call('getKingsportRiftProgressMarkerRotation')
                item.setRotation({KingsportHorrorTokenRotation[1],KingsportHorrorTokenRotation[2],KingsportHorrorTokenRotation[3]})
                item.randomize() 
                
            end
            
            if tag == 'Kingsport Board' then
                foundTag = true 
                
                local item = KingsportBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID() 
                
                local KingsportBoardPosition
                
                if KingsportSolo == true or KingsportDunwich == true then
                    KingsportBoardPosition = SetupVariablesNew.call('getBoardPositionsKingsportSoloById', {objGUID})
                end
                if InnsmouthKingsport == true then
                    KingsportBoardPosition = SetupVariablesNew.call('getBoardPositionsInnsmouthKingsportById', {objGUID})
                end
                
                if AllThreeBoards == true then
                    KingsportBoardPosition = SetupVariablesNew.call('getBoardPositions3BoardsById', {objGUID})
                end

                item.setPosition(KingsportBoardPosition)
                
                local KingsportBoardRotation = SetupVariablesNew.call('getKingsportBoardRotation')
                
                local KingsportBoardScale = SetupVariablesNew.call('getKingsportBoardScale')
                
                item.setScale(KingsportBoardScale)
                item.setRotation(KingsportBoardRotation)
                Wait.time(function() item.locked = true  end,2)
            end
            
            if foundTag == true then
                break
            end
        end
        
        if foundTag == false then
            log('Kingsport not found ' .. objGUID)
            if tag != nil then
                log('Tag ' .. tag .. 'finish')  
            else    
                log('Tag null') 
            end
            if getObjectFromGUID(objGUID).getNickname() != nil then
                log('Name ' .. getObjectFromGUID(objGUID).getNickname())  
            else    
                log('Name null') 
            end
            if getObjectFromGUID(objGUID).getDescription() != nil then
                log('Description ' .. getObjectFromGUID(objGUID).getDescription())  
            else    
                log('Description null') 
            end                  
        end 
    end
    
    
    --[[     -- These gates are only set of the Lurker Gate Variant is not Active
    if isLurkerGateSet == false then
        placeGateMarker()
    end --]]
    
end

function placeCommonInvestSetup()
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
    --Get the bag ID
    local KingsportBagId = SetupVariablesNew.call('getKingsportBagId')
    
    --Get the bag
    local KingsportBag = getObjectFromGUID(KingsportBagId)
    local objGUID = ''
    
    for _, obj in pairs(KingsportBag.getObjects()) do
        
        local objTags = obj.tags   
        --      Know that an object can have multiple flags. If found a tag to place, no need to check next tags.
        local foundTag = false
        
        for _,tag in pairs(objTags) do
            
            if tag == 'Common Item' then
                foundTag = true
                objGUID = obj.guid
                
                locationToSet = {}
                locationToSet.guid = obj.guid
                locationToSet.position = {-73.33, 0.72, -25.11}
                locationToSet.rotation = {0, 90, 180}        
                local item = KingsportBag.takeObject(locationToSet)
            end
            
            if foundTag == true then
                break
            end
        end
    end
    
    return objGUID
    
end

function placeUniqueInvestSetup()
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
    --Get the bag ID
    local KingsportBagId = SetupVariablesNew.call('getKingsportBagId')
    
    --Get the bag
    local KingsportBag = getObjectFromGUID(KingsportBagId)
    
    local objGUID = ''
    
    for _, obj in pairs(KingsportBag.getObjects()) do
        
        local objTags = obj.tags   
        --      Know that an object can have multiple flags. If found a tag to place, no need to check next tags.
        local foundTag = false
        
        for _,tag in pairs(objTags) do
            
            if tag == 'Unique Item' then
                foundTag = true 
                objGUID = obj.guid
                
                locationToSet = {}
                locationToSet.guid = obj.guid
                locationToSet.position = {-73.13, 0.73, -21.59}
                locationToSet.rotation = {0, 90, 180}        
                local item = KingsportBag.takeObject(locationToSet)
            end
            
            if foundTag == true then
                break
            end
        end
    end
    
    return objGUID
    
end

function placeSkillsInvestSetup()
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
    --Get the bag ID
    local KingsportBagId = SetupVariablesNew.call('getKingsportBagId')
    
    --Get the bag
    local KingsportBag = getObjectFromGUID(KingsportBagId)
    
    local objGUID = ''
    
    for _, obj in pairs(KingsportBag.getObjects()) do
        
        local objTags = obj.tags   
        --      Know that an object can have multiple flags. If found a tag to place, no need to check next tags.
        local foundTag = false
        
        for _,tag in pairs(objTags) do
            
            if tag == 'Skill' then
                foundTag = true
                objGUID = obj.guid
                
                locationToSet = {}
                locationToSet.guid = obj.guid
                locationToSet.position = {-73.13, 0.73, -16.51}
                locationToSet.rotation = {0, 90, 180}        
                local item = KingsportBag.takeObject(locationToSet)
                
            end
            
            if foundTag == true then
                break
            end
        end
    end
    
    return objGUID
    
end