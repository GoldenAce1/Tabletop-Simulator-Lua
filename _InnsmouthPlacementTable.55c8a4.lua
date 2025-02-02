local GlobalVariablesId = '7fc89f'
GlobalVariables = getObjectFromGUID(GlobalVariablesId)

function SetNewInnsmouthSmallCardsOnTable()
    
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
    --Get the bag ID
    local InnsmouthBagId = SetupVariablesNew.call('getInnsmouthBagId')
    
    --Get the bag
    local InnsmouthBag = getObjectFromGUID(InnsmouthBagId)
    
    for _, obj in pairs(InnsmouthBag.getObjects()) do
        
        local objGUID = obj.guid
        
        local objTags = obj.tags   
        --      Know that an object can have multiple flags. If found a tag to place, no need to check next tags.
        local foundTag = false
        
        for _,tag in pairs(objTags) do
            
            if tag == 'Common Item' then
                foundTag = true 

                local item = InnsmouthBag.takeObject({guid = objGUID})

                --Get the expansion's deck ID
                local BoardCommonDeckId = GlobalVariables.call('getBoardCommondeckId')
                local BoardCommonDeck = getObjectFromGUID(BoardCommonDeckId)
                BoardCommonDeck.putObject(item)                
            end
            
            if tag == 'Unique Item' then
                foundTag = true 

                local item = InnsmouthBag.takeObject({guid = objGUID})

                --Get the expansion's deck ID
                local BoardUniqueDeckId = GlobalVariables.call('getBoardUniquedeckId')
                local BoardUniqueDeck = getObjectFromGUID(BoardUniqueDeckId)
                BoardUniqueDeck.putObject(item)            
            end
            
            if tag == 'Skill' then
                foundTag = true
                              
                local item = InnsmouthBag.takeObject({guid = objGUID})
                
                local BoardSkillsDeckId = GlobalVariables.call('getBoardSkillsdeckId')
                -- To be sure it, puts on the object so it retains its GUID
                local BoardSkillsDeck = getObjectFromGUID(BoardSkillsDeckId)
                BoardSkillsDeck.putObject(item)
                
            end
            
            if tag == 'Spell' then
                foundTag = true 

                local item = InnsmouthBag.takeObject({guid = objGUID})

                --Get the expansion's deck ID
                local BoardSpellsDeckId = GlobalVariables.call('getBoardSpellsdeckId')
                local BoardSpellsDeck = getObjectFromGUID(BoardSpellsDeckId)
                BoardSpellsDeck.putObject(item)      
            end
            
            if tag == 'Ally' then
                foundTag = true 

                local item = InnsmouthBag.takeObject({guid = objGUID})

                --Get the expansion's deck ID
                local BoardAlliesDeckId = GlobalVariables.call('getBoardAlliesdeckId')
                local BoardAlliesDeck = getObjectFromGUID(BoardAlliesDeckId)
                BoardAlliesDeck.putObject(item)  
            end
        end
    end
end

function SetNewInnsmouthMonstersOnTable()
    
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
    --Get the bag ID
    local InnsmouthBagId = SetupVariablesNew.call('getInnsmouthBagId')
    
    --Get the bag
    local InnsmouthBag = getObjectFromGUID(InnsmouthBagId)
    
    for _, obj in pairs(InnsmouthBag.getObjects()) do
        local objGUID = obj.guid    
        local objTags = obj.tags   
        --      Know that an object can have multiple flags. If found a tag to place, no need to check next tags.
        local foundTag = false
        
        for _,tag in pairs(objTags) do
            -- Expansion-specific
            if tag == 'Innsmouth monsters' then
                foundTag = true 

                local item = InnsmouthBag.takeObject({guid = objGUID})
                SetupVariablesNew.call('setInnsmouthMonsterbagid',objGUID)
                
                local pos = SetupVariablesNew.call('getInnsmouthMonsterbagpos')
                
                -- look up the position based on the guid
                item.setPosition(pos)                
                
            end  
            
            if foundTag == true then
                break
            end
        end        
--[[         if foundTag == false then
            log('Innsmouth not found ' .. objGUID)
            log('Name ' .. objGUID.getName())
            log('Name ' .. objGUID.getDescription())
        end --]]
    end
end

function SetNewInnsmouthComponentsOnTable(LurkerGateSet)
    
    InnsmouthSolo = GlobalVariables.call('getInnsmouthSolo')
    KingsportSolo = GlobalVariables.call('getKingsportSolo')
    DunwichSolo = GlobalVariables.call('getDunwichSolo')
    DunwichKingsport = GlobalVariables.call('getKingsportDunwich')
    InnsmouthKingsport = GlobalVariables.call('getInnsmouthKingsport')
    InnsmouthDunwich = GlobalVariables.call('getInnsmouthDunwich')
    AllThreeBoards = GlobalVariables.call('getAllThreeBoards')    
    
    isLurkerGateSet = LurkerGateSet
    
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
    --Get the bag ID
    local InnsmouthBagId = SetupVariablesNew.call('getInnsmouthBagId')
    
    --Get the bag
    local InnsmouthBag = getObjectFromGUID(InnsmouthBagId)
    
    for _, obj in pairs(InnsmouthBag.getObjects()) do
        
        local objGUID = obj.guid
        
        local objTags = obj.tags   
        --      Know that an object can have multiple flags. If found a tag to place, no need to check next tags.
        local foundTag = false
        
        for _,tag in pairs(objTags) do
            
            if tag == 'Northside' then
                foundTag = true

                local item = InnsmouthBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardNorthsideDeckId = GlobalVariables.call('getBoardNorthsidedeckId')
                local BoardNorthsideDeck = getObjectFromGUID(BoardNorthsideDeckId)
                BoardNorthsideDeck.putObject(item)                
            end
            
            if tag == 'Downtown' then
                foundTag = true

                local item = InnsmouthBag.takeObject({guid = objGUID})
                
                --Get the expansion's deck ID
                local BoardDowntownDeckId = GlobalVariables.call('getBoardDowntowndeckId')
                local BoardDowntownDeck = getObjectFromGUID(BoardDowntownDeckId)
                BoardDowntownDeck.putObject(item)                
            end
            
            if tag == 'Easttown' then
                foundTag = true

                local item = InnsmouthBag.takeObject({guid = objGUID})

                --Get the expansion's deck ID
                local BoardEasttownDeckId = GlobalVariables.call('getBoardEasttowndeckId')
                local BoardEasttownDeck = getObjectFromGUID(BoardEasttownDeckId)
                BoardEasttownDeck.putObject(item)                                
            end
            
            if tag == 'Merchant District' then
                foundTag = true

                local item = InnsmouthBag.takeObject({guid = objGUID})

                --Get the expansion's deck ID
                local BoardMerchantDeckId = GlobalVariables.call('getBoardMerchantdeckId')
                local BoardMerchantDeck = getObjectFromGUID(BoardMerchantDeckId)
                BoardMerchantDeck.putObject(item)                                
            end
            
            if tag == 'Rivertown' then
                foundTag = true

                local item = InnsmouthBag.takeObject({guid = objGUID})

                --Get the expansion's deck ID
                local BoardRivertownDeckId = GlobalVariables.call('getBoardRivertowndeckId')
                local BoardRivertownDeck = getObjectFromGUID(BoardRivertownDeckId)
                BoardRivertownDeck.putObject(item)                                
            end
            
            if tag == 'Miskatonic University' then
                foundTag = true                

                local item = InnsmouthBag.takeObject({guid = objGUID})

                --Get the expansion's deck ID
                local BoardMiskatonicDeckId = GlobalVariables.call('getBoardMiskatonicdeckId')
                local BoardMiskatonicDeck = getObjectFromGUID(BoardMiskatonicDeckId)
                BoardMiskatonicDeck.putObject(item)                
            end

            if tag == 'French Hill' then
                foundTag = true                 

                local item = InnsmouthBag.takeObject({guid = objGUID})            

                --Get the expansion's deck ID
                local BoardFrenchDeckId = GlobalVariables.call('getBoardFrenchdeckId')
                local BoardFrenchDeck = getObjectFromGUID(BoardFrenchDeckId)
                BoardFrenchDeck.putObject(item)                
            end
            
            if tag == 'Uptown' then
                foundTag = true                  

                local item = InnsmouthBag.takeObject({guid = objGUID})

                --Get the expansion's deck ID
                local BoardUptownDeckId = GlobalVariables.call('getBoardUptowndeckId')
                local BoardUptownDeck = getObjectFromGUID(BoardUptownDeckId)
                BoardUptownDeck.putObject(item)                
            end
            
            if tag == 'Southside' then
                foundTag = true 

                local item = InnsmouthBag.takeObject({guid = objGUID})

                --Get the expansion's deck ID
                local BoardSouthsideDeckId = GlobalVariables.call('getBoardSouthsidedeckId')
                local BoardSouthsideDeck = getObjectFromGUID(BoardSouthsideDeckId)
                BoardSouthsideDeck.putObject(item)                
            end
            
            if tag == 'Common Item' then
                foundTag = true 

                local item = InnsmouthBag.takeObject({guid = objGUID})

                --Get the expansion's deck ID
                local BoardCommonDeckId = GlobalVariables.call('getBoardCommondeckId')
                local BoardCommonDeck = getObjectFromGUID(BoardCommonDeckId)
                BoardCommonDeck.putObject(item)                
            end
            
            if tag == 'Unique Item' then
                foundTag = true 

                local item = InnsmouthBag.takeObject({guid = objGUID})

                --Get the expansion's deck ID
                local BoardUniqueDeckId = GlobalVariables.call('getBoardUniquedeckId')
                local BoardUniqueDeck = getObjectFromGUID(BoardUniqueDeckId)
                BoardUniqueDeck.putObject(item)            
            end
            
            if tag == 'Skill' then
                foundTag = true
                              
                local item = InnsmouthBag.takeObject({guid = objGUID})
                
                local BoardSkillsDeckId = GlobalVariables.call('getBoardSkillsdeckId')
                -- To be sure it, puts on the object so it retains its GUID
                local BoardSkillsDeck = getObjectFromGUID(BoardSkillsDeckId)
                BoardSkillsDeck.putObject(item)
                
            end
            
            if tag == 'Spell' then
                foundTag = true 

                local item = InnsmouthBag.takeObject({guid = objGUID})

                --Get the expansion's deck ID
                local BoardSpellsDeckId = GlobalVariables.call('getBoardSpellsdeckId')
                local BoardSpellsDeck = getObjectFromGUID(BoardSpellsDeckId)
                BoardSpellsDeck.putObject(item)      
            end
            
            if tag == 'Ally' then
                foundTag = true 

                local item = InnsmouthBag.takeObject({guid = objGUID})

                --Get the expansion's deck ID
                local BoardAlliesDeckId = GlobalVariables.call('getBoardAlliesdeckId')
                local BoardAlliesDeck = getObjectFromGUID(BoardAlliesDeckId)
                BoardAlliesDeck.putObject(item)  
            end
            
            if tag == 'Mythos' then
                foundTag = true 

                local item = InnsmouthBag.takeObject({guid = objGUID})

                local scale = GlobalVariables.call('getBoardMythosScaledeckid')
                item.setScale({scale[1], scale[2], scale[3]})
                
                -- To be sure it, puts on the object so it retains its GUID
                local BoardMythosDeckId = GlobalVariables.call('getBoardMythosdeckId')
                local BoardMythosDeck = getObjectFromGUID(BoardMythosDeckId)
                BoardMythosDeck.putObject(item)
            end
            
            if tag == 'Gate_Deck' then
                foundTag = true 

                local item = InnsmouthBag.takeObject({guid = objGUID})

                --Get the expansion's deck ID
                local BoardGateDeckId = GlobalVariables.call('getBoardGatedeckId')
                local BoardGateDeck = getObjectFromGUID(BoardGateDeckId)
                BoardGateDeck.putObject(item)
            end    
            
            -- Expansion-specific
          
            if tag == 'Innsmouth monsters' then
                foundTag = true 

                local item = InnsmouthBag.takeObject({guid = objGUID})
                SetupVariablesNew.call('setInnsmouthMonsterbagid',objGUID)
                
                local pos = SetupVariablesNew.call('getInnsmouthMonsterbagpos')
                
                -- look up the position based on the guid
                item.setPosition(pos)                
                
            end  
           
            if tag == 'Innsmouth Look' then
                foundTag = true 

                local item = InnsmouthBag.takeObject({guid = objGUID})

                GlobalVariables.call('setInnsmouthLookDeckid',objGUID)
                local InnsmouthLookDeckpos = SetupVariablesNew.call('getInnsmouthLookDeckpos')
                local InnsmouthLookDeckrot = SetupVariablesNew.call('getInnsmouthLookDeckrot')


                item.setPosition(InnsmouthLookDeckpos)
                item.setRotation(InnsmouthLookDeckrot)
                item.setName('Innsmouth Look')
                item.setDescription('Innsmouth Horror')
                item.randomize()
            end   
            
            if tag == 'Factory District' then
                foundTag = true 
                
                local item = InnsmouthBag.takeObject({guid = objGUID})

                GlobalVariables.call('setInnsmouthFactoryDeckid',objGUID)
                local InnsmouthFactoryPosition = SetupVariablesNew.call('getInnsmouthFactoryDeckpos')
                local InnsmouthFactoryRotation = SetupVariablesNew.call('getInnsmouthFactoryDeckrot')


                item.setPosition(InnsmouthFactoryPosition)
                item.setRotation(InnsmouthFactoryRotation)
                item.setName('Factory District')
                item.setDescription('Innsmouth Horror')
                item.randomize()
            end

            if tag == 'Innsmouth Shore' then 
                foundTag = true 

                local item = InnsmouthBag.takeObject({guid = objGUID})

                GlobalVariables.call('setInnsmouthShoreDeckid',objGUID)
                local InnsmouthShorePosition = SetupVariablesNew.call('getInnsmouthShoreDeckpos')
                local InnsmouthShoreRotation = SetupVariablesNew.call('getInnsmouthShoreDeckrot')


                item.setPosition(InnsmouthShorePosition)
                item.setRotation(InnsmouthShoreRotation)
                item.setName('Innsmouth Shore')
                item.setDescription('Innsmouth Horror')
                item.randomize()
            end
            
            if tag == 'Church Green' then
                foundTag = true 

                local item = InnsmouthBag.takeObject({guid = objGUID})

                GlobalVariables.call('setInnsmouthChurchDeckid',objGUID)
                local InnsmouthChurchPosition = SetupVariablesNew.call('getInnsmouthChurchDeckpos')
                local InnsmouthChurchRotation = SetupVariablesNew.call('getInnsmouthChurchDeckrot')


                item.setPosition(InnsmouthChurchPosition)
                item.setRotation(InnsmouthChurchRotation)
                item.setName('Church Green')
                item.setDescription('Innsmouth Horror')
                item.randomize()
            end            
            
            if tag == 'Uprising Token' then
                foundTag = true 

                local item = InnsmouthBag.takeObject({guid = objGUID})

                local InnsmouthDeeponeUprisingTokenPosition = SetupVariablesNew.call('getInnsmouthDeeponeUprisingTokenpos')
                local InnsmouthDeeponeUprisingTokenRotation = SetupVariablesNew.call('getInnsmouthDeeponeUprisingTokenrot')


                item.setPosition(InnsmouthDeeponeUprisingTokenPosition)
                item.setRotation(InnsmouthDeeponeUprisingTokenRotation)

            end   
            
             -- Clue Tokens
            if tag == 'Innsmouth Clue Tokens' then
                foundTag = true 

                local item = InnsmouthBag.takeObject({guid = objGUID})                
                
                local InnsmouthClueTokensPos = SetupVariablesNew.call('getInnsmouthClueTokenPos')

                item.setPosition({InnsmouthClueTokensPos[1], InnsmouthClueTokensPos[2], InnsmouthClueTokensPos[3]})            
                item.setRotation({0, 90, 0})
            end
            
            if tag == 'Innsmouth Board' then
                foundTag = true 

                local item = InnsmouthBag.takeObject({guid = objGUID})

                local InnsmouthBoardPosition = SetupVariablesNew.call('getInnsmouthBoardpos')
                
                item.setPosition(InnsmouthBoardPosition)

                local InnsmouthBoardRotation = SetupVariablesNew.call('getInnsmouthBoardRot')
                
                local InnsmouthBoardScale = SetupVariablesNew.call('getInnsmouthBoardSca')
                
                item.setScale(InnsmouthBoardScale)
                item.setRotation(InnsmouthBoardRotation)
                Wait.time(function() item.locked = true  end,2)
            end
            
            if foundTag == true then
                break
            end
        end
        
        if foundTag == false then
            log('Innsmouth not found ' .. objGUID)
            log('Name ' .. objGUID.getName())
            log('Name ' .. objGUID.getDescription())
        end
    end
    
    
    -- These gates are only set of the Lurker Gate Variant is not Active
    if isLurkerGateSet == false then
        placeGateMarker()
    end
    
end