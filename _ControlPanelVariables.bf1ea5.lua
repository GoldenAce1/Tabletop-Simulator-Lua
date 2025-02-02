--Flags
local LurkerSet = false
local LurkerGateSet = false
local PharaohSet = false
local GoatSet = false
local YellowSet = false
local InnsmouthSet = false
local KingsportSet = false
local DunwichSet = false
local MiskatonicSet = false
local DunwichMonsterOnly = false
local InnsmouthMonsterOnly = false
local KingsportMonsterOnly = false
local GoatMonsterOnly = false
local YellowOriginalActs = false
local LurkerSmallCardsOnly = false
local PharaohSmallCardsOnly = false
local GoatSmallCardsOnly = false
local YellowSmallCardsOnly = false
local InnsmouthSmallCardsOnly = false
local KingsportSmallCardsOnly = false
local DunwichSmallCardsOnly = false

function onSave()
    local state = {}

    state.LurkerSet = LurkerSet
    state.LurkerGateSet = LurkerGateSet
    state.PharaohSet = PharaohSet
    state.GoatSet = GoatSet
    state.YellowSet = YellowSet
    state.InnsmouthSet = InnsmouthSet
    state.KingsportSet = KingsportSet
    state.DunwichSet = DunwichSet
    state.MiskatonicSet = MiskatonicSet
    state.DunwichMonsterOnly = DunwichMonsterOnly
    state.InnsmouthMonsterOnly = InnsmouthMonsterOnly
    state.KingsportMonsterOnly = KingsportMonsterOnly
    state.GoatMonsterOnly = GoatMonsterOnly
    state.YellowOriginalActs = YellowOriginalActs
    state.LurkerSmallCardsOnly = LurkerSmallCardsOnly
    state.PharaohSmallCardsOnly = PharaohSmallCardsOnly
    state.GoatSmallCardsOnly = GoatSmallCardsOnly
    state.YellowSmallCardsOnly = YellowSmallCardsOnly
    state.InnsmouthSmallCardsOnly = InnsmouthSmallCardsOnly
    state.KingsportSmallCardsOnly = KingsportSmallCardsOnly
    state.DunwichSmallCardsOnly = DunwichSmallCardsOnly

    --TO RESET THE VALUES
--[[      state.LurkerSet = false
     state.LurkerGateSet = false
     state.PharaohSet = false
     state.GoatSet = false
     state.YellowSet = false
     state.InnsmouthSet = false
     state.KingsportSet = false
     state.DunwichSet = false
     state.MiskatonicSet = false --]]

    return JSON.encode_pretty(state)
end

--[[ The onLoad event is called after the game save finishes loading. --]]
function onLoad(saveState)

    if saveState ~= "" then

        local data = JSON.decode(saveState)

        LurkerSet = data.LurkerSet
        LurkerGateSet = data.LurkerGateSet
        PharaohSet = data.PharaohSet
        GoatSet = data.GoatSet
        YellowSet = data.YellowSet
        InnsmouthSet = data.InnsmouthSet
        KingsportSet = data.KingsportSet
        DunwichSet = data.DunwichSet
        MiskatonicSet = data.MiskatonicSet
        DunwichMonsterOnly = data.DunwichMonsterOnly
        InnsmouthMonsterOnly = data.InnsmouthMonsterOnly
        KingsportMonsterOnly = data.KingsportMonsterOnly
        GoatMonsterOnly = data.GoatMonsterOnly
        YellowOriginalActs = data.YellowOriginalActs
        LurkerSmallCardsOnly = data.LurkerSmallCardsOnly
        PharaohSmallCardsOnly = data.PharaohSmallCardsOnly
        GoatSmallCardsOnly = data.GoatSmallCardsOnly
        YellowSmallCardsOnly = data.YellowSmallCardsOnly
        InnsmouthSmallCardsOnly = data.InnsmouthSmallCardsOnly
        KingsportSmallCardsOnly = data.KingsportSmallCardsOnly
        DunwichSmallCardsOnly = data.DunwichSmallCardsOnly
    else
        LurkerSet = false
        LurkerGateSet = false
        PharaohSet = false
        GoatSet = false
        YellowSet = false
        InnsmouthSet = false
        KingsportSet = false
        DunwichSet = false
        MiskatonicSet = false
        DunwichMonsterOnly = false
        InnsmouthMonsterOnly = false
        KingsportMonsterOnly = false
        GoatMonsterOnly = false
        YellowOriginalActs = false
        LurkerSmallCardsOnly = false
        PharaohSmallCardsOnly = false
        GoatSmallCardsOnly = false
        YellowSmallCardsOnly = false
        InnsmouthSmallCardsOnly = false
        KingsportSmallCardsOnly = false
        DunwichSmallCardsOnly = false
    end
end

-- For external purposes returns true or false depending on Lurker being set
function isLurkerSet()
    return LurkerSet
end

-- For external purposes returns true or false depending on Lurker gate variant being set
function isLurkerGateSet()
    return LurkerGateSet
end
-- For external purposes returns true or false depending on Pharaoh being set
function isPharaohSet()
    return PharaohSet
end

-- For external purposes returns true or false depending on Goat being set
function isGoatSet()
    return GoatSet
end

-- For external purposes returns true or false depending on Yellow being set
function isYellowSet()
    return YellowSet
end

-- For external purposes returns true or false depending on Innsmouth being set
function isInnsmouthSet()
    return InnsmouthSet
end

-- For external purposes returns true or false depending on Kingsport being set
function isKingsportSet()
    return KingsportSet
end

-- For external purposes returns true or false depending on Dunwich being set
function isDunwichSet()
    return DunwichSet
end

-- For external purposes returns true or false depending on Miskatonic being set
function isMiskatonicSet()
    return MiskatonicSet
end

-- For external purposes returns true or false depending on DunwichMonsterOnly being set
function isDunwichMonsterOnly()
    return DunwichMonsterOnly
end

-- For external purposes returns true or false depending on InnsmouthMonsterOnly being set
function isInnsmouthMonsterOnly()
    return InnsmouthMonsterOnly
end

-- For external purposes returns true or false depending on KingsportMonsterOnly being set
function isKingsportMonsterOnly()
    return KingsportMonsterOnly
end

-- For external purposes returns true or false depending on GoatMonsterOnly being set
function isGoatMonsterOnly()
    return GoatMonsterOnly
end

-- For external purposes returns true or false depending on YellowOriginalActs being set
function isYellowOriginalActs()
    return YellowOriginalActs
end

-- For external purposes returns true or false depending on LurkerSmallCardsOnly being set
function isLurkerSmallCardsOnly()
    return LurkerSmallCardsOnly
end

-- For external purposes returns true or false depending on PharaohSmallCardsOnly being set
function isPharaohSmallCardsOnly()
    return PharaohSmallCardsOnly
end

-- For external purposes returns true or false depending on GoatSmallCardsOnly being set
function isGoatSmallCardsOnly()
    return GoatSmallCardsOnly
end

-- For external purposes returns true or false depending on YellowSmallCardsOnly being set
function isYellowSmallCardsOnly()
    return YellowSmallCardsOnly
end

-- For external purposes returns true or false depending on InnsmouthSmallCardsOnly being set
function isInnsmouthSmallCardsOnly()
    return InnsmouthSmallCardsOnly
end

-- For external purposes returns true or false depending on KingsportSmallCardsOnly being set
function isKingsportSmallCardsOnly()
    return KingsportSmallCardsOnly
end

-- For external purposes returns true or false depending on DunwichSmallCardsOnly being set
function isDunwichSmallCardsOnly()
    return DunwichSmallCardsOnly
end
--setters

-- For external purposes sets to true or false for Lurker gate variant
function setLurker(toSet)
    LurkerSet = toSet[1]
    onSave()
end

-- For external purposes sets to true or false for Lurker gate Variant
function setLurkerGate(toSet)
    LurkerGateSet = toSet[1]
    onSave()
end

-- For external purposes sets to true or false for Pharaoh
function setPharaoh(toSet)
    PharaohSet = toSet[1]
    onSave()
end

-- For external purposes sets to true or false for Goat
function setGoat(toSet)
    GoatSet = toSet[1]
    onSave()
end

-- For external purposes sets to true or false for Yellow
function setYellow(toSet)
    YellowSet = toSet[1]
    onSave()
end

-- For external purposes sets to true or false for Innsmouth
function setInnsmouth(toSet)
    InnsmouthSet = toSet[1]
    onSave()
end

-- For external purposes sets to true or false for Kingsport
function setKingsport(toSet)
    KingsportSet = toSet[1]
    onSave()
end

-- For external purposes sets to true or false for Dunwich
function setDunwich(toSet)
    DunwichSet = toSet[1]
    onSave()
end

-- For external purposes sets to true or false for Miskatonic
function setMiskatonic(toSet)
    MiskatonicSet = toSet[1]
    onSave()
end

-- For external purposes returns true or false depending on DunwichMonsterOnly being set
function setDunwichMonsterOnly(toSet)
    DunwichMonsterOnly = toSet[1]
    onSave()
end

-- For external purposes returns true or false depending on InnsmouthMonsterOnly being set
function setInnsmouthMonsterOnly(toSet)
    InnsmouthMonsterOnly = toSet[1]
    onSave()
end

-- For external purposes returns true or false depending on KingsportMonsterOnly being set
function setKingsportMonsterOnly(toSet)
    KingsportMonsterOnly = toSet[1]
    onSave()
end

-- For external purposes returns true or false depending on GoatMonsterOnly being set
function setGoatMonsterOnly(toSet)
    GoatMonsterOnly = toSet[1]
    onSave()
end

-- For external purposes returns true or false depending on YellowOriginalActs being set
function setYellowOriginalActs(toSet)
    YellowOriginalActs = toSet[1]
    onSave()
end

-- For external purposes sets to true or false
function setLurkerSmallCardsOnly(toSet)
    LurkerSmallCardsOnly = toSet[1]
    onSave()
end

-- For external purposes sets to true or false
function setPharaohSmallCardsOnly(toSet)
    PharaohSmallCardsOnly = toSet[1]
    onSave()
end

-- For external purposes sets to true or false
function setGoatSmallCardsOnly(toSet)
    GoatSmallCardsOnly = toSet[1]
    onSave()
end

-- For external purposes sets to true or false
function setYellowSmallCardsOnly(toSet)
    YellowSmallCardsOnly = toSet[1]
    onSave()
end

-- For external purposes sets to true or false
function setInnsmouthSmallCardsOnly(toSet)
    InnsmouthSmallCardsOnly = toSet[1]
    onSave()
end

-- For external purposes sets to true or false
function setKingsportSmallCardsOnly(toSet)
    KingsportSmallCardsOnly = toSet[1]
    onSave()
end

-- For external purposes sets to true or false
function setDunwichSmallCardsOnly(toSet)
    DunwichSmallCardsOnly = toSet[1]
    onSave()
end