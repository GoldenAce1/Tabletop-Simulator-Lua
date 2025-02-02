--Removes Content from Bags

local SetupBoard = getObjectFromGUID('26ca6f')
local SetupVariablesNew = getObjectFromGUID('2a8dee')

--Placement
local LurkerPlacementTable = getObjectFromGUID('088dbc')
local PharaohPlacementTable = getObjectFromGUID('2ae858')
local GoatPlacementTable = getObjectFromGUID('f9567f')
local YellowPlacementTable = getObjectFromGUID('6dd14f')
local InnsmouthPlacementTable = getObjectFromGUID('55c8a4')
local KingsportPlacementTable = getObjectFromGUID('5ac3e6')
local DunwichPlacementTable = getObjectFromGUID('27d633')
local MiskatonicPlacement = getObjectFromGUID('03f65f')

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

-- Variables
local YellowReady = false
local PharaohReady = false
local Miskatonic1Ready = false
local Miskatonic2Ready = false
local LurkerReady = false
local KingsportReady = false
local InnsmouthReady = false
local GoatReady = false
local DunwichReady = false
local Allready = false

function performSetup()
    -- Variables
    YellowReady = false
    PharaohReady = false
    Miskatonic1Ready = false
    Miskatonic2Ready = false
    LurkerReady = false
    KingsportReady = false
    InnsmouthReady = false
    GoatReady = false
    DunwichReady = false
    Allready = false
    
    
    local GlobalVariablesId = '7fc89f'
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)    
    
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
    local YellowOriginalActs = GlobalVariables.call('isYellowOriginalActs')
    local LurkerSmallCardsOnly = GlobalVariables.call('isLurkerSmallCardsOnly')
    local PharaohSmallCardsOnly = GlobalVariables.call('isPharaohSmallCardsOnly')
    local GoatSmallCardsOnly = GlobalVariables.call('isGoatSmallCardsOnly')
    local YellowSmallCardsOnly = GlobalVariables.call('isYellowSmallCardsOnly')
    local InnsmouthSmallCardsOnly = GlobalVariables.call('isInnsmouthSmallCardsOnly')
    local KingsportSmallCardsOnly = GlobalVariables.call('isKingsportSmallCardsOnly')
    local DunwichSmallCardsOnly = GlobalVariables.call('isDunwichSmallCardsOnly')
    
    count = 0
    
    if MiskatonicSet == true then -- Since there are so many decks in Miskatonic, and the wait function does Not Stop Lua, then it's made at the same time it puts the other decks
        toAddDeck1()    
    end
    
    EvaluateBoardPlacement()    
    
    if DunwichSet == true then -- Add all the base setups you want. Since we might be putting cards on top of these, these go first
        function coinsideDunwich()
            
            DunwichPlacementTable.call('SetNewDunwichComponentsOnTable',LurkerGateSet)
            -- DunwichPlacementTable.call('SetNewDunwichMonstersOnTable',LurkerGateSet)
            
            local DunwichScriptZoneId = SetupVariablesNew.call('getDunwichScriptingZone')
            local DunwichScriptZone = getObjectFromGUID(DunwichScriptZoneId)
            local DunwichScriptZoneObjects = DunwichScriptZone.getObjects()
            yieldWhileObjectsAreMoving(DunwichScriptZoneObjects)
            waitFrames(30)
            DunwichReady = true
            setDunwichReady(DunwichReady)
            
            return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
        end
        
        startLuaCoroutine(self, "coinsideDunwich") --must use this way to make coroutine in order to wait frames
    end
    
    if DunwichSet == false and DunwichMonsterOnly == true then
        function coinsideDunwichMonsters()
            DunwichPlacementTable.call('SetNewDunwichMonstersOnTable',LurkerGateSet)
            
            DunwichReady = true
            setDunwichReady(DunwichReady)
            return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
        end
        
        startLuaCoroutine(self, "coinsideDunwichMonsters") --must use this way to make coroutine in order to wait frames
    end
    
    if DunwichSet == false and DunwichSmallCardsOnly == true then
        function coinsideDunwichSmallCards()
            DunwichPlacementTable.call('SetNewDunwichSmallCardsOnTable')
            DunwichReady = true
            waitFrames(30)
            setDunwichReady(DunwichReady)
            return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
        end
        
        startLuaCoroutine(self, "coinsideDunwichSmallCards") --must use this way to make coroutine in order to wait frames
    end
    
    if KingsportSet == true then
        function coinsideKingsport()
            
            if DunwichSet == true  and DunwichReady == false then
                yieldWhileFalse(DunwichReady, "DunwichReady")
            end
            
            KingsportPlacementTable.call('SetNewKingsportComponentsOnTable',LurkerGateSet)
            
            local KingsportScriptZoneId = SetupVariablesNew.call('getKingsportScriptingZone')
            local KingsportScriptZone = getObjectFromGUID(KingsportScriptZoneId)
            local KingsportScriptZoneObjects = KingsportScriptZone.getObjects()
            yieldWhileObjectsAreMoving(KingsportScriptZoneObjects)
            
            waitFrames(80)
            KingsportReady = true
            setKingsportReady(KingsportReady)
            return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
        end
        startLuaCoroutine(self, "coinsideKingsport") --must use this way to make coroutine in order to wait frames
        
    end
    
    if KingsportSet == false and KingsportMonsterOnly == true then
        function coinsideKingsportMonsters()
            waitFrames(count)
            KingsportPlacementTable.call('SetNewKingsportMonstersOnTable')
            KingsportReady = true
            setKingsportReady(KingsportReady)
            return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
        end
        startLuaCoroutine(self, "coinsideKingsportMonsters") --must use this way to make coroutine in order to wait frames
    end
    
    if KingsportSet == false and KingsportSmallCardsOnly == true then
        function coinsideKingsportSmallCards()
            KingsportPlacementTable.call('SetNewKingsportSmallCardsOnTable')
            KingsportReady = true
            setKingsportReady(KingsportReady)
            return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
        end
        
        startLuaCoroutine(self, "coinsideKingsportSmallCards") --must use this way to make coroutine in order to wait frames
    end
    
    if InnsmouthSet == true then
        function coinsideInnsmouth()
            
            if KingsportSet == true  and KingsportReady == false then
                yieldWhileFalse(KingsportReady, "KingsportReady")
            end
            
            InnsmouthPlacementTable.call('SetNewInnsmouthComponentsOnTable')
            
            local InnsmouthScriptZoneId = SetupVariablesNew.call('getInnsmouthScriptingZone')
            local InnsmouthScriptZone = getObjectFromGUID(InnsmouthScriptZoneId)
            local InnsmouthScriptZoneObjects = InnsmouthScriptZone.getObjects()
            yieldWhileObjectsAreMoving(InnsmouthScriptZoneObjects)
            waitFrames(50)
            InnsmouthReady = true
            setInnsmouthReady(InnsmouthReady)
            return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
        end
        startLuaCoroutine(self, "coinsideInnsmouth") --must use this way to make coroutine in order to wait frames
    end
    
    if InnsmouthSet == false and InnsmouthMonsterOnly == true then
        function coinsideInnsmouthMonsters()
            InnsmouthPlacementTable.call('SetNewInnsmouthMonstersOnTable')
            InnsmouthReady = true
            setInnsmouthReady(InnsmouthReady)
            return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
        end
        startLuaCoroutine(self, "coinsideInnsmouthMonsters") --must use this way to make coroutine in order to wait frames
    end
    
    if InnsmouthSet == false and InnsmouthSmallCardsOnly == true then
        function coinsideInnsmouthSmallCards()
            InnsmouthPlacementTable.call('SetNewInnsmouthSmallCardsOnTable')
            InnsmouthReady = true
            setInnsmouthReady(InnsmouthReady)
            
            return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
        end
        
        startLuaCoroutine(self, "coinsideInnsmouthSmallCards") --must use this way to make coroutine in order to wait frames
    end
    
    if LurkerSet == true then
        function coinsideLurker()
            
            if InnsmouthSet == true  and InnsmouthReady == false then
                yieldWhileFalse(InnsmouthReady, "InnsmouthReady")
            end
            
            LurkerPlacementTable.call('SetNewLurkerComponentsOnTable')
            
            local LurkerScriptZoneId = SetupVariablesNew.call('getLurkerScriptingZone')
            local LurkerScriptZone = getObjectFromGUID(LurkerScriptZoneId)
            local LurkerScriptZoneObjects = LurkerScriptZone.getObjects()
            yieldWhileObjectsAreMoving(LurkerScriptZoneObjects)
            
            LurkerReady = true
            waitFrames(30)
            setLurkerReady(LurkerReady)
            return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
        end
        -- count = count + delay
        startLuaCoroutine(self, "coinsideLurker") --must use this way to make coroutine in order to wait frames
    end
    
    
    if LurkerGateSet == true then -- The Lurker Gates replace all gates for all expansions. These will only be set if requested.
        function coinsideLurkerGate()
            LurkerPlacementTable.call('SetLurkerGatesOnTable')
            LurkerReady = true            
            setLurkerReady(LurkerReady)
            return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
        end
        startLuaCoroutine(self, "coinsideLurkerGate") --must use this way to make coroutine in order to wait frames
    end
    
    if LurkerSet == false and LurkerSmallCardsOnly == true then
        function coinsideLurkerSmallCards()
            LurkerPlacementTable.call('SetNewLurkerSmallCardsOnTable')
            setLurkerReady(LurkerReady)
            LurkerReady = true
            return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
        end
        
        startLuaCoroutine(self, "coinsideLurkerSmallCards") --must use this way to make coroutine in order to wait frames
    end
    
    if PharaohSet == true then
        function coinsidePharaoh()
            
            if LurkerSet == true  and LurkerReady == false then
                yieldWhileFalse(LurkerReady, "LurkerReady")
            end
            
            PharaohPlacementTable.call('SetNewPharaohComponentsOnTable')
            
            local PharaohScriptZoneId = SetupVariablesNew.call('getPharaohScriptingZone')
            local PharaohScriptZone = getObjectFromGUID(PharaohScriptZoneId)
            local PharaohScriptZoneObjects = PharaohScriptZone.getObjects()
            yieldWhileObjectsAreMoving(PharaohScriptZoneObjects)
            
            waitFrames(30)
            PharaohReady = true
            setPharaohReady(PharaohReady)
            return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
        end
        startLuaCoroutine(self, "coinsidePharaoh") --must use this way to make coroutine in order to wait frames
    end
    
    if PharaohSet == false and PharaohSmallCardsOnly == true then
        function coinsidePharaohSmallCards()
            PharaohPlacementTable.call('SetNewPharaohSmallCardsOnTable')
            
            PharaohReady = true
            setPharaohReady(PharaohReady)
            return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
        end
        
        startLuaCoroutine(self, "coinsidePharaohSmallCards") --must use this way to make coroutine in order to wait frames
    end
    
    if GoatSet == true then
        function coinsideGoat()
            
            if PharaohSet == true  and PharaohReady == false then
                yieldWhileFalse(PharaohReady, "PharaohReady")
            end
            
            GoatPlacementTable.call('SetNewGoatComponentsOnTable')
            
            local GoatScriptZoneId = SetupVariablesNew.call('getGoatScriptingZone')
            local GoatScriptZone = getObjectFromGUID(GoatScriptZoneId)
            local GoatScriptZoneObjects = GoatScriptZone.getObjects()
            yieldWhileObjectsAreMoving(GoatScriptZoneObjects)
            
            waitFrames(30)
            GoatReady = true
            setGoatReady(GoatReady)
            return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
        end
        startLuaCoroutine(self, "coinsideGoat") --must use this way to make coroutine in order to wait frames
    end
    
    if GoatSet == false and GoatMonsterOnly == true then
        function coinsideGoatMonster()
            GoatPlacementTable.call('SetNewGoatMonstersOnTable')
            GoatReady = true
            setGoatReady(GoatReady)
            return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
        end
        startLuaCoroutine(self, "coinsideGoatMonster") --must use this way to make coroutine in order to wait frames
    end
    
    if GoatSet == false and GoatSmallCardsOnly == true then
        function coinsideGoatSmallCards()
            GoatPlacementTable.call('SetNewGoatSmallCardsOnTable')
            
            GoatReady = true
            setGoatReady(GoatReady)
            return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
        end
        
        startLuaCoroutine(self, "coinsideGoatSmallCards") --must use this way to make coroutine in order to wait frames
    end
    
    if YellowSet == true then
        function coinsideYellow()
            
            YellowVariables = getObjectFromGUID('2be879')
            local YellowExtrasBagId = SetupVariablesNew.call('getYellowExtrasBagId')
            local YellowExtrasBag = getObjectFromGUID(YellowExtrasBagId)
            
            local YellowPlacematId = SetupVariablesNew.call('getYellowPlacematId')
            
            local ActsMatRotation = SetupVariablesNew.call('getYellowPlacematRotation')
            local ActsMatPosition = SetupVariablesNew.call('getYellowPlacematPosition')
            
            local parameters = {}
            parameters.guid = YellowPlacematId
            parameters.rotation = {ActsMatRotation[1], ActsMatRotation[2], ActsMatRotation[3]}
            -- look up the position based on the guid
            parameters.position = {ActsMatPosition[1], ActsMatPosition[2], ActsMatPosition[3]}
            parameters.smooth = true
            
            local item = YellowExtrasBag.takeObject(parameters)
            waitFrames(80)
            item.locked = true
            
            if GoatSet == true  and GoatReady == false then
                yieldWhileFalse(GoatReady, "GoatReady")
            end
            
            YellowPlacementTable.call('SetNewYellowComponentsOnTable')
            
            local YellowScriptZoneId = SetupVariablesNew.call('getGoatScriptingZone')
            local YellowScriptZone = getObjectFromGUID(YellowScriptZoneId)
            local YellowScriptZoneObjects = YellowScriptZone.getObjects()
            yieldWhileObjectsAreMoving(YellowScriptZoneObjects)
            
            waitFrames(40)
            YellowReady = true
            setYellowReady(YellowReady)
            return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
        end
        
        startLuaCoroutine(self, "coinsideYellow") --must use this way to make coroutine in order to wait frames
    end
    
    if YellowSet == false and YellowSmallCardsOnly == true then
        function coinsideYellowSmallCards()
            YellowPlacementTable.call('SetNewYellowSmallCardsOnTable')
            YellowReady = true
            setYellowReady(YellowReady)
            return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
        end
        
        startLuaCoroutine(self, "coinsideYellowSmallCards") --must use this way to make coroutine in order to wait frames
    end
    
    
    if MiskatonicSet == true then -- Since there are so many decks in Miskatonic, and the wait function does Not Stop Lua, then it's made at the same time it puts the other decks
        function coinsideMiskatonic2()
            
            if Miskatonic1Ready == false then
                yieldWhileFalse(Miskatonic1Ready, "Miskatonic1Ready")
            end
            
            toAddDeck2()
            
            return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
        end
        
        startLuaCoroutine(self, "coinsideMiskatonic2") --must tuse this way to make coroutine in order to wait frames
    end
    
    function coinsideSetup()
        
        waitAllReady() --SetupBoard.call('mixItAllUp') is inside this function
            broadcastToAll("All the selected components have been removed from Bag", Table)
            --The Actual SETUP!
            --SetupBoard.call('mixItAllUp')
            
            return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
        end
        
        startLuaCoroutine(self, "coinsideSetup") --must use this way to make coroutine in order to wait frames
    end
    
    function toAddDeck1()
        function coinsideMiskatonicComponents1()
            MiskatonicPlacement.call('SetMiskatonicComponentsOnTable')
            
            if InnsmouthSet == true then
                yieldWhileFalse(InnsmouthReady, "InnsmouthReady")
            end        
            if DunwichSet == true then
                yieldWhileFalse(DunwichReady, "DunwichReady")
            end  
            if KingsportSet == true then
                yieldWhileFalse(KingsportReady, "KingsportReady")
            end  
            
            --waitFrames(40)
            Miskatonic1Ready = true
            setMiskatonic1Ready(Miskatonic1Ready)
            
            return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
        end
        startLuaCoroutine(self, "coinsideMiskatonicComponents1") --must use this way to make coroutine in order to wait frames
        
    end
    
    function toAddDeck2()
        
        function coinsideMiskatonicComponents2()
            
            Miskatonic2Ready = false

            waitFrames(40)

            yieldWhileFalse(InnsmouthReady, "InnsmouthReady")
            yieldWhileFalse(DunwichReady, "DunwichReady")
            yieldWhileFalse(KingsportReady, "KingsportReady")

            MiskatonicPlacement.call('AddOnTop')
            
            Miskatonic2Ready = true
            setMiskatonic2Ready(Miskatonic2Ready)
            
            return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
        end
        startLuaCoroutine(self, "coinsideMiskatonicComponents2") --must use this way to make coroutine in order to wait frames
        
    end
    
    -- For Coroutines, waits X frames
    function waitFrames(frames)
        while frames > 0 do
            coroutine.yield(0)
            frames = frames - 1
        end
    end
    
    
    function yieldWhileObjectsAreMoving(moving_objects)     --Thank you Redditor SirLoin49 for this awesome function
        -- yield the coroutine until all objects stopped smooth moving
        if(#moving_objects == 0) then
            return
        end
        
        local objects_moving = true
        while objects_moving do
            for j = 1, 50 do -- do a few yields, otherwise tts crashes
                
                coroutine.yield(0)
            end
            for _, i in ipairs(moving_objects) do
                if(not i.isSmoothMoving()) then
                    objects_moving = false
                    break
                end
            end 
        end
    end
    
    function yieldWhileFalse(flag, flagName)
        
        local flag = false
        local setupping = true
        while setupping do
            for j = 1, 20 do -- do a few yields, otherwise tts crashes
                
                coroutine.yield(0)
            end
            
            if flagName == "YellowReady" then --I hate having to do this, but coroutines do not receive flag updates
                flag = getYellowReady()
            end
            
            if flagName == "PharaohReady" then
                flag = getPharaohReady()
            end
            
            if flagName == "Miskatonic1Ready" then
                flag = getMiskatonic1Ready()
            end
            
            if flagName == "Miskatonic2Ready" then
                flag = getMiskatonic2Ready()
            end
            
            if flagName == "LurkerReady" then
                flag = getLurkerReady()
            end
            
            if flagName == "KingsportReady" then
                flag = getKingsportReady()
            end
            
            if flagName == "InnsmouthReady" then
                flag = getInnsmouthReady()
            end
            
            if flagName == "GoatReady" then
                flag = getGoatReady()
            end
            
            if flagName == "DunwichReady" then
                flag = getDunwichReady()
            end
            
            if flag == true then
                setupping = false
                break
            end
        end
    end
    
    function waitAllReady()
        
        local WaitAllReady = true
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
        local YellowOriginalActs = GlobalVariables.call('isYellowOriginalActs')
        local LurkerSmallCardsOnly = GlobalVariables.call('isLurkerSmallCardsOnly')
        local PharaohSmallCardsOnly = GlobalVariables.call('isPharaohSmallCardsOnly')
        local GoatSmallCardsOnly = GlobalVariables.call('isGoatSmallCardsOnly')
        local YellowSmallCardsOnly = GlobalVariables.call('isYellowSmallCardsOnly')
        local InnsmouthSmallCardsOnly = GlobalVariables.call('isInnsmouthSmallCardsOnly')
        local KingsportSmallCardsOnly = GlobalVariables.call('isKingsportSmallCardsOnly')
        local DunwichSmallCardsOnly = GlobalVariables.call('isDunwichSmallCardsOnly')        
        
        while WaitAllReady do
            
            if DunwichSet == true or DunwichMonsterOnly == true or DunwichSmallCardsOnly == true then
                if DunwichReady == false then
                    yieldWhileFalse(DunwichReady, "DunwichReady")
                end
            else
                DunwichReady = true
            end
            
            if InnsmouthSet == true or InnsmouthMonsterOnly == true or InnsmouthSmallCardsOnly == true then
                if InnsmouthReady == false then
                    yieldWhileFalse(InnsmouthReady, "InnsmouthReady")
                end
            else
                InnsmouthReady = true
            end
            
            if KingsportSet == true or KingsportMonsterOnly == true or KingsportSmallCardsOnly == true then
                if KingsportReady == false then
                    yieldWhileFalse(KingsportReady, "KingsportReady")
                end
            else
                KingsportReady = true
            end
            
            if LurkerSet == true or LurkerSmallCardsOnly == true or LurkerSmallCardsOnly then
                if LurkerReady == false then
                    yieldWhileFalse(LurkerReady, "LurkerReady")
                end
            else
                LurkerReady = true
            end
            
            if PharaohSet == true or PharaohSmallCardsOnly == true or PharaohSmallCardsOnly then
                if PharaohReady == false then
                    yieldWhileFalse(PharaohReady, "PharaohReady")
                end
            else
                PharaohReady = true
            end
            
            if GoatSet == true or GoatSmallCardsOnly == true or GoatSmallCardsOnly then
                if GoatReady == false then
                    yieldWhileFalse(GoatReady, "GoatReady")
                end
            else
                GoatReady = true
            end
            
            if YellowSet == true or YellowSmallCardsOnly == true or YellowSmallCardsOnly then
                if YellowReady == false then
                    yieldWhileFalse(YellowReady, "YellowReady")
                end
            else
                YellowReady = true
            end
            
            if MiskatonicSet == true then
                
                if Miskatonic1Ready == false then
                    yieldWhileFalse(Miskatonic1Ready, "Miskatonic1Ready")
                end
                
                if Miskatonic2Ready == false then
                    yieldWhileFalse(Miskatonic2Ready, "Miskatonic2Ready")
                end
            else
                Miskatonic1Ready = true
                Miskatonic2Ready = true             
            end
            
            if DunwichReady == true and
            InnsmouthReady == true and
            KingsportReady == true and
            LurkerReady == true and
            PharaohReady == true and
            PharaohReady == true and
            GoatReady == true and
            YellowReady == true and
            Miskatonic1Ready == true and
            Miskatonic2Ready == true then

                WaitAllReady = false
                SetupBoard.call('mixItAllUp')            
            end
        end
    end
    
    function getYellowReady()
        return YellowReady
    end
    
    function getPharaohReady()
        return PharaohReady
    end
    
    function getYellowReady()
        return YellowReady
    end
    
    function getMiskatonic1Ready()
        return Miskatonic1Ready
    end
    
    function getMiskatonic2Ready()
        return Miskatonic2Ready
    end
    
    function getLurkerReady()
        return LurkerReady
    end
    
    function getKingsportReady()
        return KingsportReady
    end
    
    function getInnsmouthReady()
        return InnsmouthReady
    end
    
    function getGoatReady()
        return GoatReady
    end
    
    function getDunwichReady()
        return DunwichReady
    end
    
    function setYellowReady(flag)
        YellowReady = flag
    end
    
    function setPharaohReady(flag)
        PharaohReady = flag
    end
    
    function setYellowReady(flag)
        YellowReady = flag
    end
    
    function setMiskatonic1Ready(flag)
        Miskatonic1Ready = flag
    end
    
    function setMiskatonic2Ready(flag)
        Miskatonic2Ready = flag
    end
    
    function setLurkerReady(flag)
        LurkerReady = flag
    end
    
    function setKingsportReady(flag)
        KingsportReady = flag
    end
    
    function setInnsmouthReady(flag)
        InnsmouthReady = flag
    end
    
    function setGoatReady(flag)
        GoatReady = flag
    end
    
    function setDunwichReady(flag)
        DunwichReady = flag
    end
    
    --Counts number of extra boards. If none, skips this step These board flags are important to know the setup ( check _SetupVariables for the board positions depending on the number of extra boards)
    -- Btw, don't you love ASCII drawings? I made some with my Ifs... (how I miss switch functions...)
    function EvaluateBoardPlacement()
        
        local CountExtraBoards = 0
        
        local InnsmouthSolo = false
        local KingsportSolo = false
        local DunwichSolo = false
        local KingsportDunwich = false
        local InnsmouthKingsport = false
        local InnsmouthDunwich = false
        local AllThreeBoards = false
        
        local DunwichSet = GlobalVariables.call('isDunwichSet')
        local InnsmouthSet = GlobalVariables.call('isInnsmouthSet')
        local KingsportSet = GlobalVariables.call('isKingsportSet')
        
        GlobalVariables.call('setInnsmouthSolo', InnsmouthSolo)
        GlobalVariables.call('setKingsportSolo', KingsportSolo)
        GlobalVariables.call('setDunwichSolo', DunwichSolo)
        GlobalVariables.call('setInnsmouthDunwich', InnsmouthDunwich)
        GlobalVariables.call('setInnsmouthKingsport', InnsmouthKingsport)
        GlobalVariables.call('setKingsportDunwich', KingsportDunwich)
        GlobalVariables.call('setAllThreeBoards', AllThreeBoards)
        
        if InnsmouthSet == true then
            CountExtraBoards = CountExtraBoards + 1
        end
        
        if KingsportSet == true then
            CountExtraBoards = CountExtraBoards + 1
        end
        
        if DunwichSet == true then
            CountExtraBoards = CountExtraBoards + 1
        end
        
        if CountExtraBoards > 0 then
            -- one board
            if CountExtraBoards == 1 then
                if InnsmouthSet == true then
                    InnsmouthSolo = true
                    GlobalVariables.call('setInnsmouthSolo', InnsmouthSolo)
                end
                if KingsportSet == true then
                    KingsportSolo = true
                    GlobalVariables.call('setKingsportSolo', KingsportSolo)
                end
                if DunwichSet == true then
                    DunwichSolo = true
                    GlobalVariables.call('setDunwichSolo', DunwichSolo)
                end
            end
            -- Two Boards
            if CountExtraBoards == 2 then
                if InnsmouthSet == true then
                    if KingsportSet == true then
                        InnsmouthKingsport = true
                        GlobalVariables.call('setInnsmouthKingsport', InnsmouthKingsport)
                    else
                        InnsmouthDunwich = true
                        GlobalVariables.call('setInnsmouthDunwich', InnsmouthDunwich)
                    end
                else
                    -- Since Innsmouth is out of the game and there are two extra boards...
                    KingsportDunwich = true
                    GlobalVariables.call('setKingsportDunwich', KingsportDunwich)
                end
                
            end
            
            if CountExtraBoards == 3 then
                -- Iron man!
                AllThreeBoards = true
                GlobalVariables.call('setAllThreeBoards', AllThreeBoards)
            end
        end
        
    end