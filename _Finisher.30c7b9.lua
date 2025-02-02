--setup
local SetupVariablesNew = getObjectFromGUID('2a8dee')
local GlobalVariablesId = '7fc89f'
GlobalVariables = getObjectFromGUID(GlobalVariablesId)

local ExpansionDeckShuffler1Id = 'f92f33'
local ExpansionDeckShuffler2Id = '6987b9'
local ExpansionDeckShuffler3Id = 'f7f2a4'
local ExpansionDeckShuffler4Id = '1cd0c9'
local ExpansionDeckShuffler5Id = '37bcaa'
local ExpansionDeckShuffler6Id = 'c73243'
local ExpansionDeckShuffler7Id = '978ca9'
local ExpansionDeckShuffler8Id = '590d98'
local ExpansionDeckShuffler9Id = '0c1562'
local ExpansionDeckShuffler10Id = '7c05a4'
local ExpansionDeckShuffler11Id = '6dec5e'
local ExpansionDeckShuffler12Id = '2af77c'
local ExpansionDeckShuffler13Id = '7f2ca2'
local SpawnableTextId = '2c56ce'
local ScrZoneExpansionsPlacement = getObjectFromGUID('abb672')
local VisibleToAll = "White|Brown|Red|Orange|Yellow|Green|Teal|Blue|Purple|Pink|Grey|Black"

function SetupLocations()

    local BoardLocationPlacement = getObjectFromGUID('a22e16')
    local InnsmouthSet = GlobalVariables.call('isInnsmouthSet')
    local KingsportSet = GlobalVariables.call('isKingsportSet')
    local DunwichSet = GlobalVariables.call('isDunwichSet')

    if InnsmouthSet == true then
        BoardLocationPlacement.call('PlaceInnsmouthLocations')
    end
    if KingsportSet == true then
        function coinsidePlaceKingsportLocations()
            waitFrames(20)
            BoardLocationPlacement.call('PlaceKingsportLocations')
            return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
        end
        startLuaCoroutine(self, "coinsidePlaceKingsportLocations") --must use this way to make coroutine in order to wait frames
    end
    if DunwichSet == true then
        function coinsidePlaceDunwichLocations()
            waitFrames(20)
            BoardLocationPlacement.call('PlaceDunwichLocations')
            return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
        end
        startLuaCoroutine(self, "coinsidePlaceDunwichLocations") --must use this way to make coroutine in order to wait frames
    end
end

function PlaceLocks()

    BoardLocations = getObjectFromGUID('60fa72')
    local InnsmouthSet = GlobalVariables.call('isInnsmouthSet')
    local KingsportSet = GlobalVariables.call('isKingsportSet')
    local DunwichSet = GlobalVariables.call('isDunwichSet')

    if InnsmouthSet == true then
        local InnsmouthLocationDevilReefid = BoardLocations.call('getInnsmouthLocationDevilReefid')
        local InnsmouthLocationDevilReef = getObjectFromGUID(InnsmouthLocationDevilReefid)
        InnsmouthLocationDevilReef.locked = true

        local InnsmouthLocationJailid = BoardLocations.call('getInnsmouthLocationJailid')
        local InnsmouthLocationJail = getObjectFromGUID(InnsmouthLocationJailid)
        InnsmouthLocationJail.locked = true

        local InnsmouthLocationJailWindowid = BoardLocations.call('getInnsmouthLocationJailWindowid')
        local InnsmouthLocationJailWindow = getObjectFromGUID(InnsmouthLocationJailWindowid)
        InnsmouthLocationJailWindow.locked = true

        local InnsmouthLocationSawboneAlleyid = BoardLocations.call('getInnsmouthLocationSawboneAlleyid')
        local InnsmouthLocationSawboneAlley = getObjectFromGUID(InnsmouthLocationSawboneAlleyid)
        InnsmouthLocationSawboneAlley.locked = true

        local InnsmouthLocationEsotericDagonid = BoardLocations.call('getInnsmouthLocationEsotericDagonid')
        local InnsmouthLocationEsotericDagon = getObjectFromGUID(InnsmouthLocationEsotericDagonid)
        InnsmouthLocationEsotericDagon.locked = true

        local InnsmouthLocationChurchGreenid = BoardLocations.call('getInnsmouthLocationChurchGreenid')
        local InnsmouthLocationChurchGreen = getObjectFromGUID(InnsmouthLocationChurchGreenid)
        InnsmouthLocationChurchGreen.locked = true

        local InnsmouthLocationFactoryDistrictid = BoardLocations.call('getInnsmouthLocationFactoryDistrictid')
        local InnsmouthLocationFactoryDistrict = getObjectFromGUID(InnsmouthLocationFactoryDistrictid)
        InnsmouthLocationFactoryDistrict.locked = true

        local InnsmouthLocationFirstNationalGroceryid = BoardLocations.call('getInnsmouthLocationFirstNationalGroceryid')
        local InnsmouthLocationFirstNationalGrocery = getObjectFromGUID(InnsmouthLocationFirstNationalGroceryid)
        InnsmouthLocationFirstNationalGrocery.locked = true

        local InnsmouthLocationGilmanHouseHotelid = BoardLocations.call('getInnsmouthLocationGilmanHouseHotelid')
        local InnsmouthLocationGilmanHouseHotel = getObjectFromGUID(InnsmouthLocationGilmanHouseHotelid)
        InnsmouthLocationGilmanHouseHotel.locked = true

        local InnsmouthLocationMarshRefineryid = BoardLocations.call('getInnsmouthLocationMarshRefineryid')
        local InnsmouthLocationMarshRefinery = getObjectFromGUID(InnsmouthLocationMarshRefineryid)
        InnsmouthLocationMarshRefinery.locked = true

        local InnsmouthLocationInnsmouthShoreid = BoardLocations.call('getInnsmouthLocationInnsmouthShoreid')
        local InnsmouthLocationInnsmouthShore = getObjectFromGUID(InnsmouthLocationInnsmouthShoreid)
        InnsmouthLocationInnsmouthShore.locked = true

        local InnsmouthLocationJoeSargentsid = BoardLocations.call('getInnsmouthLocationJoeSargentsid')
        local InnsmouthLocationJoeSargents = getObjectFromGUID(InnsmouthLocationJoeSargentsid)
        InnsmouthLocationJoeSargents.locked = true

        local InnsmouthLocationFalconPointid = BoardLocations.call('getInnsmouthLocationFalconPointid')
        local InnsmouthLocationFalconPoint = getObjectFromGUID(InnsmouthLocationFalconPointid)
        InnsmouthLocationFalconPoint.locked = true

        local InnsmouthLocationYhaNthleiid = BoardLocations.call('getInnsmouthLocationYhaNthleiid')
        local InnsmouthLocationYhaNthlei = getObjectFromGUID(InnsmouthLocationYhaNthleiid)
        InnsmouthLocationYhaNthlei.locked = true
    end
    if DunwichSet == true then
        local DunwichLocationWhateleyFarmid = BoardLocations.call('getDunwichLocationWhateleyFarmid')
        local DunwichLocationWhateleyFarm = getObjectFromGUID(DunwichLocationWhateleyFarmid)
        DunwichLocationWhateleyFarm.locked = true

        local DunwichLocationWizardsHillid = BoardLocations.call('getDunwichLocationWizardsHillid')
        local DunwichLocationWizardsHill = getObjectFromGUID(DunwichLocationWizardsHillid)
        DunwichLocationWizardsHill.locked = true

        local DunwichLocationColdSpringid = BoardLocations.call('getDunwichLocationColdSpringid')
        local DunwichLocationColdSpring = getObjectFromGUID(DunwichLocationColdSpringid)
        DunwichLocationColdSpring.locked = true

        local DunwichLocationBackwoodsid = BoardLocations.call('getDunwichLocationBackwoodsid')
        local DunwichLocationBackwoods = getObjectFromGUID(DunwichLocationBackwoodsid)
        DunwichLocationBackwoods.locked = true

        local DunwichLocationSentinelHillid = BoardLocations.call('getDunwichLocationSentinelHillid')
        local DunwichLocationSentinelHill = getObjectFromGUID(DunwichLocationSentinelHillid)
        DunwichLocationSentinelHill.locked = true

        local DunwichLocationVillageCommonsid = BoardLocations.call('getDunwichLocationVillageCommonsid')
        local DunwichLocationVillageCommons = getObjectFromGUID(DunwichLocationVillageCommonsid)
        DunwichLocationVillageCommons.locked = true

        local DunwichLocationDarkesCarnivalid = BoardLocations.call('getDunwichLocationDarkesCarnivalid')
        local DunwichLocationDarkesCarnival = getObjectFromGUID(DunwichLocationDarkesCarnivalid)
        DunwichLocationDarkesCarnival.locked = true

        local DunwichLocationBishopBrookeid = BoardLocations.call('getDunwichLocationBishopBrookeid')
        local DunwichLocationBishopBrooke = getObjectFromGUID(DunwichLocationBishopBrookeid)
        DunwichLocationBishopBrooke.locked = true

        local DunwichLocationDunwichVillageid = BoardLocations.call('getDunwichLocationDunwichVillageid')
        local DunwichLocationDunwichVillage = getObjectFromGUID(DunwichLocationDunwichVillageid)
        DunwichLocationDunwichVillage.locked = true

        local DunwichLocationBlastedHeathid = BoardLocations.call('getDunwichLocationBlastedHeathid')
        local DunwichLocationBlastedHeath = getObjectFromGUID(DunwichLocationBlastedHeathid)
        DunwichLocationBlastedHeath.locked = true

        local DunwichLocationGardnersPlaceid = BoardLocations.call('getDunwichLocationGardnersPlaceid')
        local DunwichLocationGardnersPlace = getObjectFromGUID(DunwichLocationGardnersPlaceid)
        DunwichLocationGardnersPlace.locked = true

        local DunwichLocationDevilsHopyardid = BoardLocations.call('getDunwichLocationDevilsHopyardid')
        local DunwichLocationDevilsHopyard = getObjectFromGUID(DunwichLocationDevilsHopyardid)
        DunwichLocationDevilsHopyard.locked = true

        local DunwichLocationHarneyJonesShackid = BoardLocations.call('getDunwichLocationHarneyJonesShackid')
        local DunwichLocationHarneyJonesShack = getObjectFromGUID(DunwichLocationHarneyJonesShackid)
        DunwichLocationHarneyJonesShack.locked = true

        local DunwichLocationAnotherTimeid = BoardLocations.call('getDunwichLocationAnotherTimeid')
        local DunwichLocationAnotherTime = getObjectFromGUID(DunwichLocationAnotherTimeid)
        DunwichLocationAnotherTime.locked = true

        local DunwichLocationLostCarcosaid = BoardLocations.call('getDunwichLocationLostCarcosaid')
        local DunwichLocationLostCarcosa = getObjectFromGUID(DunwichLocationLostCarcosaid)
        DunwichLocationLostCarcosa.locked = true
    end

    if KingsportSet == true then
        local KingsportLocationHallSchoolid = BoardLocations.call('getKingsportLocationHallSchoolid')
        local KingsportLocationHallSchool = getObjectFromGUID(KingsportLocationHallSchoolid)
        KingsportLocationHallSchool.locked = true

        local KingsportLocation607WaterStreetid = BoardLocations.call('getKingsportLocation607WaterStreetid')
        local KingsportLocation607WaterStreet = getObjectFromGUID(KingsportLocation607WaterStreetid)
        KingsportLocation607WaterStreet.locked = true

        local KingsportLocationCentralHillid = BoardLocations.call('getKingsportLocationCentralHillid')
        local KingsportLocationCentralHill = getObjectFromGUID(KingsportLocationCentralHillid)
        KingsportLocationCentralHill.locked = true

        local KingsportLocationCongregationalHospitalid = BoardLocations.call('getKingsportLocationCongregationalHospitalid')
        local KingsportLocationCongregationalHospital = getObjectFromGUID(KingsportLocationCongregationalHospitalid)
        KingsportLocationCongregationalHospital.locked = true

        local KingsportLocationHarborsideid = BoardLocations.call('getKingsportLocationHarborsideid')
        local KingsportLocationHarborside = getObjectFromGUID(KingsportLocationHarborsideid)
        KingsportLocationHarborside.locked = true

        local KingsportLocationRopeAndAnchorCommonsid = BoardLocations.call('getKingsportLocationRopeAndAnchorCommonsid')
        local KingsportLocationRopeAndAnchorCommons = getObjectFromGUID(KingsportLocationRopeAndAnchorCommonsid)
        KingsportLocationRopeAndAnchorCommons.locked = true

        local KingsportLocationWirelessStationid = BoardLocations.call('getKingsportLocationWirelessStationid')
        local KingsportLocationWirelessStation = getObjectFromGUID(KingsportLocationWirelessStationid)
        KingsportLocationWirelessStation.locked = true

        local KingsportLocationArtistsColonyid = BoardLocations.call('getKingsportLocationArtistsColonyid')
        local KingsportLocationArtistsColony = getObjectFromGUID(KingsportLocationArtistsColonyid)
        KingsportLocationArtistsColony.locked = true

        local KingsportLocation7thHouseid = BoardLocations.call('getKingsportLocation7thHouseid')
        local KingsportLocation7thHouse = getObjectFromGUID(KingsportLocation7thHouseid)
        KingsportLocation7thHouse.locked = true

        local KingsportLocationNeilsCuriosityid = BoardLocations.call('getKingsportLocationNeilsCuriosityid')
        local KingsportLocationNeilsCuriosity = getObjectFromGUID(KingsportLocationNeilsCuriosityid)
        KingsportLocationNeilsCuriosity.locked = true

        local KingsportLocationNorthPointLighthouseid = BoardLocations.call('getKingsportLocationNorthPointLighthouseid')
        local KingsportLocationNorthPointLighthouse = getObjectFromGUID(KingsportLocationNorthPointLighthouseid)
        KingsportLocationNorthPointLighthouse.locked = true

        local KingsportLocationTheCausewayid = BoardLocations.call('getKingsportLocationTheCausewayid')
        local KingsportLocationTheCauseway = getObjectFromGUID(KingsportLocationTheCausewayid)
        KingsportLocationTheCauseway.locked = true

        local KingsportLocationStErasmusid = BoardLocations.call('getKingsportLocationStErasmusid')
        local KingsportLocationStErasmus = getObjectFromGUID(KingsportLocationStErasmusid)
        KingsportLocationStErasmus.locked = true

        local KingsportLocationStrangeHighHouseid = BoardLocations.call('getKingsportLocationStrangeHighHouseid')
        local KingsportLocationStrangeHighHouse = getObjectFromGUID(KingsportLocationStrangeHighHouseid)
        KingsportLocationStrangeHighHouse.locked = true

        local KingsportLocationSouthShoreid = BoardLocations.call('getKingsportLocationSouthShoreid')
        local KingsportLocationSouthShore = getObjectFromGUID(KingsportLocationSouthShoreid)
        KingsportLocationSouthShore.locked = true

        local KingsportLocationTheUnderworldid = BoardLocations.call('getKingsportLocationTheUnderworldid')
        local KingsportLocationTheUnderworld = getObjectFromGUID(KingsportLocationTheUnderworldid)
        KingsportLocationTheUnderworld.locked = true

        local KingsportLocationUnknownKadathid = BoardLocations.call('getKingsportLocationUnknownKadathid')
        local KingsportLocationUnknownKadath = getObjectFromGUID(KingsportLocationUnknownKadathid)
        KingsportLocationUnknownKadath.locked = true
    end
end

-- shuffles All the board's Decks -
function boardDeckRandomizer()

    local SetupVariablesNew = getObjectFromGUID('2a8dee')

    local decks = SetupVariablesNew.call('getBoardDecksShuffle')

    for _, obj in pairs(decks) do
        ShuffleDeck = getObjectFromGUID(obj)
        if ShuffleDeck != nil then
            ShuffleDeck.randomize()
        end
    end
end

function boardBagsRandomizer()

    local GlobalVariablesId = '7fc89f'
    GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local SetupVariablesNew = getObjectFromGUID('2a8dee')

    local LurkerGateSet = GlobalVariables.call('isLurkerGateSet')
    local KingsportSet = GlobalVariables.call('isKingsportSet')

    local Board_Gate_Bag_id = GlobalVariables.call('getBoardGateBagId')
    local Board_Gate_Bag = getObjectFromGUID(Board_Gate_Bag_id)
    Board_Gate_Bag.randomize()

    local Board_Monster_Bag_Id = GlobalVariables.call('getBoardMonsterBagId')
    local Board_Monster_Bag = getObjectFromGUID(Board_Monster_Bag_Id)
    Board_Monster_Bag.randomize()

    if KingsportSet == true then
        local KingsportRiftProgressBagId = SetupVariablesNew.call('getKingsportRiftMarkerBagid')
        local KingsportRiftProgressBag = getObjectFromGUID(KingsportRiftProgressBagId)
        KingsportRiftProgressBag.randomize()

        local KingsportRiftMarkerBagId = SetupVariablesNew.call('getKingsportRiftMarkerBagid')
        local KingsportRiftMarkerBag = getObjectFromGUID(KingsportRiftMarkerBagId)
        KingsportRiftMarkerBag.randomize()
    end

end

function Finisher()

    local InnsmouthSet = GlobalVariables.call('isInnsmouthSet')
    local KingsportSet = GlobalVariables.call('isKingsportSet')
    local DunwichSet = GlobalVariables.call('isDunwichSet')
    local GoatSet = GlobalVariables.call('isGoatSet')
    local PharaohSet = GlobalVariables.call('isPharaohSet')
    local YellowSet = GlobalVariables.call('isYellowSet')    
    local SetupVariablesNew = getObjectFromGUID('2a8dee')

    local GlobalVariables = getObjectFromGUID('7fc89f')

    function coinsideUnstableLocations()
        waitFrames(30)
        --Placing Clue Tokens
        UnstableLocations()
        return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
    end
    startLuaCoroutine(self, "coinsideUnstableLocations") --must use this way to make coroutine in order to wait frames

    --Declaring and creating shuffler Buttons
    DeclareButtonsShufflers()

    -- Create the 3dText for the expansions
    Create3DTextExpansions()

    -- Created the Scripting Zones for the board expansions
    CreateScriptZonesExpansions()

    if PharaohSet then
        Global.UI.setAttribute("AncientWhispers","visibility", VisibleToAll)        
    end

    if InnsmouthSet then
        Global.UI.setAttribute("InnsmouthMartialLaw","visibility", VisibleToAll)
        Global.UI.setAttribute("FedsRaidInnsmouthClues","visibility", VisibleToAll)
        Global.UI.setAttribute("DeepOnesRisingTrack","visibility", VisibleToAll)        
    end

    if DunwichSet then
        Global.UI.setAttribute("DunwichHorrorTokens","visibility", VisibleToAll)        
    end 

    if KingsportSet then
        Global.UI.setAttribute("KingsportRifts","visibility", VisibleToAll)        
        Global.UI.setAttribute("KingsportRiftStatus","visibility", VisibleToAll)
    end    

    Global.call('maximize')
    GlobalVariables.call('setisSetupPerformed',true)

end

function findClueBag()
    found = false
    for _, obj in ipairs(getAllObjects()) do
        if obj.getName() == 'Clue Token' and obj.tag == 'Infinite' then
            clueBag = obj
            found = true
        end
    end
    if found == false then print('No Clue Bag found') end
    return found
end

function UnstableLocations()

    --Placing Arkham unstable Locations
    local SetupVariablesNew = getObjectFromGUID('2a8dee')

    local unstable_Arkham = SetupVariablesNew.call('getArkhamUnstable')

    if findClueBag() == true then
        for _, obj in pairs(unstable_Arkham) do
            locationToSet = {}
            locationToSet.position = {obj[1],obj[2]+0.2,obj[3]}
            locationToSet.rotation = {0.00, 60.00, 0.00}
            clueBag.takeObject(locationToSet)
        end

        if InnsmouthSet == true then
            local unstable_Innsmouth = SetupVariablesNew.call('getInnsmouthUnstable')
            for _, obj in pairs(unstable_Innsmouth) do

                locationToSet = {}
                locationToSet.position = {obj[1],obj[2]+0.2,obj[3]}
                locationToSet.rotation = {0.00, 60.00, 0.00}
                clueBag.takeObject(locationToSet)
            end
        end

        if DunwichSet == true then

            local unstable_Dunwich = {}
            if DunwichSolo == true then
                unstable_Dunwich = SetupVariablesNew.call('getDunwichUnstableSolo')
            else
                -- In all other cases, Dunwich is second
                unstable_Dunwich = SetupVariablesNew.call('getDunwichUnstableSecond')
            end

            for _, obj in pairs(unstable_Dunwich) do
                locationToSet = {}
                locationToSet.position = {obj[1],obj[2]+0.2,obj[3]}
                locationToSet.rotation = {0.00, 60.00, 0.00}
                clueBag.takeObject(locationToSet)
            end
        end
    end
end

function DeclareButtonsShufflers()

    local InnsmouthSet = GlobalVariables.call('isInnsmouthSet')
    local KingsportSet = GlobalVariables.call('isKingsportSet')
    local DunwichSet = GlobalVariables.call('isDunwichSet')
    local GoatSet = GlobalVariables.call('isGoatSet')
    local PharaohSet = GlobalVariables.call('isPharaohSet')      

    if InnsmouthSet == true then
        local ExpansionDeckShuffler8 = getObjectFromGUID(ExpansionDeckShuffler8Id)
        local ExpansionDeckShuffler9 = getObjectFromGUID(ExpansionDeckShuffler9Id)
        local ExpansionDeckShuffler10 = getObjectFromGUID(ExpansionDeckShuffler10Id)
        local ExpansionDeckShuffler12 = getObjectFromGUID(ExpansionDeckShuffler12Id)

        ExpansionDeckShuffler8.call('declareButton')
        ExpansionDeckShuffler8.call('createButton')

        ExpansionDeckShuffler9.call('declareButton')
        ExpansionDeckShuffler9.call('createButton')

        ExpansionDeckShuffler10.call('declareButton')
        ExpansionDeckShuffler10.call('createButton')

        ExpansionDeckShuffler12.call('declareButton')
        ExpansionDeckShuffler12.call('createButton')

    end

    if DunwichSet == true then
        local ExpansionDeckShuffler1 = getObjectFromGUID(ExpansionDeckShuffler1Id)
        local ExpansionDeckShuffler2 = getObjectFromGUID(ExpansionDeckShuffler2Id)
        local ExpansionDeckShuffler3 = getObjectFromGUID(ExpansionDeckShuffler3Id)

        ExpansionDeckShuffler1.call('declareButton')
        ExpansionDeckShuffler1.call('createButton')

        ExpansionDeckShuffler2.call('declareButton')
        ExpansionDeckShuffler2.call('createButton')

        ExpansionDeckShuffler3.call('declareButton')
        ExpansionDeckShuffler3.call('createButton')

    end

    if KingsportSet == true then
        local ExpansionDeckShuffler4 = getObjectFromGUID(ExpansionDeckShuffler4Id)
        local ExpansionDeckShuffler5 = getObjectFromGUID(ExpansionDeckShuffler5Id)
        local ExpansionDeckShuffler6 = getObjectFromGUID(ExpansionDeckShuffler6Id)
        local ExpansionDeckShuffler7 = getObjectFromGUID(ExpansionDeckShuffler7Id)

        ExpansionDeckShuffler4.call('declareButton')
        ExpansionDeckShuffler4.call('createButton')

        ExpansionDeckShuffler5.call('declareButton')
        ExpansionDeckShuffler5.call('createButton')

        ExpansionDeckShuffler6.call('declareButton')
        ExpansionDeckShuffler6.call('createButton')

        ExpansionDeckShuffler7.call('declareButton')
        ExpansionDeckShuffler7.call('createButton')

    end

    if PharaohSet == true then
        local ExpansionDeckShuffler11 = getObjectFromGUID(ExpansionDeckShuffler11Id)

        ExpansionDeckShuffler11.call('declareButton')
        ExpansionDeckShuffler11.call('createButton')

    end

    if GoatSet == true then
        local ExpansionDeckShuffler13 = getObjectFromGUID(ExpansionDeckShuffler13Id)

        ExpansionDeckShuffler13.call('declareButton')
        ExpansionDeckShuffler13.call('createButton')

    end

end

function Create3DTextExpansions()

    local InnsmouthSet = GlobalVariables.call('isInnsmouthSet')
    local KingsportSet = GlobalVariables.call('isKingsportSet')
    local DunwichSet = GlobalVariables.call('isDunwichSet')
    local GoatSet = GlobalVariables.call('isGoatSet')
    local PharaohSet = GlobalVariables.call('isPharaohSet')
    local YellowSet = GlobalVariables.call('isYellowSet')   

    if DunwichSet == true then
        local SpawnableText = getObjectFromGUID(SpawnableTextId)
        SpawnableText.call('SpawnDunwichLabels')
    end

    if KingsportSet == true then
        local SpawnableText = getObjectFromGUID(SpawnableTextId)
        SpawnableText.call('SpawnKingsportLabels')
    end


    if InnsmouthSet == true then
        local SpawnableText = getObjectFromGUID(SpawnableTextId)
        SpawnableText.call('SpawnInnsmouthLabels')
    end

    if GoatSet == true then
        local SpawnableText = getObjectFromGUID(SpawnableTextId)
        SpawnableText.call('SpawnGoatLabels')
    end

    if PharaohSet == true then
        local SpawnableText = getObjectFromGUID(SpawnableTextId)
        SpawnableText.call('SpawnPharaohLabels')
    end

    if YellowSet == true then
        local SpawnableText = getObjectFromGUID(SpawnableTextId)
        SpawnableText.call('SpawnYellowLabels')
    end
    
end

function CreateScriptZonesExpansions()

    local InnsmouthSet = GlobalVariables.call('isInnsmouthSet')
    local KingsportSet = GlobalVariables.call('isKingsportSet')
    local DunwichSet = GlobalVariables.call('isDunwichSet')
    local GoatSet = GlobalVariables.call('isGoatSet')
    local PharaohSet = GlobalVariables.call('isPharaohSet')
    local YellowSet = GlobalVariables.call('isYellowSet')       

    if DunwichSet == true then
        ScrZoneExpansionsPlacement.call('PlaceDunwichScrZones')
    end

    if KingsportSet == true then
        ScrZoneExpansionsPlacement.call('PlaceKingsportScrZones')
    end

    if InnsmouthSet == true then
        ScrZoneExpansionsPlacement.call('PlaceInnsmouthScrZones')
    end

end

-- For Coroutines, waits X frames
function waitFrames(frames)
    while frames > 0 do
        coroutine.yield(0)
        frames = frames - 1
    end
end