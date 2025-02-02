local GlobalVariablesId = '7fc89f'
GlobalVariables = getObjectFromGUID(GlobalVariablesId)

--[[ --The Pannel Itself
local ControlPanelVariables = getObjectFromGUID('bf1ea5') --]]

local YellowOriginalActs = false

function SetNewYellowSmallCardsOnTable()  
    
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
    --Get the bag ID
    local YellowBagId = SetupVariablesNew.call('getYellowBagId')
    
    --Get the bag
    local YellowBag = getObjectFromGUID(YellowBagId)
    
    for _, obj in pairs(YellowBag.getObjects()) do
        
        local objGUID = obj.guid
        
        local objTags = obj.tags   
        --      Know that an object can have multiple flags. If found a tag to place, no need to check next tags.
        local foundTag = false
        
        for _,tag in pairs(objTags) do

            if tag == 'Common Item' then
                foundTag = true
                
                local item = YellowBag.takeObject({guid = objGUID})
                                
                --Get the expansion's deck ID
                local BoardCommonDeckId = GlobalVariables.call('getBoardCommondeckId')
                local BoardCommonDeck = getObjectFromGUID(BoardCommonDeckId)
                BoardCommonDeck.putObject(item)                
            end
            
            if tag == 'Unique Item' then
                foundTag = true
                
                local item = YellowBag.takeObject({guid = objGUID})
                                
                --Get the expansion's deck ID
                local BoardUniqueDeckId = GlobalVariables.call('getBoardUniquedeckId')
                local BoardUniqueDeck = getObjectFromGUID(BoardUniqueDeckId)
                BoardUniqueDeck.putObject(item)            
            end
            
            if tag == 'Skill' then
                foundTag = true
                
                local item = YellowBag.takeObject({guid = objGUID})
                                
                local BoardSkillsDeckId = GlobalVariables.call('getBoardSkillsdeckId')
                -- To be sure it, puts on the object so it retains its GUID
                local BoardSkillsDeck = getObjectFromGUID(BoardSkillsDeckId)
                BoardSkillsDeck.putObject(item)
                
            end
            
            if tag == 'Spell' then
                foundTag = true
                
                local item = YellowBag.takeObject({guid = objGUID})
                                
                --Get the expansion's deck ID
                local BoardSpellsDeckId = GlobalVariables.call('getBoardSpellsdeckId')
                local BoardSpellsDeck = getObjectFromGUID(BoardSpellsDeckId)
                BoardSpellsDeck.putObject(item)      
            end
            
            if tag == 'Ally' then
                foundTag = true
                
                local item = YellowBag.takeObject({guid = objGUID})
                                
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

function SetNewYellowComponentsOnTable()
    
    -- Check whether we place the original acts or the Miskatonic Horror ones
    YellowOriginalActs = GlobalVariables.call('isYellowOriginalActs')
    
    
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
    --Get the bag ID
    local YellowBagId = SetupVariablesNew.call('getYellowBagId')
    
    --Get the bag
    local YellowBag = getObjectFromGUID(YellowBagId)
    
    for _, obj in pairs(YellowBag.getObjects()) do
        
        local objGUID = obj.guid
        
        local objTags = obj.tags   
        --      Know that an object can have multiple flags. If found a tag to place, no need to check next tags.
        local foundTag = false
        
        for _,tag in pairs(objTags) do
            
            if tag == 'Northside' then
                foundTag = true
                
                local item = YellowBag.takeObject({guid = objGUID})
                                
                
                --Get the expansion's deck ID
                local BoardNorthsideDeckId = GlobalVariables.call('getBoardNorthsidedeckId')
                local BoardNorthsideDeck = getObjectFromGUID(BoardNorthsideDeckId)
                BoardNorthsideDeck.putObject(item)                
            end
            
            if tag == 'Downtown' then
                foundTag = true
                
                local item = YellowBag.takeObject({guid = objGUID})
                                
                --Get the expansion's deck ID
                local BoardDowntownDeckId = GlobalVariables.call('getBoardDowntowndeckId')
                local BoardDowntownDeck = getObjectFromGUID(BoardDowntownDeckId)
                BoardDowntownDeck.putObject(item)                
            end
            
            if tag == 'Easttown' then
                foundTag = true
                
                local item = YellowBag.takeObject({guid = objGUID})
                                
                --Get the expansion's deck ID
                local BoardEasttownDeckId = GlobalVariables.call('getBoardEasttowndeckId')
                local BoardEasttownDeck = getObjectFromGUID(BoardEasttownDeckId)
                BoardEasttownDeck.putObject(item)                                
            end
            
            if tag == 'Merchant District' then
                foundTag = true
                
                local item = YellowBag.takeObject({guid = objGUID})
                                
                --Get the expansion's deck ID
                local BoardMerchantDeckId = GlobalVariables.call('getBoardMerchantdeckId')
                local BoardMerchantDeck = getObjectFromGUID(BoardMerchantDeckId)
                BoardMerchantDeck.putObject(item)                                
            end
            
            if tag == 'Rivertown' then
                foundTag = true
                
                local item = YellowBag.takeObject({guid = objGUID})
                                
                --Get the expansion's deck ID
                local BoardRivertownDeckId = GlobalVariables.call('getBoardRivertowndeckId')
                local BoardRivertownDeck = getObjectFromGUID(BoardRivertownDeckId)
                BoardRivertownDeck.putObject(item)                                
            end
            
            if tag == 'Miskatonic University' then
                foundTag = true
                
                local item = YellowBag.takeObject({guid = objGUID})
                                
                --Get the expansion's deck ID
                local BoardMiskatonicDeckId = GlobalVariables.call('getBoardMiskatonicdeckId')
                local BoardMiskatonicDeck = getObjectFromGUID(BoardMiskatonicDeckId)
                BoardMiskatonicDeck.putObject(item)                
            end
            
            if tag == 'French Hill' then
                foundTag = true
                
                local item = YellowBag.takeObject({guid = objGUID})
                                                 
                --Get the expansion's deck ID
                local BoardFrenchDeckId = GlobalVariables.call('getBoardFrenchdeckId')
                local BoardFrenchDeck = getObjectFromGUID(BoardFrenchDeckId)
                BoardFrenchDeck.putObject(item)                
            end
            
            if tag == 'Uptown' then
                foundTag = true
                
                local item = YellowBag.takeObject({guid = objGUID})
                                
                --Get the expansion's deck ID
                local BoardUptownDeckId = GlobalVariables.call('getBoardUptowndeckId')
                local BoardUptownDeck = getObjectFromGUID(BoardUptownDeckId)
                BoardUptownDeck.putObject(item)                
            end
            
            if tag == 'Southside' then
                foundTag = true
                
                local item = YellowBag.takeObject({guid = objGUID})
                                
                --Get the expansion's deck ID
                local BoardSouthsideDeckId = GlobalVariables.call('getBoardSouthsidedeckId')
                local BoardSouthsideDeck = getObjectFromGUID(BoardSouthsideDeckId)
                BoardSouthsideDeck.putObject(item)                
            end
            
            if tag == 'Common Item' then
                foundTag = true
                
                local item = YellowBag.takeObject({guid = objGUID})
                                
                --Get the expansion's deck ID
                local BoardCommonDeckId = GlobalVariables.call('getBoardCommondeckId')
                local BoardCommonDeck = getObjectFromGUID(BoardCommonDeckId)
                BoardCommonDeck.putObject(item)                
            end
            
            if tag == 'Unique Item' then
                foundTag = true
                
                local item = YellowBag.takeObject({guid = objGUID})
                                
                --Get the expansion's deck ID
                local BoardUniqueDeckId = GlobalVariables.call('getBoardUniquedeckId')
                local BoardUniqueDeck = getObjectFromGUID(BoardUniqueDeckId)
                BoardUniqueDeck.putObject(item)            
            end
            
            if tag == 'Skill' then
                foundTag = true
                
                local item = YellowBag.takeObject({guid = objGUID})
                                
                local BoardSkillsDeckId = GlobalVariables.call('getBoardSkillsdeckId')
                -- To be sure it, puts on the object so it retains its GUID
                local BoardSkillsDeck = getObjectFromGUID(BoardSkillsDeckId)
                BoardSkillsDeck.putObject(item)
                
            end
            
            if tag == 'Spell' then
                foundTag = true
                
                local item = YellowBag.takeObject({guid = objGUID})
                                
                --Get the expansion's deck ID
                local BoardSpellsDeckId = GlobalVariables.call('getBoardSpellsdeckId')
                local BoardSpellsDeck = getObjectFromGUID(BoardSpellsDeckId)
                BoardSpellsDeck.putObject(item)      
            end
            
            if tag == 'Ally' then
                foundTag = true
                
                local item = YellowBag.takeObject({guid = objGUID})
                                
                --Get the expansion's deck ID
                local BoardAlliesDeckId = GlobalVariables.call('getBoardAlliesdeckId')
                local BoardAlliesDeck = getObjectFromGUID(BoardAlliesDeckId)
                BoardAlliesDeck.putObject(item)  
            end
            
            if tag == 'Mythos' then
                foundTag = true 
                
                local item = YellowBag.takeObject({guid = objGUID})
                               
                local scale = GlobalVariables.call('getBoardMythosScaledeckid')
                item.setScale({scale[1], scale[2], scale[3]})
                
                -- To be sure it, puts on the object so it retains its GUID
                local BoardMythosDeckId = GlobalVariables.call('getBoardMythosdeckId')
                local BoardMythosDeck = getObjectFromGUID(BoardMythosDeckId)
                BoardMythosDeck.putObject(item)

            end
            
            if tag == 'Gate_Deck' then
                foundTag = true
                
                local item = YellowBag.takeObject({guid = objGUID})
                                
                --Get the expansion's deck ID
                local BoardGateDeckId = GlobalVariables.call('getBoardGatedeckId')
                local BoardGateDeck = getObjectFromGUID(BoardGateDeckId)
                BoardGateDeck.putObject(item)
            end    
            
            -- Expansion-specific
            
            if tag == 'Acts_MH' then
                foundTag = true
                if YellowOriginalActs == false then
                    
                    local item = YellowBag.takeObject({guid = objGUID})
                                    
                    GlobalVariables.call('setYellowActsDeckid',objGUID)
                    local YellowActsDeckPosition = SetupVariablesNew.call('getYellowActsDeckpos')
                    local YellowActsDeckRotation = SetupVariablesNew.call('getYellowActsDeckrot')
                    
                    
                    item.setPosition(YellowActsDeckPosition)
                    item.setRotation(YellowActsDeckRotation)
                    item.setName('Acts Deck')
                    item.setDescription('The King in Yellow - Miskatonic Horror')                 
                end   
            end   
            
            if tag == 'Acts_Original' then
                foundTag = true
                if YellowOriginalActs == true then
                    
                    local item = YellowBag.takeObject({guid = objGUID})
                                    
                    GlobalVariables.call('setYellowOriginalActsDeckid',objGUID)
                    local YellowOriginalActsPosition = SetupVariablesNew.call('getYellowOriginalActsDeckpos')
                    local YellowOriginalActsRotation = SetupVariablesNew.call('getYellowOriginalActsDeckrot')
                    
                    item.setPosition(YellowOriginalActsPosition)
                    item.setRotation(YellowOriginalActsRotation)
                    item.setName('Original Acts Deck')
                    item.setDescription('The King in Yellow')                                    
                end
            end   
            
            if tag == 'Magical Effect' then
                foundTag = true 
                
                local item = YellowBag.takeObject({guid = objGUID})
                                
                GlobalVariables.call('setYellowMagicalEffectDeckid',objGUID)
                local YellowMagicalEffectPosition = SetupVariablesNew.call('getYellowMagicalEffectDeckpos')
                local YellowMagicalEffectRotation = SetupVariablesNew.call('getYellowMagicalEffectDeckrot')
                
                
                item.setPosition(YellowMagicalEffectPosition)
                item.setRotation(YellowMagicalEffectRotation)
                item.setName('Magical Effects')
                item.setDescription('The King in Yellow')                 
                item.randomize()
                
            end   
            
            if foundTag == true then
                break
            end
        end
        
        if foundTag == false then
            log('Yellow not found ' .. objGUID)
            log('Tag ' .. tag)
           -- log('Name ' .. getObjectFromGUID(objGUID).getName())
            --log('Name ' .. getObjectFromGUID(objGUID).getDescription())
        end
    end
end