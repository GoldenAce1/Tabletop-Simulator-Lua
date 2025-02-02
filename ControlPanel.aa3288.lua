--The Pannel Itself
local ControlPanelItself = getObjectFromGUID('aa3288')
local GlobalVariablesId = '7fc89f'
GlobalVariables = getObjectFromGUID(GlobalVariablesId)
local CreateSetup = getObjectFromGUID('0f3048')

-- The objects it knows

function onload()

    LurkerSet = GlobalVariables.call('isLurkerSet')
    PharaohSet = GlobalVariables.call('isPharaohSet')
    GoatSet = GlobalVariables.call('isGoatSet')
    YellowSet = GlobalVariables.call('isYellowSet')
    InnsmouthSet = GlobalVariables.call('isInnsmouthSet')
    KingsportSet = GlobalVariables.call('isKingsportSet')
    DunwichSet = GlobalVariables.call('isDunwichSet')
    MiskatonicSet = GlobalVariables.call('isMiskatonicSet')
    LurkerGateSet = GlobalVariables.call('isLurkerGateSet')
    DunwichMonsterOnly = GlobalVariables.call('isDunwichMonsterOnly')
    InnsmouthMonsterOnly = GlobalVariables.call('isDunwichMonsterOnly')
    KingsportMonsterOnly = GlobalVariables.call('isDunwichMonsterOnly')
    GoatMonsterOnly = GlobalVariables.call('isGoatMonsterOnly')
    YellowOriginalActs = GlobalVariables.call('isYellowOriginalActs')
    LurkerSmallCardsOnly = GlobalVariables.call('isLurkerSmallCardsOnly')
    PharaohSmallCardsOnly = GlobalVariables.call('isPharaohSmallCardsOnly')
    GoatSmallCardsOnly = GlobalVariables.call('isGoatSmallCardsOnly')
    YellowSmallCardsOnly = GlobalVariables.call('isYellowSmallCardsOnly')
    InnsmouthSmallCardsOnly = GlobalVariables.call('isInnsmouthSmallCardsOnly')
    KingsportSmallCardsOnly = GlobalVariables.call('isKingsportSmallCardsOnly')
    DunwichSmallCardsOnly = GlobalVariables.call('isDunwichSmallCardsOnly')

--[[     LurkerSet = false
    PharaohSet = false
    GoatSet = false
    YellowSet = false
    InnsmouthSet = false
    KingsportSet = false
    DunwichSet = false
    MiskatonicSet = false
    LurkerGateSet = false
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
    DunwichSmallCardsOnly = false --]]

    self.createButton(LurkeraddButton)
    self.createButton(LurkerRemoveButton)
    self.createButton(LurkeraddVariantButton)
    self.createButton(LurkerRemoveVariantButton)
    self.createButton(LurkerAddSmallCardsButton)
    self.createButton(LurkerRemoveSmallCardsButton)
    self.createButton(PharaohAddButton)
    self.createButton(PharaohRemoveButton)
    self.createButton(PharaohAddSmallCardsButton)
    self.createButton(PharaohRemoveSmallCardsButton)
    self.createButton(GoatAddButton)
    self.createButton(GoatRemoveButton)
    self.createButton(GoataddMonsterButton)
    self.createButton(GoatRemoveMonsterButton)
    self.createButton(GoatAddSmallCardsButton)
    self.createButton(GoatRemoveSmallCardsButton)
    self.createButton(YellowAddButton)
    self.createButton(YellowRemoveButton)
    self.createButton(YellowaddActsButton)
    self.createButton(YellowRemoveActsButton)
    self.createButton(YellowAddSmallCardsButton)
    self.createButton(YellowRemoveSmallCardsButton)
    self.createButton(InnsmouthAddButton)
    self.createButton(InnsmouthRemoveButton)
    self.createButton(InnsmouthaddMonsterButton)
    self.createButton(InnsmouthRemoveMonsterButton)
    self.createButton(InnsmouthAddSmallCardsButton)
    self.createButton(InnsmouthRemoveSmallCardsButton)
    self.createButton(KingsportAddButton)
    self.createButton(KingsportRemoveButton)
    self.createButton(KingsportaddMonsterButton)
    self.createButton(KingsportRemoveMonsterButton)
    self.createButton(KingsportAddSmallCardsButton)
    self.createButton(KingsportRemoveSmallCardsButton)
    self.createButton(DunwichAddButton)
    self.createButton(DunwichRemoveButton)
    self.createButton(DunwichaddMonsterButton)
    self.createButton(DunwichRemoveMonsterButton)
    self.createButton(DunwichAddSmallCardsButton)
    self.createButton(DunwichRemoveSmallCardsButton)
    self.createButton(MiskatonicAddButton)
    self.createButton(MiskatonicRemoveButton)
    self.createButton(SetupButton)
end

--Adds Lurker to the table
function LurkerButtonAddClicked()
    local LurkerSet = GlobalVariables.call('isLurkerSet')
    if LurkerSet == false then
        -- LurkerPlacementTable.call('SetLurkerComponentsOnTable')
        LurkerSet = true
        GlobalVariables.call('setLurker',{LurkerSet})
        broadcastToAll("Lurker at the Threshold Set will be added", Table)
    else
        broadcastToAll("Lurker at the Threshold is already selected", Table)
    end
end

-- Removes Lurker from the set Table
function LurkerButtonRemoveClicked()
    local LurkerSet = GlobalVariables.call('isLurkerSet')
    if LurkerSet == true then
        -- LurkerRemove.call('LurkerRemove')
        LurkerSet = false
        GlobalVariables.call('setLurker',{LurkerSet})
        broadcastToAll("Lurker at the Threshold Set will NOT be added", Table)
    else
        broadcastToAll("Lurker at the Threshold Gate Variant is not selected", Table)
    end
end

-- Adds the Lurker Gate Variant - Removes the original gates and does not add
-- gates for the big box expansions
function LurkerButtonAddVariantClicked()
    local LurkerGateSet = GlobalVariables.call('isLurkerGateSet')
    if LurkerGateSet == false then
        -- LurkerPlacementTable.call('SetLurkerComponentsOnTable')
        LurkerGateSet = true
        GlobalVariables.call('setLurkerGate',{LurkerGateSet})
        broadcastToAll("Lurker at the Threshold Gate Variant will be added", Table)
    else
        broadcastToAll("Lurker at the Threshold Gate Variant is already selected", Table)
    end
end

-- Removes Lurker from the set Table
function LurkerButtonRemoveVariantClicked()
    local LurkerGateSet = GlobalVariables.call('isLurkerGateSet')
    if LurkerGateSet == true then
        -- LurkerRemove.call('LurkerRemove')
        LurkerGateSet = false
        GlobalVariables.call('setLurkerGate',{LurkerGateSet})
        broadcastToAll("Lurker at the Threshold Gate Variant will NOT be added", Table)
    else
        broadcastToAll("Lurker at the Threshold Gate Variant is not selected", Table)
    end
end

--Adds Lurker to the table
function LurkerButtonAddSmallCardsClicked()

    if LurkerSmallCardsOnly == false then
        LurkerSmallCardsOnly = true
        GlobalVariables.call('setLurkerSmallCardsOnly',{LurkerSmallCardsOnly})
        broadcastToAll("The Lurker Small Cards only will be added", Table)
    else
        broadcastToAll("Lurker Small Cards already selected", Table)
    end
end

-- Removes Lurker from the set Table
function LurkerButtonRemoveSmallCardsClicked()

    if LurkerSmallCardsOnly == true then
        LurkerSmallCardsOnly = false
        GlobalVariables.call('setLurkerSmallCardsOnly',{LurkerSmallCardsOnly})
        broadcastToAll("The Lurker Small Cards will NOT will be added", Table)
    else
        broadcastToAll("Lurker Small Cards is not selected", Table)
    end
end

--Adds Pharaoh to the table
function PharaohButtonAddClicked()
    local PharaohSet = GlobalVariables.call('isPharaohSet')
    if PharaohSet == false then
        -- PharaohPlacement.call('SetPharaohComponentsOnTable')
        PharaohSet = true
        GlobalVariables.call('setPharaoh',{PharaohSet})
        broadcastToAll("The Curse of the Dark Pharaoh Revised Set will be added", Table)
    else
        broadcastToAll("The Curse of the Dark Pharaoh Revised is already selected", Table)
    end
end

-- Removes Pharaoh from the set Table
function PharaohButtonRemoveClicked()
    local PharaohSet = GlobalVariables.call('isPharaohSet')
    if PharaohSet == true then
        -- PharaohRemove.call('PharaohRemove')
        PharaohSet = false
        GlobalVariables.call('setPharaoh',{PharaohSet})
        broadcastToAll("The Curse of the Dark Pharaoh Revised Set will NOT be added", Table)
    else
        broadcastToAll("The Curse of the Dark Pharaoh Revised is not on table", Table)
    end
end

--Adds Pharaoh to the table
function PharaohButtonAddSmallCardsClicked()

    if PharaohSmallCardsOnly == false then
        PharaohSmallCardsOnly = true
        GlobalVariables.call('setPharaohSmallCardsOnly',{PharaohSmallCardsOnly})
        broadcastToAll("The Curse of the Dark Pharaoh Revised Small Cards only will be added", Table)
    else
        broadcastToAll("The Curse of the Dark Pharaoh Revised Small Cards already selected", Table)
    end
end

-- Removes Pharaoh from the set Table
function PharaohButtonRemoveSmallCardsClicked()

    if PharaohSmallCardsOnly == true then
        PharaohSmallCardsOnly = false
        GlobalVariables.call('setPharaohSmallCardsOnly',{PharaohSmallCardsOnly})
        broadcastToAll("The Curse of the Dark Pharaoh Revised Small Cards will NOT will be added", Table)
    else
        broadcastToAll("The Curse of the Dark Pharaoh Revised Small Cards is not selected", Table)
    end
end

--Adds Goat to the table
function GoatButtonAddClicked()
    local GoatSet = GlobalVariables.call('isGoatSet')
    if GoatSet == false then
        -- GoatPlacement.call('SetGoatComponentsOnTable')
        GoatSet = true
        GlobalVariables.call('setGoat',{GoatSet})
        broadcastToAll("The Black Goat of the Woods Set will be added", Table)
    else
        broadcastToAll("The Black Goat of the Woods is already selected", Table)
    end
end

-- Removes Goat from the set Table
function GoatButtonRemoveClicked()
    local GoatSet = GlobalVariables.call('isGoatSet')
    if GoatSet == true then
        -- GoatRemove.call('GoatRemove')
        GoatSet = false
        GoatMonsterOnly = false
        GlobalVariables.call('setGoat',{GoatSet})
        GlobalVariables.call('setGoatMonsterOnly',{GoatMonsterOnly})
        broadcastToAll("The Black Goat of the Woods Set will NOT be added", Table)
    else
        broadcastToAll("The Black Goat of the Woods is not on table", Table)
    end
end
--Adds Goat to the table
function GoatButtonAddSmallCardsClicked()

    if GoatSmallCardsOnly == false then
        GoatSmallCardsOnly = true
        GlobalVariables.call('setGoatSmallCardsOnly',{GoatSmallCardsOnly})
        broadcastToAll("The Black Goat of the Woods Small Cards only will be added", Table)
    else
        broadcastToAll("The Black Goat of the Woods Small Cards already selected", Table)
    end
end

-- Removes Goat from the set Table
function GoatButtonRemoveSmallCardsClicked()

    if GoatSmallCardsOnly == true then
        GoatSmallCardsOnly = false
        GlobalVariables.call('setGoatSmallCardsOnly',{GoatSmallCardsOnly})
        broadcastToAll("The Black Goat of the Woods Small Cards will NOT will be added", Table)
    else
        broadcastToAll("The Black Goat of the Woods Small Cards is not selected", Table)
    end
end

--Adds Yellow to the table
function YellowButtonAddClicked()
    local YellowSet = GlobalVariables.call('isYellowSet')
    if YellowSet == false or YellowOriginalActs == true then
        -- YellowPlacement.call('SetYellowComponentsOnTable')
        YellowOriginalActs = false
        GlobalVariables.call('setYellowOriginalActs',{YellowOriginalActs})
        YellowSet = true
        GlobalVariables.call('setYellow',{YellowSet})
        broadcastToAll("The King in Yellow Set will be added (With Miskatonic Acts)", Table)
    else
        broadcastToAll("The King in Yellow is already selected", Table)
    end
end

-- Removes Yellow from the set Table
function YellowButtonRemoveClicked()
    local YellowSet = GlobalVariables.call('isYellowSet')
    if YellowSet == true then
        -- YellowRemove.call('YellowRemove')
        YellowSet = false
        GlobalVariables.call('setYellow',{YellowSet})
        YellowOriginalActs = false
        GlobalVariables.call('setYellowOriginalActs',{YellowOriginalActs})
        broadcastToAll("The King in Yellow Set will NOT be added", Table)
    else
        broadcastToAll("The King in Yellow is not on table", Table)
    end
end
--Adds Yellow to the table
function YellowButtonAddSmallCardsClicked()

    if YellowSmallCardsOnly == false then
        YellowSmallCardsOnly = true
        GlobalVariables.call('setYellowSmallCardsOnly',{YellowSmallCardsOnly})
        broadcastToAll("The King in Yellow Small Cards only will be added", Table)
    else
        broadcastToAll("The King in Yellow Small Cards already selected", Table)
    end
end

-- Removes Yellow from the set Table
function YellowButtonRemoveSmallCardsClicked()

    if YellowSmallCardsOnly == true then
        YellowSmallCardsOnly = false
        GlobalVariables.call('setYellowSmallCardsOnly',{YellowSmallCardsOnly})
        broadcastToAll("The King in Yellow Small Cards will NOT will be added", Table)
    else
        broadcastToAll("The King in Yellow Small Cards is not selected", Table)
    end
end
--Adds Innsmouth to the table
function InnsmouthButtonAddClicked()
    local InnsmouthSet = GlobalVariables.call('isInnsmouthSet')
    if InnsmouthSet == false then
        -- InnsmouthPlacement.call('SetInnsmouthComponentsOnTable')
        InnsmouthSet = true
        InnsmouthMonsterOnly = false
        GlobalVariables.call('setInnsmouth',{InnsmouthSet})
        GlobalVariables.call('setInnsmouthMonsterOnly',{InnsmouthMonsterOnly})
        broadcastToAll("The Innsmouth Horror Set will be added", Table)
    else
        broadcastToAll("The Innsmouth Horror is already selected", Table)
    end
end

-- Removes Innsmouth from the set Table
function InnsmouthButtonRemoveClicked()
    local InnsmouthSet = GlobalVariables.call('isInnsmouthSet')
    if InnsmouthSet == true then
        -- InnsmouthRemove.call('InnsmouthRemove')
        InnsmouthSet = false
        GlobalVariables.call('setInnsmouth',{InnsmouthSet})
        broadcastToAll("The Innsmouth Horror Set will NOT be added", Table)
    else
        broadcastToAll("The Innsmouth Horror is not on table", Table)
    end
end
--Adds Innsmouth to the table
function InnsmouthButtonAddSmallCardsClicked()

    if InnsmouthSmallCardsOnly == false then
        InnsmouthSmallCardsOnly = true
        GlobalVariables.call('setInnsmouthSmallCardsOnly',{InnsmouthSmallCardsOnly})
        broadcastToAll("The Innsmouth Horror Small Cards only will be added", Table)
    else
        broadcastToAll("The Innsmouth Horror Small Cards already selected", Table)
    end
end

-- Removes Innsmouth from the set Table
function InnsmouthButtonRemoveSmallCardsClicked()

    if InnsmouthSmallCardsOnly == true then
        InnsmouthSmallCardsOnly = false
        GlobalVariables.call('setInnsmouthSmallCardsOnly',{InnsmouthSmallCardsOnly})
        broadcastToAll("The Innsmouth Horror Small Cards will NOT will be added", Table)
    else
        broadcastToAll("The Innsmouth Horror Small Cards is not selected", Table)
    end
end

--Adds Kingsport to the table
function KingsportButtonAddClicked()
    local KingsportSet = GlobalVariables.call('isKingsportSet')
    if KingsportSet == false then
        -- KingsportPlacement.call('SetKingsportComponentsOnTable')
        KingsportSet = true
        KingsportMonsterOnly = false
        GlobalVariables.call('setKingsport',{KingsportSet})
        GlobalVariables.call('setKingsportMonsterOnly',{KingsportMonsterOnly})
        broadcastToAll("The Kingsport Horror Set will be added", Table)
    else
        broadcastToAll("The Kingsport Horror is already selected", Table)
    end
end

-- Removes Kingsport from the set Table
function KingsportButtonRemoveClicked()
    local KingsportSet = GlobalVariables.call('isKingsportSet')
    if KingsportSet == true then
        -- KingsportRemove.call('KingsportRemove')
        KingsportSet = false
        GlobalVariables.call('setKingsport',{KingsportSet})
        broadcastToAll("The Kingsport Horror Set will NOT be added", Table)
    else
        broadcastToAll("The Kingsport Horror is not on table", Table)
    end
end
--Adds Kingsport to the table
function KingsportButtonAddSmallCardsClicked()

    if KingsportSmallCardsOnly == false then
        KingsportSmallCardsOnly = true
        GlobalVariables.call('setKingsportSmallCardsOnly',{KingsportSmallCardsOnly})
        broadcastToAll("The Kingsport Small Cards only will be added", Table)
    else
        broadcastToAll("The Kingsport Horror Small Cards already selected", Table)
    end
end

-- Removes Kingsport from the set Table
function KingsportButtonRemoveSmallCardsClicked()

    if KingsportSmallCardsOnly == true then
        KingsportSmallCardsOnly = false
        GlobalVariables.call('setKingsportSmallCardsOnly',{KingsportSmallCardsOnly})
        broadcastToAll("The Kingsport Horror Small Cards will NOT will be added", Table)
    else
        broadcastToAll("The Kingsport Horror Small Cards is not selected", Table)
    end
end

--Adds Dunwich to the table
function DunwichButtonAddClicked()
    local DunwichSet = GlobalVariables.call('isDunwichSet')
    if DunwichSet == false then
        -- DunwichPlacement.call('SetDunwichComponentsOnTable')
        DunwichSet = true
        DunwichMonsterOnly = false
        GlobalVariables.call('setDunwich',{DunwichSet})
        GlobalVariables.call('setDunwichMonsterOnly',{DunwichMonsterOnly})

        broadcastToAll("The Dunwich Horror Set will be added", Table)
    else
        broadcastToAll("The Dunwich Horror already selected", Table)
    end
end

-- Removes Dunwich from the set Table
function DunwichButtonRemoveClicked()
    local DunwichSet = GlobalVariables.call('isDunwichSet')
    if DunwichSet == true then
        -- DunwichRemove.call('DunwichRemove')
        DunwichSet = false
        GlobalVariables.call('setDunwich',{DunwichSet})
        broadcastToAll("The Dunwich Horror Set will NOT will be added", Table)
    else
        broadcastToAll("The Dunwich Horror is not on table", Table)
    end
end
--Adds Dunwich to the table
function DunwichButtonAddSmallCardsClicked()

    if DunwichSmallCardsOnly == false then
        DunwichSmallCardsOnly = true
        GlobalVariables.call('setDunwichSmallCardsOnly',{DunwichSmallCardsOnly})
        broadcastToAll("The Dunwich Horror Small Cards only will be added", Table)
    else
        broadcastToAll("The Dunwich Horror Small Cards already selected", Table)
    end
end

-- Removes Dunwich from the set Table
function DunwichButtonRemoveSmallCardsClicked()

    if DunwichSmallCardsOnly == true then
        DunwichSmallCardsOnly = false
        GlobalVariables.call('setDunwichSmallCardsOnly',{DunwichSmallCardsOnly})
        broadcastToAll("The Dunwich Horror Small Cards will NOT will be added", Table)
    else
        broadcastToAll("The Dunwich Horror Small Cards is not selected", Table)
    end
end

--
function MiskatonicButtonAddClicked(MiskatonicSet)
    local MiskatonicSet = GlobalVariables.call('isMiskatonicSet')
    if MiskatonicSet == false then
        -- DunwichPlacement.call('SetDunwichComponentsOnTable')
        MiskatonicSet = true
        GlobalVariables.call('setMiskatonic',{MiskatonicSet})
        broadcastToAll("The Miskatonic Horror Set will be added", Table)
    else
        broadcastToAll("The Miskatonic Horror already selected", Table)
    end
end

--
function MiskatonicButtonRemoveClicked()
    local MiskatonicSet = GlobalVariables.call('isMiskatonicSet')
    if MiskatonicSet == true then
        -- MiskatonicRemove.call('MiskatonicRemove')
        MiskatonicSet = false
        GlobalVariables.call('setMiskatonic',{MiskatonicSet})
        broadcastToAll("The Miskatonic Horror Set will NOT be added", Table)
    else
        broadcastToAll("The Miskatonic Horror is not on table", Table)
    end
end

function setupButtonClicked()

    if LurkerSet == nil then
        LurkerSet = false
        GlobalVariables.call('setLurker',{LurkerSet})
    end

    if PharaohSet == nil then
        PharaohSet = false
        GlobalVariables.call('setPharaoh',{PharaohSet})
    end

    if GoatSet == nil then
        GoatSet = false
        GlobalVariables.call('setGoat',{GoatSet})
    end

    if YellowSet == nil then
        YellowSet = false
        GlobalVariables.call('setYellow',{YellowSet})
    end

    if InnsmouthSet == nil then
        InnsmouthSet = false
        GlobalVariables.call('setInnsmouth',{InnsmouthSet})
    end

    if KingsportSet == nil then
        KingsportSet = false
        GlobalVariables.call('setKingsport',{KingsportSet})
    end

    if DunwichSet == nil then
        DunwichSet = false
        GlobalVariables.call('setDunwich',{DunwichSet})
    end

    if MiskatonicSet == nil then
        MiskatonicSet = false
        GlobalVariables.call('setMiskatonic',{MiskatonicSet})
    end

    if LurkerGateSet == nil then
        LurkerGateSet = false
        GlobalVariables.call('setLurkerGateSet',{LurkerGateSet})
    end

    if DunwichMonsterOnly == nil then
        DunwichMonsterOnly = false
        GlobalVariables.call('setDunwichMonsterOnly',{DunwichMonsterOnly})
    end

    if InnsmouthMonsterOnly == nil then
        InnsmouthMonsterOnly = false
        GlobalVariables.call('setInnsmouthMonsterOnly',{InnsmouthMonsterOnly})
    end

    if KingsportMonsterOnly == nil then
        KingsportMonsterOnly = false
        GlobalVariables.call('setKingsportMonsterOnly',{KingsportMonsterOnly})
    end

    if GoatMonsterOnly == nil then
        GoatMonsterOnly = false
        GlobalVariables.call('setGoatMonsterOnly',{GoatMonsterOnly})
    end

    if YellowOriginalActs == nil then
        YellowOriginalActs = false
        GlobalVariables.call('setYellowOriginalActs',{YellowOriginalActs})
    end

    if LurkerSmallCardsOnly == nil then
        LurkerSmallCardsOnly = false
        GlobalVariables.call('setLurkerSmallCardsOnly',{LurkerSmallCardsOnly})
    end

    if PharaohSmallCardsOnly == nil then
        PharaohSmallCardsOnly = false
        GlobalVariables.call('setPharaohSmallCardsOnly',{PharaohSmallCardsOnly})
    end

    if GoatSmallCardsOnly == nil then
        GoatSmallCardsOnly = false
        GlobalVariables.call('setGoatSmallCardsOnly',{GoatSmallCardsOnly})
    end

    if YellowSmallCardsOnly == nil then
        YellowSmallCardsOnly = false
        GlobalVariables.call('setYellowSmallCardsOnly',{YellowSmallCardsOnly})
    end

    if InnsmouthSmallCardsOnly == nil then
        InnsmouthSmallCardsOnly = false
        GlobalVariables.call('setInnsmouthSmallCardsOnly',{InnsmouthSmallCardsOnly})
    end

    if KingsportSmallCardsOnly == nil then
        KingsportSmallCardsOnly = false
        GlobalVariables.call('setKingsportSmallCardsOnly',{KingsportSmallCardsOnly})
    end

    if DunwichSmallCardsOnly == nil then
        DunwichSmallCardsOnly = false
        GlobalVariables.call('setDunwichSmallCardsOnly',{DunwichSmallCardsOnly})
    end


    --Remove the Setup button
    -- self.removeButton(43)
    GlobalVariables.call('setisSetupPerformed', {false})
    CreateSetup.call('performSetup')
end

--Adds Goat to the table
function GoataddMonsterButtonClicked()

    if GoatMonsterOnly == false then
        GoatMonsterOnly = true
        GlobalVariables.call('setGoatMonsterOnly',{GoatMonsterOnly})
        broadcastToAll("The Black Goat Monsters only will be added", Table)
    else
        broadcastToAll("Black Goat Monsters already selected", Table)
    end
end

-- Removes Goat from the set Table
function GoatRemoveMonsterButtonClicked()

    if GoatMonsterOnly == true then
        GoatMonsterOnly = false
        GlobalVariables.call('setGoatMonsterOnly',{GoatMonsterOnly})
        broadcastToAll("The Black Goat Monsters will NOT will be added", Table)
    else
        broadcastToAll("Black Goat Monsters is not selected", Table)
    end
end

--Adds Yellow to the table
function YellowActsButtonAddClicked()
    local YellowSet = GlobalVariables.call('isYellowSet')
    if YellowOriginalActs == false or YellowSet == false then
        -- YellowPlacement.call('SetYellowComponentsOnTable')
        YellowOriginalActs = true
        GlobalVariables.call('setYellowOriginalActs',{YellowOriginalActs})
        YellowSet = true
        GlobalVariables.call('setYellow',{YellowSet})
        broadcastToAll("The King in Yellow Set will be added (With The Original expansion acts)", Table)
    else
        broadcastToAll("The King in Yellow is already selected", Table)
    end
end

-- Removes Yellow from the set Table
function YellowActsButtonRemoveClicked()
    local YellowSet = GlobalVariables.call('isYellowSet')
    if YellowSet == true then
        -- YellowRemove.call('YellowRemove')
        YellowOriginalActs = false
        GlobalVariables.call('setYellowOriginalActs',{YellowOriginalActs})
        YellowSet = false
        GlobalVariables.call('setYellow',{YellowSet})
        broadcastToAll("The King in Yellow Set will NOT be added", Table)
    else
        broadcastToAll("The King in Yellow is not on table", Table)
    end
end


--Adds Innsmouth Monsters to the table
function InnsmouthaddMonsterButtonClicked()

    if InnsmouthMonsterOnly == false then
        InnsmouthMonsterOnly = true
        GlobalVariables.call('setInnsmouthMonsterOnly',{InnsmouthMonsterOnly})
        broadcastToAll("The Innsmouth Horror Monsters only will be added", Table)
    else
        broadcastToAll("Innsmouth Horror Monsters already selected", Table)
    end
end

-- Removes Innsmouth Monsters from the set Table
function InnsmouthRemoveMonsterButtonClicked()

    if InnsmouthMonsterOnly == true then
        InnsmouthMonsterOnly = false
        GlobalVariables.call('setInnsmouthMonsterOnly',{InnsmouthMonsterOnly})
        broadcastToAll("The Innsmouth Horror Monsters will NOT will be added", Table)
    else
        broadcastToAll("Innsmouth Horror Monsters is not selected", Table)
    end
end

--Adds Dunwich to the table
function DunwichaddMonsterButtonClicked()

    if DunwichMonsterOnly == false then
        DunwichMonsterOnly = true
        GlobalVariables.call('setDunwichMonsterOnly',{DunwichMonsterOnly})
        broadcastToAll("The Dunwich Horror Monsters only will be added", Table)
    else
        broadcastToAll("Dunwich Horror Monsters already selected", Table)
    end
end

-- Removes Dunwich from the set Table
function DunwichRemoveMonsterButtonClicked()

    if DunwichMonsterOnly == true then
        DunwichMonsterOnly = false
        GlobalVariables.call('setDunwichMonsterOnly',{DunwichMonsterOnly})
        broadcastToAll("The Dunwich Horror Monsters will NOT will be added", Table)
    else
        broadcastToAll("Dunwich Horror Monsters is not selected", Table)
    end
end
--Adds Kingsport to the table
function KingsportaddMonsterButtonClicked()

    if KingsportMonsterOnly == false then
        KingsportMonsterOnly = true
        GlobalVariables.call('setKingsportMonsterOnly',{KingsportMonsterOnly})
        broadcastToAll("The Kingsport Horror Monsters only will be added", Table)
    else
        broadcastToAll("Kingsport Horror Monsters already selected", Table)
    end
end

-- Removes Kingsport from the set Table
function KingsportRemoveMonsterButtonClicked()

    if KingsportMonsterOnly == true then
        KingsportMonsterOnly = false
        GlobalVariables.call('setKingsportMonsterOnly',{KingsportMonsterOnly})
        broadcastToAll("The Kingsport Horror Monsters will NOT will be added", Table)
    else
        broadcastToAll("Kingsport Horror Monsters is not selected", Table)
    end
end

----tables for buttons
LurkeraddButton = {
click_function = 'LurkerButtonAddClicked',
function_owner = self,
label = 'Add Lurker at the Threshold',
tooltip = "Add The Lurker at the Threshold Expansion set to the Setup (Keeps Original Gates)",
position = {-6.5,0.75,-7.5},
width = 1380,
height = 240,
font_size = 100
}
LurkerRemoveButton = {
click_function = 'LurkerButtonRemoveClicked',
function_owner = self,
label = 'Remove Lurker at the Threshold',
tooltip = "Remove The Lurker at the Threshold Expansion set from Setup",
position = {-3.5,0.75,-7.5},
width = 1380,
height = 240,
font_size = 100,
}
LurkeraddVariantButton = {
click_function = 'LurkerButtonAddVariantClicked',
function_owner = self,
label = 'Add Lurker Gate Variant',
tooltip = "Add Lurker Gate Variant Expansion set to the Setup (Replaces Original Gates)",
position = {0,0.75,-7.5},
width = 1380,
height = 240,
font_size = 100
}
LurkerRemoveVariantButton = {
click_function = 'LurkerButtonRemoveVariantClicked',
function_owner = self,
label = 'Remove Lurker Gate Variant',
tooltip = "Remove Lurker Gate Variant set from Setup (Adds Original Gates)",
position = {3,0.75,-7.5},
width = 1380,
height = 240,
font_size = 100
}
LurkerAddSmallCardsButton = {
click_function = "LurkerButtonAddSmallCardsClicked",
function_owner = self,
label = "Add Small Cards",
tooltip = "Add Lurker Small Cards",
position = {5.5, 0.75, -7.5},
width = 880,
height = 240,
font_size = 100
}
LurkerRemoveSmallCardsButton = {
click_function = "LurkerButtonRemoveSmallCardsClicked",
function_owner = self,
label = "Remove Small Cards",
tooltip = "Remove Lurker Small Cards",
position = {7.5, 0.75, -7.5},
width = 980,
height = 240
}
PharaohAddButton = {
click_function = 'PharaohButtonAddClicked',
function_owner = self,
label = 'Add Curse of Dark Pharaoh',
tooltip = "Add Curse of Dark Pharaoh Expansion set to the Setup",
position = {-6.5,0.75,-6.5},
width = 1380,
height = 240,
font_size = 100,
}
PharaohRemoveButton = {
click_function = 'PharaohButtonRemoveClicked',
function_owner = self,
label = 'Remove Curse of Dark Pharaoh',
tooltip = "Remove Curse of Dark Pharaoh Expansion set from Setup",
position = {-3.5,0.75,-6.5},
width = 1380,
height = 240,
font_size = 100,
}
PharaohAddSmallCardsButton = {
click_function = "PharaohButtonAddSmallCardsClicked",
function_owner = self,
label = "Add Small Cards",
tooltip = "Add Pharaoh Small Cards",
position = {5.5, 0.75, -6.5},
width = 880,
height = 240,
font_size = 100
}
PharaohRemoveSmallCardsButton = {
click_function = "PharaohButtonRemoveSmallCardsClicked",
function_owner = self,
label = "Remove Small Cards",
tooltip = "Remove Pharaoh Small Cards",
position = {7.5, 0.75, -6.5},
width = 980,
height = 240
}
GoatAddButton = {
click_function = 'GoatButtonAddClicked',
function_owner = self,
label = 'Add Black Goat of the Woods',
tooltip = "Add Black Goat of the Woods Expansion set to the Setup",
position = {-6.5,0.75,-5.5},
width = 1380,
height = 240,
font_size = 100,
}
GoatRemoveButton = {
click_function = 'GoatButtonRemoveClicked',
function_owner = self,
label = 'Remove Black Goat of the Woods',
tooltip = "Remove Black Goat of the Woods Expansion set from Setup",
position = {-3.5,0.75,-5.5},
width = 1380,
height = 240,
font_size = 100,
}
GoataddMonsterButton = {
click_function = 'GoataddMonsterButtonClicked',
function_owner = self,
label = 'Add Black Goat Monsters',
tooltip = "Adds only the Black Goat Monsters to the Setup (overriden by Black Goat selection)",
position = {0,0.75,-5.5},
width = 1380,
height = 240,
font_size = 100
}
GoatRemoveMonsterButton = {
click_function = 'GoatRemoveMonsterButtonClicked',
function_owner = self,
label = 'Remove Black Goat Monsters',
tooltip = "Removes only the Black Goat Monsters only from Setup (overriden by Black Goat selection)",
position = {3,0.75,-5.5},
width = 1380,
height = 240,
font_size = 100,
}
GoatAddSmallCardsButton = {
click_function = "GoatButtonAddSmallCardsClicked",
function_owner = self,
label = "Add Small Cards",
tooltip = "Add Goat Small Cards",
position = {5.5, 0.75, -5.5},
width = 880,
height = 240,
font_size = 100
}
GoatRemoveSmallCardsButton = {
click_function = "GoatButtonRemoveSmallCardsClicked",
function_owner = self,
label = "Remove Small Cards",
tooltip = "Remove Goat Small Cards",
position = {7.5, 0.75, -5.5},
width = 980,
height = 240
}
YellowAddButton = {
click_function = 'YellowButtonAddClicked',
function_owner = self,
label = 'Add The King in Yellow',
tooltip = "Add The King in Yellow Expansion set to the Setup",
position = {-6.5,0.75,-4.5},
width = 1380,
height = 240,
font_size = 100,
}
YellowRemoveButton = {
click_function = 'YellowButtonRemoveClicked',
function_owner = self,
label = 'Remove The King in Yellow',
tooltip = "Remove The King in Yellow Expansion set from Setup",
position = {-3.5,0.75,-4.5},
width = 1380,
height = 240,
font_size = 100,
}
YellowaddActsButton = {
click_function = 'YellowActsButtonAddClicked',
function_owner = self,
label = 'Add KIY Original Acts',
tooltip = "Adds the original King in Yellow acts to the Setup (overriden by King in Yellow selection)",
position = {0,0.75,-4.5},
width = 1380,
height = 240,
font_size = 100
}
YellowRemoveActsButton = {
click_function = 'YellowActsButtonRemoveClicked',
function_owner = self,
label = 'Remove KIY Original Acts',
tooltip = "Removes the original King in Yellow acts from Setup (overriden by King in Yellow selection)",
position = {3,0.75,-4.5},
width = 1380,
height = 240,
font_size = 100,
}
YellowAddSmallCardsButton = {
click_function = "YellowButtonAddSmallCardsClicked",
function_owner = self,
label = "Add Small Cards",
tooltip = "Add Yellow Small Cards",
position = {5.5, 0.75, -4.5},
width = 880,
height = 240,
font_size = 100
}
YellowRemoveSmallCardsButton = {
click_function = "YellowButtonRemoveSmallCardsClicked",
function_owner = self,
label = "Remove Small Cards",
tooltip = "Remove Yellow Small Cards",
position = {7.5, 0.75, -4.5},
width = 980,
height = 240
}

InnsmouthAddButton = {
click_function = 'InnsmouthButtonAddClicked',
function_owner = self,
label = 'Add Innsmouth Horror',
tooltip = "Add Innsmouth Horror Expansion set to the Setup",
position = {-6.5,0.75,-3.5},
width = 1380,
height = 240,
font_size = 100,
}
InnsmouthRemoveButton = {
click_function = 'InnsmouthButtonRemoveClicked',
function_owner = self,
label = 'Remove Innsmouth Horror',
tooltip = "Remove Innsmouth Horror Expansion set from Setup",
position = {-3.5,0.75,-3.5},
width = 1380,
height = 240,
font_size = 100,
}
InnsmouthaddMonsterButton = {
click_function = 'InnsmouthaddMonsterButtonClicked',
function_owner = self,
label = 'Add Innsmouth Monsters',
tooltip = "Adds only the Innsmouth Monsters to the Setup (overriden by Insmouth Horror selection)",
position = {0,0.75,-3.5},
width = 1380,
height = 240,
font_size = 100
}
InnsmouthRemoveMonsterButton = {
click_function = 'InnsmouthRemoveMonsterButtonClicked',
function_owner = self,
label = 'Remove Innsmouth Monsters',
tooltip = "Removes only the Innsmouth horror Monsters only from Setup (overriden by Insmouth Horror selection)",
position = {3,0.75,-3.5},
width = 1380,
height = 240,
font_size = 100,
}
InnsmouthAddSmallCardsButton = {
click_function = "InnsmouthButtonAddSmallCardsClicked",
function_owner = self,
label = "Add Small Cards",
tooltip = "Add Innsmouth Small Cards",
position = {5.5, 0.75, -3.5},
width = 880,
height = 240,
font_size = 100
}
InnsmouthRemoveSmallCardsButton = {
click_function = "InnsmouthButtonRemoveSmallCardsClicked",
function_owner = self,
label = "Remove Small Cards",
tooltip = "Remove Innsmouth Small Cards",
position = {7.5, 0.75, -3.5},
width = 980,
height = 240
}

KingsportAddButton = {
click_function = 'KingsportButtonAddClicked',
function_owner = self,
label = 'Add Kingsport Horror',
tooltip = "Add Kingsport Horror Expansion set to the Setup",
position = {-6.5,0.75,-2.5},
width = 1380,
height = 240,
font_size = 100,
}
KingsportRemoveButton = {
click_function = 'KingsportButtonRemoveClicked',
function_owner = self,
label = 'Remove Kingsport Horror',
tooltip = "Remove Kingsport Horror Expansion set from Setup",
position = {-3.5,0.75,-2.5},
width = 1380,
height = 240,
font_size = 100,
}
KingsportaddMonsterButton = {
click_function = 'KingsportaddMonsterButtonClicked',
function_owner = self,
label = 'Add Kingsport Monsters',
tooltip = "Adds only the Kingsport Horror Monsters to the Setup (overriden by Kingsport Horror selection)",
position = {0,0.75,-2.5},
width = 1380,
height = 240,
font_size = 100
}
KingsportRemoveMonsterButton = {
click_function = 'KingsportRemoveMonsterButtonClicked',
function_owner = self,
label = 'Remove Kingsport Monsters',
tooltip = "Removes only the Kingsport Horror Monsters from Setup (overriden by Kingsport Horror selection)",
position = {3,0.75,-2.5},
width = 1380,
height = 240,
font_size = 100,
}
KingsportAddSmallCardsButton = {
click_function = "KingsportButtonAddSmallCardsClicked",
function_owner = self,
label = "Add Small Cards",
tooltip = "Add Kingsport Small Cards",
position = {5.5, 0.75, -2.5},
width = 880,
height = 240,
font_size = 100
}
KingsportRemoveSmallCardsButton = {
click_function = "KingsportButtonRemoveSmallCardsClicked",
function_owner = self,
label = "Remove Small Cards",
tooltip = "Remove Kingsport Small Cards",
position = {7.5, 0.75, -2.5},
width = 980,
height = 240
}

DunwichAddButton = {
click_function = 'DunwichButtonAddClicked',
function_owner = self,
label = 'Add Dunwich Horror',
tooltip = "Add Dunwich Horror Expansion set to the Setup",
position = {-6.5,0.75,-1.5},
width = 1380,
height = 240,
font_size = 100,
}
DunwichRemoveButton = {
click_function = 'DunwichButtonRemoveClicked',
function_owner = self,
label = 'Remove Dunwich Horror',
tooltip = "Remove Dunwich Horror Expansion set from Setup",
position = {-3.5,0.75,-1.5},
width = 1380,
height = 240,
font_size = 100,
}
DunwichaddMonsterButton = {
click_function = 'DunwichaddMonsterButtonClicked',
function_owner = self,
label = 'Add Dunwich Monsters',
tooltip = "Adds only the Dunwich Horror Monsters to the Setup (overriden by Dunwich Horror selection)",
position = {0,0.75,-1.5},
width = 1380,
height = 240,
font_size = 100
}
DunwichRemoveMonsterButton = {
click_function = 'DunwichRemoveMonsterButtonClicked',
function_owner = self,
label = 'Remove Dunwich Monsters',
tooltip = "Removes Dunwich Monsters only from Setup (overriden by Dunwich Horror selection)",
position = {3,0.75,-1.5},
width = 1380,
height = 240,
font_size = 100,
}
DunwichAddSmallCardsButton = {
click_function = "DunwichButtonAddSmallCardsClicked",
function_owner = self,
label = "Add Small Cards",
tooltip = "Add Dunwich Small Cards",
position = {5.5, 0.75, -1.5},
width = 880,
height = 240,
font_size = 100
}
DunwichRemoveSmallCardsButton = {
click_function = "DunwichButtonRemoveSmallCardsClicked",
function_owner = self,
label = "Remove Small Cards",
tooltip = "Remove Dunwich Small Cards",
position = {7.5, 0.75, -1.5},
width = 980,
height = 240
}

MiskatonicAddButton = {
click_function = 'MiskatonicButtonAddClicked',
function_owner = self,
label = 'Add Miskatonic Horror',
tooltip = "Add Miskatonic Horror Expansion set to the Setup",
position = {-6.5,0.75,-0.5},
width = 1380,
height = 240,
font_size = 100,
}
MiskatonicRemoveButton = {
click_function = 'MiskatonicButtonRemoveClicked',
function_owner = self,
label = 'Remove Miskatonic Horror',
tooltip = "Remove Miskatonic Horror Expansion set from Setup",
position = {-3.5,0.75,-0.5},
width = 1380,
height = 240,
font_size = 100,
}
SetupButton = {
click_function = 'setupButtonClicked',
function_owner = self,
label = 'SETUP',
tooltip = "Perform the Chosen Setup",
position = {0,0.75,2.5},
width = 1680,
height = 640,
font_size = 400,
}