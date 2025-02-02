local GlobalVariablesId = '7fc89f'
GlobalVariables = getObjectFromGUID(GlobalVariablesId)

local SetupVariablesNew = getObjectFromGUID('2a8dee')

function ConanDestroys()
    
    local LurkerSet = GlobalVariables.call('isLurkerSet')
    local PharaohSet = GlobalVariables.call('isPharaohSet')
    local GoatSet = GlobalVariables.call('isGoatSet')
    local YellowSet = GlobalVariables.call('isYellowSet')
    local InnsmouthSet = GlobalVariables.call('isInnsmouthSet')
    local KingsportSet = GlobalVariables.call('isKingsportSet')
    local DunwichSet = GlobalVariables.call('isDunwichSet')
    local MiskatonicSet = GlobalVariables.call('isMiskatonicSet')
    local LurkerGateSet = GlobalVariables.call('isLurkerGateSet')
    local DunwichMonsterOnly = GlobalVariables.call('isDunwichMonsterOnly')
    local InnsmouthMonsterOnly = GlobalVariables.call('isInnsmouthMonsterOnly')
    local KingsportMonsterOnly = GlobalVariables.call('isKingsportMonsterOnly')
    local GoatMonsterOnly = GlobalVariables.call('isGoatMonsterOnly')
    
    if InnsmouthSet == true  or InnsmouthMonsterOnly == true then
        local MonsterBagId = SetupVariablesNew.call('getInnsmouthMonsterBagId')
        local MonsterBag = getObjectFromGUID(MonsterBagId)
        MonsterBag.destruct()
        local MaskMonsterBagId = SetupVariablesNew.call('getInnsmouthMaskMonsterBagId')
        local MaskMonsterBag = getObjectFromGUID(MaskMonsterBagId)
        MaskMonsterBag.destruct()
    end
    
    if KingsportSet == true then
        local MonsterBagId = SetupVariablesNew.call('getKingsportMonsterBagid')
        local MonsterBag = getObjectFromGUID(MonsterBagId)
        MonsterBag.destruct()
        
        local MaskMonsterBagId = SetupVariablesNew.call('getKingsportMaskMonsterBagId')
        local MaskMonsterBag = getObjectFromGUID(MaskMonsterBagId)
        MaskMonsterBag.destruct()
        
        local KingsportRiftMarkerBagId = SetupVariablesNew.call('getKingsportRiftMarkerBagid')
        local KingsportRiftMarkerBag = getObjectFromGUID(KingsportRiftMarkerBagId)
        KingsportRiftMarkerBag.destruct()
        
        if LurkerGateSet == false and KingsportMonsterOnly == false then
            local GateBagId = SetupVariablesNew.call('getKingsportGateMarkerBagId')
            local GateBag = getObjectFromGUID(GateBagId)
            GateBag.destruct()
        end
        
        if LurkerGateSet == true and KingsportSet == true then
            local GateBag2Id = SetupVariablesNew.call('getLurkerKingGateMarkerBagId')
            local GateBag2 = getObjectFromGUID(GateBag2Id)
            GateBag2.destruct()
        end
    end

    if KingsportMonsterOnly == true then
        local MonsterBagId = SetupVariablesNew.call('getKingsportMonsterBagid')
        local MonsterBag = getObjectFromGUID(MonsterBagId)
        MonsterBag.destruct()
        
        local MaskMonsterBagId = SetupVariablesNew.call('getKingsportMaskMonsterBagId')
        local MaskMonsterBag = getObjectFromGUID(MaskMonsterBagId)
        MaskMonsterBag.destruct()
    end
    
    
    if DunwichSet == true then
        local MonsterBagId = SetupVariablesNew.call('getDunwichMonsterbagid')
        local MonsterBag = getObjectFromGUID(MonsterBagId)
        MonsterBag.destruct()
        
        local MaskMonsterBagId = SetupVariablesNew.call('getDunwichMaskMonsterBagId')
        local MaskMonsterBag = getObjectFromGUID(MaskMonsterBagId)
        MaskMonsterBag.destruct()
        
        if LurkerGateSet == false and DunwichMonsterOnly == false then
            local GateBagId = SetupVariablesNew.call('getDunwichGateMarkerBagid')
            local GateBag = getObjectFromGUID(GateBagId)
            GateBag.destruct()
        end
        if LurkerGateSet == true and DunwichSet == true then
            local GateBagId = SetupVariablesNew.call('getLurkerDunwGateMarkerBagId')
            local GateBag = getObjectFromGUID(GateBagId)
            GateBag.destruct()
        end
    end

    if DunwichMonsterOnly == true then
        local MonsterBagId = SetupVariablesNew.call('getDunwichMonsterbagid')
        local MonsterBag = getObjectFromGUID(MonsterBagId)
        MonsterBag.destruct()
        
        local MaskMonsterBagId = SetupVariablesNew.call('getDunwichMaskMonsterBagId')
        local MaskMonsterBag = getObjectFromGUID(MaskMonsterBagId)
        MaskMonsterBag.destruct()
    end

    
    if GoatSet == true or GoatMonsterOnly then
        local MonsterBagId = SetupVariablesNew.call('getGoatMonsterBagId')
        local MonsterBag = getObjectFromGUID(MonsterBagId)
        MonsterBag.destruct()
    end
    
end