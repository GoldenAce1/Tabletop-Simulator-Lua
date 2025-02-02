local GlobalVariablesId = '7fc89f'
GlobalVariables = getObjectFromGUID(GlobalVariablesId)

local isLurkerGateSet = false 

function SetNewDunwichMonstersOnTable()
    
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
    --Get the bag ID
    local DunwichBagId = SetupVariablesNew.call('getDunwichBagId')
    
    --Get the bag
    local DunwichBag = getObjectFromGUID(DunwichBagId)
    
    for _, obj in pairs(DunwichBag.getObjects()) do
        local objGUID = obj.guid
        local objTags = obj.tags   
        --      Know that an object can have multiple flags. If found a tag to place, no need to check next tags.
        local foundTag = false
        
        for _,tag in pairs(objTags) do
            -- Expansion-specific
            if tag == 'Dunwich Monsters' then
                foundTag = true
                
                local item = DunwichBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID()
                SetupVariablesNew.call('setDunwichMonsterbagid',objGUID) 
                local pos = SetupVariablesNew.call('getDunwichMonsterbagpos',{objGUID})
                
                -- look up the position based on the guid
                item.setPosition(pos)                
            end  
            
            if foundTag == true then
                break
            end
        end
    end
end

function SetNewDunwichComponentsOnTable(LurkerGateSet) 
    
    isLurkerGateSet = LurkerGateSet
    local InnsmouthSolo = GlobalVariables.call('getInnsmouthSolo')
    local KingsportSolo = GlobalVariables.call('getKingsportSolo')
    local DunwichSolo = GlobalVariables.call('getDunwichSolo')
    local KingsportDunwich = GlobalVariables.call('getKingsportDunwich')
    local InnsmouthKingsport = GlobalVariables.call('getInnsmouthKingsport')
    local InnsmouthDunwich = GlobalVariables.call('getInnsmouthDunwich')
    local AllThreeBoards = GlobalVariables.call('getAllThreeBoards')     
    
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
    --Get the bag ID
    local DunwichBagId = SetupVariablesNew.call('getDunwichBagId')
    
    --Get the bag
    local DunwichBag = getObjectFromGUID(DunwichBagId)
    local objects = DunwichBag.getObjects()
    
    for _, obj in ipairs(objects) do
        
        --Get the tags from the data in the bag
        local objTags = obj.tags
        
        --  Know that an object can have multiple flags. If found a tag to place, no need to check next tags.
        local foundTag = false
        
        for _,tag in pairs(objTags) do
            
            if tag == 'Northside' then
                foundTag = true
                
                local item = DunwichBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID()                
                
                --Get the expansion's deck ID
                local BoardNorthsideDeckId = GlobalVariables.call('getBoardNorthsidedeckId')
                local BoardNorthsideDeck = getObjectFromGUID(BoardNorthsideDeckId)
                BoardNorthsideDeck.putObject(item)                
            end
            
            if tag == 'Downtown' then
                foundTag = true
                
                local item = DunwichBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID()                
                --Get the expansion's deck ID
                local BoardDowntownDeckId = GlobalVariables.call('getBoardDowntowndeckId')
                local BoardDowntownDeck = getObjectFromGUID(BoardDowntownDeckId)
                BoardDowntownDeck.putObject(item)                
            end
            
            if tag == 'Easttown' then
                foundTag = true
                
                local item = DunwichBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID()                
                --Get the expansion's deck ID
                local BoardEasttownDeckId = GlobalVariables.call('getBoardEasttowndeckId')
                local BoardEasttownDeck = getObjectFromGUID(BoardEasttownDeckId)
                BoardEasttownDeck.putObject(item)                                
            end
            
            if tag == 'Merchant District' then
                foundTag = true
                
                local item = DunwichBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID()                
                --Get the expansion's deck ID
                local BoardMerchantDeckId = GlobalVariables.call('getBoardMerchantdeckId')
                local BoardMerchantDeck = getObjectFromGUID(BoardMerchantDeckId)
                BoardMerchantDeck.putObject(item)                                
            end
            
            if tag == 'Rivertown' then
                foundTag = true
                
                local item = DunwichBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID()                
                --Get the expansion's deck ID
                local BoardRivertownDeckId = GlobalVariables.call('getBoardRivertowndeckId')
                local BoardRivertownDeck = getObjectFromGUID(BoardRivertownDeckId)
                BoardRivertownDeck.putObject(item)                                
            end
            
            if tag == 'Miskatonic University' then
                foundTag = true
                
                local item = DunwichBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID()                
                --Get the expansion's deck ID
                local BoardMiskatonicDeckId = GlobalVariables.call('getBoardMiskatonicdeckId')
                local BoardMiskatonicDeck = getObjectFromGUID(BoardMiskatonicDeckId)
                BoardMiskatonicDeck.putObject(item)                
            end
            
            if tag == 'French Hill' then
                foundTag = true
                
                local item = DunwichBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID()                                 
                --Get the expansion's deck ID
                local BoardFrenchDeckId = GlobalVariables.call('getBoardFrenchdeckId')
                local BoardFrenchDeck = getObjectFromGUID(BoardFrenchDeckId)
                BoardFrenchDeck.putObject(item)                
            end
            
            if tag == 'Uptown' then
                foundTag = true
                
                local item = DunwichBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID()                
                --Get the expansion's deck ID
                local BoardUptownDeckId = GlobalVariables.call('getBoardUptowndeckId')
                local BoardUptownDeck = getObjectFromGUID(BoardUptownDeckId)
                BoardUptownDeck.putObject(item)                
            end
            
            if tag == 'Southside' then
                foundTag = true
                
                local item = DunwichBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID()                
                --Get the expansion's deck ID
                local BoardSouthsideDeckId = GlobalVariables.call('getBoardSouthsidedeckId')
                local BoardSouthsideDeck = getObjectFromGUID(BoardSouthsideDeckId)
                BoardSouthsideDeck.putObject(item)                
            end
            
            if tag == 'Common Item' then
                foundTag = true
                
                local item = DunwichBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID()                
                --Get the expansion's deck ID
                local BoardCommonDeckId = GlobalVariables.call('getBoardCommondeckId')
                local BoardCommonDeck = getObjectFromGUID(BoardCommonDeckId)
                BoardCommonDeck.putObject(item)                
            end
            
            if tag == 'Unique Item' then
                foundTag = true
                
                local item = DunwichBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID()                
                --Get the expansion's deck ID
                local BoardUniqueDeckId = GlobalVariables.call('getBoardUniquedeckId')
                local BoardUniqueDeck = getObjectFromGUID(BoardUniqueDeckId)
                BoardUniqueDeck.putObject(item)            
            end
            
            if tag == 'Skill' then
                foundTag = true
                
                local item = DunwichBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID()                
                local BoardSkillsDeckId = GlobalVariables.call('getBoardSkillsdeckId')
                -- To be sure it, puts on the object so it retains its GUID
                local BoardSkillsDeck = getObjectFromGUID(BoardSkillsDeckId)
                BoardSkillsDeck.putObject(item)
                
            end
            
            if tag == 'Spell' then
                foundTag = true
                
                local item = DunwichBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID()                
                --Get the expansion's deck ID
                local BoardSpellsDeckId = GlobalVariables.call('getBoardSpellsdeckId')
                local BoardSpellsDeck = getObjectFromGUID(BoardSpellsDeckId)
                BoardSpellsDeck.putObject(item)      
            end
            
            if tag == 'Ally' then
                foundTag = true
                
                local item = DunwichBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID()                
                --Get the expansion's deck ID
                local BoardAlliesDeckId = GlobalVariables.call('getBoardAlliesdeckId')
                local BoardAlliesDeck = getObjectFromGUID(BoardAlliesDeckId)
                BoardAlliesDeck.putObject(item)  
            end
            
            if tag == 'Mythos' then
                foundTag = true 
                
                local item = DunwichBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID()               
                local scale = GlobalVariables.call('getBoardMythosScaledeckid')
                item.setScale({scale[1], scale[2], scale[3]})
                
                -- To be sure it, puts on the object so it retains its GUID
                local BoardMythosDeckId = GlobalVariables.call('getBoardMythosdeckId')
                local BoardMythosDeck = getObjectFromGUID(BoardMythosDeckId)
                BoardMythosDeck.putObject(item)
            end
            
            if tag == 'Gate_Deck' then
                foundTag = true
                
                local item = DunwichBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID()                
                --Get the expansion's deck ID
                local BoardGateDeckId = GlobalVariables.call('getBoardGatedeckId')
                local BoardGateDeck = getObjectFromGUID(BoardGateDeckId)
                BoardGateDeck.putObject(item)
            end    
            
            -- Expansion-specific
            
            if tag == 'Dunwich Monsters' then
                foundTag = true
                
                local item = DunwichBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID()
                SetupVariablesNew.call('setDunwichMonsterbagid',objGUID) 
                local pos = SetupVariablesNew.call('getDunwichMonsterbagpos',{objGUID})
                
                -- look up the position based on the guid
                item.setPosition(pos)                
            end  
            
            if tag == 'Dunwich Horror Cards' then
                foundTag = true
                
                local item = DunwichBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID()                
                GlobalVariables.call('setDunwichHorrorDeckId',objGUID)
                local DunwichBlastedHeathPosition = SetupVariablesNew.call('getDunwichHorrorDeckPos')
                local DunwichBlastedHeathRotation = SetupVariablesNew.call('getDunwichHorrorDeckDeckRot')
                
                
                item.setPosition(DunwichBlastedHeathPosition)
                item.setRotation(DunwichBlastedHeathRotation)
                item.setName('Dunwich Horror Cards')
                item.setDescription('Dunwich Horror')                 
                item.randomize()
            end   
            
            if tag == 'Blasted Heath' then
                foundTag = true 
                
                local item = DunwichBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID()                
                GlobalVariables.call('setDunwichBlastedHeathDeckId',objGUID)
                local DunwichBlastedHeathPosition = SetupVariablesNew.call('getDunwichBlastedHeathDeckPos')
                local DunwichBlastedHeathRotation = SetupVariablesNew.call('getDunwichBlastedHeathDeckRot')
                
                
                item.setPosition(DunwichBlastedHeathPosition)
                item.setRotation(DunwichBlastedHeathRotation)
                item.setName('Blasted Heath')
                item.setDescription('Dunwich Horror')                    
                item.randomize()
            end   
            
            if tag == 'Condition' then
                foundTag = true 
                
                local item = DunwichBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID()                
                GlobalVariables.call('setDunwichConditionDeckId',objGUID)
                local DunwichConditionPosition = SetupVariablesNew.call('getDunwichConditionDeckPos')
                local DunwichConditionRotation = SetupVariablesNew.call('getDunwichConditionDeckRot')
                
                
                item.setPosition(DunwichConditionPosition)
                item.setRotation(DunwichConditionRotation)
                item.setName('Condition')
                item.setDescription('Dunwich Horror')                 
                item.randomize()
                
            end   
            
            if tag == 'Rail Pass' then
                foundTag = true 
                
                local item = DunwichBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID()
                GlobalVariables.call('setDunwichRailPassDeckId',objGUID)
                local DunwichConditionPosition = SetupVariablesNew.call('getDunwichRailPassDeckPos')
                local DunwichConditionRotation = SetupVariablesNew.call('getDunwichRailPassDeckRot')
                
                item.setPosition(DunwichConditionPosition)
                item.setRotation(DunwichConditionRotation)
                item.setName('Rail Pass')
                item.setDescription('Dunwich Horror')                 
                item.randomize()
            end 
            
            -- The Monster Itself
            if tag == 'Dunwich Horror Monster' then
                foundTag = true 
                
                local item = DunwichBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID() 
                
                GlobalVariables.call('setDunwichHorrorMonsterid',objGUID)
                
                local DunwichMonsterPosition
                if DunwichSolo == true then
                    DunwichMonsterPosition = SetupVariablesNew.call('getBoardPositionsDunwichSoloById',{objGUID})
                end
                if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
                    DunwichMonsterPosition = SetupVariablesNew.call('getBoardPositionsInnsmouthDunwichById',{objGUID})
                end
                item.setPosition({DunwichMonsterPosition[1], DunwichMonsterPosition[2], DunwichMonsterPosition[3]})
                
                local DunwichMonsterRotation = SetupVariablesNew.call('getDunwichHorrorMonsterRotation')
                item.setRotation(DunwichMonsterRotation)
            end 
            
            if tag == 'Sheldon Gang' then
                foundTag = true 
                
                local item = DunwichBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID()                
                GlobalVariables.call('setDunwichSheldonGangDeckId',objGUID)
                local DunwichSheldonGangPosition = SetupVariablesNew.call('getDunwichSheldonGangDeckPos')
                local DunwichSheldonGangRotation = SetupVariablesNew.call('getDunwichSheldonGangDeckRot')
                
                
                item.setPosition(DunwichSheldonGangPosition)
                item.setRotation(DunwichSheldonGangRotation)
                item.setName('Sheldon Gang')
                item.setDescription('Dunwich Horror')                 
                item.randomize() 
            end
            -- Gate Markers Bag
            if tag == 'Gate Markers Bag' then
                foundTag = true 
                
                local item = DunwichBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID()
                SetupVariablesNew.call('setDunwichGateMarkerBagid',objGUID) 
                local pos = SetupVariablesNew.call('getDunwichGateMarkerBagpos',{objGUID})
                
                -- look up the position based on the guid
                item.setPosition(pos) 
            end
            
            -- The Three tokens
            if tag == 'Dunwich Horror Token' then
                foundTag = true
                GlobalVariables.call('setDunwichHorrorTokenid',objGUID)
                
                local item = DunwichBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID()                 
                local DunwichHorrorTokenPosition
                if DunwichSolo == true then
                    DunwichHorrorTokenPosition = SetupVariablesNew.call('getBoardPositionsDunwichSoloById',{objGUID})
                end
                if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
                    DunwichHorrorTokenPosition = SetupVariablesNew.call('getBoardPositionsInnsmouthDunwichById',{objGUID})
                end
                item.setPosition(DunwichHorrorTokenPosition)
                local DunwichHorrorTokenRotation = SetupVariablesNew.call('getDunwichHorrorTokenRotation')
                item.setRotation(DunwichHorrorTokenRotation)
                
            end
            
            if tag == 'Village Commons' then 
                foundTag = true
                
                local item = DunwichBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID()                 
                GlobalVariables.call('setDunwichVillageCommonsDeckId',objGUID)
                local DunwichVillageCommonsPosition = SetupVariablesNew.call('getDunwichVillageCommonsDeckPos')
                local DunwichVillageCommonsRotation = SetupVariablesNew.call('getDunwichVillageCommonsDeckRot')
                
                item.setPosition(DunwichVillageCommonsPosition)
                item.setRotation(DunwichVillageCommonsRotation)
                item.setName('Village Commons')
                item.setDescription('Dunwich Horror')                 
                item.randomize()
            end
            
            if tag == 'Backwoods Country' then
                foundTag = true
                
                local item = DunwichBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID()                
                GlobalVariables.call('setDunwichBackwoodsDeckId',objGUID)
                local DunwichBackwoodsPosition = SetupVariablesNew.call('getDunwichBackwoodsDeckPos')
                local DunwichBackwoodsRotation = SetupVariablesNew.call('getDunwichBackwoodsDeckRot')
                
                item.setPosition(DunwichBackwoodsPosition)
                item.setRotation(DunwichBackwoodsRotation)
                item.setName('Backwoods Country')
                item.setDescription('Dunwich Horror')                
                item.randomize()
            end
            
            if tag == 'Dunwich Board' then
                foundTag = true
                
                local item = DunwichBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID()                
                local DunwichBoardPosition
                
                if DunwichSolo == true then
                    DunwichBoardPosition = SetupVariablesNew.call('getBoardPositionsDunwichSoloById',{objGUID})
                end
                if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
                    DunwichBoardPosition = SetupVariablesNew.call('getBoardPositionsInnsmouthDunwichById',{objGUID})
                end

                item.setPosition(DunwichBoardPosition)
                
                local DunwichBoardRotation = SetupVariablesNew.call('getDunwichBoardRot')
                
                local DunwichBoardScale = SetupVariablesNew.call('getDunwichBoardSca')
                
                item.setScale(DunwichBoardScale)
                item.setRotation(DunwichBoardRotation)
                Wait.time(function() item.locked = true  end,2)
            end
            
            if foundTag == true then
                break
            end
        end
        
        --[[         if foundTag == false then
            log('Dunwich not found ' .. objGUID)
            log('Tag ' .. tag .. 'finish')
            log('Name ' .. objGUID.getName())
            log('Name ' .. objGUID.getDescription())
        end --]]
    end
end

function SetNewDunwichSmallCardsOnTable()
    
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
    --Get the bag ID
    local DunwichBagId = SetupVariablesNew.call('getDunwichBagId')
    
    --Get the bag
    local DunwichBag = getObjectFromGUID(DunwichBagId)
    local objects = DunwichBag.getObjects()
    
    for _, obj in ipairs(objects) do
        
        --Get the tags from the data in the bag
        local objTags = obj.tags
        
        --  Know that an object can have multiple flags. If found a tag to place, no need to check next tags.
        local foundTag = false
        
        for _,tag in pairs(objTags) do
            
            if tag == 'Common Item' then
                foundTag = true
                
                local item = DunwichBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID()                
                --Get the expansion's deck ID
                local BoardCommonDeckId = GlobalVariables.call('getBoardCommondeckId')
                local BoardCommonDeck = getObjectFromGUID(BoardCommonDeckId)
                BoardCommonDeck.putObject(item)                
            end
            
            if tag == 'Unique Item' then
                foundTag = true
                
                local item = DunwichBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID()                
                --Get the expansion's deck ID
                local BoardUniqueDeckId = GlobalVariables.call('getBoardUniquedeckId')
                local BoardUniqueDeck = getObjectFromGUID(BoardUniqueDeckId)
                BoardUniqueDeck.putObject(item)            
            end
            
            if tag == 'Skill' then
                foundTag = true
                
                local item = DunwichBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID()                
                local BoardSkillsDeckId = GlobalVariables.call('getBoardSkillsdeckId')
                -- To be sure it, puts on the object so it retains its GUID
                local BoardSkillsDeck = getObjectFromGUID(BoardSkillsDeckId)
                BoardSkillsDeck.putObject(item)
                
            end
            
            if tag == 'Spell' then
                foundTag = true
                
                local item = DunwichBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID()                
                --Get the expansion's deck ID
                local BoardSpellsDeckId = GlobalVariables.call('getBoardSpellsdeckId')
                local BoardSpellsDeck = getObjectFromGUID(BoardSpellsDeckId)
                BoardSpellsDeck.putObject(item)      
            end
            
            if tag == 'Ally' then
                foundTag = true
                
                local item = DunwichBag.takeObject({guid = obj.guid})
                local objGUID = item.getGUID()                
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

function getDunwichCommonDeckId()
    
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
    --Get the bag ID
    local DunwichBagId = SetupVariablesNew.call('getDunwichBagId')
    
    --Get the bag
    local DunwichBag = getObjectFromGUID(DunwichBagId)
    local objects = DunwichBag.getObjects()
    local objGUID =''
    
    for _, obj in ipairs(objects) do
        
        --Get the tags from the data in the bag
        local objTags = obj.tags
        
        --  Know that an object can have multiple flags. If found a tag to place, no need to check next tags.
        local foundTag = false
        
        for _,tag in pairs(objTags) do
            
            if tag == 'Common Item' then
                foundTag = true
                locationToSet = {}
                locationToSet.guid = obj.guid
                locationToSet.position = {-107.64, 0.77, -25.08}
                locationToSet.rotation = {0, 90, 180}        
                local item = DunwichBag.takeObject(locationToSet)
                objGUID = obj.guid           
            end
            
            if foundTag == true then
                break
            end
        end
    end
    return objGUID
end

function getDunwichUniqueDeckId()
    
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
    --Get the bag ID
    local DunwichBagId = SetupVariablesNew.call('getDunwichBagId')
    
    --Get the bag
    local DunwichBag = getObjectFromGUID(DunwichBagId)
    local objects = DunwichBag.getObjects()
    local objGUID =''
    
    for _, obj in ipairs(objects) do
        
        --Get the tags from the data in the bag
        local objTags = obj.tags
        
        --  Know that an object can have multiple flags. If found a tag to place, no need to check next tags.
        local foundTag = false
        
        for _,tag in pairs(objTags) do
            
            if tag == 'Unique Item' then
                foundTag = true
                locationToSet = {}
                locationToSet.guid = obj.guid
                locationToSet.position = {-107.64, 0.77, -21.02}
                locationToSet.rotation = {0, 90, 180}        
                local item = DunwichBag.takeObject(locationToSet)
                objGUID = obj.guid           
            end
            
            if foundTag == true then
                break
            end
        end
    end
    return objGUID
end