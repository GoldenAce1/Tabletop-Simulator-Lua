local GoatVariables = getObjectFromGUID('293f5a')
--Just an empty instruction
local fillerFillingin = ''

--for objects from a zone you need the zone itself as an object (getObjectFromGUID)
--and then you need all objects in it (getObjects)
local GoatScriptingZoneId = GoatVariables.call('getGoatScriptingZone')
--Got the bag ID
local GoatBagId = GoatVariables.call('getGoatBagId')
-- Got the Bag
local GoatBag = getObjectFromGUID(GoatBagId)


function GoatRemove()
    local objectsInGoatZone = getObjectFromGUID(GoatScriptingZoneId).getObjects()
    --then you have to loop these objects
    for _, obj in pairs(objectsInGoatZone) do

        -- Avoiding the hilarious bug of putting the board itself in the bag
        -- Making all objects not locked fall to oblivion
        if obj.getGUID() =='4ee1f2' then
        fillerFillingin = ' '
        else
        --if the script is on the bag itselfe then you need to putObject on itselfe like
            GoatBag.putObject(obj)
        end
    end
end