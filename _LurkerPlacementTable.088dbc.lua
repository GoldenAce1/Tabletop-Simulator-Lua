local GlobalVariables = getObjectFromGUID('7fc89f')

function SetNewLurkerSmallCardsOnTable()
    
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
    --Get the bag ID
    local LurkerBagId = SetupVariablesNew.call('getLurkerBagId')
    
    --Get the bag
    local LurkerBag = getObjectFromGUID(LurkerBagId)
    
    for _, obj in pairs(LurkerBag.getObjects()) do
        
        local objGUID = obj.guid
        
        local objTags = obj.tags   
        --      Know that an object can have multiple flags. If found a tag to place, no need to check next tags.
        local foundTag = false
        
        for _,tag in pairs(objTags) do
            
            if tag == 'Common Item' then
                foundTag = true
                
                local item = LurkerBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardCommonDeckId = GlobalVariables.call('getBoardCommondeckId')
                local BoardCommonDeck = getObjectFromGUID(BoardCommonDeckId)
                BoardCommonDeck.putObject(item)                
            end
            
            if tag == 'Unique Item' then
                foundTag = true
                
                local item = LurkerBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardUniqueDeckId = GlobalVariables.call('getBoardUniquedeckId')
                local BoardUniqueDeck = getObjectFromGUID(BoardUniqueDeckId)
                BoardUniqueDeck.putObject(item)            
            end
            
            if tag == 'Skill' then
                foundTag = true
                
                local item = LurkerBag.takeObject({guid = objGUID})
                
                local BoardSkillsDeckId = GlobalVariables.call('getBoardSkillsdeckId')
                -- To be sure it, puts on the object so it retains its GUID
                local BoardSkillsDeck = getObjectFromGUID(BoardSkillsDeckId)
                BoardSkillsDeck.putObject(item)
                
            end
            
            if tag == 'Spell' then
                foundTag = true
                
                local item = LurkerBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardSpellsDeckId = GlobalVariables.call('getBoardSpellsdeckId')
                local BoardSpellsDeck = getObjectFromGUID(BoardSpellsDeckId)
                BoardSpellsDeck.putObject(item)      
            end
            
            if tag == 'Ally' then
                foundTag = true
                
                local item = LurkerBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardAlliesDeckId = GlobalVariables.call('getBoardAlliesdeckId')
                local BoardAlliesDeck = getObjectFromGUID(BoardAlliesDeckId)
                BoardAlliesDeck.putObject(item)  
            end
            
            if foundTag == true then
                break
            end
        end
    end
end

function SetNewLurkerComponentsOnTable()
    
    local LurkerGateSet = GlobalVariables.call('isLurkerGateSet')
    local KingsportSet = GlobalVariables.call('isKingsportSet')
    local DunwichSet = GlobalVariables.call('isDunwichSet')    
    
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
    --Get the bag ID
    local LurkerBagId = SetupVariablesNew.call('getLurkerBagId')
    
    --Get the bag
    local LurkerBag = getObjectFromGUID(LurkerBagId)
    
    for _, obj in pairs(LurkerBag.getObjects()) do
        
        local objGUID = obj.guid
        
        local objTags = obj.tags   
        --      Know that an object can have multiple flags. If found a tag to place, no need to check next tags.
        local foundTag = false
        
        for _,tag in pairs(objTags) do
            
            if tag == 'Northside' then
                foundTag = true
                
                local item = LurkerBag.takeObject({guid = objGUID})
                          
                --Get the expansion's deck ID
                local BoardNorthsideDeckId = GlobalVariables.call('getBoardNorthsidedeckId')
                local BoardNorthsideDeck = getObjectFromGUID(BoardNorthsideDeckId)
                BoardNorthsideDeck.putObject(item)                
            end
            
            if tag == 'Downtown' then
                foundTag = true
                
                local item = LurkerBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardDowntownDeckId = GlobalVariables.call('getBoardDowntowndeckId')
                local BoardDowntownDeck = getObjectFromGUID(BoardDowntownDeckId)
                BoardDowntownDeck.putObject(item)                
            end
            
            if tag == 'Easttown' then
                foundTag = true
                
                local item = LurkerBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardEasttownDeckId = GlobalVariables.call('getBoardEasttowndeckId')
                local BoardEasttownDeck = getObjectFromGUID(BoardEasttownDeckId)
                BoardEasttownDeck.putObject(item)                                
            end
            
            if tag == 'Merchant District' then
                foundTag = true
                
                local item = LurkerBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardMerchantDeckId = GlobalVariables.call('getBoardMerchantdeckId')
                local BoardMerchantDeck = getObjectFromGUID(BoardMerchantDeckId)
                BoardMerchantDeck.putObject(item)                                
            end
            
            if tag == 'Rivertown' then
                foundTag = true
                
                local item = LurkerBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardRivertownDeckId = GlobalVariables.call('getBoardRivertowndeckId')
                local BoardRivertownDeck = getObjectFromGUID(BoardRivertownDeckId)
                BoardRivertownDeck.putObject(item)                                
            end
            
            if tag == 'Miskatonic University' then
                foundTag = true
                
                local item = LurkerBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardMiskatonicDeckId = GlobalVariables.call('getBoardMiskatonicdeckId')
                local BoardMiskatonicDeck = getObjectFromGUID(BoardMiskatonicDeckId)
                BoardMiskatonicDeck.putObject(item)                
            end
            
            if tag == 'French Hill' then
                foundTag = true
                
                local item = LurkerBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardFrenchDeckId = GlobalVariables.call('getBoardFrenchdeckId')
                local BoardFrenchDeck = getObjectFromGUID(BoardFrenchDeckId)
                BoardFrenchDeck.putObject(item)                
            end
            
            if tag == 'Uptown' then
                foundTag = true
                
                local item = LurkerBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardUptownDeckId = GlobalVariables.call('getBoardUptowndeckId')
                local BoardUptownDeck = getObjectFromGUID(BoardUptownDeckId)
                BoardUptownDeck.putObject(item)                
            end
            
            if tag == 'Southside' then
                foundTag = true
                
                local item = LurkerBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardSouthsideDeckId = GlobalVariables.call('getBoardSouthsidedeckId')
                local BoardSouthsideDeck = getObjectFromGUID(BoardSouthsideDeckId)
                BoardSouthsideDeck.putObject(item)                
            end
            
            if tag == 'Common Item' then
                foundTag = true
                
                local item = LurkerBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardCommonDeckId = GlobalVariables.call('getBoardCommondeckId')
                local BoardCommonDeck = getObjectFromGUID(BoardCommonDeckId)
                BoardCommonDeck.putObject(item)                
            end
            
            if tag == 'Unique Item' then
                foundTag = true
                
                local item = LurkerBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardUniqueDeckId = GlobalVariables.call('getBoardUniquedeckId')
                local BoardUniqueDeck = getObjectFromGUID(BoardUniqueDeckId)
                BoardUniqueDeck.putObject(item)            
            end
            
            if tag == 'Skill' then
                foundTag = true
                
                local item = LurkerBag.takeObject({guid = objGUID})
                
                local BoardSkillsDeckId = GlobalVariables.call('getBoardSkillsdeckId')
                -- To be sure it, puts on the object so it retains its GUID
                local BoardSkillsDeck = getObjectFromGUID(BoardSkillsDeckId)
                BoardSkillsDeck.putObject(item)
                
            end
            
            if tag == 'Spell' then
                foundTag = true
                
                local item = LurkerBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardSpellsDeckId = GlobalVariables.call('getBoardSpellsdeckId')
                local BoardSpellsDeck = getObjectFromGUID(BoardSpellsDeckId)
                BoardSpellsDeck.putObject(item)      
            end
            
            if tag == 'Ally' then
                foundTag = true
                
                local item = LurkerBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardAlliesDeckId = GlobalVariables.call('getBoardAlliesdeckId')
                local BoardAlliesDeck = getObjectFromGUID(BoardAlliesDeckId)
                BoardAlliesDeck.putObject(item)  
            end
            
            if tag == 'Mythos' then
                foundTag = true 
                
                local item = LurkerBag.takeObject({guid = objGUID})
                
                local scale = GlobalVariables.call('getBoardMythosScaledeckid')
                item.setScale({scale[1], scale[2], scale[3]})
                
                -- To be sure it, puts on the object so it retains its GUID
                local BoardMythosDeckId = GlobalVariables.call('getBoardMythosdeckId')
                local BoardMythosDeck = getObjectFromGUID(BoardMythosDeckId)
                BoardMythosDeck.putObject(item)
            end
            
            if tag == 'Gate_Deck' then
                foundTag = true
                
                local item = LurkerBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardGateDeckId = GlobalVariables.call('getBoardGatedeckId')
                local BoardGateDeck = getObjectFromGUID(BoardGateDeckId)
                BoardGateDeck.putObject(item)
            end    
            
            -- Expansion-specific
            
            if tag == 'Lurker Arkham Gate' then
                foundTag = true                
                if LurkerGateSet == true then
                
                local item = LurkerBag.takeObject({guid = obj.guid})
                
                SetupVariablesNew.call('setLurkerGateMarkerBagId',obj.guid)
                local LurkerGateMarkerBagpos = SetupVariablesNew.call('getLurkerGateMarkerBagpos')                
                
                item.setPosition(LurkerGateMarkerBagpos)

                item.setName('Lurker Arkham Gate Markers')
                item.setDescription('The Lurker at the Threshold')                 
                item.randomize()
                end
            end
            
            if tag == 'Lurker Kingsport Gate' then
                foundTag = true
                if LurkerGateSet == true  and KingsportSet == true then
                
                local item = LurkerBag.takeObject({guid = obj.guid})
                
                SetupVariablesNew.call('setLurkerKingGateMarkerBagId',objGUID)
                local LurkerKingGateMarkerBagpos = SetupVariablesNew.call('getLurkerKingGateMarkerBagpos')                
                
                item.setPosition(LurkerKingGateMarkerBagpos)

                item.setName('Lurker Kingsport Gate Markers')
                item.setDescription('The Lurker at the Threshold')                 
                item.randomize()
                end
            end             
            
            if tag == 'Lurker Dunwich Gate' then
                foundTag = true                
                if LurkerGateSet == true  and DunwichSet == true then
                
                local item = LurkerBag.takeObject({guid = obj.guid})
                
                SetupVariablesNew.call('setLurkerDunwGateMarkerBagId',objGUID)
                local LurkerDunwGateMarkerBagpos = SetupVariablesNew.call('getLurkerDunwGateMarkerBagpos')
                
                item.setPosition(LurkerDunwGateMarkerBagpos)

                item.setName('Lurker Dunwich Gate Markers')
                item.setDescription('The Lurker at the Threshold')                 
                item.randomize()
                end
            end   
            
            if foundTag == true then
                break
            end
        end
        
--[[         if foundTag == false then
            log('Lurker not found ' .. objGUID)
            log('Tag ' .. tag)
            -- log('Name ' .. getObjectFromGUID(objGUID).getName())
            --log('Name ' .. getObjectFromGUID(objGUID).getDescription())
        end --]]
    end
end

function SetLurkerGatesOnTable()
    
    local KingsportSet = GlobalVariables.call('isKingsportSet')
    local DunwichSet = GlobalVariables.call('isDunwichSet')    
    
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
    --Get the bag ID
    local LurkerBagId = SetupVariablesNew.call('getLurkerBagId')
    
    --Get the bag
    local LurkerBag = getObjectFromGUID(LurkerBagId)
    
    for _, obj in pairs(LurkerBag.getObjects()) do
        
        local objGUID = obj.guid
        
        local objTags = obj.tags   
        --      Know that an object can have multiple flags. If found a tag to place, no need to check next tags.
        local foundTag = false
        
        for _,tag in pairs(objTags) do  
            
            -- Expansion-specific
            
            if tag == 'Lurker Arkham Gate' then
                foundTag = true                
                
                local item = LurkerBag.takeObject({guid = objGUID})
                
                SetupVariablesNew.call('setLurkerGateMarkerBagId',objGUID)
                local LurkerGateMarkerBagpos = SetupVariablesNew.call('getLurkerGateMarkerBagpos')                
                
                item.setPosition(LurkerGateMarkerBagpos)

                item.setName('Lurker Arkham Gate Markers')
                item.setDescription('The Lurker at the Threshold')                 
                item.randomize()
            end
            
            if tag == 'Lurker Kingsport Gate' then
                foundTag = true
                if KingsportSet == true then
                
                local item = LurkerBag.takeObject({guid = objGUID})
                
                SetupVariablesNew.call('setLurkerKingGateMarkerBagId',objGUID)
                local LurkerKingGateMarkerBagpos = SetupVariablesNew.call('getLurkerKingGateMarkerBagpos')                
                
                item.setPosition(LurkerKingGateMarkerBagpos)

                item.setName('Lurker Kingsport Gate Markers')
                item.setDescription('The Lurker at the Threshold')                 
                item.randomize()
                end
            end             
            
            if tag == 'Lurker Dunwich Gate' then
                foundTag = true                
                if DunwichSet == true then
                
                local item = LurkerBag.takeObject({guid = objGUID})
                
                SetupVariablesNew.call('setLurkerDunwGateMarkerBagId',objGUID)
                local LurkerDunwGateMarkerBagpos = SetupVariablesNew.call('getLurkerDunwGateMarkerBagpos')
                
                item.setPosition(LurkerDunwGateMarkerBagpos)

                item.setName('Lurker Dunwich Gate Markers')
                item.setDescription('The Lurker at the Threshold')                 
                item.randomize()
                end
            end   
            
            if foundTag == true then
                break
            end
        end
    end
end