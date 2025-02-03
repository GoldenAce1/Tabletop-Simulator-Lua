ScrZoneExpansions = getObjectFromGUID('70a568')
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

function PlaceInnsmouthScrZones()
    
    InnsmouthSolo = GlobalVariables.call('getInnsmouthSolo')
    KingsportSolo = GlobalVariables.call('getKingsportSolo')
    DunwichSolo = GlobalVariables.call('getDunwichSolo')
    KingsportDunwich = GlobalVariables.call('getKingsportDunwich')
    InnsmouthKingsport = GlobalVariables.call('getInnsmouthKingsport')
    InnsmouthDunwich = GlobalVariables.call('getInnsmouthDunwich')
    AllThreeBoards = GlobalVariables.call('getAllThreeBoards')
    
    ScrZoneExpansions = getObjectFromGUID('70a568')
    
    local pos = {}
    local ExpansionScriptingZoneScale = {}
    local Rotation = {}
    
    pos = ScrZoneExpansions.call('getBoardPositionsScrZonesInnsmouthSolo',{'Innsmouth_ScrZone_Devil_Reef'})
    local ExpansionScriptingZoneScale = ScrZoneExpansions.call('getInnsmouthScrZoneDevilReefScale')
    local Rotation = ScrZoneExpansions.call('getInnsmouthScrZoneDevilReefRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setInnsmouthScrZoneDevilReefid', Object_Spawned_GUID)
    
    pos = ScrZoneExpansions.call('getBoardPositionsScrZonesInnsmouthSolo',{'Innsmouth_ScrZone_Jail'})
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getInnsmouthScrZoneJailScale')
    Rotation = ScrZoneExpansions.call('getInnsmouthScrZoneJailRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setInnsmouthScrZoneJailid', Object_Spawned_GUID)
    
    pos = ScrZoneExpansions.call('getBoardPositionsScrZonesInnsmouthSolo',{'Innsmouth_ScrZone_Deep_Rising'})
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getInnsmouthScrZoneDeepRisingScale')
    Rotation = ScrZoneExpansions.call('getInnsmouthScrZoneDeepRisingRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setInnsmouthScrZoneDeepRisingid', Object_Spawned_GUID)
    
    pos = ScrZoneExpansions.call('getBoardPositionsScrZonesInnsmouthSolo',{'Innsmouth_ScrZone_Sawbone_Alley'})
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getInnsmouthScrZoneDeepRisingSca')
    Rotation = ScrZoneExpansions.call('getInnsmouthScrZoneDeepRisingRot')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setInnsmouthScrZoneSawboneAlleyid', Object_Spawned_GUID)
    
    pos = ScrZoneExpansions.call('getBoardPositionsScrZonesInnsmouthSolo',{'Innsmouth_ScrZone_Esoteric_Dagon'})
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getInnsmouthScrZoneEsotericDagonScale')
    Rotation = ScrZoneExpansions.call('getInnsmouthScrZoneEsotericDagonRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setInnsmouthScrZoneEsotericDagonid', Object_Spawned_GUID)
    
    pos = ScrZoneExpansions.call('getBoardPositionsScrZonesInnsmouthSolo',{'Innsmouth_ScrZone_Church_Green'})
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getInnsmouthScrZoneChurchGreenScale')
    Rotation = ScrZoneExpansions.call('getInnsmouthScrZoneChurchGreenRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setInnsmouthScrZoneChurchGreenid', Object_Spawned_GUID)
    
    pos = ScrZoneExpansions.call('getBoardPositionsScrZonesInnsmouthSolo',{'Innsmouth_ScrZone_Factory_District'})
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getInnsmouthScrZoneFactoryDistrictScale')
    Rotation = ScrZoneExpansions.call('getInnsmouthScrZoneFactoryDistrictRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setInnsmouthScrZoneFactoryDistrictid', Object_Spawned_GUID)
    
    pos = ScrZoneExpansions.call('getBoardPositionsScrZonesInnsmouthSolo',{'Innsmouth_ScrZone_First_National_Grocery'})
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getInnsmouthScrZoneFirstNationalGroceryScale')
    Rotation = ScrZoneExpansions.call('getInnsmouthScrZoneFirstNationalGroceryRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setInnsmouthScrZoneFirstNationalGroceryid', Object_Spawned_GUID)
    
    pos = ScrZoneExpansions.call('getBoardPositionsScrZonesInnsmouthSolo',{'Innsmouth_ScrZone_Gilman_House_Hotel'})
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getInnsmouthScrZoneGilmanHouseHotelScale')
    Rotation = ScrZoneExpansions.call('getInnsmouthScrZoneGilmanHouseHotelRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setInnsmouthScrZoneGilmanHouseHotelid', Object_Spawned_GUID)
    
    pos = ScrZoneExpansions.call('getBoardPositionsScrZonesInnsmouthSolo',{'Innsmouth_ScrZone_Marsh_Refinery'})
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getInnsmouthScrZoneMarshRefineryScale')
    Rotation = ScrZoneExpansions.call('getInnsmouthScrZoneMarshRefineryRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setInnsmouthScrZoneMarshRefineryid', Object_Spawned_GUID)
    
    pos = ScrZoneExpansions.call('getBoardPositionsScrZonesInnsmouthSolo',{'Innsmouth_ScrZone_Innsmouth_Shore'})
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getInnsmouthScrZoneInnsmouthShoreScale')
    Rotation = ScrZoneExpansions.call('getInnsmouthScrZoneInnsmouthShoreRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setInnsmouthScrZoneInnsmouthShoreid', Object_Spawned_GUID)
    
    pos = ScrZoneExpansions.call('getBoardPositionsScrZonesInnsmouthSolo',{'Innsmouth_ScrZone_Joe_Sargents'})
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getInnsmouthScrZoneJoeSargentsScale')
    Rotation = ScrZoneExpansions.call('getInnsmouthScrZoneJoeSargentsRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setInnsmouthScrZoneJoeSargentsid', Object_Spawned_GUID)
    
    pos = ScrZoneExpansions.call('getBoardPositionsScrZonesInnsmouthSolo',{'Innsmouth_ScrZone_Falcon_Point'})
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getInnsmouthScrZoneFalconPointScale')
    Rotation = ScrZoneExpansions.call('getInnsmouthScrZoneFalconPointRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setInnsmouthScrZoneFalconPointid', Object_Spawned_GUID)
    
    pos = ScrZoneExpansions.call('getBoardPositionsScrZonesInnsmouthSolo',{'Innsmouth_ScrZone_Yha_Nthlei'})
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getInnsmouthScrZoneYhaNthleiScale')
    Rotation = ScrZoneExpansions.call('getInnsmouthScrZoneYhaNthleiRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setInnsmouthScrZoneYhaNthleiid', Object_Spawned_GUID)
end

function PlaceKingsportScrZones()
    
    InnsmouthSolo = GlobalVariables.call('getInnsmouthSolo')
    KingsportSolo = GlobalVariables.call('getKingsportSolo')
    DunwichSolo = GlobalVariables.call('getDunwichSolo')
    KingsportDunwich = GlobalVariables.call('getKingsportDunwich')
    InnsmouthKingsport = GlobalVariables.call('getInnsmouthKingsport')
    InnsmouthDunwich = GlobalVariables.call('getInnsmouthDunwich')
    AllThreeBoards = GlobalVariables.call('getAllThreeBoards')
    
    ScrZoneExpansions = getObjectFromGUID('70a568')
    
    local pos = {}
    local ExpansionScriptingZoneScale = {}
    local Rotation = {}
    
    if KingsportSolo == true or KingsportDunwich == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesKingsportSolo',{'Kingsport_ScrZone_Hall_School'})
    end
    if InnsmouthKingsport == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesInnsmouthKingsport',{'Kingsport_ScrZone_Hall_School'})
    end
    if AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Kingsport_ScrZone_Hall_School'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getKingsportScrZoneHallSchoolScale')
    Rotation = ScrZoneExpansions.call('getKingsportScrZoneHallSchoolRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setKingsportScrZoneHallSchoolid', Object_Spawned_GUID)
    
    if KingsportSolo == true or KingsportDunwich == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesKingsportSolo',{'Kingsport_ScrZone_607_Water_Street'})
    end
    if InnsmouthKingsport == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesInnsmouthKingsport',{'Kingsport_ScrZone_607_Water_Street'})
    end
    if AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Kingsport_ScrZone_607_Water_Street'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getKingsportScrZone607WaterStreetScale')
    Rotation = ScrZoneExpansions.call('getKingsportScrZone607WaterStreetRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setKingsportScrZone607WaterStreetid', Object_Spawned_GUID)
    
    if KingsportSolo == true or KingsportDunwich == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesKingsportSolo',{'Kingsport_ScrZone_Central_Hill'})
    end
    if InnsmouthKingsport == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesInnsmouthKingsport',{'Kingsport_ScrZone_Central_Hill'})
    end
    if AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Kingsport_ScrZone_Central_Hill'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getKingsportScrZoneCentralHillScale')
    Rotation = ScrZoneExpansions.call('getKingsportScrZoneCentralHillRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setKingsportScrZoneCentralHillid', Object_Spawned_GUID)
    
    if KingsportSolo == true or KingsportDunwich == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesKingsportSolo',{'Kingsport_ScrZone_Congregational_Hospital'})
    end
    if InnsmouthKingsport == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesInnsmouthKingsport',{'Kingsport_ScrZone_Congregational_Hospital'})
    end
    if AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Kingsport_ScrZone_Congregational_Hospital'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getKingsportScrZoneCongregationalHospitalScale')
    Rotation = ScrZoneExpansions.call('getKingsportScrZoneCongregationalHospitalRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setKingsportScrZoneCongregationalHospitalid', Object_Spawned_GUID)
    
    if KingsportSolo == true or KingsportDunwich == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesKingsportSolo',{'Kingsport_ScrZone_Harborside'})
    end
    if InnsmouthKingsport == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesInnsmouthKingsport',{'Kingsport_ScrZone_Harborside'})
    end
    if AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Kingsport_ScrZone_Harborside'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getKingsportScrZoneHarborsideScale')
    Rotation = ScrZoneExpansions.call('getKingsportScrZoneHarborsideRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setKingsportScrZoneHarborsideid', Object_Spawned_GUID)
    
    if KingsportSolo == true or KingsportDunwich == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesKingsportSolo',{'Kingsport_ScrZone_Rope_And_Anchor_Commons'})
    end
    if InnsmouthKingsport == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesInnsmouthKingsport',{'Kingsport_ScrZone_Rope_And_Anchor_Commons'})
    end
    if AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Kingsport_ScrZone_Rope_And_Anchor_Commons'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getKingsportScrZoneRopeAndAnchorCommonsScale')
    Rotation = ScrZoneExpansions.call('getKingsportScrZoneRopeAndAnchorCommonsRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setKingsportScrZoneRopeAndAnchorCommonsid', Object_Spawned_GUID)
    
    if KingsportSolo == true or KingsportDunwich == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesKingsportSolo',{'Kingsport_ScrZone_Wireless_Station'})
    end
    if InnsmouthKingsport == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesInnsmouthKingsport',{'Kingsport_ScrZone_Wireless_Station'})
    end
    if AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Kingsport_ScrZone_Wireless_Station'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getKingsportScrZoneWirelessStationScale')
    Rotation = ScrZoneExpansions.call('getKingsportScrZoneWirelessStationRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setKingsportScrZoneWirelessStationid', Object_Spawned_GUID)
    
    if KingsportSolo == true or KingsportDunwich == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesKingsportSolo',{'Kingsport_ScrZone_Artists_Colony'})
    end
    if InnsmouthKingsport == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesInnsmouthKingsport',{'Kingsport_ScrZone_Artists_Colony'})
    end
    if AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Kingsport_ScrZone_Artists_Colony'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getKingsportScrZoneArtistsColonyScale')
    Rotation = ScrZoneExpansions.call('getKingsportScrZoneArtistsColonyRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setKingsportScrZoneArtistsColonyid', Object_Spawned_GUID)
    
    if KingsportSolo == true or KingsportDunwich == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesKingsportSolo',{'Kingsport_ScrZone_7th_House'})
    end
    if InnsmouthKingsport == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesInnsmouthKingsport',{'Kingsport_ScrZone_7th_House'})
    end
    if AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Kingsport_ScrZone_7th_House'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getKingsportScrZone7thHouseScale')
    Rotation = ScrZoneExpansions.call('getKingsportScrZone7thHouseRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setKingsportScrZone7thHouseid', Object_Spawned_GUID)
    
    if KingsportSolo == true or KingsportDunwich == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesKingsportSolo',{'Kingsport_ScrZone_Neils_Curiosity'})
    end
    if InnsmouthKingsport == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesInnsmouthKingsport',{'Kingsport_ScrZone_Neils_Curiosity'})
    end
    if AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Kingsport_ScrZone_Neils_Curiosity'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getKingsportScrZoneNeilsCuriosityScale')
    Rotation = ScrZoneExpansions.call('getKingsportScrZoneNeilsCuriosityRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setKingsportScrZoneNeilsCuriosityid', Object_Spawned_GUID)
    
    if KingsportSolo == true or KingsportDunwich == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesKingsportSolo',{'Kingsport_ScrZone_North_Point_Lighthouse'})
    end
    if InnsmouthKingsport == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesInnsmouthKingsport',{'Kingsport_ScrZone_North_Point_Lighthouse'})
    end
    if AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Kingsport_ScrZone_North_Point_Lighthouse'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getKingsportScrZoneNorthPointLighthouseScale')
    Rotation = ScrZoneExpansions.call('getKingsportScrZoneNorthPointLighthouseRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setKingsportScrZoneNorthPointLighthouseid', Object_Spawned_GUID)
    
    if KingsportSolo == true or KingsportDunwich == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesKingsportSolo',{'Kingsport_ScrZone_The_Causeway'})
    end
    if InnsmouthKingsport == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesInnsmouthKingsport',{'Kingsport_ScrZone_The_Causeway'})
    end
    if AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Kingsport_ScrZone_The_Causeway'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getKingsportScrZoneTheCausewayScale')
    Rotation = ScrZoneExpansions.call('getKingsportScrZoneTheCausewayRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setKingsportScrZoneTheCausewayid', Object_Spawned_GUID)
    
    if KingsportSolo == true or KingsportDunwich == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesKingsportSolo',{'Kingsport_ScrZone_St_Erasmus'})
    end
    if InnsmouthKingsport == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesInnsmouthKingsport',{'Kingsport_ScrZone_St_Erasmus'})
    end
    if AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Kingsport_ScrZone_St_Erasmus'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getKingsportScrZoneStErasmusScale')
    Rotation = ScrZoneExpansions.call('getKingsportScrZoneStErasmusRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setKingsportScrZoneStErasmusid', Object_Spawned_GUID)
    
    if KingsportSolo == true or KingsportDunwich == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesKingsportSolo',{'Kingsport_ScrZone_Strange_High_House'})
    end
    if InnsmouthKingsport == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesInnsmouthKingsport',{'Kingsport_ScrZone_Strange_High_House'})
    end
    if AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Kingsport_ScrZone_Strange_High_House'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getKingsportScrZoneStrangeHighHouseScale')
    Rotation = ScrZoneExpansions.call('getKingsportScrZoneStrangeHighHouseRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setKingsportScrZoneStrangeHighHouseid', Object_Spawned_GUID)
    
    if KingsportSolo == true or KingsportDunwich == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesKingsportSolo',{'Kingsport_ScrZone_South_Shore'})
    end
    if InnsmouthKingsport == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesInnsmouthKingsport',{'Kingsport_ScrZone_South_Shore'})
    end
    if AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Kingsport_ScrZone_South_Shore'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getKingsportScrZoneSouthShoreScale')
    Rotation = ScrZoneExpansions.call('getKingsportScrZoneSouthShoreRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setKingsportScrZoneSouthShoreid', Object_Spawned_GUID)
    
    if KingsportSolo == true or KingsportDunwich == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesKingsportSolo',{'Kingsport_ScrZone_The_Underworld'})
    end
    if InnsmouthKingsport == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesInnsmouthKingsport',{'Kingsport_ScrZone_The_Underworld'})
    end
    if AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Kingsport_ScrZone_The_Underworld'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getKingsportScrZoneTheUnderworldScale')
    Rotation = ScrZoneExpansions.call('getKingsportScrZoneTheUnderworldRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setKingsportScrZoneTheUnderworldid', Object_Spawned_GUID)
    
    if KingsportSolo == true or KingsportDunwich == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesKingsportSolo',{'Kingsport_ScrZone_Unknown_Kadath'})
    end
    if InnsmouthKingsport == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesInnsmouthKingsport',{'Kingsport_ScrZone_Unknown_Kadath'})
    end
    if AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Kingsport_ScrZone_Unknown_Kadath'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getKingsportScrZoneUnknownKadathScale')
    Rotation = ScrZoneExpansions.call('getKingsportScrZoneUnknownKadathRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setKingsportScrZoneUnknownKadathid', Object_Spawned_GUID)
    
    -- Rift Progress markers
    
    if KingsportSolo == true or KingsportDunwich == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesKingsportSolo',{'Kingsport_Scrzone_RiftProgress1'})
    end
    if InnsmouthKingsport == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesInnsmouthKingsport',{'Kingsport_Scrzone_RiftProgress1'})
    end
    if AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Kingsport_Scrzone_RiftProgress1'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getKingsportScrzoneRiftProgress1Scale')
    Rotation = ScrZoneExpansions.call('getKingsportScrzoneRiftProgress1Rotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setKingsportScrzoneRiftProgress1id', Object_Spawned_GUID)
    
    if KingsportSolo == true or KingsportDunwich == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesKingsportSolo',{'Kingsport_Scrzone_RiftProgress2'})
    end
    if InnsmouthKingsport == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesInnsmouthKingsport',{'Kingsport_Scrzone_RiftProgress2'})
    end
    if AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Kingsport_Scrzone_RiftProgress2'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getKingsportScrzoneRiftProgress2Scale')
    Rotation = ScrZoneExpansions.call('getKingsportScrzoneRiftProgress2Rotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setKingsportScrzoneRiftProgress2id', Object_Spawned_GUID)
    
    if KingsportSolo == true or KingsportDunwich == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesKingsportSolo',{'Kingsport_Scrzone_RiftProgress3'})
    end
    if InnsmouthKingsport == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesInnsmouthKingsport',{'Kingsport_Scrzone_RiftProgress3'})
    end
    if AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Kingsport_Scrzone_RiftProgress3'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getKingsportScrzoneRiftProgress3Scale')
    Rotation = ScrZoneExpansions.call('getKingsportScrzoneRiftProgress3Rotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setKingsportScrzoneRiftProgress3id', Object_Spawned_GUID)
    
    local KingsportScrzoneChangedpos = ScrZoneExpansions.call('getKingsportScrzoneChangedpos')
    local KingsportScrzoneChangedsca = ScrZoneExpansions.call('getKingsportScrzoneChangedsca')
    local KingsportScrzoneChangedRotation = ScrZoneExpansions.call('getSpecialRotation')
    
    local KingsportScrzoneChanged_GUID = SpawnScriptingZone(KingsportScrzoneChangedpos, KingsportScrzoneChangedsca,KingsportScrzoneChangedRotation, false, false )

    --[[ local KingsportScrzoneChangedzone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = KingsportScrzoneChangedpos,
        scale             = {KingsportScrzoneChangedsca[1],KingsportScrzoneChangedsca[2],KingsportScrzoneChangedsca[3]}, -- or whatever you want
        rotation          = {KingsportScrzoneChangedRotation[1],KingsportScrzoneChangedRotation[2],KingsportScrzoneChangedRotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local KingsportScrzoneChanged_GUID = KingsportScrzoneChangedzone.getGUID() --]]
    ScrZoneExpansions.call('setKingsportScrzoneChangedid', KingsportScrzoneChanged_GUID)
    
    local KingsportScrzoneCaptainpos = ScrZoneExpansions.call('getKingsportScrzoneCaptainpos')
    local KingsportScrzoneCaptainScale = ScrZoneExpansions.call('getKingsportScrzoneCaptainsca')
    local KingsportScrzoneCaptainRotation = ScrZoneExpansions.call('getSpecialRotation')

    local KingsportScrzoneCaptain_GUID = SpawnScriptingZone(KingsportScrzoneCaptainpos, KingsportScrzoneCaptainScale,KingsportScrzoneCaptainRotation, false, false )
    
--[[     local KingsportScrzoneCaptainzone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = KingsportScrzoneCaptainpos,
        scale             = {KingsportScrzoneCaptainScale[1],KingsportScrzoneCaptainScale[2],KingsportScrzoneCaptainScale[3]}, -- or whatever you want
        rotation          = {KingsportScrzoneCaptainRotation[1],KingsportScrzoneCaptainRotation[2],KingsportScrzoneCaptainRotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local KingsportScrzoneCaptain_GUID = KingsportScrzoneCaptainzone.getGUID() --]]
    ScrZoneExpansions.call('setKingsportScrzoneCaptainid', KingsportScrzoneCaptain_GUID)    
    
end

function PlaceDunwichScrZones()
    
    InnsmouthSolo = GlobalVariables.call('getInnsmouthSolo')
    KingsportSolo = GlobalVariables.call('getKingsportSolo')
    DunwichSolo = GlobalVariables.call('getDunwichSolo')
    KingsportDunwich = GlobalVariables.call('getKingsportDunwich')
    InnsmouthKingsport = GlobalVariables.call('getInnsmouthKingsport')
    InnsmouthDunwich = GlobalVariables.call('getInnsmouthDunwich')
    AllThreeBoards = GlobalVariables.call('getAllThreeBoards')
    
    ScrZoneExpansions = getObjectFromGUID('70a568')
    
    local pos = {}
    local ExpansionScriptingZoneScale = {}
    local Rotation = {}
    
    if DunwichSolo == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesDunwichSolo',{'Dunwich_ScrZone_Whateley_Farm'})
    end
    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Dunwich_ScrZone_Whateley_Farm'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getDunwichScrZoneWhateleyFarmScale')
    Rotation = ScrZoneExpansions.call('getDunwichScrZoneWhateleyFarmRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setDunwichScrZoneWhateleyFarmid', Object_Spawned_GUID)
    
    if DunwichSolo == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesDunwichSolo',{'Dunwich_ScrZone_Wizards_Hill'})
    end
    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Dunwich_ScrZone_Wizards_Hill'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getDunwichScrZoneWizardsHillScale')
    Rotation = ScrZoneExpansions.call('getDunwichScrZoneWizardsHillRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setDunwichScrZoneWizardsHillid', Object_Spawned_GUID)
    
    if DunwichSolo == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesDunwichSolo',{'Dunwich_ScrZone_Cold_Spring'})
    end
    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Dunwich_ScrZone_Cold_Spring'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getDunwichScrZoneColdSpringScale')
    Rotation = ScrZoneExpansions.call('getDunwichScrZoneColdSpringRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setDunwichScrZoneColdSpringid', Object_Spawned_GUID)
    
    if DunwichSolo == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesDunwichSolo',{'Dunwich_ScrZone_Backwoods'})
    end
    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Dunwich_ScrZone_Backwoods'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getDunwichScrZoneBackwoodsScale')
    Rotation = ScrZoneExpansions.call('getDunwichScrZoneBackwoodsRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setDunwichScrZoneBackwoodsid', Object_Spawned_GUID)
    
    if DunwichSolo == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesDunwichSolo',{'Dunwich_ScrZone_Sentinel_Hill'})
    end
    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Dunwich_ScrZone_Sentinel_Hill'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getDunwichScrZoneSentinelHillScale')
    Rotation = ScrZoneExpansions.call('getDunwichScrZoneSentinelHillRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setDunwichScrZoneSentinelHillid', Object_Spawned_GUID)
    
    if DunwichSolo == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesDunwichSolo',{'Dunwich_ScrZone_Village_Commons'})
    end
    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Dunwich_ScrZone_Village_Commons'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getDunwichScrZoneVillageCommonsScale')
    Rotation = ScrZoneExpansions.call('getDunwichScrZoneVillageCommonsRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setDunwichScrZoneVillageCommonsid', Object_Spawned_GUID)
    
    if DunwichSolo == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesDunwichSolo',{'Dunwich_ScrZone_Darkes_Carnival'})
    end
    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Dunwich_ScrZone_Darkes_Carnival'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getDunwichScrZoneDarkesCarnivalScale')
    Rotation = ScrZoneExpansions.call('getDunwichScrZoneDarkesCarnivalRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setDunwichScrZoneDarkesCarnivalid', Object_Spawned_GUID)
    
    if DunwichSolo == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesDunwichSolo',{'Dunwich_ScrZone_Bishop_Brooke'})
    end
    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Dunwich_ScrZone_Bishop_Brooke'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getDunwichScrZoneBishopBrookeScale')
    Rotation = ScrZoneExpansions.call('getDunwichScrZoneBishopBrookeRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setDunwichScrZoneBishopBrookeid', Object_Spawned_GUID)
    
    if DunwichSolo == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesDunwichSolo',{'Dunwich_ScrZone_Dunwich_Village'})
    end
    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Dunwich_ScrZone_Dunwich_Village'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getDunwichScrZoneDunwichVillageScale')
    Rotation = ScrZoneExpansions.call('getDunwichScrZoneDunwichVillageRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setDunwichScrZoneDunwichVillageid', Object_Spawned_GUID)
    
    if DunwichSolo == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesDunwichSolo',{'Dunwich_ScrZone_Blasted_Heath'})
    end
    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Dunwich_ScrZone_Blasted_Heath'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getDunwichScrZoneBlastedHeathScale')
    Rotation = ScrZoneExpansions.call('getDunwichScrZoneBlastedHeathRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setDunwichScrZoneBlastedHeathid', Object_Spawned_GUID)
    
    if DunwichSolo == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesDunwichSolo',{'Dunwich_ScrZone_Gardners_Place'})
    end
    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Dunwich_ScrZone_Gardners_Place'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getDunwichScrZoneGardnersPlaceScale')
    Rotation = ScrZoneExpansions.call('getDunwichScrZoneGardnersPlaceRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setDunwichScrZoneGardnersPlaceid', Object_Spawned_GUID)
    
    if DunwichSolo == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesDunwichSolo',{'Dunwich_ScrZone_Devils_Hopyard'})
    end
    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Dunwich_ScrZone_Devils_Hopyard'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getDunwichScrZoneDevilsHopyardScale')
    Rotation = ScrZoneExpansions.call('getDunwichScrZoneDevilsHopyardRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setDunwichScrZoneDevilsHopyardid', Object_Spawned_GUID)
    
    if DunwichSolo == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesDunwichSolo',{'Dunwich_ScrZone_Harney_Jones_Shack'})
    end
    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Dunwich_ScrZone_Harney_Jones_Shack'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getDunwichScrZoneHarneyJonesShackScale')
    Rotation = ScrZoneExpansions.call('getDunwichScrZoneHarneyJonesShackRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setDunwichScrZoneHarneyJonesShackid', Object_Spawned_GUID)
    
    if DunwichSolo == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesDunwichSolo',{'Dunwich_ScrZone_Another_Time'})
    end
    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Dunwich_ScrZone_Another_Time'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getDunwichScrZoneAnotherTimeScale')
    Rotation = ScrZoneExpansions.call('getDunwichScrZoneAnotherTimeRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setDunwichScrZoneAnotherTimeid', Object_Spawned_GUID)
    
    if DunwichSolo == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesDunwichSolo',{'Dunwich_ScrZone_Lost_Carcosa'})
    end
    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Dunwich_ScrZone_Lost_Carcosa'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getDunwichScrZoneLostCarcosaScale')
    Rotation = ScrZoneExpansions.call('getDunwichScrZoneLostCarcosaRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setDunwichScrZoneLostCarcosaid', Object_Spawned_GUID)
    
    if DunwichSolo == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZonesDunwichSolo',{'Dunwich_ScrZone_D_Horror'})
    end
    if InnsmouthDunwich == true or KingsportDunwich == true or AllThreeBoards == true then
        pos = ScrZoneExpansions.call('getBoardPositionsScrZones3Boards',{'Dunwich_ScrZone_D_Horror'})
    end
    
    ExpansionScriptingZoneScale = ScrZoneExpansions.call('getDunwichScrZoneDHorrorScale')
    Rotation = ScrZoneExpansions.call('getDunwichScrZoneDHorrorRotation')
    
    local zone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = pos,
        scale             = {ExpansionScriptingZoneScale[1],ExpansionScriptingZoneScale[2],ExpansionScriptingZoneScale[3]}, -- or whatever you want
        rotation          = {Rotation[1],Rotation[2],Rotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local Object_Spawned_GUID = zone.getGUID()
    ScrZoneExpansions.call('setDunwichScrZoneDHorrorid', Object_Spawned_GUID)
    
    local DunwichScrzoneSheldonpos = ScrZoneExpansions.call('getDunwichScrzoneSheldonpos')
    local DunwichScrzoneSheldonScale = ScrZoneExpansions.call('getDunwichScrzoneSheldonsca')
    local DunwichScrzoneSheldonRotation = ScrZoneExpansions.call('getSpecialRotation')

    local DunwichScrzoneSheldonzone_GUID = SpawnScriptingZone(DunwichScrzoneSheldonpos, DunwichScrzoneSheldonScale,DunwichScrzoneSheldonRotation, false, false )    
    
--[[     local DunwichScrzoneSheldonzone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = DunwichScrzoneSheldonpos,
        scale             = {DunwichScrzoneSheldonScale[1],DunwichScrzoneSheldonScale[2],DunwichScrzoneSheldonScale[3]}, -- or whatever you want
        rotation          = {DunwichScrzoneSheldonRotation[1],DunwichScrzoneSheldonRotation[2],DunwichScrzoneSheldonRotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local DunwichScrzoneSheldonzone_GUID = DunwichScrzoneSheldonzone.getGUID() --]]
    ScrZoneExpansions.call('setDunwichScrzoneSheldonid', DunwichScrzoneSheldonzone_GUID)
    
    local DunwichScrzoneConditionpos = ScrZoneExpansions.call('getDunwichScrzoneConditionpos')
    local DunwichScrzoneConditionScale = ScrZoneExpansions.call('getDunwichScrzoneConditionsca')
    local DunwichScrzoneConditionRotation = ScrZoneExpansions.call('getSpecialRotation')

    local DunwichScrzoneCondition_GUID = SpawnScriptingZone(DunwichScrzoneConditionpos, DunwichScrzoneConditionScale,DunwichScrzoneConditionRotation, false, false )

--[[     local DunwichScrzoneConditionzone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = DunwichScrzoneConditionpos,
        scale             = {DunwichScrzoneConditionScale[1],DunwichScrzoneConditionScale[2],DunwichScrzoneConditionScale[3]}, -- or whatever you want
        rotation          = {DunwichScrzoneConditionRotation[1],DunwichScrzoneConditionRotation[2],DunwichScrzoneConditionRotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local DunwichScrzoneCondition_GUID = DunwichScrzoneConditionzone.getGUID() --]]
    ScrZoneExpansions.call('setDunwichScrzoneConditionid', DunwichScrzoneCondition_GUID)
    
    local DunwichScrzoneRailpos = ScrZoneExpansions.call('getDunwichScrzoneRailpos')
    local DunwichScrzoneRailScale = ScrZoneExpansions.call('getDunwichScrzoneRailsca')
    local DunwichScrzoneRailRotation = ScrZoneExpansions.call('getSpecialRotation')
    
    local DunwichScrzoneRail_GUID = SpawnScriptingZone(DunwichScrzoneRailpos, DunwichScrzoneRailScale,DunwichScrzoneRailRotation, false, false )

--[[     local DunwichScrzoneRailzone = spawnObject({
        type              = 'ScriptingTrigger', -- ScriptingTrigger is a scripting zone
        position          = DunwichScrzoneRailpos,
        scale             = {DunwichScrzoneRailScale[1],DunwichScrzoneRailScale[2],DunwichScrzoneRailScale[3]}, -- or whatever you want
        rotation          = {DunwichScrzoneRailRotation[1],DunwichScrzoneRailRotation[2],DunwichScrzoneRailRotation[3]},
        sound             = false,
        snap_to_grid      = false
    })
    local DunwichScrzoneRail_GUID = DunwichScrzoneRailzone.getGUID() --]]
    ScrZoneExpansions.call('setDunwichScrzoneRailid', DunwichScrzoneRail_GUID)
    
end


require("SpawnItems")