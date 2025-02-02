local InnsmouthVariables = getObjectFromGUID('5c39a4')
--Just an empty instruction
local fillerFillingin = ''

--for objects from a zone you need the zone itself as an object (getObjectFromGUID)
--and then you need all objects in it (getObjects)
local InnsmouthScriptingZoneId = InnsmouthVariables.call('getInnsmouthScriptingZone')
--Got the bag ID
local InnsmouthBagId = InnsmouthVariables.call('getInnsmouthBagId')
-- Got the Bag
local InnsmouthBag = getObjectFromGUID(InnsmouthBagId)


function InnsmouthRemove()
    local objectsInInnsmouthZone = getObjectFromGUID(InnsmouthScriptingZoneId).getObjects()
    --then you have to loop these objects
    for _, obj in pairs(objectsInInnsmouthZone) do

        -- Avoiding the hilarious bug of putting the board itself in the bag
        -- Making all objects not locked fall to oblivion
        if obj.getGUID() =='4ee1f2' then
        fillerFillingin = ' '
        elseif obj.getGUID() == 'bd605e' then
            obj.setPosition({-78.13, 5.8, 2.99})
            obj.setScale({5.26,1.00,5.26})
            InnsmouthBag.putObject(obj)
        else
        --if the script is on the bag itselfe then you need to putObject on itselfe like
            InnsmouthBag.putObject(obj)
        end
    end
end