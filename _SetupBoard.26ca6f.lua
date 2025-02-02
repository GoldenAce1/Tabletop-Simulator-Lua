--The Pannel Itself
--local ControlPanelItself = getObjectFromGUID('aa3288')
--local ControlPanelVariables = getObjectFromGUID('bf1ea5')

local GlobalVariablesId = '7fc89f'
GlobalVariables = getObjectFromGUID(GlobalVariablesId)

local BoardPlacement = getObjectFromGUID('3f0e8f')
local BagPlacement = getObjectFromGUID('0bf0fc')
local Conan = getObjectFromGUID('ef83e9')
local GlobalVariablesId = '7fc89f'
local FinisherId = '30c7b9'
local GlobalVariables = getObjectFromGUID(GlobalVariablesId)

--Miskatonic Variables to set up Mythos, if it's the case
local MiskatonicVariables = getObjectFromGUID('b76591')  

--setup
local SetupVariables = getObjectFromGUID('2a8dee')

-- What is set?
local LurkerSet = false
local PharaohSet = false
local GoatSet = false
local YellowSet = false
local InnsmouthSet = false
local KingsportSet = false
local DunwichSet = false
local MiskatonicSet = false

-- Variants
local LurkerGateSet = false
local DunwichMonsterOnly = false
local InnsmouthMonsterOnly = false
local KingsportMonsterOnly = false
local LurkerSmallCardsOnly = false
local PharaohSmallCardsOnly = false
local GoatSmallCardsOnly = false
local YellowSmallCardsOnly = false
local InnsmouthSmallCardsOnly = false
local KingsportSmallCardsOnly = false
local DunwichSmallCardsOnly = false

-- board types - If big expansion apply, only one will be lit
local InnsmouthSolo = false
local KingsportSolo = false
local DunwichSolo = false
local KingsportDunwich = false
local InnsmouthKingsport = false
local InnsmouthDunwich = false
-- The bravest man of all - All boards!
local AllThreeBoards = false

local CountExtraBoards = 0

function onload()
    
end

--Places All the sets on the board
function mixItAllUp()
    
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
    local SetupVariablesNew = getObjectFromGUID('2a8dee') 
    
    Finisher = getObjectFromGUID(FinisherId)
     function coinsideSetupLocations()
        waitFrames(20)
        Finisher.call('SetupLocations')
        waitFrames(40)
        Finisher.call('PlaceLocks')
        return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
    end
    startLuaCoroutine(self, "coinsideSetupLocations") --must use this way to make coroutine in order to wait frames    
    
    if LurkerGateSet == true then
        BagPlacement.call('placeLurkerBags')
    else
        if KingsportSet == true then
            BagPlacement.call('placeKingsportGateBags')
        end
        if DunwichSet == true then
            BagPlacement.call('placeDunwichGateBags')
        end
    end
    
    broadcastToAll("Placing things inside other things and leaving trash for Conan to Destroy.", Table)
    
    if InnsmouthSet == true or InnsmouthMonsterOnly == true then
        BagPlacement.call('placeInnsmouthMonsterBags')
    end
    
    if DunwichSet == true or DunwichMonsterOnly == true then
        BagPlacement.call('placeDunwichMonsterBags')
    end
    
    if KingsportSet == true or KingsportMonsterOnly == true then
        BagPlacement.call('placeKingsportMonsterBags')
    end
    
    if KingsportSet == true then
        BagPlacement.call('placeKingsportRifts')
    end
    
    if GoatSet == true then
        BagPlacement.call('placeGoatMonsterBags')
        
        -- Set GreenCorruption Deck on top of the Red Deck

        local Goat_Red_Corruption_Deck_id = GlobalVariables.call('getGoatRedCorruptionDeckid')
        local Goat_Red_Corruption_Deck = getObjectFromGUID(Goat_Red_Corruption_Deck_id)
        Goat_Red_Corruption_Deck.setName("Corruption Deck")
        Goat_Red_Corruption_Deck.randomize()

        local Goat_Green_Corruption_Deck_Id = GlobalVariables.call('getGoatGreenCorruptionDeckId')
        local Goat_Green_Corruption_Deck = getObjectFromGUID(Goat_Green_Corruption_Deck_Id)
        Goat_Green_Corruption_Deck.setName("Corruption Deck")
        Goat_Green_Corruption_Deck.randomize()

        local position = SetupVariablesNew.call('getGoatRedCorruptionDeckPos')
        Goat_Green_Corruption_Deck.setPosition({position[1], position[2]+0.5, position[3]})
        
    end

    if GoatMonsterOnly == true then
        BagPlacement.call('placeGoatMonsterBags')
    end
    
    
    if MiskatonicSet == true then
--[[         local MiskatonicMythosDeckID = MiskatonicVariables.call('getMiskatonicMythosDeckId')
        local MiskatonicMythosDeck = getObjectFromGUID(MiskatonicMythosDeckID)
        local BoardMythosDeckId = SetupVariables.call('getBoardMythosdeckId')
        local BoardMythosDeck = getObjectFromGUID(BoardMythosDeckId)
        BoardMythosDeck.putObject(MiskatonicMythosDeck) --]]
    end
    
    --[[ Wait.time(function() Finisher.call('boardDeckRandomizer') end,4) --]]
    
    Wait.time(function() Conan.call('ConanDestroys') end,6)
    
    Finisher.call('boardBagsRandomizer')
    
    Wait.time(function() Finisher.call('Finisher') end,10)
    
end

-- For Coroutines, waits X frames
function waitFrames(frames)
    while frames > 0 do
        coroutine.yield(0)
        frames = frames - 1
    end
end