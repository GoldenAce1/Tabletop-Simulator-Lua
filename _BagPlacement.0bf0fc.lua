--setup Places contents from the bags inside the playable bags

function placeLurkerBags()
    
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
    
    local GlobalVariablesId = '7fc89f'
    GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    
    local Board_Gate_Bag_id = GlobalVariables.call('getBoardGateBagId')
    local Board_Gate_Bag = getObjectFromGUID(Board_Gate_Bag_id)
    
    local Board_Gate_Bag_Position = GlobalVariables.call('getBoardGateBagPosition')
    local Board_Unused_Gates_Position = GlobalVariables.call('getBoardUnusedGatesPosition')
    
    KingsportSet = GlobalVariables.call('isKingsportSet')
    DunwichSet = GlobalVariables.call('isDunwichSet')
    
    -- The base gate bags will be replaced with the lurker ones
    Board_Gate_Bag.setPosition(Board_Unused_Gates_Position)
    
    local LurkerGateMarkerBagId = SetupVariablesNew.call('getLurkerGateMarkerBagId')
    
    local LurkerGateMarkerBag = getObjectFromGUID(LurkerGateMarkerBagId)
    
    LurkerGateMarkerBag.setPosition(Board_Gate_Bag_Position)
    
    GlobalVariables.call('setBoardGateBagid', LurkerGateMarkerBag.getGUID())
    
    if KingsportSet == true then
        local Lurker_King_Gate_Marker_Bag_id = SetupVariablesNew.call("getLurkerKingGateMarkerBagId")
        local Lurker_King_Gate_Marker_Bag = getObjectFromGUID(Lurker_King_Gate_Marker_Bag_id)
        
        -- Move from One Bag to the other
        for _ = 1, #Lurker_King_Gate_Marker_Bag.getObjects() do
            LurkerGateMarkerBag.putObject(Lurker_King_Gate_Marker_Bag.takeObject({}))
        end
    end
    
    if DunwichSet == true then
        local Lurker_Dunw_Gate_Marker_Bag_id = SetupVariablesNew.call("getLurkerDunwGateMarkerBagId")
        local Lurker_Dunw_Gate_Marker_Bag = getObjectFromGUID(Lurker_Dunw_Gate_Marker_Bag_id)
        
        for _ = 1, #Lurker_Dunw_Gate_Marker_Bag.getObjects() do
            LurkerGateMarkerBag.putObject(Lurker_Dunw_Gate_Marker_Bag.takeObject({}))
        end
    end
    
end

function placeKingsportGateBags()
    
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
    
    local GlobalVariablesId = '7fc89f'
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)    
    
    local KingsportGateMarkerBagId = SetupVariablesNew.call('getKingsportGateMarkerBagId')
    local KingsportGateMarkerBag = getObjectFromGUID(KingsportGateMarkerBagId)
    
    local Board_Gate_Bag_id = GlobalVariables.call('getBoardGateBagId')
    local Board_Gate_Bag = getObjectFromGUID(Board_Gate_Bag_id)
    
    -- Move from One Bag to the other
    for _ = 1, #KingsportGateMarkerBag.getObjects() do
        Board_Gate_Bag.putObject(KingsportGateMarkerBag.takeObject({}))
    end
end

function placeDunwichGateBags()
    
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
    local GlobalVariablesId = '7fc89f'
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)        
    
    local DunwichGateMarkerBagId = SetupVariablesNew.call('getDunwichGateMarkerBagid')
    local DunwichGateMarkerBag = getObjectFromGUID(DunwichGateMarkerBagId)
    
    local Board_Gate_Bag_id = GlobalVariables.call('getBoardGateBagId')
    local Board_Gate_Bag = getObjectFromGUID(Board_Gate_Bag_id)
    
    -- Move from One Bag to the other
    for _ = 1, #DunwichGateMarkerBag.getObjects() do
        Board_Gate_Bag.putObject(DunwichGateMarkerBag.takeObject({}))
    end
end

function placeInnsmouthMonsterBags()
    
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
    
    local GlobalVariablesId = '7fc89f'
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)      
    
    local Board_Monster_Bag_Id = GlobalVariables.call('getBoardMonsterBagId')
    local Board_Monster_Bag = getObjectFromGUID(Board_Monster_Bag_Id)
    
    
    local InnsmouthMonsterBagId = SetupVariablesNew.call('getInnsmouthMonsterBagId')
    local InnsmouthMonsterBag = getObjectFromGUID(InnsmouthMonsterBagId)
    
    
    local InnsmouthMaskMonsterBagId = SetupVariablesNew.call('getInnsmouthMaskMonsterBagId')
    
    -- Move from One Bag to the other
    for _ = 1, #InnsmouthMonsterBag.getObjects() do
        local obj = InnsmouthMonsterBag.takeObject({})
        local objGUID = obj.getGUID()
        
        if objGUID == InnsmouthMaskMonsterBagId then
            takeInnsmouthMaskMonsters(obj)
        else
            Board_Monster_Bag.putObject(obj)
        end
    end
end

function takeInnsmouthMaskMonsters(obj)
    
    local GlobalVariablesId = '7fc89f'
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)  
    
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
    local Board_Mask_Monster_Bag_Id =  GlobalVariables.call('getBoardMaskMonsterBagId')
    local Board_Mask_Monster_Bag =  getObjectFromGUID(Board_Mask_Monster_Bag_Id)
    
    for _ = 1, #obj.getObjects() do
        Board_Mask_Monster_Bag.putObject(obj.takeObject({}))
    end
end

function placeDunwichMonsterBags()
    
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
    
    local GlobalVariablesId = '7fc89f'
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)      
    
    local DunwichMonsterBagId = SetupVariablesNew.call('getDunwichMonsterbagid')
    local DunwichMonsterBag = getObjectFromGUID(DunwichMonsterBagId)
    
    local Board_Monster_Bag_Id = GlobalVariables.call('getBoardMonsterBagId')
    local Board_Monster_Bag = getObjectFromGUID(Board_Monster_Bag_Id)
    
    local Board_Mask_Monster_Bag_Id =  GlobalVariables.call('getBoardMaskMonsterBagId')
    local Board_Mask_Monster_Bag =  getObjectFromGUID(Board_Mask_Monster_Bag_Id)
    
    local DunwichMaskMonsterBagId = SetupVariablesNew.call('getDunwichMaskMonsterBagId')
    
    -- Move from One Bag to the other
    for _ = 1, #DunwichMonsterBag.getObjects() do
        local obj = DunwichMonsterBag.takeObject({})
        local objGUID = obj.getGUID()
        
        if objGUID == DunwichMaskMonsterBagId then
            takeDunwichMaskMonsters(obj)
        else
            Board_Monster_Bag.putObject(obj)
        end
    end
end

function takeDunwichMaskMonsters(obj)
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
    local GlobalVariablesId = '7fc89f'
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)     
    
    local Board_Mask_Monster_Bag_Id =  GlobalVariables.call('getBoardMaskMonsterBagId')
    local Board_Mask_Monster_Bag =  getObjectFromGUID(Board_Mask_Monster_Bag_Id)
    
    for _ = 1, #obj.getObjects() do
        Board_Mask_Monster_Bag.putObject(obj.takeObject({}))
    end
end

function placeKingsportMonsterBags()
    
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
    local GlobalVariablesId = '7fc89f'
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)       
    
    local KingsportMonsterBagId = SetupVariablesNew.call('getKingsportMonsterBagid')
    local KingsportMonsterBag = getObjectFromGUID(KingsportMonsterBagId)
    
    local Board_Monster_Bag_Id = GlobalVariables.call('getBoardMonsterBagId')
    local Board_Monster_Bag = getObjectFromGUID(Board_Monster_Bag_Id)
    
    local Board_Mask_Monster_Bag_Id =  GlobalVariables.call('getBoardMaskMonsterBagId')
    local Board_Mask_Monster_Bag =  getObjectFromGUID(Board_Mask_Monster_Bag_Id)
    
    local KingsportMaskMonsterBagId = SetupVariablesNew.call('getKingsportMaskMonsterBagId')
    
    -- Move from One Bag to the other
    for _ = 1, #KingsportMonsterBag.getObjects() do
        local obj = KingsportMonsterBag.takeObject({})
        local objGUID = obj.getGUID()
        
        if objGUID == KingsportMaskMonsterBagId then
            takeKingsportMaskMonsters(obj)
        else
            Board_Monster_Bag.putObject(obj)
        end
    end
end

function takeKingsportMaskMonsters(obj)
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
    local GlobalVariablesId = '7fc89f'
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)    
    
    local Board_Mask_Monster_Bag_Id =  GlobalVariables.call('getBoardMaskMonsterBagId')
    local Board_Mask_Monster_Bag =  getObjectFromGUID(Board_Mask_Monster_Bag_Id)
    
    for _ = 1, #obj.getObjects() do
        Board_Mask_Monster_Bag.putObject(obj.takeObject({}))
    end
end

function placeGoatMonsterBags()
    
    local SetupVariablesNew = getObjectFromGUID('2a8dee')
    
    local GlobalVariablesId = '7fc89f'
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    
    
    local Board_Monster_Bag_Id = GlobalVariables.call('getBoardMonsterBagId')
    local Board_Monster_Bag = getObjectFromGUID(Board_Monster_Bag_Id)
    
    local GoatMonsterBagId = SetupVariablesNew.call('getGoatMonsterBagId')
    local GoatMonsterBag = getObjectFromGUID(GoatMonsterBagId)
    
    for _ = 1, #GoatMonsterBag.getObjects() do
        Board_Monster_Bag.putObject(GoatMonsterBag.takeObject({}))
    end
end

function placeKingsportRifts()
    
    local GlobalVariablesId = '7fc89f'
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    
    InnsmouthSolo = GlobalVariables.call('getInnsmouthSolo')
    KingsportSolo = GlobalVariables.call('getKingsportSolo')
    DunwichSolo = GlobalVariables.call('getDunwichSolo')
    KingsportDunwich = GlobalVariables.call('getKingsportDunwich')
    InnsmouthKingsport = GlobalVariables.call('getInnsmouthKingsport')
    InnsmouthDunwich = GlobalVariables.call('getInnsmouthDunwich')
    AllThreeBoards = GlobalVariables.call('getAllThreeBoards')
    
    local SetupVariablesNew = getObjectFromGUID('2a8dee')    
    
    if KingsportSolo == true or KingsportDunwich == true then
        local KingsportRiftMarkerBagId = SetupVariablesNew.call('getKingsportRiftMarkerBagid')
        local KingsportRiftMarkerBag = getObjectFromGUID(KingsportRiftMarkerBagId)
        
        local rift1 = SetupVariablesNew.call('getKingsportRift1')
        local rift2 = SetupVariablesNew.call('getKingsportRift2')
        local rift3 = SetupVariablesNew.call('getKingsportRift3')
        local RiftPosition1 = SetupVariablesNew.call('getBoardPositionsKingsportSoloById', {rift1})
        local RiftPosition2 = SetupVariablesNew.call('getBoardPositionsKingsportSoloById', {rift2})
        local RiftPosition3 = SetupVariablesNew.call('getBoardPositionsKingsportSoloById', {rift3})
        
        locationToSet = {}
        locationToSet.position = {RiftPosition1[1],RiftPosition1[2]+0.2,RiftPosition1[3]}
        locationToSet.rotation = {0, 90, 180}
        KingsportRiftMarkerBag.takeObject(locationToSet)
        
        locationToSet = {}
        locationToSet.position = {RiftPosition2[1],RiftPosition2[2]+0.2,RiftPosition2[3]}
        locationToSet.rotation = {0, 90, 180}
        KingsportRiftMarkerBag.takeObject(locationToSet)
        
        locationToSet = {}
        locationToSet.position = {RiftPosition3[1],RiftPosition3[2]+0.2,RiftPosition3[3]}
        locationToSet.rotation = {0, 90, 180}
        KingsportRiftMarkerBag.takeObject(locationToSet)
    end
    if InnsmouthKingsport == true then
        local KingsportRiftMarkerBagId = SetupVariablesNew.call('getKingsportRiftMarkerBagid')
        local KingsportRiftMarkerBag = getObjectFromGUID(KingsportRiftMarkerBagId)
        
        local rift1 = SetupVariablesNew.call('getKingsportRift1')
        local rift2 = SetupVariablesNew.call('getKingsportRift2')
        local rift3 = SetupVariablesNew.call('getKingsportRift3')
        local RiftPosition1 = SetupVariablesNew.call('getBoardPositionsInnsmouthKingsportById', {rift1})
        local RiftPosition2 = SetupVariablesNew.call('getBoardPositionsInnsmouthKingsportById', {rift2})
        local RiftPosition3 = SetupVariablesNew.call('getBoardPositionsInnsmouthKingsportById', {rift3})
        
        locationToSet = {}
        locationToSet.position = {RiftPosition1[1],RiftPosition1[2]+0.2,RiftPosition1[3]}
        locationToSet.rotation = {0, 90, 180}
        KingsportRiftMarkerBag.takeObject(locationToSet)
        
        locationToSet = {}
        locationToSet.position = {RiftPosition2[1],RiftPosition2[2]+0.2,RiftPosition2[3]}
        locationToSet.rotation = {0, 90, 180}
        KingsportRiftMarkerBag.takeObject(locationToSet)
        
        locationToSet = {}
        locationToSet.position = {RiftPosition3[1],RiftPosition3[2]+0.2,RiftPosition3[3]}
        locationToSet.rotation = {0, 90, 180}
        KingsportRiftMarkerBag.takeObject(locationToSet)
    end
    if AllThreeBoards == true then
        local KingsportRiftMarkerBagId = SetupVariablesNew.call('getKingsportRiftMarkerBagid')
        local KingsportRiftMarkerBag = getObjectFromGUID(KingsportRiftMarkerBagId)
        
        local rift1 = SetupVariablesNew.call('getKingsportRift1')
        local rift2 = SetupVariablesNew.call('getKingsportRift2')
        local rift3 = SetupVariablesNew.call('getKingsportRift3')
        local RiftPosition1 = SetupVariablesNew.call('getBoardPositions3BoardsById', {rift1})
        local RiftPosition2 = SetupVariablesNew.call('getBoardPositions3BoardsById', {rift2})
        local RiftPosition3 = SetupVariablesNew.call('getBoardPositions3BoardsById', {rift3})
        
        locationToSet = {}
        locationToSet.position = {RiftPosition1[1],RiftPosition1[2]+0.2,RiftPosition1[3]}
        locationToSet.rotation = {0, 90, 180}
        KingsportRiftMarkerBag.takeObject(locationToSet)
        
        locationToSet = {}
        locationToSet.position = {RiftPosition2[1],RiftPosition2[2]+0.2,RiftPosition2[3]}
        locationToSet.rotation = {0, 90, 180}
        KingsportRiftMarkerBag.takeObject(locationToSet)
        
        locationToSet = {}
        locationToSet.position = {RiftPosition3[1],RiftPosition3[2]+0.2,RiftPosition3[3]}
        locationToSet.rotation = {0, 90, 180}
        KingsportRiftMarkerBag.takeObject(locationToSet)
    end
    
end