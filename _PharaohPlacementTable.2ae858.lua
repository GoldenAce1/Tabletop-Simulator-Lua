
local GlobalVariablesId = '7fc89f'
GlobalVariables = getObjectFromGUID(GlobalVariablesId)

function SetNewPharaohComponentsOnTable()
    
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
    --Get the bag ID
    local PharaohBagId = SetupVariablesNew.call('getPharaohBagId')
    
    --Get the bag
    local PharaohBag = getObjectFromGUID(PharaohBagId)
    
    for _, obj in pairs(PharaohBag.getObjects()) do
        
        local objGUID = obj.guid
        
        local objTags = obj.tags   
        --      Know that an object can have multiple flags. If found a tag to place, no need to check next tags.
        local foundTag = false
        
        for _,tag in pairs(objTags) do
            
            if tag == 'Northside' then
                foundTag = true
                
                local item = PharaohBag.takeObject({guid = objGUID})
                
                
                --Get the expansion's deck ID
                local BoardNorthsideDeckId = GlobalVariables.call('getBoardNorthsidedeckId')
                local BoardNorthsideDeck = getObjectFromGUID(BoardNorthsideDeckId)
                BoardNorthsideDeck.putObject(item)                
            end
            
            if tag == 'Downtown' then
                foundTag = true
                
                local item = PharaohBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardDowntownDeckId = GlobalVariables.call('getBoardDowntowndeckId')
                local BoardDowntownDeck = getObjectFromGUID(BoardDowntownDeckId)
                BoardDowntownDeck.putObject(item)                
            end
            
            if tag == 'Easttown' then
                foundTag = true
                
                local item = PharaohBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardEasttownDeckId = GlobalVariables.call('getBoardEasttowndeckId')
                local BoardEasttownDeck = getObjectFromGUID(BoardEasttownDeckId)
                BoardEasttownDeck.putObject(item)                                
            end
            
            if tag == 'Merchant District' then
                foundTag = true
                
                local item = PharaohBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardMerchantDeckId = GlobalVariables.call('getBoardMerchantdeckId')
                local BoardMerchantDeck = getObjectFromGUID(BoardMerchantDeckId)
                BoardMerchantDeck.putObject(item)                                
            end
            
            if tag == 'Rivertown' then
                foundTag = true
                
                local item = PharaohBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardRivertownDeckId = GlobalVariables.call('getBoardRivertowndeckId')
                local BoardRivertownDeck = getObjectFromGUID(BoardRivertownDeckId)
                BoardRivertownDeck.putObject(item)                                
            end
            
            if tag == 'Miskatonic University' then
                foundTag = true
                
                local item = PharaohBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardMiskatonicDeckId = GlobalVariables.call('getBoardMiskatonicdeckId')
                local BoardMiskatonicDeck = getObjectFromGUID(BoardMiskatonicDeckId)
                BoardMiskatonicDeck.putObject(item)                
            end
            
            if tag == 'French Hill' then
                foundTag = true
                
                local item = PharaohBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardFrenchDeckId = GlobalVariables.call('getBoardFrenchdeckId')
                local BoardFrenchDeck = getObjectFromGUID(BoardFrenchDeckId)
                BoardFrenchDeck.putObject(item)                
            end
            
            if tag == 'Uptown' then
                foundTag = true
                
                local item = PharaohBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardUptownDeckId = GlobalVariables.call('getBoardUptowndeckId')
                local BoardUptownDeck = getObjectFromGUID(BoardUptownDeckId)
                BoardUptownDeck.putObject(item)                
            end
            
            if tag == 'Southside' then
                foundTag = true
                
                local item = PharaohBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardSouthsideDeckId = GlobalVariables.call('getBoardSouthsidedeckId')
                local BoardSouthsideDeck = getObjectFromGUID(BoardSouthsideDeckId)
                BoardSouthsideDeck.putObject(item)                
            end
            
            if tag == 'Common Item' then
                foundTag = true
                
                local item = PharaohBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardCommonDeckId = GlobalVariables.call('getBoardCommondeckId')
                local BoardCommonDeck = getObjectFromGUID(BoardCommonDeckId)
                BoardCommonDeck.putObject(item)                
            end
            
            if tag == 'Unique Item' then
                foundTag = true
                
                local item = PharaohBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardUniqueDeckId = GlobalVariables.call('getBoardUniquedeckId')
                local BoardUniqueDeck = getObjectFromGUID(BoardUniqueDeckId)
                BoardUniqueDeck.putObject(item)            
            end
            
            if tag == 'Skill' then
                foundTag = true
                
                local item = PharaohBag.takeObject({guid = objGUID})
                
                local BoardSkillsDeckId = GlobalVariables.call('getBoardSkillsdeckId')
                -- To be sure it, puts on the object so it retains its GUID
                local BoardSkillsDeck = getObjectFromGUID(BoardSkillsDeckId)
                BoardSkillsDeck.putObject(item)
                
            end
            
            if tag == 'Spell' then
                foundTag = true
                
                local item = PharaohBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardSpellsDeckId = GlobalVariables.call('getBoardSpellsdeckId')
                local BoardSpellsDeck = getObjectFromGUID(BoardSpellsDeckId)
                BoardSpellsDeck.putObject(item)      
            end
            
            if tag == 'Ally' then
                foundTag = true
                
                local item = PharaohBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardAlliesDeckId = GlobalVariables.call('getBoardAlliesdeckId')
                local BoardAlliesDeck = getObjectFromGUID(BoardAlliesDeckId)
                BoardAlliesDeck.putObject(item)  
            end
            
            if tag == 'Mythos' then
                foundTag = true 
                
                local item = PharaohBag.takeObject({guid = objGUID})
                
                local scale = GlobalVariables.call('getBoardMythosScaledeckid')
                item.setScale({scale[1], scale[2], scale[3]})
                
                -- To be sure it, puts on the object so it retains its GUID
                local BoardMythosDeckId = GlobalVariables.call('getBoardMythosdeckId')
                local BoardMythosDeck = getObjectFromGUID(BoardMythosDeckId)
                BoardMythosDeck.putObject(item)
            end
            
            if tag == 'Gate_Deck' then
                foundTag = true
                
                local item = PharaohBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardGateDeckId = GlobalVariables.call('getBoardGatedeckId')
                local BoardGateDeck = getObjectFromGUID(BoardGateDeckId)
                BoardGateDeck.putObject(item)
            end    
            
            -- Expansion-specific
            
            if tag == 'Exhibit Encounter' then
                foundTag = true
                
                local item = PharaohBag.takeObject({guid = objGUID})
                
                GlobalVariables.call('setPharaohExhibitEncounterDeckId',objGUID)
                local PharaohExhibitEncounterDeckpos = SetupVariablesNew.call('getPharaohExhibitEncounterDeckpos')
                local PharaohExhibitEncounterDeckrot = SetupVariablesNew.call('getPharaohExhibitEncounterDeckrot')
                
                
                item.setPosition(PharaohExhibitEncounterDeckpos)
                item.setRotation(PharaohExhibitEncounterDeckrot)
                item.setName('Exhibit Encounter')
                item.setDescription('The Curse of the Dark Pharaoh Revised')                 
                item.randomize() 
            end
            
            if tag == 'Exhibit Items' then
                foundTag = true
                
                local item = PharaohBag.takeObject({guid = objGUID})
                
                GlobalVariables.call('setPharaohExhibitItemDeckid',objGUID)
                local PharaohExhibitItemDeckpos = SetupVariablesNew.call('getPharaohExhibitItemDeckpos')
                local PharaohExhibitItemDeckrot = SetupVariablesNew.call('getPharaohExhibitItemDeckrot')
                
                
                item.setPosition(PharaohExhibitItemDeckpos)
                item.setRotation(PharaohExhibitItemDeckrot)
                item.setName('Exhibit Items')
                item.setDescription('The Curse of the Dark Pharaoh Revised')                 
                item.randomize()  
            end             
            
            if tag == 'Benefits' then
                foundTag = true
                
                local item = PharaohBag.takeObject({guid = objGUID})
                
                GlobalVariables.call('setPharaohBenefitsDeckid',objGUID)
                local PharaohBenefitsDeckpos = SetupVariablesNew.call('getPharaohBenefitsDeckpos')
                local PharaohBenefitsDeckrot = SetupVariablesNew.call('getPharaohBenefitsDeckrot')
                
                item.setPosition(PharaohBenefitsDeckpos)
                item.setRotation(PharaohBenefitsDeckrot)
                item.setName('Benefits')
                item.setDescription('The Curse of the Dark Pharaoh Revised')                 
                item.randomize()                    
            end   
            
            if tag == 'Detriments' then
                foundTag = true 
                
                local item = PharaohBag.takeObject({guid = objGUID})
                
                GlobalVariables.call('setPharaohDetrimentsDeckid',objGUID)
                local PharaohDetrimentsDeckpos = SetupVariablesNew.call('getPharaohDetrimentsDeckpos')
                local PharaohDetrimentsDeckrot = SetupVariablesNew.call('getPharaohDetrimentsDeckrot')
                
                
                item.setPosition(PharaohDetrimentsDeckpos)
                item.setRotation(PharaohDetrimentsDeckrot)
                item.setName('Detriments')
                item.setDescription('The Curse of the Dark Pharaoh Revised')                 
                item.randomize()
                
            end
            
            if tag == 'Ancient Whispers' then
                foundTag = true
                
                local item = PharaohBag.takeObject({guid = objGUID})
                
                GlobalVariables.call('setPharaohAncientWhispersTokenId',objGUID)
                local PharaohAncientWhispersTokenpos = SetupVariablesNew.call('getPharaohAncientWhispersTokenpos')
                local PharaohAncientWhispersTokenrot = SetupVariablesNew.call('getPharaohAncientWhispersTokenrot')
                
                
                item.setPosition(PharaohAncientWhispersTokenpos)
                item.setRotation(PharaohAncientWhispersTokenrot)
                item.setName('Ancient Whispers')
                item.setDescription('The Curse of the Dark Pharaoh Revised')                 
                item.randomize() 
            end   
            
            if tag == 'Patrol Markers' then
                foundTag = true
                
                local item = PharaohBag.takeObject({guid = objGUID})
                
                GlobalVariables.call('setPharaohPatrolMarkerId',objGUID)
                local PharaohPatrolMarkerpos = SetupVariablesNew.call('getPharaohPatrolMarkerpos')
                local PharaohPatrolMarkerrot = SetupVariablesNew.call('getPharaohPatrolMarkerrot')
                
                item.setPosition(PharaohPatrolMarkerpos)
                item.setRotation(PharaohPatrolMarkerrot)
                item.setName('Patrol Markers')
                item.setDescription('The Curse of the Dark Pharaoh Revised')                 
                item.randomize() 
            end               
            
            if foundTag == true then
                break
            end
        end
        
        if foundTag == false then
            log('Pharaoh not found ' .. objGUID)
            log('Tag ' .. tag)
            -- log('Name ' .. getObjectFromGUID(objGUID).getName())
            --log('Name ' .. getObjectFromGUID(objGUID).getDescription())
        end
    end
end

function SetNewPharaohSmallCardsOnTable()
    
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
    --Get the bag ID
    local PharaohBagId = SetupVariablesNew.call('getPharaohBagId')
    
    --Get the bag
    local PharaohBag = getObjectFromGUID(PharaohBagId)
    
    for _, obj in pairs(PharaohBag.getObjects()) do
        
        local objGUID = obj.guid
        
        local objTags = obj.tags   
        --      Know that an object can have multiple flags. If found a tag to place, no need to check next tags.
        local foundTag = false
        
        for _,tag in pairs(objTags) do
            
            if tag == 'Common Item' then
                foundTag = true
                
                local item = PharaohBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardCommonDeckId = GlobalVariables.call('getBoardCommondeckId')
                local BoardCommonDeck = getObjectFromGUID(BoardCommonDeckId)
                BoardCommonDeck.putObject(item)                
            end
            
            if tag == 'Unique Item' then
                foundTag = true
                
                local item = PharaohBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardUniqueDeckId = GlobalVariables.call('getBoardUniquedeckId')
                local BoardUniqueDeck = getObjectFromGUID(BoardUniqueDeckId)
                BoardUniqueDeck.putObject(item)            
            end
            
            if tag == 'Skill' then
                foundTag = true
                
                local item = PharaohBag.takeObject({guid = objGUID})
                
                local BoardSkillsDeckId = GlobalVariables.call('getBoardSkillsdeckId')
                -- To be sure it, puts on the object so it retains its GUID
                local BoardSkillsDeck = getObjectFromGUID(BoardSkillsDeckId)
                BoardSkillsDeck.putObject(item)
                
            end
            
            if tag == 'Spell' then
                foundTag = true
                
                local item = PharaohBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardSpellsDeckId = GlobalVariables.call('getBoardSpellsdeckId')
                local BoardSpellsDeck = getObjectFromGUID(BoardSpellsDeckId)
                BoardSpellsDeck.putObject(item)      
            end
            
            if tag == 'Ally' then
                foundTag = true
                
                local item = PharaohBag.takeObject({guid = objGUID})
                
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