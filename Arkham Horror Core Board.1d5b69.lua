local terrorMarkerId = '3abfe6'
local ClosedMarkerBagId = '5803c6'
local GeneralStoreScriptingZoneId = '6f7fd8'
local CuriositieShoppeScriptingZoneId = '64c832'
local MagickShoppeScriptingZoneId = 'c8adf2'
local globalVariablesId = '7fc89f'

--Since the table is not standard, it can be moved. We don't want that!
local TableItself = '4ee1f2'

local AHBoard = '1d5b69'

local CurrentPositionTerror = 0
local startingTerror = 0
local terrorStartingPosition = {28.56, 0.78, -15.32}
-- ClosedMarkerRotation = {0,90,0}

local terror_Positions = {
    ["1"] = {35.21, 0.66, -21.01},
    ["2"] = {34.98, 0.66, -19.19},
    ["3"] = {34.94, 0.66, -17.34},
    ["4"] = {35.24, 0.66, -15.55},
    ["5"] = {35.81, 0.66, -13.90},
    ["6"] = {36.78, 0.66, -21.84},
    ["7"] = {36.42, 0.66, -20.07},
    ["8"] = {36.26, 0.66, -18.28},
    ["9"] = {36.42, 0.66, -16.45},
    ["10"] = {36.77, 0.66, -14.70}
}


function onSave()
  local stats = {}

  stats.terror = CurrentPositionTerror

  return JSON.encode_pretty(stats)
end

function onLoad(saveState)
    declareButtons()
    if saveState ~= "" then

        local data = JSON.decode(saveState)

        CurrentPositionTerror = data.terror
    else
        CurrentPositionTerror = startingTerror
    end
        self.createButton(terrorPlusButton_param)
        self.createButton(terrorMinusButton_param)
end

function declareButtons()
    terrorPlusButton_param = {
        function_owner = self,
        click_function = 'RaiseTerror',
        label = '>',
        position = {-0.18, 0.2, 0.9},
        rotation = {0, 0, 0},
        width = 30,
        height = 30,
        font_size = 30,
        tooltip = "Raise Terror"
    }

    terrorMinusButton_param = {
        function_owner = self,
        click_function = 'LowerTerror',
        label = '<',
        position = {-0.62, 0.100000001490116, 0.9},
        rotation = {0, 0, 0},
        width = 30,
        height = 30,
        font_size = 30,
        tooltip = "Lower Terror"
    }

end

--Because you can raise your terror
function RaiseTerror()

    if CurrentPositionTerror == 2 then
        CloseGeneralStore()
    end

    if CurrentPositionTerror == 5 then
        CloseCuriositieShoppe()
    end

    if CurrentPositionTerror == 8 then
        CloseMagickShoppe()
    end

    if CurrentPositionTerror >= 10 then
        CurrentPositionTerror = 10
        broadcastToAll("Raise doom By 1.")
    else
        CurrentPositionTerror = CurrentPositionTerror + 1
        terrorMarker = getObjectFromGUID(terrorMarkerId)
        terrorMarker.setPosition(terror_Positions[tostring(CurrentPositionTerror)])
    end

end

-- You -Should- only raise the terror. I'll add the lower for testing purposes
-- and in case there is a mistake made by the players.
function LowerTerror()

    if CurrentPositionTerror <=1 then
        CurrentPositionTerror = 0
        terrorMarker = getObjectFromGUID(terrorMarkerId)
        terrorMarker.setPosition(terrorStartingPosition)
    else
        CurrentPositionTerror = CurrentPositionTerror - 1
        terrorMarker = getObjectFromGUID(terrorMarkerId)
        terrorMarker.setPosition(terror_Positions[tostring(CurrentPositionTerror)])
    end

end

function getCurrentPositionTerror()
    return CurrentPositionTerror
end

function CloseGeneralStore()

    local FoundClosed = false

    local GeneralStoreScriptingZone = getObjectFromGUID(GeneralStoreScriptingZoneId)
    local GeneralStoreScriptingZoneObjects = GeneralStoreScriptingZone.getObjects()

    if GeneralStoreScriptingZoneObjects == nil then
        EvictStuff(GeneralStoreScriptingZoneId, 'General Store')
        doCloseTheGeneralStore()
    else
        for _, obj in pairs(GeneralStoreScriptingZoneObjects) do
            if obj.getName() == 'Closed Marker' then
                FoundClosed = true
            end
        end

        if FoundClosed == false then
            EvictStuff(GeneralStoreScriptingZoneId, 'General Store')
            doCloseTheGeneralStore()

        end
    end
end

function doCloseTheGeneralStore()

    -- ClosedMarkerBag = getObjectFromGUID(ClosedMarkerBagId)
    ClosedMarkerBag = getObjectFromGUID('5803c6')

    local globalVariables = getObjectFromGUID(globalVariablesId)
    local GeneralStorePosition = globalVariables.call('getLocationPositionBoard', 'General Store')

    local ClosedLocation = ClosedMarkerBag.takeObject({
        position = {GeneralStorePosition[1],2,GeneralStorePosition[3]},
        rotation = {0,90,0}
    })
end

function CloseCuriositieShoppe()

    local FoundClosed = false

    local CuriositieShoppeScriptingZone = getObjectFromGUID(CuriositieShoppeScriptingZoneId)
    local CuriositieShoppeScriptingZoneObjects = CuriositieShoppeScriptingZone.getObjects()

    if CuriositieShoppeScriptingZoneObjects == nil then
        EvictStuff(CuriositieShoppeScriptingZoneId, 'Curiositie Shoppe')
        doCloseTheCuriositieShoppe()
    else
        for _, obj in pairs(CuriositieShoppeScriptingZoneObjects) do
            if obj.getName() == 'Closed Marker' then
                FoundClosed = true
            end
        end

        if FoundClosed == false then
            EvictStuff(CuriositieShoppeScriptingZoneId, 'Curiositie Shoppe')
            doCloseTheCuriositieShoppe()

        end
    end
end

function doCloseTheCuriositieShoppe()

    -- ClosedMarkerBag = getObjectFromGUID(ClosedMarkerBagId)
    ClosedMarkerBag = getObjectFromGUID('5803c6')

    local globalVariables = getObjectFromGUID(globalVariablesId)
    local CuriositieShoppePosition = globalVariables.call('getLocationPositionBoard', 'Curiositie Shoppe')

    local ClosedLocation = ClosedMarkerBag.takeObject({
        position = {CuriositieShoppePosition[1],2,CuriositieShoppePosition[3]},
        rotation = {0,90,0}
    })
end

function CloseMagickShoppe()

    local FoundClosed = false

    local MagickShoppeScriptingZone = getObjectFromGUID(MagickShoppeScriptingZoneId)
    local MagickShoppeScriptingZoneObjects = MagickShoppeScriptingZone.getObjects()

    if MagickShoppeScriptingZoneObjects == nil then
        EvictStuff(MagickShoppeScriptingZoneId, 'Ye Olde Magick Shoppe')
        doCloseTheMagickShoppe()
    else
        for _, obj in pairs(MagickShoppeScriptingZoneObjects) do
            if obj.getName() == 'Closed Marker' then
                FoundClosed = true
            end
        end

        if FoundClosed == false then
            EvictStuff(MagickShoppeScriptingZoneId, 'Ye Olde Magick Shoppe')
            doCloseTheMagickShoppe()

        end
    end
end

function doCloseTheMagickShoppe()

    -- ClosedMarkerBag = getObjectFromGUID(ClosedMarkerBagId)
    ClosedMarkerBag = getObjectFromGUID('5803c6')

    local globalVariables = getObjectFromGUID(globalVariablesId)
    local MagickShoppePosition = globalVariables.call('getLocationPositionBoard', 'Ye Olde Magick Shoppe')

    local ClosedLocation = ClosedMarkerBag.takeObject({
        position = {MagickShoppePosition[1],2,MagickShoppePosition[3]},
        rotation = {0,90,0}
    })
end

function EvictStuff(ScriptingZoneId, zone)

    local ScriptingZone = getObjectFromGUID(ScriptingZoneId)
    local ScriptingZoneObjects = ScriptingZone.getObjects()

    local globalVariables = getObjectFromGUID(globalVariablesId)
    local GeneralStorePosition = globalVariables.call('getLocationPositionBoard', zone)

    -- Know your neighborhood
    local LocationNeighborhood = globalVariables.call('getLocationNeighborhoods', zone)
    local LocationNeighborhoodPosition = globalVariables.call('getLocationPositionBoard', LocationNeighborhood)

    local y = 3
    for _, obj in pairs(ScriptingZoneObjects) do
        local neighborhood = globalVariables.call('getLocationNeighborhoods', obj.getName())

        -- Black Panther Meme - Move Tables, Boards, closed markers and the locations - No, no, no. We don't do that here.
        if obj.getName() ~= 'Closed Marker'
           and neighborhood == ''
           and obj.getGUID() ~= TableItself
           and obj.getGUID() ~= AHBoard then
            obj.setPosition({LocationNeighborhoodPosition[1], y, LocationNeighborhoodPosition[3]})
        end
    end
end