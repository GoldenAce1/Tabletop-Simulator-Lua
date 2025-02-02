--Places Goat items on table in a single line

local GlobalVariablesId = '7fc89f'
GlobalVariables = getObjectFromGUID(GlobalVariablesId)

function SetNewGoatMonstersOnTable()
    
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
    --Get the bag ID
    local GoatBagId = SetupVariablesNew.call('getGoatBagId')
    
    --Get the bag
    local GoatBag = getObjectFromGUID(GoatBagId)
    
    for _, obj in pairs(GoatBag.getObjects()) do
        
        local objGUID = obj.guid
        
        local objTags = obj.tags   
        --      Know that an object can have multiple flags. If found a tag to place, no need to check next tags.
        local foundTag = false
        
        for _,tag in pairs(objTags) do
            -- Expansion-specific
            if tag == 'Goat Monsters' then
                foundTag = true 

                local item = GoatBag.takeObject({guid = objGUID})
                SetupVariablesNew.call('setGoatMonsterBagId',objGUID)
                local pos = SetupVariablesNew.call('getGoatMonsterBagPos')
                
                -- look up the position based on the guid
                item.setPosition(pos)   
            end  
            
            if foundTag == true then
                break
            end
        end
        
--[[         if foundTag == false then
            log('Goat not found ' .. objGUID)
            log('Name ' .. objGUID.getName())
            log('Name ' .. objGUID.getDescription())
        end --]]
    end
end

function SetNewGoatSmallCardsOnTable()
       
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
    --Get the bag ID
    local GoatBagId = SetupVariablesNew.call('getGoatBagId')
    
    --Get the bag
    local GoatBag = getObjectFromGUID(GoatBagId)
    
    for _, obj in pairs(GoatBag.getObjects()) do
        
        local objGUID = obj.guid
        
        local objTags = obj.tags   
        --      Know that an object can have multiple flags. If found a tag to place, no need to check next tags.
        local foundTag = false
        
        for _,tag in pairs(objTags) do
            
            if tag == 'Common Item' then
                foundTag = true
                
                local item = GoatBag.takeObject({guid = objGUID})
                                
                --Get the expansion's deck ID
                local BoardCommonDeckId = GlobalVariables.call('getBoardCommondeckId')
                local BoardCommonDeck = getObjectFromGUID(BoardCommonDeckId)
                BoardCommonDeck.putObject(item)                
            end
            
            if tag == 'Unique Item' then
                foundTag = true
                
                local item = GoatBag.takeObject({guid = objGUID})
                                
                --Get the expansion's deck ID
                local BoardUniqueDeckId = GlobalVariables.call('getBoardUniquedeckId')
                local BoardUniqueDeck = getObjectFromGUID(BoardUniqueDeckId)
                BoardUniqueDeck.putObject(item)            
            end
            
            if tag == 'Skill' then
                foundTag = true
                
                local item = GoatBag.takeObject({guid = objGUID})
                                
                local BoardSkillsDeckId = GlobalVariables.call('getBoardSkillsdeckId')
                -- To be sure it, puts on the object so it retains its GUID
                local BoardSkillsDeck = getObjectFromGUID(BoardSkillsDeckId)
                BoardSkillsDeck.putObject(item)
                
            end
            
            if tag == 'Spell' then
                foundTag = true
                
                local item = GoatBag.takeObject({guid = objGUID})
                                
                --Get the expansion's deck ID
                local BoardSpellsDeckId = GlobalVariables.call('getBoardSpellsdeckId')
                local BoardSpellsDeck = getObjectFromGUID(BoardSpellsDeckId)
                BoardSpellsDeck.putObject(item)      
            end
            
            if tag == 'Ally' then
                foundTag = true
                
                local item = GoatBag.takeObject({guid = objGUID})
                                
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

function SetNewGoatComponentsOnTable()
       
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
    --Get the bag ID
    local GoatBagId = SetupVariablesNew.call('getGoatBagId')
    
    --Get the bag
    local GoatBag = getObjectFromGUID(GoatBagId)
    
    for _, obj in pairs(GoatBag.getObjects()) do
        
        local objGUID = obj.guid
        
        local objTags = obj.tags   
        --      Know that an object can have multiple flags. If found a tag to place, no need to check next tags.
        local foundTag = false
        
        for _,tag in pairs(objTags) do
            
            if tag == 'Northside' then
                foundTag = true
                
                local item = GoatBag.takeObject({guid = objGUID})
                                
                
                --Get the expansion's deck ID
                local BoardNorthsideDeckId = GlobalVariables.call('getBoardNorthsidedeckId')
                local BoardNorthsideDeck = getObjectFromGUID(BoardNorthsideDeckId)
                BoardNorthsideDeck.putObject(item)                
            end
            
            if tag == 'Downtown' then
                foundTag = true
                
                local item = GoatBag.takeObject({guid = objGUID})
                                
                --Get the expansion's deck ID
                local BoardDowntownDeckId = GlobalVariables.call('getBoardDowntowndeckId')
                local BoardDowntownDeck = getObjectFromGUID(BoardDowntownDeckId)
                BoardDowntownDeck.putObject(item)                
            end
            
            if tag == 'Easttown' then
                foundTag = true
                
                local item = GoatBag.takeObject({guid = objGUID})
                                
                --Get the expansion's deck ID
                local BoardEasttownDeckId = GlobalVariables.call('getBoardEasttowndeckId')
                local BoardEasttownDeck = getObjectFromGUID(BoardEasttownDeckId)
                BoardEasttownDeck.putObject(item)                                
            end
            
            if tag == 'Merchant District' then
                foundTag = true
                
                local item = GoatBag.takeObject({guid = objGUID})
                                
                --Get the expansion's deck ID
                local BoardMerchantDeckId = GlobalVariables.call('getBoardMerchantdeckId')
                local BoardMerchantDeck = getObjectFromGUID(BoardMerchantDeckId)
                BoardMerchantDeck.putObject(item)                                
            end
            
            if tag == 'Rivertown' then
                foundTag = true
                
                local item = GoatBag.takeObject({guid = objGUID})
                                
                --Get the expansion's deck ID
                local BoardRivertownDeckId = GlobalVariables.call('getBoardRivertowndeckId')
                local BoardRivertownDeck = getObjectFromGUID(BoardRivertownDeckId)
                BoardRivertownDeck.putObject(item)                                
            end
            
            if tag == 'Miskatonic University' then
                foundTag = true
                
                local item = GoatBag.takeObject({guid = objGUID})
                                
                --Get the expansion's deck ID
                local BoardMiskatonicDeckId = GlobalVariables.call('getBoardMiskatonicdeckId')
                local BoardMiskatonicDeck = getObjectFromGUID(BoardMiskatonicDeckId)
                BoardMiskatonicDeck.putObject(item)                
            end
            
            if tag == 'French Hill' then
                foundTag = true
                
                local item = GoatBag.takeObject({guid = objGUID})
                                                 
                --Get the expansion's deck ID
                local BoardFrenchDeckId = GlobalVariables.call('getBoardFrenchdeckId')
                local BoardFrenchDeck = getObjectFromGUID(BoardFrenchDeckId)
                BoardFrenchDeck.putObject(item)                
            end
            
            if tag == 'Uptown' then
                foundTag = true
                
                local item = GoatBag.takeObject({guid = objGUID})
                                
                --Get the expansion's deck ID
                local BoardUptownDeckId = GlobalVariables.call('getBoardUptowndeckId')
                local BoardUptownDeck = getObjectFromGUID(BoardUptownDeckId)
                BoardUptownDeck.putObject(item)                
            end
            
            if tag == 'Southside' then
                foundTag = true
                
                local item = GoatBag.takeObject({guid = objGUID})
                                
                --Get the expansion's deck ID
                local BoardSouthsideDeckId = GlobalVariables.call('getBoardSouthsidedeckId')
                local BoardSouthsideDeck = getObjectFromGUID(BoardSouthsideDeckId)
                BoardSouthsideDeck.putObject(item)                
            end
            
            if tag == 'Common Item' then
                foundTag = true
                
                local item = GoatBag.takeObject({guid = objGUID})
                                
                --Get the expansion's deck ID
                local BoardCommonDeckId = GlobalVariables.call('getBoardCommondeckId')
                local BoardCommonDeck = getObjectFromGUID(BoardCommonDeckId)
                BoardCommonDeck.putObject(item)                
            end
            
            if tag == 'Unique Item' then
                foundTag = true
                
                local item = GoatBag.takeObject({guid = objGUID})
                                
                --Get the expansion's deck ID
                local BoardUniqueDeckId = GlobalVariables.call('getBoardUniquedeckId')
                local BoardUniqueDeck = getObjectFromGUID(BoardUniqueDeckId)
                BoardUniqueDeck.putObject(item)            
            end
            
            if tag == 'Skill' then
                foundTag = true
                
                local item = GoatBag.takeObject({guid = objGUID})
                                
                local BoardSkillsDeckId = GlobalVariables.call('getBoardSkillsdeckId')
                -- To be sure it, puts on the object so it retains its GUID
                local BoardSkillsDeck = getObjectFromGUID(BoardSkillsDeckId)
                BoardSkillsDeck.putObject(item)
                
            end
            
            if tag == 'Spell' then
                foundTag = true
                
                local item = GoatBag.takeObject({guid = objGUID})
                                
                --Get the expansion's deck ID
                local BoardSpellsDeckId = GlobalVariables.call('getBoardSpellsdeckId')
                local BoardSpellsDeck = getObjectFromGUID(BoardSpellsDeckId)
                BoardSpellsDeck.putObject(item)      
            end
            
            if tag == 'Ally' then
                foundTag = true
                
                local item = GoatBag.takeObject({guid = objGUID})
                                
                --Get the expansion's deck ID
                local BoardAlliesDeckId = GlobalVariables.call('getBoardAlliesdeckId')
                local BoardAlliesDeck = getObjectFromGUID(BoardAlliesDeckId)
                BoardAlliesDeck.putObject(item)  
            end
            
            if tag == 'Mythos' then
                foundTag = true 
                
                local item = GoatBag.takeObject({guid = objGUID})
                               
                local scale = GlobalVariables.call('getBoardMythosScaledeckid')
                item.setScale({scale[1], scale[2], scale[3]})
                
                -- To be sure it, puts on the object so it retains its GUID
                local BoardMythosDeckId = GlobalVariables.call('getBoardMythosdeckId')
                local BoardMythosDeck = getObjectFromGUID(BoardMythosDeckId)
                BoardMythosDeck.putObject(item)
            end
            
            if tag == 'Gate_Deck' then
                foundTag = true
                
                local item = GoatBag.takeObject({guid = objGUID})
                                
                --Get the expansion's deck ID
                local BoardGateDeckId = GlobalVariables.call('getBoardGatedeckId')
                local BoardGateDeck = getObjectFromGUID(BoardGateDeckId)
                BoardGateDeck.putObject(item)
            end    

            if tag == 'Goat Monsters' then
                foundTag = true 

                local item = GoatBag.takeObject({guid = objGUID})
                SetupVariablesNew.call('setGoatMonsterBagId',objGUID)
                local pos = SetupVariablesNew.call('getGoatMonsterBagPos')
                
                -- look up the position based on the guid
                item.setPosition(pos)   
            end       
            
            -- Expansion-specific
            
            if tag == 'Cult Encounter' then
                foundTag = true
                    
                    local item = GoatBag.takeObject({guid = objGUID})
                                    
                    GlobalVariables.call('setGoatEncountersDeckid',objGUID)
                    local GoatEncountersDeckPosition = SetupVariablesNew.call('getGoatEncountersDeckPos')
                    local GoatEncountersDeckRotation = SetupVariablesNew.call('getGoatEncountersDeckRot')
                    
                    
                    item.setPosition(GoatEncountersDeckPosition)
                    item.setRotation(GoatEncountersDeckRotation)
                    item.setName('Cult Encounter')
                    item.setDescription('The Black Goat of the Woods')                 
                    item.randomize() 
            end   
            
            if tag == '\"One of the Thousand\" Cult Membership' then
                foundTag = true
                    
                    local item = GoatBag.takeObject({guid = objGUID})
                                    
                    GlobalVariables.call('setGoatMembershipDeckid',objGUID)
                    local GoatMembershipDeckPosition = SetupVariablesNew.call('getGoatMembershipDeckPos')
                    local GoatMembershipDeckRotation = SetupVariablesNew.call('getGoatMembershipDeckRot')
                    
                    item.setPosition(GoatMembershipDeckPosition)
                    item.setRotation(GoatMembershipDeckRotation)
                    item.setName('\"One of the Thousand\" Cult Membership')
                    item.setDescription('The Black Goat of the Woods')
            end   
            
            if tag == 'Green Corruption' then
                foundTag = true 
                
                local item = GoatBag.takeObject({guid = objGUID})
                                
                GlobalVariables.call('setGoatGreenCorruptionDeckId',objGUID)
                local GoatGreenCorruptionDeckPosition = SetupVariablesNew.call('getGoatGreenCorruptionDeckPos')
                local GoatGreenCorruptionDeckRotation = SetupVariablesNew.call('getGoatGreenCorruptionDeckRot')
                
                
                item.setPosition(GoatGreenCorruptionDeckPosition)
                item.setRotation(GoatGreenCorruptionDeckRotation)
                item.setName('Green Corruption')
                item.setDescription('The Black Goat of the Woods')                 
                item.randomize()
                
            end 
            
            if tag == 'Red Corruption' then
                foundTag = true 
                
                local item = GoatBag.takeObject({guid = objGUID})
                                
                GlobalVariables.call('setGoatRedCorruptionDeckid',objGUID)
                local GoatRedCorruptionDeckPosition = SetupVariablesNew.call('getGoatRedCorruptionDeckPos')
                local GoatRedCorruptionDeckRotation = SetupVariablesNew.call('getGoatRedCorruptionDeckRot')
                
                
                item.setPosition(GoatRedCorruptionDeckPosition)
                item.setRotation(GoatRedCorruptionDeckRotation)
                item.setName('Red Corruption')
                item.setDescription('The Black Goat of the Woods')                 
                item.randomize()
                
            end              
            
            if foundTag == true then
                break
            end
        end
        
        if foundTag == false then
            log('Goat not found ' .. objGUID)
--            log('Tag ' .. tag)
            log('Name ' .. getObjectFromGUID(objGUID).getName())
            --log('Name ' .. getObjectFromGUID(objGUID).getDescription())
        end
    end
end