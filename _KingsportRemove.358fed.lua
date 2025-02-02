--local KingsportVariables = getObjectFromGUID('00ac75')
local SetupVariablesNew = getObjectFromGUID('2a8dee')
--Just an empty instruction
local fillerFillingin = ''

--for objects from a zone you need the zone itself as an object (getObjectFromGUID)
--and then you need all objects in it (getObjects)
local KingsportScriptingZoneId = SetupVariablesNew.call('getKingsportScriptingZone')
--Got the bag ID
local KingsportBagId = SetupVariablesNew.call('getKingsportBagId')
-- Got the Bag
local KingsportBag = getObjectFromGUID(KingsportBagId)


function KingsportRemove()
    local objectsInKingsportZone = getObjectFromGUID(KingsportScriptingZoneId).getObjects()
    --then you have to loop these objects
    for _, obj in pairs(objectsInKingsportZone) do

        -- Avoiding the hilarious bug of putting the board itself in the bag
        -- Making all objects not locked fall to oblivion
        if obj.getGUID() =='4ee1f2' then
        fillerFillingin = ' '
        elseif obj.getGUID() == '64ebaa' then
            obj.setPosition({-78.13, 5.8, 2.99})
            obj.setScale({5.26,1.00,5.26})
            KingsportBag.putObject(obj)
        else
        --if the script is on the bag itselfe then you need to putObject on itselfe like
            KingsportBag.putObject(obj)
        end
    end
end