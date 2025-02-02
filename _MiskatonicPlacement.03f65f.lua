local SetupVariablesNew = getObjectFromGUID('2a8dee')


local switch_Is_Set = {
    ['Lurker'] = function (x) return GlobalVariables.call('isLurkerSet') end,
    ['Pharaoh'] = function (x) return GlobalVariables.call('isPharaohSet') end,
    ['Goat'] = function (x) return GlobalVariables.call('isGoatSet') end,
    ['KiY'] = function (x) return GlobalVariables.call('isYellowSet') end,
    ['Innsmouth'] = function (x) return GlobalVariables.call('isInnsmouthSet') end,
    ['Kingsport'] = function (x) return GlobalVariables.call('isKingsportSet') end,
    ['Dunwich'] = function (x) return GlobalVariables.call('isDunwichSet') end
}


local GlobalVariablesId = '7fc89f'
GlobalVariables = getObjectFromGUID(GlobalVariablesId)

function SetMiskatonicComponentsOnTable()
    
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
    
    local MiskatonicMythosId = SetupVariablesNew.call('getMiskatonicMythosDeckId')
    local MiskatonicMythos = getObjectFromGUID(MiskatonicMythosId)
    local scale = GlobalVariables.call('getBoardMythosScaledeckid')
    MiskatonicMythos.setScale({scale[1], scale[2], scale[3]})
    
    -- To be sure it, puts on the object so it retains its GUID
    local BoardMythosDeckId = GlobalVariables.call('getBoardMythosdeckId')
    local BoardMythosDeck = getObjectFromGUID(BoardMythosDeckId)
    BoardMythosDeck.putObject(MiskatonicMythos)
    
    --Get the bag ID
    local MiskatonicBagId = SetupVariablesNew.call('getMiskatonicBagId')
    
    --Get the bag
    local MiskatonicBag = getObjectFromGUID(MiskatonicBagId)
    
    for _, obj in pairs(MiskatonicBag.getObjects()) do
        
        local objGUID = obj.guid
        
        local objTags = obj.tags   
        
        local Tag1 = objTags[1]
        local Tag2 = objTags[2]
        local temp = ''
        
         local isLocation = SetupVariablesNew.call('isLocationByTag',Tag1)
        
        if isLocation ~= true then
            -- Tags come inverted      
            temp = Tag2
            Tag2 = Tag1
            Tag1 = temp
        end
                
        -- The Big Box Expansion
        local Expansion = SetupVariablesNew.call('getSwitchMHLocations',Tag1)
        
        -- Which Expansions ir refers to
        local ArrayExpansions = SetupVariablesNew.call('getSwitchMHDualLocations',Tag2)        
        
        local checker = false
        local deckPosition = {}
        
        checker = CheckExpansion(ArrayExpansions)
        
        if checker == true then
            deckPosition = SetupVariablesNew.call('getMHPositionById',Tag1)
            local item = MiskatonicBag.takeObject({guid = objGUID})
            item.setPosition(deckPosition)
            item.setRotation({0,90,180})
            item.removeTag(Tag2)
            item.addTag(Tag1)
        end
    end
end

function CheckExpansion(ArrayExpansions)
    
    local expansion1 = ArrayExpansions[1]
    local expansion2 = ArrayExpansions[2]
    
    local set1 = switch_Is_Set[expansion1]()
    
    local set2 = switch_Is_Set[expansion2]()

    if set1 == true and set2 == true then
        return true
    end
    return false    
    
end 


--Returns a vector with the placing positions for the object id given
function getSetByTag(input)
    return switch_Is_Set[input]
end 

function AddOnTop()
    
    local MiskatonicScriptingZoneID = SetupVariablesNew.call("getMiskatonicScriptingZone")
    
    local MiskatonicScriptingZone = getObjectFromGUID(MiskatonicScriptingZoneID)
    
    local ObjectsInMiskatonicZone = MiskatonicScriptingZone.getObjects()
    
    local GlobalVariablesId = '7fc89f'
    GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    
    local foundTag
    
    for _, obj in pairs(ObjectsInMiskatonicZone) do
        
        Alltags = obj.getTags()
        tag1 = Alltags[1]
        
        foundTag = false
        
        if tag1 == 'Gate_Deck' then
            foundTag = true              
            
            --Get the expansion's deck ID
            local BoardGateDeckId = GlobalVariables.call('getBoardGatedeckId')
            local BoardGateDeck = getObjectFromGUID(BoardGateDeckId)
            BoardGateDeck.putObject(obj)
            BoardGateDeck.randomize()
        end            
        
        if tag1 == 'Factory District' then
            foundTag = true 
            
            local InnsmouthFactoryDeckid = GlobalVariables.call('getInnsmouthFactoryDeckid')
            local InnsmouthFactoryDeck = getObjectFromGUID(InnsmouthFactoryDeckid)            
            InnsmouthFactoryDeck.putObject(obj)
            
            InnsmouthFactoryDeck.setName('Factory District')
            InnsmouthFactoryDeck.setDescription('Innsmouth Horror')
            InnsmouthFactoryDeck.randomize()
        end
        
        if tag1 == 'Innsmouth Shore' then 
            foundTag = true 
            
            local InnsmouthShoreDeckid = GlobalVariables.call('getInnsmouthShoreDeckid')
            local InnsmouthShoreDeck = getObjectFromGUID(InnsmouthShoreDeckid)
            InnsmouthShoreDeck.putObject(obj)            
            
            InnsmouthShoreDeck.setName('Innsmouth Shore')
            InnsmouthShoreDeck.setDescription('Innsmouth Horror')
            InnsmouthShoreDeck.randomize()
        end
        
        if tag1 == 'Church Green' then
            foundTag = true
            
            local InnsmouthChurchDeckid = GlobalVariables.call('getInnsmouthChurchDeckid')
            local InnsmouthChurchDeck = getObjectFromGUID(InnsmouthChurchDeckid)            
            InnsmouthChurchDeck.putObject(obj)  
            
            InnsmouthChurchDeck.setName('Church Green')
            InnsmouthChurchDeck.setDescription('Innsmouth Horror')
            InnsmouthChurchDeck.randomize()
        end
        
        if tag1 == 'Kingsport Head' then
            foundTag = true                  
            
            local KingsportHeadDeckid = GlobalVariables.call('getKingsportHeadDeckId')
            local KingsportHeadDeck = getObjectFromGUID(KingsportHeadDeckid)            
            KingsportHeadDeck.putObject(obj) 
            
            KingsportHeadDeck.setName('Kingsport Head')
            KingsportHeadDeck.setDescription('Kingsport Horror')                  
            KingsportHeadDeck.randomize()
            
        end   
        
        if tag1 == 'Harborside' then
            foundTag = true              
            
            local KingsportHarborsideDeckid = GlobalVariables.call('getKingsportHarborsideDeckId')
            local KingsportHarborsideDeck = getObjectFromGUID(KingsportHarborsideDeckid)             
            KingsportHarborsideDeck.putObject(obj)             
            
            KingsportHarborsideDeck.setName('Harborside')
            KingsportHarborsideDeck.setDescription('Kingsport Horror')   
            KingsportHarborsideDeck.randomize()
        end 
        
        if tag1 == 'Central Hill' then
            foundTag = true            
            
            local KingsportCentralHillDeckid = GlobalVariables.call('getKingsportCentralHillDeckId')
            local KingsportCentralHillDeck = getObjectFromGUID(KingsportCentralHillDeckid)             
            KingsportCentralHillDeck.putObject(obj) 
            
            KingsportCentralHillDeck.setName('Central Hill')
            KingsportCentralHillDeck.setDescription('Kingsport Horror')   
            KingsportCentralHillDeck.randomize()
        end             
        
        if tag1 == 'South Shore' then
            foundTag = true 
            
            local KingsportSouthShoreDeckid = GlobalVariables.call('getKingsportSouthShoreDeckId')
            local KingsportSouthShoreDeck = getObjectFromGUID(KingsportSouthShoreDeckid)             
            KingsportSouthShoreDeck.putObject(obj) 
            
            KingsportSouthShoreDeck.setName('South Shore')
            KingsportSouthShoreDeck.setDescription('Kingsport Horror')                
            KingsportSouthShoreDeck.randomize()
        end 
        
        if tag1 == 'Village Commons' then 
            foundTag = true           
            
            local DunwichVillageCommonsDeckid = GlobalVariables.call('getDunwichVillageCommonsDeckId')
            local DunwichVillageCommonsDeck = getObjectFromGUID(DunwichVillageCommonsDeckid)               
            DunwichVillageCommonsDeck.putObject(obj) 
            
            DunwichVillageCommonsDeck.setName('Village Commons')
            DunwichVillageCommonsDeck.setDescription('Dunwich Horror')                 
            DunwichVillageCommonsDeck.randomize()
        end
        
        if tag1 == 'Backwoods Country' then
            foundTag = true            
            
            local DunwichBackwoodsDeckid = GlobalVariables.call('getDunwichBackwoodsDeckId')
            local DunwichBackwoodsDeck = getObjectFromGUID(DunwichBackwoodsDeckid)             
            DunwichBackwoodsDeck.putObject(obj)
            
            DunwichBackwoodsDeck.setName('Backwoods Country')
            DunwichBackwoodsDeck.setDescription('Dunwich Horror')                
            DunwichBackwoodsDeck.randomize()
        end
        
        if tag1 == 'Blasted Heath' then
            foundTag = true             
            
            local DunwichBlastedHeathDeckid = GlobalVariables.call('getDunwichBlastedHeathDeckId')
            local DunwichBlastedHeathDeck = getObjectFromGUID(DunwichBlastedHeathDeckid)              
            DunwichBlastedHeathDeck.putObject(obj)            
            
            DunwichBlastedHeathDeck.setName('Blasted Heath')
            DunwichBlastedHeathDeck.setDescription('Dunwich Horror')                    
            DunwichBlastedHeathDeck.randomize()
        end          
        
    end
    
end    