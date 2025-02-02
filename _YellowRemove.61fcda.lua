local YellowVariables = getObjectFromGUID('2be879')
--Just an empty instruction
local fillerFillingin = ''

--for objects from a zone you need the zone itself as an object (getObjectFromGUID)
--and then you need all objects in it (getObjects)
local YellowScriptingZoneId = YellowVariables.call('getYellowScriptingZone')
--Got the bag ID
local YellowBagId = YellowVariables.call('getYellowBagId')
-- Got the Bag
local YellowBag = getObjectFromGUID(YellowBagId)


function YellowRemove()
    local objectsInYellowZone = getObjectFromGUID(YellowScriptingZoneId).getObjects()
    --then you have to loop these objects
    for _, obj in pairs(objectsInYellowZone) do
        -- Avoiding the hilarious bug of putting the board itself in the bag
        -- Making all objects not locked fall to oblivion
        if obj.getGUID() =='4ee1f2' then
        fillerFillingin = ' '
        else
        --if the script is on the bag itselfe then you need to putObject on itselfe like
            YellowBag.putObject(obj)
        end
    end
end