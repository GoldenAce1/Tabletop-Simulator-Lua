local LurkerVariables = getObjectFromGUID('edd1ef')

--for objects from a zone you need the zone itself as an object (getObjectFromGUID)
--and then you need all objects in it (getObjects)
local LurkerScriptingZoneId = LurkerVariables.call('getLurkerScriptingZone')
--Got the bag ID
local LurkerBagId = LurkerVariables.call('getLurkerBagId')
-- Got the Bag
local LurkerBag = getObjectFromGUID(LurkerBagId)


function LurkerRemove()
    local objectsInLurkerZone = getObjectFromGUID(LurkerScriptingZoneId).getObjects()
    --then you have to loop these objects
    for _, obj in pairs(objectsInLurkerZone) do
        ---- Avoiding the hilarious bug of putting the board itself in the bag
        -- Making all objects not locked fall to oblivion
        if obj.getGUID() =='4ee1f2' then
            fillerFillingin = ' '
        else
            LurkerBag.putObject(obj)
        end
    end
end