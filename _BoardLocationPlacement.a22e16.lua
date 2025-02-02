local BoardLocations = getObjectFromGUID('60fa72')
local GlobalVariablesId = '7fc89f'
local GlobalVariables = getObjectFromGUID(GlobalVariablesId)

-- board types - If big expansion apply, only one will be lit
local InnsmouthSolo = false
local KingsportSolo = false
local DunwichSolo = false
local KingsportDunwich = false
local InnsmouthKingsport = false
local InnsmouthDunwich = false
-- The bravest man of all - All boards!
local AllThreeBoards = false

function PlaceInnsmouthLocations()

    InnsmouthSolo = GlobalVariables.call('getInnsmouthSolo')
    KingsportSolo = GlobalVariables.call('getKingsportSolo')
    DunwichSolo = GlobalVariables.call('getDunwichSolo')
    KingsportDunwich = GlobalVariables.call('getKingsportDunwich')
    InnsmouthKingsport = GlobalVariables.call('getInnsmouthKingsport')
    InnsmouthDunwich = GlobalVariables.call('getInnsmouthDunwich')
    AllThreeBoards = GlobalVariables.call('getAllThreeBoards')

    local InnsmouthLocationsBagId = BoardLocations.call('InnsmouthLocationBagid')
    local InnsmouthLocationsBag = getObjectFromGUID(InnsmouthLocationsBagId)
    local InnsmouthLocationDevilReefid = BoardLocations.call('getInnsmouthLocationDevilReefid')
    local params = {}
    params.guid = InnsmouthLocationDevilReefid
    local InnsmouthLocationDevilReefRot = BoardLocations.call('getInnsmouthLocationDevilReefRotation')
    params.rotation = {InnsmouthLocationDevilReefRot[1],InnsmouthLocationDevilReefRot[2],InnsmouthLocationDevilReefRot[3]}
    params.position = BoardLocations.call('getBoardPositionsLocationsInnsmouthSolo',{InnsmouthLocationDevilReefid})
    params.smooth = true
    local InnsmouthLocationDevilReef = InnsmouthLocationsBag.takeObject(params)
    local InnsmouthLocationDevilReefScale = BoardLocations.call('getInnsmouthLocationDevilReefScale')
    InnsmouthLocationDevilReef.setScale(InnsmouthLocationDevilReefScale)

    local InnsmouthLocationsBagId = BoardLocations.call('InnsmouthLocationBagid')
    local InnsmouthLocationsBag = getObjectFromGUID(InnsmouthLocationsBagId)
    local InnsmouthLocationJailid = BoardLocations.call('getInnsmouthLocationJailid')
    local params = {}
    params.guid = InnsmouthLocationJailid
    local InnsmouthLocationJailRot = BoardLocations.call('getInnsmouthLocationJailRotation')
    params.rotation = {InnsmouthLocationJailRot[1],InnsmouthLocationJailRot[2],InnsmouthLocationJailRot[3]}
    params.position = BoardLocations.call('getBoardPositionsLocationsInnsmouthSolo',{InnsmouthLocationJailid})
    params.smooth = true
    local InnsmouthLocationJail = InnsmouthLocationsBag.takeObject(params)
    local InnsmouthLocationJailScale = BoardLocations.call('getInnsmouthLocationJailScale')
    InnsmouthLocationJail.setScale(InnsmouthLocationJailScale)

    local InnsmouthLocationsBagId = BoardLocations.call('InnsmouthLocationBagid')
    local InnsmouthLocationsBag = getObjectFromGUID(InnsmouthLocationsBagId)
    local InnsmouthLocationJailWindowid = BoardLocations.call('getInnsmouthLocationJailWindowid')
    local params = {}
    params.guid = InnsmouthLocationJailWindowid
    local InnsmouthLocationJailWindowRot = BoardLocations.call('getInnsmouthLocationJailWindowRotation')
    params.rotation = {InnsmouthLocationJailWindowRot[1],InnsmouthLocationJailWindowRot[2],InnsmouthLocationJailWindowRot[3]}
    params.position = BoardLocations.call('getBoardPositionsLocationsInnsmouthSolo',{InnsmouthLocationJailWindowid})
    params.smooth = true
    local InnsmouthLocationJailWindow = InnsmouthLocationsBag.takeObject(params)
    local InnsmouthLocationJailWindowScale = BoardLocations.call('getInnsmouthLocationJailWindowScale')
    InnsmouthLocationJailWindow.setScale(InnsmouthLocationJailWindowScale)

    local InnsmouthLocationsBagId = BoardLocations.call('InnsmouthLocationBagid')
    local InnsmouthLocationsBag = getObjectFromGUID(InnsmouthLocationsBagId)
    local InnsmouthLocationSawboneAlleyid = BoardLocations.call('getInnsmouthLocationSawboneAlleyid')
    local params = {}
    params.guid = InnsmouthLocationSawboneAlleyid
    local InnsmouthLocationSawboneAlleyRot = BoardLocations.call('getInnsmouthLocationSawboneAlleyRotation')
    params.rotation = {InnsmouthLocationSawboneAlleyRot[1],InnsmouthLocationSawboneAlleyRot[2],InnsmouthLocationSawboneAlleyRot[3]}
    params.position = BoardLocations.call('getBoardPositionsLocationsInnsmouthSolo',{InnsmouthLocationSawboneAlleyid})
    params.smooth = true
    local InnsmouthLocationSawboneAlley = InnsmouthLocationsBag.takeObject(params)
    local InnsmouthLocationSawboneAlleyScale = BoardLocations.call('getInnsmouthLocationSawboneAlleyScale')
    InnsmouthLocationSawboneAlley.setScale(InnsmouthLocationSawboneAlleyScale)

    local InnsmouthLocationsBagId = BoardLocations.call('InnsmouthLocationBagid')
    local InnsmouthLocationsBag = getObjectFromGUID(InnsmouthLocationsBagId)
    local InnsmouthLocationEsotericDagonid = BoardLocations.call('getInnsmouthLocationEsotericDagonid')
    local params = {}
    params.guid = InnsmouthLocationEsotericDagonid
    local InnsmouthLocationEsotericDagonRot = BoardLocations.call('getInnsmouthLocationEsotericDagonRotation')
    params.rotation = {InnsmouthLocationEsotericDagonRot[1],InnsmouthLocationEsotericDagonRot[2],InnsmouthLocationEsotericDagonRot[3]}
    params.position = BoardLocations.call('getBoardPositionsLocationsInnsmouthSolo',{InnsmouthLocationEsotericDagonid})
    params.smooth = true
    local InnsmouthLocationEsotericDagon = InnsmouthLocationsBag.takeObject(params)
    local InnsmouthLocationEsotericDagonScale = BoardLocations.call('getInnsmouthLocationEsotericDagonScale')
    InnsmouthLocationEsotericDagon.setScale(InnsmouthLocationEsotericDagonScale)

    local InnsmouthLocationsBagId = BoardLocations.call('InnsmouthLocationBagid')
    local InnsmouthLocationsBag = getObjectFromGUID(InnsmouthLocationsBagId)
    local InnsmouthLocationChurchGreenid = BoardLocations.call('getInnsmouthLocationChurchGreenid')
    local params = {}
    params.guid = InnsmouthLocationChurchGreenid
    local InnsmouthLocationChurchGreenRot = BoardLocations.call('getInnsmouthLocationChurchGreenRotation')
    params.rotation = {InnsmouthLocationChurchGreenRot[1],InnsmouthLocationChurchGreenRot[2],InnsmouthLocationChurchGreenRot[3]}
    params.position = BoardLocations.call('getBoardPositionsLocationsInnsmouthSolo',{InnsmouthLocationChurchGreenid})
    params.smooth = true
    local InnsmouthLocationChurchGreen = InnsmouthLocationsBag.takeObject(params)
    local InnsmouthLocationChurchGreenScale = BoardLocations.call('getInnsmouthLocationChurchGreenScale')
    InnsmouthLocationChurchGreen.setScale(InnsmouthLocationChurchGreenScale)

    local InnsmouthLocationsBagId = BoardLocations.call('InnsmouthLocationBagid')
    local InnsmouthLocationsBag = getObjectFromGUID(InnsmouthLocationsBagId)
    local InnsmouthLocationFactoryDistrictid = BoardLocations.call('getInnsmouthLocationFactoryDistrictid')
    local params = {}
    params.guid = InnsmouthLocationFactoryDistrictid
    local InnsmouthLocationFactoryDistrictRot = BoardLocations.call('getInnsmouthLocationFactoryDistrictRotation')
    params.rotation = {InnsmouthLocationFactoryDistrictRot[1],InnsmouthLocationFactoryDistrictRot[2],InnsmouthLocationFactoryDistrictRot[3]}
    params.position = BoardLocations.call('getBoardPositionsLocationsInnsmouthSolo',{InnsmouthLocationFactoryDistrictid})
    params.smooth = true
    local InnsmouthLocationFactoryDistrict = InnsmouthLocationsBag.takeObject(params)
    local InnsmouthLocationFactoryDistrictScale = BoardLocations.call('getInnsmouthLocationFactoryDistrictScale')
    InnsmouthLocationFactoryDistrict.setScale(InnsmouthLocationFactoryDistrictScale)

    local InnsmouthLocationsBagId = BoardLocations.call('InnsmouthLocationBagid')
    local InnsmouthLocationsBag = getObjectFromGUID(InnsmouthLocationsBagId)
    local InnsmouthLocationFirstNationalGroceryid = BoardLocations.call('getInnsmouthLocationFirstNationalGroceryid')
    local params = {}
    params.guid = InnsmouthLocationFirstNationalGroceryid
    local InnsmouthLocationFirstNationalGroceryRot = BoardLocations.call('getInnsmouthLocationFirstNationalGroceryRotation')
    params.rotation = {InnsmouthLocationFirstNationalGroceryRot[1],InnsmouthLocationFirstNationalGroceryRot[2],InnsmouthLocationFirstNationalGroceryRot[3]}
    params.position = BoardLocations.call('getBoardPositionsLocationsInnsmouthSolo',{InnsmouthLocationFirstNationalGroceryid})
    params.smooth = true
    local InnsmouthLocationFirstNationalGrocery = InnsmouthLocationsBag.takeObject(params)
    local InnsmouthLocationFirstNationalGroceryScale = BoardLocations.call('getInnsmouthLocationFirstNationalGroceryScale')
    InnsmouthLocationFirstNationalGrocery.setScale(InnsmouthLocationFirstNationalGroceryScale)

    local InnsmouthLocationsBagId = BoardLocations.call('InnsmouthLocationBagid')
    local InnsmouthLocationsBag = getObjectFromGUID(InnsmouthLocationsBagId)
    local InnsmouthLocationGilmanHouseHotelid = BoardLocations.call('getInnsmouthLocationGilmanHouseHotelid')
    local params = {}
    params.guid = InnsmouthLocationGilmanHouseHotelid
    local InnsmouthLocationGilmanHouseHotelRot = BoardLocations.call('getInnsmouthLocationGilmanHouseHotelRotation')
    params.rotation = {InnsmouthLocationGilmanHouseHotelRot[1],InnsmouthLocationGilmanHouseHotelRot[2],InnsmouthLocationGilmanHouseHotelRot[3]}
    params.position = BoardLocations.call('getBoardPositionsLocationsInnsmouthSolo',{InnsmouthLocationGilmanHouseHotelid})
    params.smooth = true
    local InnsmouthLocationGilmanHouseHotel = InnsmouthLocationsBag.takeObject(params)
    local InnsmouthLocationGilmanHouseHotelScale = BoardLocations.call('getInnsmouthLocationGilmanHouseHotelScale')
    InnsmouthLocationGilmanHouseHotel.setScale(InnsmouthLocationGilmanHouseHotelScale)

    local InnsmouthLocationsBagId = BoardLocations.call('InnsmouthLocationBagid')
    local InnsmouthLocationsBag = getObjectFromGUID(InnsmouthLocationsBagId)
    local InnsmouthLocationMarshRefineryid = BoardLocations.call('getInnsmouthLocationMarshRefineryid')
    local params = {}
    params.guid = InnsmouthLocationMarshRefineryid
    local InnsmouthLocationMarshRefineryRot = BoardLocations.call('getInnsmouthLocationMarshRefineryRotation')
    params.rotation = {InnsmouthLocationMarshRefineryRot[1],InnsmouthLocationMarshRefineryRot[2],InnsmouthLocationMarshRefineryRot[3]}
    params.position = BoardLocations.call('getBoardPositionsLocationsInnsmouthSolo',{InnsmouthLocationMarshRefineryid})
    params.smooth = true
    local InnsmouthLocationMarshRefinery = InnsmouthLocationsBag.takeObject(params)
    local InnsmouthLocationMarshRefineryScale = BoardLocations.call('getInnsmouthLocationMarshRefineryScale')
    InnsmouthLocationMarshRefinery.setScale(InnsmouthLocationMarshRefineryScale)

    local InnsmouthLocationsBagId = BoardLocations.call('InnsmouthLocationBagid')
    local InnsmouthLocationsBag = getObjectFromGUID(InnsmouthLocationsBagId)
    local InnsmouthLocationInnsmouthShoreid = BoardLocations.call('getInnsmouthLocationInnsmouthShoreid')
    local params = {}
    params.guid = InnsmouthLocationInnsmouthShoreid
    local InnsmouthLocationInnsmouthShoreRot = BoardLocations.call('getInnsmouthLocationInnsmouthShoreRotation')
    params.rotation = {InnsmouthLocationInnsmouthShoreRot[1],InnsmouthLocationInnsmouthShoreRot[2],InnsmouthLocationInnsmouthShoreRot[3]}
    params.position = BoardLocations.call('getBoardPositionsLocationsInnsmouthSolo',{InnsmouthLocationInnsmouthShoreid})
    params.smooth = true
    local InnsmouthLocationInnsmouthShore = InnsmouthLocationsBag.takeObject(params)
    local InnsmouthLocationInnsmouthShoreScale = BoardLocations.call('getInnsmouthLocationInnsmouthShoreScale')
    InnsmouthLocationInnsmouthShore.setScale(InnsmouthLocationInnsmouthShoreScale)

    local InnsmouthLocationsBagId = BoardLocations.call('InnsmouthLocationBagid')
    local InnsmouthLocationsBag = getObjectFromGUID(InnsmouthLocationsBagId)
    local InnsmouthLocationJoeSargentsid = BoardLocations.call('getInnsmouthLocationJoeSargentsid')
    local params = {}
    params.guid = InnsmouthLocationJoeSargentsid
    local InnsmouthLocationJoeSargentsRot = BoardLocations.call('getInnsmouthLocationJoeSargentsRotation')
    params.rotation = {InnsmouthLocationJoeSargentsRot[1],InnsmouthLocationJoeSargentsRot[2],InnsmouthLocationJoeSargentsRot[3]}
    params.position = BoardLocations.call('getBoardPositionsLocationsInnsmouthSolo',{InnsmouthLocationJoeSargentsid})
    params.smooth = true
    local InnsmouthLocationJoeSargents = InnsmouthLocationsBag.takeObject(params)
    local InnsmouthLocationJoeSargentsScale = BoardLocations.call('getInnsmouthLocationJoeSargentsScale')
    InnsmouthLocationJoeSargents.setScale(InnsmouthLocationJoeSargentsScale)

    local InnsmouthLocationsBagId = BoardLocations.call('InnsmouthLocationBagid')
    local InnsmouthLocationsBag = getObjectFromGUID(InnsmouthLocationsBagId)
    local InnsmouthLocationFalconPointid = BoardLocations.call('getInnsmouthLocationFalconPointid')
    local params = {}
    params.guid = InnsmouthLocationFalconPointid
    local InnsmouthLocationFalconPointRot = BoardLocations.call('getInnsmouthLocationFalconPointRotation')
    params.rotation = {InnsmouthLocationFalconPointRot[1],InnsmouthLocationFalconPointRot[2],InnsmouthLocationFalconPointRot[3]}
    params.position = BoardLocations.call('getBoardPositionsLocationsInnsmouthSolo',{InnsmouthLocationFalconPointid})
    params.smooth = true
    local InnsmouthLocationFalconPoint = InnsmouthLocationsBag.takeObject(params)
    local InnsmouthLocationFalconPointScale = BoardLocations.call('getInnsmouthLocationFalconPointScale')
    InnsmouthLocationFalconPoint.setScale(InnsmouthLocationFalconPointScale)

    local InnsmouthLocationsBagId = BoardLocations.call('InnsmouthLocationBagid')
    local InnsmouthLocationsBag = getObjectFromGUID(InnsmouthLocationsBagId)
    local InnsmouthLocationYhaNthleiid = BoardLocations.call('getInnsmouthLocationYhaNthleiid')
    local params = {}
    params.guid = InnsmouthLocationYhaNthleiid
    local InnsmouthLocationYhaNthleiRot = BoardLocations.call('getInnsmouthLocationYhaNthleiRotation')
    params.rotation = {InnsmouthLocationYhaNthleiRot[1],InnsmouthLocationYhaNthleiRot[2],InnsmouthLocationYhaNthleiRot[3]}
    params.position = BoardLocations.call('getBoardPositionsLocationsInnsmouthSolo',{InnsmouthLocationYhaNthleiid})
    params.smooth = true
    local InnsmouthLocationYhaNthlei = InnsmouthLocationsBag.takeObject(params)
    local InnsmouthLocationYhaNthleiScale = BoardLocations.call('getInnsmouthLocationYhaNthleiScale')
    InnsmouthLocationYhaNthlei.setScale(InnsmouthLocationYhaNthleiScale)

end

function PlaceKingsportLocations(flags)

    InnsmouthSolo = GlobalVariables.call('getInnsmouthSolo')
    KingsportSolo = GlobalVariables.call('getKingsportSolo')
    DunwichSolo = GlobalVariables.call('getDunwichSolo')
    KingsportDunwich = GlobalVariables.call('getKingsportDunwich')
    InnsmouthKingsport = GlobalVariables.call('getInnsmouthKingsport')
    InnsmouthDunwich = GlobalVariables.call('getInnsmouthDunwich')
    AllThreeBoards = GlobalVariables.call('getAllThreeBoards')

    local KingsportLocationsBagId = BoardLocations.call('KingsportLocationBagid')
    local KingsportLocationsBag = getObjectFromGUID(KingsportLocationsBagId)
    local KingsportLocationHallSchoolid = BoardLocations.call('getKingsportLocationHallSchoolid')
    local params = {}
    params.guid = KingsportLocationHallSchoolid
    local KingsportLocationHallSchoolRot = BoardLocations.call('getKingsportLocationHallSchoolRotation')
    params.rotation = {KingsportLocationHallSchoolRot[1],KingsportLocationHallSchoolRot[2],KingsportLocationHallSchoolRot[3]}
    if KingsportSolo == true or KingsportDunwich == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsKingsportSolo',{KingsportLocationHallSchoolid})
    end
    if InnsmouthKingsport == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsInnsmouthKingsport',{KingsportLocationHallSchoolid})
    end
    if AllThreeBoards == true then
        params.position = BoardLocations.call('getBoardPositionsLocations3Boards',{KingsportLocationHallSchoolid})
    end
    params.smooth = true

    local KingsportLocationHallSchool = KingsportLocationsBag.takeObject(params)
    local KingsportLocationHallSchoolScale = BoardLocations.call('getKingsportLocationHallSchoolScale')
    KingsportLocationHallSchool.setScale(KingsportLocationHallSchoolScale)

    local KingsportLocationsBagId = BoardLocations.call('KingsportLocationBagid')
    local KingsportLocationsBag = getObjectFromGUID(KingsportLocationsBagId)
    local KingsportLocation607WaterStreetid = BoardLocations.call('getKingsportLocation607WaterStreetid')
    local params = {}
    params.guid = KingsportLocation607WaterStreetid
    local KingsportLocation607WaterStreetRot = BoardLocations.call('getKingsportLocation607WaterStreetRotation')
    params.rotation = {KingsportLocation607WaterStreetRot[1],KingsportLocation607WaterStreetRot[2],KingsportLocation607WaterStreetRot[3]}
    if KingsportSolo == true or KingsportDunwich == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsKingsportSolo',{KingsportLocation607WaterStreetid})
    end
    if InnsmouthKingsport == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsInnsmouthKingsport',{KingsportLocation607WaterStreetid})
    end
    if AllThreeBoards == true then
        params.position = BoardLocations.call('getBoardPositionsLocations3Boards',{KingsportLocation607WaterStreetid})
    end
    params.smooth = true

    local KingsportLocation607WaterStreet = KingsportLocationsBag.takeObject(params)
    local KingsportLocation607WaterStreetScale = BoardLocations.call('getKingsportLocation607WaterStreetScale')
    KingsportLocation607WaterStreet.setScale(KingsportLocation607WaterStreetScale)

    local KingsportLocationsBagId = BoardLocations.call('KingsportLocationBagid')
    local KingsportLocationsBag = getObjectFromGUID(KingsportLocationsBagId)
    local KingsportLocationCentralHillid = BoardLocations.call('getKingsportLocationCentralHillid')
    local params = {}
    params.guid = KingsportLocationCentralHillid
    local KingsportLocationCentralHillRot = BoardLocations.call('getKingsportLocationCentralHillRotation')
    params.rotation = {KingsportLocationCentralHillRot[1],KingsportLocationCentralHillRot[2],KingsportLocationCentralHillRot[3]}
    if KingsportSolo == true or KingsportDunwich == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsKingsportSolo',{KingsportLocationCentralHillid})
    end
    if InnsmouthKingsport == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsInnsmouthKingsport',{KingsportLocationCentralHillid})
    end
    if AllThreeBoards == true then
        params.position = BoardLocations.call('getBoardPositionsLocations3Boards',{KingsportLocationCentralHillid})
    end
    params.smooth = true

    local KingsportLocationCentralHill = KingsportLocationsBag.takeObject(params)
    local KingsportLocationCentralHillScale = BoardLocations.call('getKingsportLocationCentralHillScale')
    KingsportLocationCentralHill.setScale(KingsportLocationCentralHillScale)

    local KingsportLocationsBagId = BoardLocations.call('KingsportLocationBagid')
    local KingsportLocationsBag = getObjectFromGUID(KingsportLocationsBagId)
    local KingsportLocationCongregationalHospitalid = BoardLocations.call('getKingsportLocationCongregationalHospitalid')
    local params = {}
    params.guid = KingsportLocationCongregationalHospitalid
    local KingsportLocationCongregationalHospitalRot = BoardLocations.call('getKingsportLocationCongregationalHospitalRotation')
    params.rotation = {KingsportLocationCongregationalHospitalRot[1],KingsportLocationCongregationalHospitalRot[2],KingsportLocationCongregationalHospitalRot[3]}
    if KingsportSolo == true or KingsportDunwich == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsKingsportSolo',{KingsportLocationCongregationalHospitalid})
    end
    if InnsmouthKingsport == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsInnsmouthKingsport',{KingsportLocationCongregationalHospitalid})
    end
    if AllThreeBoards == true then
        params.position = BoardLocations.call('getBoardPositionsLocations3Boards',{KingsportLocationCongregationalHospitalid})
    end
    params.smooth = true

    local KingsportLocationCongregationalHospital = KingsportLocationsBag.takeObject(params)
    local KingsportLocationCongregationalHospitalScale = BoardLocations.call('getKingsportLocationCongregationalHospitalScale')
    KingsportLocationCongregationalHospital.setScale(KingsportLocationCongregationalHospitalScale)

    local KingsportLocationsBagId = BoardLocations.call('KingsportLocationBagid')
    local KingsportLocationsBag = getObjectFromGUID(KingsportLocationsBagId)
    local KingsportLocationHarborsideid = BoardLocations.call('getKingsportLocationHarborsideid')
    local params = {}
    params.guid = KingsportLocationHarborsideid
    local KingsportLocationHarborsideRot = BoardLocations.call('getKingsportLocationHarborsideRotation')
    params.rotation = {KingsportLocationHarborsideRot[1],KingsportLocationHarborsideRot[2],KingsportLocationHarborsideRot[3]}
    if KingsportSolo == true or KingsportDunwich == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsKingsportSolo',{KingsportLocationHarborsideid})
    end
    if InnsmouthKingsport == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsInnsmouthKingsport',{KingsportLocationHarborsideid})
    end
    if AllThreeBoards == true then
        params.position = BoardLocations.call('getBoardPositionsLocations3Boards',{KingsportLocationHarborsideid})
    end
    params.smooth = true

    local KingsportLocationHarborside = KingsportLocationsBag.takeObject(params)
    local KingsportLocationHarborsideScale = BoardLocations.call('getKingsportLocationHarborsideScale')
    KingsportLocationHarborside.setScale(KingsportLocationHarborsideScale)

    local KingsportLocationsBagId = BoardLocations.call('KingsportLocationBagid')
    local KingsportLocationsBag = getObjectFromGUID(KingsportLocationsBagId)
    local KingsportLocationRopeAndAnchorCommonsid = BoardLocations.call('getKingsportLocationRopeAndAnchorCommonsid')
    local params = {}
    params.guid = KingsportLocationRopeAndAnchorCommonsid
    local KingsportLocationRopeAndAnchorCommonsRot = BoardLocations.call('getKingsportLocationRopeAndAnchorCommonsRotation')
    params.rotation = {KingsportLocationRopeAndAnchorCommonsRot[1],KingsportLocationRopeAndAnchorCommonsRot[2],KingsportLocationRopeAndAnchorCommonsRot[3]}
    if KingsportSolo == true or KingsportDunwich == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsKingsportSolo',{KingsportLocationRopeAndAnchorCommonsid})
    end
    if InnsmouthKingsport == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsInnsmouthKingsport',{KingsportLocationRopeAndAnchorCommonsid})
    end
    if AllThreeBoards == true then
        params.position = BoardLocations.call('getBoardPositionsLocations3Boards',{KingsportLocationRopeAndAnchorCommonsid})
    end
    params.smooth = true

    local KingsportLocationRopeAndAnchorCommons = KingsportLocationsBag.takeObject(params)
    local KingsportLocationRopeAndAnchorCommonsScale = BoardLocations.call('getKingsportLocationRopeAndAnchorCommonsScale')
    KingsportLocationRopeAndAnchorCommons.setScale(KingsportLocationRopeAndAnchorCommonsScale)

    local KingsportLocationsBagId = BoardLocations.call('KingsportLocationBagid')
    local KingsportLocationsBag = getObjectFromGUID(KingsportLocationsBagId)
    local KingsportLocationWirelessStationid = BoardLocations.call('getKingsportLocationWirelessStationid')
    local params = {}
    params.guid = KingsportLocationWirelessStationid
    local KingsportLocationWirelessStationRot = BoardLocations.call('getKingsportLocationWirelessStationRotation')
    params.rotation = {KingsportLocationWirelessStationRot[1],KingsportLocationWirelessStationRot[2],KingsportLocationWirelessStationRot[3]}
    if KingsportSolo == true or KingsportDunwich == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsKingsportSolo',{KingsportLocationWirelessStationid})
    end
    if InnsmouthKingsport == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsInnsmouthKingsport',{KingsportLocationWirelessStationid})
    end
    if AllThreeBoards == true then
        params.position = BoardLocations.call('getBoardPositionsLocations3Boards',{KingsportLocationWirelessStationid})
    end
    params.smooth = true

    local KingsportLocationWirelessStation = KingsportLocationsBag.takeObject(params)
    local KingsportLocationWirelessStationScale = BoardLocations.call('getKingsportLocationWirelessStationScale')
    KingsportLocationWirelessStation.setScale(KingsportLocationWirelessStationScale)

    local KingsportLocationsBagId = BoardLocations.call('KingsportLocationBagid')
    local KingsportLocationsBag = getObjectFromGUID(KingsportLocationsBagId)
    local KingsportLocationArtistsColonyid = BoardLocations.call('getKingsportLocationArtistsColonyid')
    local params = {}
    params.guid = KingsportLocationArtistsColonyid
    local KingsportLocationArtistsColonyRot = BoardLocations.call('getKingsportLocationArtistsColonyRotation')
    params.rotation = {KingsportLocationArtistsColonyRot[1],KingsportLocationArtistsColonyRot[2],KingsportLocationArtistsColonyRot[3]}
    if KingsportSolo == true or KingsportDunwich == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsKingsportSolo',{KingsportLocationArtistsColonyid})
    end
    if InnsmouthKingsport == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsInnsmouthKingsport',{KingsportLocationArtistsColonyid})
    end
    if AllThreeBoards == true then
        params.position = BoardLocations.call('getBoardPositionsLocations3Boards',{KingsportLocationArtistsColonyid})
    end
    params.smooth = true

    local KingsportLocationArtistsColony = KingsportLocationsBag.takeObject(params)
    local KingsportLocationArtistsColonyScale = BoardLocations.call('getKingsportLocationArtistsColonyScale')
    KingsportLocationArtistsColony.setScale(KingsportLocationArtistsColonyScale)

    local KingsportLocationsBagId = BoardLocations.call('KingsportLocationBagid')
    local KingsportLocationsBag = getObjectFromGUID(KingsportLocationsBagId)
    local KingsportLocation7thHouseid = BoardLocations.call('getKingsportLocation7thHouseid')
    local params = {}
    params.guid = KingsportLocation7thHouseid
    local KingsportLocation7thHouseRot = BoardLocations.call('getKingsportLocation7thHouseRotation')
    params.rotation = {KingsportLocation7thHouseRot[1],KingsportLocation7thHouseRot[2],KingsportLocation7thHouseRot[3]}
    if KingsportSolo == true or KingsportDunwich == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsKingsportSolo',{KingsportLocation7thHouseid})
    end
    if InnsmouthKingsport == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsInnsmouthKingsport',{KingsportLocation7thHouseid})
    end
    if AllThreeBoards == true then
        params.position = BoardLocations.call('getBoardPositionsLocations3Boards',{KingsportLocation7thHouseid})
    end
    params.smooth = true

    local KingsportLocation7thHouse = KingsportLocationsBag.takeObject(params)
    local KingsportLocation7thHouseScale = BoardLocations.call('getKingsportLocation7thHouseScale')
    KingsportLocation7thHouse.setScale(KingsportLocation7thHouseScale)

    local KingsportLocationsBagId = BoardLocations.call('KingsportLocationBagid')
    local KingsportLocationsBag = getObjectFromGUID(KingsportLocationsBagId)
    local KingsportLocationNeilsCuriosityid = BoardLocations.call('getKingsportLocationNeilsCuriosityid')
    local params = {}
    params.guid = KingsportLocationNeilsCuriosityid
    local KingsportLocationNeilsCuriosityRot = BoardLocations.call('getKingsportLocationNeilsCuriosityRotation')
    params.rotation = {KingsportLocationNeilsCuriosityRot[1],KingsportLocationNeilsCuriosityRot[2],KingsportLocationNeilsCuriosityRot[3]}
    if KingsportSolo == true or KingsportDunwich == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsKingsportSolo',{KingsportLocationNeilsCuriosityid})
    end
    if InnsmouthKingsport == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsInnsmouthKingsport',{KingsportLocationNeilsCuriosityid})
    end
    if AllThreeBoards == true then
        params.position = BoardLocations.call('getBoardPositionsLocations3Boards',{KingsportLocationNeilsCuriosityid})
    end
    params.smooth = true

    local KingsportLocationNeilsCuriosity = KingsportLocationsBag.takeObject(params)
    local KingsportLocationNeilsCuriosityScale = BoardLocations.call('getKingsportLocationNeilsCuriosityScale')
    KingsportLocationNeilsCuriosity.setScale(KingsportLocationNeilsCuriosityScale)

    local KingsportLocationsBagId = BoardLocations.call('KingsportLocationBagid')
    local KingsportLocationsBag = getObjectFromGUID(KingsportLocationsBagId)
    local KingsportLocationNorthPointLighthouseid = BoardLocations.call('getKingsportLocationNorthPointLighthouseid')
    local params = {}
    params.guid = KingsportLocationNorthPointLighthouseid
    local KingsportLocationNorthPointLighthouseRot = BoardLocations.call('getKingsportLocationNorthPointLighthouseRotation')
    params.rotation = {KingsportLocationNorthPointLighthouseRot[1],KingsportLocationNorthPointLighthouseRot[2],KingsportLocationNorthPointLighthouseRot[3]}
    if KingsportSolo == true or KingsportDunwich == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsKingsportSolo',{KingsportLocationNorthPointLighthouseid})
    end
    if InnsmouthKingsport == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsInnsmouthKingsport',{KingsportLocationNorthPointLighthouseid})
    end
    if AllThreeBoards == true then
        params.position = BoardLocations.call('getBoardPositionsLocations3Boards',{KingsportLocationNorthPointLighthouseid})
    end
    params.smooth = true

    local KingsportLocationNorthPointLighthouse = KingsportLocationsBag.takeObject(params)
    local KingsportLocationNorthPointLighthouseScale = BoardLocations.call('getKingsportLocationNorthPointLighthouseScale')
    KingsportLocationNorthPointLighthouse.setScale(KingsportLocationNorthPointLighthouseScale)

    local KingsportLocationsBagId = BoardLocations.call('KingsportLocationBagid')
    local KingsportLocationsBag = getObjectFromGUID(KingsportLocationsBagId)
    local KingsportLocationTheCausewayid = BoardLocations.call('getKingsportLocationTheCausewayid')
    local params = {}
    params.guid = KingsportLocationTheCausewayid
    local KingsportLocationTheCausewayRot = BoardLocations.call('getKingsportLocationTheCausewayRotation')
    params.rotation = {KingsportLocationTheCausewayRot[1],KingsportLocationTheCausewayRot[2],KingsportLocationTheCausewayRot[3]}
    if KingsportSolo == true or KingsportDunwich == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsKingsportSolo',{KingsportLocationTheCausewayid})
    end
    if InnsmouthKingsport == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsInnsmouthKingsport',{KingsportLocationTheCausewayid})
    end
    if AllThreeBoards == true then
        params.position = BoardLocations.call('getBoardPositionsLocations3Boards',{KingsportLocationTheCausewayid})
    end
    params.smooth = true

    local KingsportLocationTheCauseway = KingsportLocationsBag.takeObject(params)
    local KingsportLocationTheCausewayScale = BoardLocations.call('getKingsportLocationTheCausewayScale')
    KingsportLocationTheCauseway.setScale(KingsportLocationTheCausewayScale)

    local KingsportLocationsBagId = BoardLocations.call('KingsportLocationBagid')
    local KingsportLocationsBag = getObjectFromGUID(KingsportLocationsBagId)
    local KingsportLocationStErasmusid = BoardLocations.call('getKingsportLocationStErasmusid')
    local params = {}
    params.guid = KingsportLocationStErasmusid
    local KingsportLocationStErasmusRot = BoardLocations.call('getKingsportLocationStErasmusRotation')
    params.rotation = {KingsportLocationStErasmusRot[1],KingsportLocationStErasmusRot[2],KingsportLocationStErasmusRot[3]}
    if KingsportSolo == true or KingsportDunwich == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsKingsportSolo',{KingsportLocationStErasmusid})
    end
    if InnsmouthKingsport == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsInnsmouthKingsport',{KingsportLocationStErasmusid})
    end
    if AllThreeBoards == true then
        params.position = BoardLocations.call('getBoardPositionsLocations3Boards',{KingsportLocationStErasmusid})
    end
    params.smooth = true

    local KingsportLocationStErasmus = KingsportLocationsBag.takeObject(params)
    local KingsportLocationStErasmusScale = BoardLocations.call('getKingsportLocationStErasmusScale')
    KingsportLocationStErasmus.setScale(KingsportLocationStErasmusScale)

    local KingsportLocationsBagId = BoardLocations.call('KingsportLocationBagid')
    local KingsportLocationsBag = getObjectFromGUID(KingsportLocationsBagId)
    local KingsportLocationStrangeHighHouseid = BoardLocations.call('getKingsportLocationStrangeHighHouseid')
    local params = {}
    params.guid = KingsportLocationStrangeHighHouseid
    local KingsportLocationStrangeHighHouseRot = BoardLocations.call('getKingsportLocationStrangeHighHouseRotation')
    params.rotation = {KingsportLocationStrangeHighHouseRot[1],KingsportLocationStrangeHighHouseRot[2],KingsportLocationStrangeHighHouseRot[3]}
    if KingsportSolo == true or KingsportDunwich == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsKingsportSolo',{KingsportLocationStrangeHighHouseid})
    end
    if InnsmouthKingsport == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsInnsmouthKingsport',{KingsportLocationStrangeHighHouseid})
    end
    if AllThreeBoards == true then
        params.position = BoardLocations.call('getBoardPositionsLocations3Boards',{KingsportLocationStrangeHighHouseid})
    end
    params.smooth = true

    local KingsportLocationStrangeHighHouse = KingsportLocationsBag.takeObject(params)
    local KingsportLocationStrangeHighHouseScale = BoardLocations.call('getKingsportLocationStrangeHighHouseScale')
    KingsportLocationStrangeHighHouse.setScale(KingsportLocationStrangeHighHouseScale)

    local KingsportLocationsBagId = BoardLocations.call('KingsportLocationBagid')
    local KingsportLocationsBag = getObjectFromGUID(KingsportLocationsBagId)
    local KingsportLocationSouthShoreid = BoardLocations.call('getKingsportLocationSouthShoreid')
    local params = {}
    params.guid = KingsportLocationSouthShoreid
    local KingsportLocationSouthShoreRot = BoardLocations.call('getKingsportLocationSouthShoreRotation')
    params.rotation = {KingsportLocationSouthShoreRot[1],KingsportLocationSouthShoreRot[2],KingsportLocationSouthShoreRot[3]}
    if KingsportSolo == true or KingsportDunwich == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsKingsportSolo',{KingsportLocationSouthShoreid})
    end
    if InnsmouthKingsport == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsInnsmouthKingsport',{KingsportLocationSouthShoreid})
    end
    if AllThreeBoards == true then
        params.position = BoardLocations.call('getBoardPositionsLocations3Boards',{KingsportLocationSouthShoreid})
    end
    params.smooth = true

    local KingsportLocationSouthShore = KingsportLocationsBag.takeObject(params)
    local KingsportLocationSouthShoreScale = BoardLocations.call('getKingsportLocationSouthShoreScale')
    KingsportLocationSouthShore.setScale(KingsportLocationSouthShoreScale)

    local KingsportLocationsBagId = BoardLocations.call('KingsportLocationBagid')
    local KingsportLocationsBag = getObjectFromGUID(KingsportLocationsBagId)
    local KingsportLocationTheUnderworldid = BoardLocations.call('getKingsportLocationTheUnderworldid')
    local params = {}
    params.guid = KingsportLocationTheUnderworldid
    local KingsportLocationTheUnderworldRot = BoardLocations.call('getKingsportLocationTheUnderworldRotation')
    params.rotation = {KingsportLocationTheUnderworldRot[1],KingsportLocationTheUnderworldRot[2],KingsportLocationTheUnderworldRot[3]}
    if KingsportSolo == true or KingsportDunwich == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsKingsportSolo',{KingsportLocationTheUnderworldid})
    end
    if InnsmouthKingsport == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsInnsmouthKingsport',{KingsportLocationTheUnderworldid})
    end
    if AllThreeBoards == true then
        params.position = BoardLocations.call('getBoardPositionsLocations3Boards',{KingsportLocationTheUnderworldid})
    end
    params.smooth = true

    local KingsportLocationTheUnderworld = KingsportLocationsBag.takeObject(params)
    local KingsportLocationTheUnderworldScale = BoardLocations.call('getKingsportLocationTheUnderworldScale')
    KingsportLocationTheUnderworld.setScale(KingsportLocationTheUnderworldScale)

    local KingsportLocationsBagId = BoardLocations.call('KingsportLocationBagid')
    local KingsportLocationsBag = getObjectFromGUID(KingsportLocationsBagId)
    local KingsportLocationUnknownKadathid = BoardLocations.call('getKingsportLocationUnknownKadathid')
    local params = {}
    params.guid = KingsportLocationUnknownKadathid
    local KingsportLocationUnknownKadathRot = BoardLocations.call('getKingsportLocationUnknownKadathRotation')
    params.rotation = {KingsportLocationUnknownKadathRot[1],KingsportLocationUnknownKadathRot[2],KingsportLocationUnknownKadathRot[3]}
    if KingsportSolo == true or KingsportDunwich == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsKingsportSolo',{KingsportLocationUnknownKadathid})
    end
    if InnsmouthKingsport == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsInnsmouthKingsport',{KingsportLocationUnknownKadathid})
    end
    if AllThreeBoards == true then
        params.position = BoardLocations.call('getBoardPositionsLocations3Boards',{KingsportLocationUnknownKadathid})
    end
    params.smooth = true

    local KingsportLocationUnknownKadath = KingsportLocationsBag.takeObject(params)
    local KingsportLocationUnknownKadathScale = BoardLocations.call('getKingsportLocationUnknownKadathScale')
    KingsportLocationUnknownKadath.setScale(KingsportLocationUnknownKadathScale)

end

function PlaceDunwichLocations(flags)

    InnsmouthSolo = GlobalVariables.call('getInnsmouthSolo')
    KingsportSolo = GlobalVariables.call('getKingsportSolo')
    DunwichSolo = GlobalVariables.call('getDunwichSolo')
    KingsportDunwich = GlobalVariables.call('getKingsportDunwich')
    InnsmouthKingsport = GlobalVariables.call('getInnsmouthKingsport')
    InnsmouthDunwich = GlobalVariables.call('getInnsmouthDunwich')
    AllThreeBoards = GlobalVariables.call('getAllThreeBoards')

    local DunwichLocationsBagId = BoardLocations.call('DunwichLocationBagid')
    local DunwichLocationsBag = getObjectFromGUID(DunwichLocationsBagId)
    local DunwichLocationWhateleyFarmid = BoardLocations.call('getDunwichLocationWhateleyFarmid')
    local params = {}
    params.guid = DunwichLocationWhateleyFarmid
    local DunwichLocationWhateleyFarmRot = BoardLocations.call('getDunwichLocationWhateleyFarmRotation')
    params.rotation = {DunwichLocationWhateleyFarmRot[1],DunwichLocationWhateleyFarmRot[2],DunwichLocationWhateleyFarmRot[3]}
    if DunwichSolo == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsDunwichSolo',{DunwichLocationWhateleyFarmid})
    end
    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
        params.position = BoardLocations.call('getBoardPositionsLocations3Boards',{DunwichLocationWhateleyFarmid})
    end
    params.smooth = true

    local DunwichLocationWhateleyFarm = DunwichLocationsBag.takeObject(params)
    local DunwichLocationWhateleyFarmScale = BoardLocations.call('getDunwichLocationWhateleyFarmScale')
    DunwichLocationWhateleyFarm.setScale(DunwichLocationWhateleyFarmScale)


    local DunwichLocationsBagId = BoardLocations.call('DunwichLocationBagid')
    local DunwichLocationsBag = getObjectFromGUID(DunwichLocationsBagId)
    local DunwichLocationWizardsHillid = BoardLocations.call('getDunwichLocationWizardsHillid')
    local params = {}
    params.guid = DunwichLocationWizardsHillid
    local DunwichLocationWizardsHillRot = BoardLocations.call('getDunwichLocationWizardsHillRotation')
    params.rotation = {DunwichLocationWizardsHillRot[1],DunwichLocationWizardsHillRot[2],DunwichLocationWizardsHillRot[3]}
    if DunwichSolo == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsDunwichSolo',{DunwichLocationWizardsHillid})
    end
    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
        params.position = BoardLocations.call('getBoardPositionsLocations3Boards',{DunwichLocationWizardsHillid})
    end
    params.smooth = true

    local DunwichLocationWizardsHill = DunwichLocationsBag.takeObject(params)
    local DunwichLocationWizardsHillScale = BoardLocations.call('getDunwichLocationWizardsHillScale')
    DunwichLocationWizardsHill.setScale(DunwichLocationWizardsHillScale)


    local DunwichLocationsBagId = BoardLocations.call('DunwichLocationBagid')
    local DunwichLocationsBag = getObjectFromGUID(DunwichLocationsBagId)
    local DunwichLocationColdSpringid = BoardLocations.call('getDunwichLocationColdSpringid')
    local params = {}
    params.guid = DunwichLocationColdSpringid
    local DunwichLocationColdSpringRot = BoardLocations.call('getDunwichLocationColdSpringRotation')
    params.rotation = {DunwichLocationColdSpringRot[1],DunwichLocationColdSpringRot[2],DunwichLocationColdSpringRot[3]}
    if DunwichSolo == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsDunwichSolo',{DunwichLocationColdSpringid})
    end
    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
        params.position = BoardLocations.call('getBoardPositionsLocations3Boards',{DunwichLocationColdSpringid})
    end
    params.smooth = true

    local DunwichLocationColdSpring = DunwichLocationsBag.takeObject(params)
    local DunwichLocationColdSpringScale = BoardLocations.call('getDunwichLocationColdSpringScale')
    DunwichLocationColdSpring.setScale(DunwichLocationColdSpringScale)


    local DunwichLocationsBagId = BoardLocations.call('DunwichLocationBagid')
    local DunwichLocationsBag = getObjectFromGUID(DunwichLocationsBagId)
    local DunwichLocationBackwoodsid = BoardLocations.call('getDunwichLocationBackwoodsid')
    local params = {}
    params.guid = DunwichLocationBackwoodsid
    local DunwichLocationBackwoodsRot = BoardLocations.call('getDunwichLocationBackwoodsRotation')
    params.rotation = {DunwichLocationBackwoodsRot[1],DunwichLocationBackwoodsRot[2],DunwichLocationBackwoodsRot[3]}
    if DunwichSolo == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsDunwichSolo',{DunwichLocationBackwoodsid})
    end
    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
        params.position = BoardLocations.call('getBoardPositionsLocations3Boards',{DunwichLocationBackwoodsid})
    end
    params.smooth = true

    local DunwichLocationBackwoods  = DunwichLocationsBag.takeObject(params)
    local DunwichLocationBackwoodsScale = BoardLocations.call('getDunwichLocationBackwoodsScale')
    DunwichLocationBackwoods .setScale(DunwichLocationBackwoodsScale)


    local DunwichLocationsBagId = BoardLocations.call('DunwichLocationBagid')
    local DunwichLocationsBag = getObjectFromGUID(DunwichLocationsBagId)
    local DunwichLocationSentinelHillid = BoardLocations.call('getDunwichLocationSentinelHillid')
    local params = {}
    params.guid = DunwichLocationSentinelHillid
    local DunwichLocationSentinelHillRot = BoardLocations.call('getDunwichLocationSentinelHillRotation')
    params.rotation = {DunwichLocationSentinelHillRot[1],DunwichLocationSentinelHillRot[2],DunwichLocationSentinelHillRot[3]}
    if DunwichSolo == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsDunwichSolo',{DunwichLocationSentinelHillid})
    end
    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
        params.position = BoardLocations.call('getBoardPositionsLocations3Boards',{DunwichLocationSentinelHillid})
    end
    params.smooth = true

    local DunwichLocationSentinelHill = DunwichLocationsBag.takeObject(params)
    local DunwichLocationSentinelHillScale = BoardLocations.call('getDunwichLocationSentinelHillScale')
    DunwichLocationSentinelHill.setScale(DunwichLocationSentinelHillScale)


    local DunwichLocationsBagId = BoardLocations.call('DunwichLocationBagid')
    local DunwichLocationsBag = getObjectFromGUID(DunwichLocationsBagId)
    local DunwichLocationVillageCommonsid = BoardLocations.call('getDunwichLocationVillageCommonsid')
    local params = {}
    params.guid = DunwichLocationVillageCommonsid
    local DunwichLocationVillageCommonsRot = BoardLocations.call('getDunwichLocationVillageCommonsRotation')
    params.rotation = {DunwichLocationVillageCommonsRot[1],DunwichLocationVillageCommonsRot[2],DunwichLocationVillageCommonsRot[3]}
    if DunwichSolo == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsDunwichSolo',{DunwichLocationVillageCommonsid})
    end
    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
        params.position = BoardLocations.call('getBoardPositionsLocations3Boards',{DunwichLocationVillageCommonsid})
    end
    params.smooth = true

    local DunwichLocationVillageCommons = DunwichLocationsBag.takeObject(params)
    local DunwichLocationVillageCommonsScale = BoardLocations.call('getDunwichLocationVillageCommonsScale')
    DunwichLocationVillageCommons.setScale(DunwichLocationVillageCommonsScale)


    local DunwichLocationsBagId = BoardLocations.call('DunwichLocationBagid')
    local DunwichLocationsBag = getObjectFromGUID(DunwichLocationsBagId)
    local DunwichLocationDarkesCarnivalid = BoardLocations.call('getDunwichLocationDarkesCarnivalid')
    local params = {}
    params.guid = DunwichLocationDarkesCarnivalid
    local DunwichLocationDarkesCarnivalRot = BoardLocations.call('getDunwichLocationDarkesCarnivalRotation')
    params.rotation = {DunwichLocationDarkesCarnivalRot[1],DunwichLocationDarkesCarnivalRot[2],DunwichLocationDarkesCarnivalRot[3]}
    if DunwichSolo == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsDunwichSolo',{DunwichLocationDarkesCarnivalid})
    end
    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
        params.position = BoardLocations.call('getBoardPositionsLocations3Boards',{DunwichLocationDarkesCarnivalid})
    end
    params.smooth = true

    local DunwichLocationDarkesCarnival = DunwichLocationsBag.takeObject(params)
    local DunwichLocationDarkesCarnivalScale = BoardLocations.call('getDunwichLocationDarkesCarnivalScale')
    DunwichLocationDarkesCarnival.setScale(DunwichLocationDarkesCarnivalScale)


    local DunwichLocationsBagId = BoardLocations.call('DunwichLocationBagid')
    local DunwichLocationsBag = getObjectFromGUID(DunwichLocationsBagId)
    local DunwichLocationBishopBrookeid = BoardLocations.call('getDunwichLocationBishopBrookeid')
    local params = {}
    params.guid = DunwichLocationBishopBrookeid
    local DunwichLocationBishopBrookeRot = BoardLocations.call('getDunwichLocationBishopBrookeRotation')
    params.rotation = {DunwichLocationBishopBrookeRot[1],DunwichLocationBishopBrookeRot[2],DunwichLocationBishopBrookeRot[3]}
    if DunwichSolo == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsDunwichSolo',{DunwichLocationBishopBrookeid})
    end
    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
        params.position = BoardLocations.call('getBoardPositionsLocations3Boards',{DunwichLocationBishopBrookeid})
    end
    params.smooth = true

    local DunwichLocationBishopBrooke = DunwichLocationsBag.takeObject(params)
    local DunwichLocationBishopBrookeScale = BoardLocations.call('getDunwichLocationBishopBrookeScale')
    DunwichLocationBishopBrooke.setScale(DunwichLocationBishopBrookeScale)


    local DunwichLocationsBagId = BoardLocations.call('DunwichLocationBagid')
    local DunwichLocationsBag = getObjectFromGUID(DunwichLocationsBagId)
    local DunwichLocationDunwichVillageid = BoardLocations.call('getDunwichLocationDunwichVillageid')
    local params = {}
    params.guid = DunwichLocationDunwichVillageid
    local DunwichLocationDunwichVillageRot = BoardLocations.call('getDunwichLocationDunwichVillageRotation')
    params.rotation = {DunwichLocationDunwichVillageRot[1],DunwichLocationDunwichVillageRot[2],DunwichLocationDunwichVillageRot[3]}
    if DunwichSolo == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsDunwichSolo',{DunwichLocationDunwichVillageid})
    end
    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
        params.position = BoardLocations.call('getBoardPositionsLocations3Boards',{DunwichLocationDunwichVillageid})
    end
    params.smooth = true

    local DunwichLocationDunwichVillage = DunwichLocationsBag.takeObject(params)
    local DunwichLocationDunwichVillageScale = BoardLocations.call('getDunwichLocationDunwichVillageScale')
    DunwichLocationDunwichVillage.setScale(DunwichLocationDunwichVillageScale)


    local DunwichLocationsBagId = BoardLocations.call('DunwichLocationBagid')
    local DunwichLocationsBag = getObjectFromGUID(DunwichLocationsBagId)
    local DunwichLocationBlastedHeathid = BoardLocations.call('getDunwichLocationBlastedHeathid')
    local params = {}
    params.guid = DunwichLocationBlastedHeathid
    local DunwichLocationBlastedHeathRot = BoardLocations.call('getDunwichLocationBlastedHeathRotation')
    params.rotation = {DunwichLocationBlastedHeathRot[1],DunwichLocationBlastedHeathRot[2],DunwichLocationBlastedHeathRot[3]}
    if DunwichSolo == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsDunwichSolo',{DunwichLocationBlastedHeathid})
    end
    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
        params.position = BoardLocations.call('getBoardPositionsLocations3Boards',{DunwichLocationBlastedHeathid})
    end
    params.smooth = true

    local DunwichLocationBlastedHeath = DunwichLocationsBag.takeObject(params)
    local DunwichLocationBlastedHeathScale = BoardLocations.call('getDunwichLocationBlastedHeathScale')
    DunwichLocationBlastedHeath.setScale(DunwichLocationBlastedHeathScale)


    local DunwichLocationsBagId = BoardLocations.call('DunwichLocationBagid')
    local DunwichLocationsBag = getObjectFromGUID(DunwichLocationsBagId)
    local DunwichLocationGardnersPlaceid = BoardLocations.call('getDunwichLocationGardnersPlaceid')
    local params = {}
    params.guid = DunwichLocationGardnersPlaceid
    local DunwichLocationGardnersPlaceRot = BoardLocations.call('getDunwichLocationGardnersPlaceRotation')
    params.rotation = {DunwichLocationGardnersPlaceRot[1],DunwichLocationGardnersPlaceRot[2],DunwichLocationGardnersPlaceRot[3]}
    if DunwichSolo == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsDunwichSolo',{DunwichLocationGardnersPlaceid})
    end
    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
        params.position = BoardLocations.call('getBoardPositionsLocations3Boards',{DunwichLocationGardnersPlaceid})
    end
    params.smooth = true

    local DunwichLocationGardnersPlace = DunwichLocationsBag.takeObject(params)
    local DunwichLocationGardnersPlaceScale = BoardLocations.call('getDunwichLocationGardnersPlaceScale')
    DunwichLocationGardnersPlace.setScale(DunwichLocationGardnersPlaceScale)


    local DunwichLocationsBagId = BoardLocations.call('DunwichLocationBagid')
    local DunwichLocationsBag = getObjectFromGUID(DunwichLocationsBagId)
    local DunwichLocationDevilsHopyardid = BoardLocations.call('getDunwichLocationDevilsHopyardid')
    local params = {}
    params.guid = DunwichLocationDevilsHopyardid
    local DunwichLocationDevilsHopyardRot = BoardLocations.call('getDunwichLocationDevilsHopyardRotation')
    params.rotation = {DunwichLocationDevilsHopyardRot[1],DunwichLocationDevilsHopyardRot[2],DunwichLocationDevilsHopyardRot[3]}
    if DunwichSolo == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsDunwichSolo',{DunwichLocationDevilsHopyardid})
    end
    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
        params.position = BoardLocations.call('getBoardPositionsLocations3Boards',{DunwichLocationDevilsHopyardid})
    end
    params.smooth = true

    local DunwichLocationDevilsHopyard = DunwichLocationsBag.takeObject(params)
    local DunwichLocationDevilsHopyardScale = BoardLocations.call('getDunwichLocationDevilsHopyardScale')
    DunwichLocationDevilsHopyard.setScale(DunwichLocationDevilsHopyardScale)


    local DunwichLocationsBagId = BoardLocations.call('DunwichLocationBagid')
    local DunwichLocationsBag = getObjectFromGUID(DunwichLocationsBagId)
    local DunwichLocationHarneyJonesShackid = BoardLocations.call('getDunwichLocationHarneyJonesShackid')
    local params = {}
    params.guid = DunwichLocationHarneyJonesShackid
    local DunwichLocationHarneyJonesShackRot = BoardLocations.call('getDunwichLocationHarneyJonesShackRotation')
    params.rotation = {DunwichLocationHarneyJonesShackRot[1],DunwichLocationHarneyJonesShackRot[2],DunwichLocationHarneyJonesShackRot[3]}
    if DunwichSolo == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsDunwichSolo',{DunwichLocationHarneyJonesShackid})
    end
    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
        params.position = BoardLocations.call('getBoardPositionsLocations3Boards',{DunwichLocationHarneyJonesShackid})
    end
    params.smooth = true

    local DunwichLocationHarneyJonesShack = DunwichLocationsBag.takeObject(params)
    local DunwichLocationHarneyJonesShackScale = BoardLocations.call('getDunwichLocationHarneyJonesShackScale')
    DunwichLocationHarneyJonesShack.setScale(DunwichLocationHarneyJonesShackScale)


    local DunwichLocationsBagId = BoardLocations.call('DunwichLocationBagid')
    local DunwichLocationsBag = getObjectFromGUID(DunwichLocationsBagId)
    local DunwichLocationAnotherTimeid = BoardLocations.call('getDunwichLocationAnotherTimeid')
    local params = {}
    params.guid = DunwichLocationAnotherTimeid
    local DunwichLocationAnotherTimeRot = BoardLocations.call('getDunwichLocationAnotherTimeRotation')
    params.rotation = {DunwichLocationAnotherTimeRot[1],DunwichLocationAnotherTimeRot[2],DunwichLocationAnotherTimeRot[3]}
    if DunwichSolo == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsDunwichSolo',{DunwichLocationAnotherTimeid})
    end
    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
        params.position = BoardLocations.call('getBoardPositionsLocations3Boards',{DunwichLocationAnotherTimeid})
    end
    params.smooth = true

    local DunwichLocationAnotherTime = DunwichLocationsBag.takeObject(params)
    local DunwichLocationAnotherTimeScale = BoardLocations.call('getDunwichLocationAnotherTimeScale')
    DunwichLocationAnotherTime.setScale(DunwichLocationAnotherTimeScale)


    local DunwichLocationsBagId = BoardLocations.call('DunwichLocationBagid')
    local DunwichLocationsBag = getObjectFromGUID(DunwichLocationsBagId)
    local DunwichLocationLostCarcosaid = BoardLocations.call('getDunwichLocationLostCarcosaid')
    local params = {}
    params.guid = DunwichLocationLostCarcosaid
    local DunwichLocationLostCarcosaRot = BoardLocations.call('getDunwichLocationLostCarcosaRotation')
    params.rotation = {DunwichLocationLostCarcosaRot[1],DunwichLocationLostCarcosaRot[2],DunwichLocationLostCarcosaRot[3]}
    if DunwichSolo == true then
        params.position = BoardLocations.call('getBoardPositionsLocationsDunwichSolo',{DunwichLocationLostCarcosaid})
    end
    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
        params.position = BoardLocations.call('getBoardPositionsLocations3Boards',{DunwichLocationLostCarcosaid})
    end
    params.smooth = true

    local DunwichLocationLostCarcosa = DunwichLocationsBag.takeObject(params)
    local DunwichLocationLostCarcosaScale = BoardLocations.call('getDunwichLocationLostCarcosaScale')
    DunwichLocationLostCarcosa.setScale(DunwichLocationLostCarcosaScale)
end