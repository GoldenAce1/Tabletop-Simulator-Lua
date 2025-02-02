local PharaohVariables = getObjectFromGUID('43e2a0')
--Just an empty instruction
local fillerFillingin = ''

--for objects from a zone you need the zone itself as an object (getObjectFromGUID)
--and then you need all objects in it (getObjects)
local PharaohScriptingZoneId = PharaohVariables.call('getPharaohScriptingZone')
--Got the bag ID
local PharaohBagId = PharaohVariables.call('getPharaohBagId')
-- Got the Bag
local PharaohBag = getObjectFromGUID(PharaohBagId)


function PharaohRemove()
    local objectsInPharaohZone = getObjectFromGUID(PharaohScriptingZoneId).getObjects()
    --then you have to loop these objects
    for _, obj in pairs(objectsInPharaohZone) do

        -- Avoiding the hilarious bug of putting the board itself in the bag
        -- Making all objects not locked fall to oblivion
        if obj.getGUID() =='4ee1f2' then
        fillerFillingin = ' '
        else
        --if the script is on the bag itselfe then you need to putObject on itselfe like
            PharaohBag.putObject(obj)
        end
    end
end