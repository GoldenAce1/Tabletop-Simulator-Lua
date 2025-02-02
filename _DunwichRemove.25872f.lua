function DunwichRemove()
    --local DunwichVariables = getObjectFromGUID('5932f9')
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
    --Just an empty instruction
    local fillerFillingin = ''
    
    --for objects from a zone you need the zone itself as an object (getObjectFromGUID)
    --and then you need all objects in it (getObjects)
        local DunwichScriptingZoneId = SetupVariablesNew.call('getDunwichScriptingZone')
        --Got the bag ID
        local DunwichBagId = SetupVariablesNew.call('getDunwichBagId')
        -- Got the Bag
        local DunwichBag = getObjectFromGUID(DunwichBagId)
        
        local DunwichZone = getObjectFromGUID(DunwichScriptingZoneId)
        local objectsInDunwichZone = DunwichZone.getObjects()
        --then you have to loop these objects
            for _, obj in pairs(objectsInDunwichZone) do   
                -- Avoiding the hilarious bug of putting the board itself in the bag
                -- Making all objects not locked fall to oblivion
                if obj.getGUID() =='4ee1f2' then
                    fillerFillingin = ' '
                else 
                    if obj.getGUID() == '354605' then
                        obj.setPosition({-67.88, 5.80, 2.99})
                        obj.setScale({5.26,1.00,5.26})
                        DunwichBag.putObject(obj)
                    else
                        --if the script is on the bag itselfe then you need to putObject on itselfe like
                            DunwichBag.putObject(obj)
                    end
                end
            end
end