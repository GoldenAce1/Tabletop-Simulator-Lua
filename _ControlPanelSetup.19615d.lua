local GlobalVariablesId = '7fc89f'
GlobalVariables = getObjectFromGUID(GlobalVariablesId)
local CreateSetup = getObjectFromGUID('0f3048')

-- The objects it knows

function onload()
    
end

--Adds Lurker to the table
function LurkerToggleClicked()
    local LurkerSet = GlobalVariables.call('isLurkerSet')
    local LurkerSmallCardsOnly = GlobalVariables.call('isLurkerSmallCardsOnly')
    if LurkerSet == false then
        broadcastToAll("Lurker at the Threshold Set will be added", Table)
        
        LurkerSet = true
        GlobalVariables.call('setLurker',LurkerSet)   
        
        if LurkerSmallCardsOnly == true then
            Global.UI.setAttribute("LurkerSmallCardsImageToggle", "isOn", "false")
            broadcastToAll("Lurker at the Threshold Small Cards has been overridden", {1,0,0})
        end
    else
        LurkerSet = false
        GlobalVariables.call('setLurker',LurkerSet)
        broadcastToAll("Lurker at the Threshold Set will NOT be added", Table)
    end
end

-- Adds/removes the Lurker Gate Variant - Removes the original gates and does not add
-- gates for the big box expansions
function LurkerToggleVariantClicked()
    local LurkerGateSet = GlobalVariables.call('isLurkerGateSet')
    if LurkerGateSet == false then
        LurkerGateSet = true
        GlobalVariables.call('setLurkerGate',LurkerGateSet)
        broadcastToAll("Lurker at the Threshold Gate Variant will be added", Table)
    else
        LurkerGateSet = false
        GlobalVariables.call('setLurkerGate',LurkerGateSet)
        broadcastToAll("Lurker at the Threshold Gate Variant will NOT be added", Table)
    end
end

--Adds/removes Lurker smallcards to the table
function LurkerToggleSmallCardsClicked()
    local LurkerSet = GlobalVariables.call('isLurkerSet')
    local LurkerSmallCardsOnly = GlobalVariables.call('isLurkerSmallCardsOnly')
    
    if LurkerSet == true then
        broadcastToAll("The whole Lurker at the Threshold Set is Selected", {1,0,0})
        Global.UI.setAttribute("LurkerSmallCardsImageToggle", "isOn", "false")
    elseif LurkerSmallCardsOnly == false then
        LurkerSmallCardsOnly = true
        GlobalVariables.call('setLurkerSmallCardsOnly',LurkerSmallCardsOnly)
        broadcastToAll("The Lurker Small Cards only will be added", Table)
    else
        LurkerSmallCardsOnly = false
        GlobalVariables.call('setLurkerSmallCardsOnly',LurkerSmallCardsOnly)
        broadcastToAll("The Lurker Small Cards will NOT will be added", Table)
    end
end

--Adds Pharaoh to the table
function PharaohToggleClicked()
    local PharaohSet = GlobalVariables.call('isPharaohSet')
    local PharaohSmallCardsOnly = GlobalVariables.call('isPharaohSmallCardsOnly')
    
    if PharaohSet == false then
        broadcastToAll("The Curse of the Dark Pharaoh Revised Set will be added", Table)
        
        PharaohSet = true
        GlobalVariables.call('setPharaoh',PharaohSet)
        if PharaohSmallCardsOnly == true then
            Global.UI.setAttribute("PharaohSmallCardsImageToggle", "isOn", "false")
            broadcastToAll("The Curse of the Dark Pharaoh Revised Small Cards has been overridden", {1,0,0})
        end
        
    else
        PharaohSet = false
        GlobalVariables.call('setPharaoh',PharaohSet)
        broadcastToAll("The Curse of the Dark Pharaoh Revised Set will NOT be added", Table)
    end
end

--Adds Pharaoh to the table
function PharaohToggleSmallCardsClicked()
    local PharaohSet = GlobalVariables.call('isPharaohSet')
    local PharaohSmallCardsOnly = GlobalVariables.call('isPharaohSmallCardsOnly')    
    
    if PharaohSet == true then
        broadcastToAll("The whole Curse of the Dark Pharaoh Revised Set is Selected", {1,0,0})
        Global.UI.setAttribute("PharaohSmallCardsImageToggle", "isOn", "false")
    elseif PharaohSmallCardsOnly == false then
        PharaohSmallCardsOnly = true
        GlobalVariables.call('setPharaohSmallCardsOnly',PharaohSmallCardsOnly)
        broadcastToAll("The Curse of the Dark Pharaoh Revised Small Cards only will be added", Table)
    else
        PharaohSmallCardsOnly = false
        GlobalVariables.call('setPharaohSmallCardsOnly',PharaohSmallCardsOnly)
        broadcastToAll("The Curse of the Dark Pharaoh Revised Small Cards will NOT will be added", Table)
    end
end

--Adds Goat to the table
function GoatToggleClicked()
    local GoatSet = GlobalVariables.call('isGoatSet')
    local GoatMonsterOnly = GlobalVariables.call('isGoatMonsterOnly')
    local GoatSmallCardsOnly = GlobalVariables.call('isGoatSmallCardsOnly')
    
    if GoatSet == false then
        broadcastToAll("The Black Goat of the Woods Set will be added", Table)
        
        GoatSet = true
        GlobalVariables.call('setGoat',GoatSet)
        if GoatMonsterOnly == true then
            GoatMonsterOnly = false
            GlobalVariables.call('setGoatMonsterOnly',GoatMonsterOnly)
            Global.UI.setAttribute("GoatMonsterImageToggle", "isOn", "false")
            broadcastToAll("The Black Goat of the Woods Monsters Only has been overridden", {1,0,0})
        elseif GoatSmallCardsOnly == true then
            GoatSmallCardsOnly = false
            GlobalVariables.call('setGoatSmallCardsOnly',GoatSmallCardsOnly)
            Global.UI.setAttribute("GoatSmallCardsImageToggle", "isOn", "false")
            broadcastToAll("The Black Goat of the Woods Small Cards has been overridden", {1,0,0})
        end
    else
        GoatSet = false
        GlobalVariables.call('setGoat',GoatSet)
        broadcastToAll("The Black Goat of the Woods Set will NOT be added", Table)
    end
end

--Adds Goat to the table
function GoatToggleSmallCardsClicked()
    local GoatSet = GlobalVariables.call('isGoatSet')
    local GoatSmallCardsOnly = GlobalVariables.call('isGoatSmallCardsOnly')
    
    if GoatSet == true then
        broadcastToAll("The whole Black Goat of the Woods Set is Selected", {1,0,0})
        Global.UI.setAttribute("GoatSmallCardsImageToggle", "isOn", "false")
    elseif GoatSmallCardsOnly == false then
        GoatSmallCardsOnly = true
        GlobalVariables.call('setGoatSmallCardsOnly',GoatSmallCardsOnly)
        broadcastToAll("The Black Goat of the Woods Small Cards only will be added", Table)
    else
        GoatSmallCardsOnly = false
        GlobalVariables.call('setGoatSmallCardsOnly',GoatSmallCardsOnly)
        broadcastToAll("The Black Goat of the Woods Small Cards will NOT will be added", Table)
    end
end

--Adds Yellow to the table
function YellowToggleClicked()
    local YellowSet = GlobalVariables.call('isYellowSet')
    local YellowOriginalActs = GlobalVariables.call('isYellowOriginalActs')
    local YellowSmallCardsOnly = GlobalVariables.call('isYellowSmallCardsOnly')
    
    if YellowSet == false then
        if YellowOriginalActs == true then
            YellowOriginalActs = false
            GlobalVariables.call('setYellowOriginalActs',YellowOriginalActs)
            Global.UI.setAttribute("KiYOriginalActsImageToggle", "isOn", "false")
            broadcastToAll("The King in Yellow Original Acts has been overridden", {1,0,0})
        end
        if YellowSmallCardsOnly == true then
            YellowSmallCardsOnly = false
            GlobalVariables.call('setYellowSmallCardsOnly',YellowSmallCardsOnly)
            Global.UI.setAttribute("KiYSmallCardsImageToggle", "isOn", "false")
            broadcastToAll("The King in Yellow Small Cards has been overridden", {1,0,0})
            
        end
        YellowSet = true
        GlobalVariables.call('setYellow',YellowSet)
        broadcastToAll("The King in Yellow Set will be added (With Miskatonic Acts)", Table)
    else
        YellowSet = false
        GlobalVariables.call('setYellow',YellowSet)
        broadcastToAll("The King in Yellow Set will NOT be added", Table)
    end
end

--Adds Yellow to the table
function YellowButtonAddSmallCardsClicked()
    local YellowSet = GlobalVariables.call('isYellowSet')
    local YellowSmallCardsOnly = GlobalVariables.call('isYellowSmallCardsOnly')
    local YellowOriginalActs = GlobalVariables.call('isYellowOriginalActs')
    
    if YellowSet == true then
        broadcastToAll("The whole King in Yellow Set with MH Acts is Selected", {1,0,0})
        Global.UI.setAttribute("KiYSmallCardsImageToggle", "isOn", "false")
    elseif YellowOriginalActs == true then
        broadcastToAll("The whole King in Yellow Set with Original Acts is Selected", {1,0,0})
        Global.UI.setAttribute("KiYSmallCardsImageToggle", "isOn", "false")
    elseif YellowSmallCardsOnly == false then
        YellowSmallCardsOnly = true
        GlobalVariables.call('setYellowSmallCardsOnly',YellowSmallCardsOnly)
        broadcastToAll("The King in Yellow Small Cards only will be added", Table)
    else
        YellowSmallCardsOnly = false
        GlobalVariables.call('setYellowSmallCardsOnly',YellowSmallCardsOnly)
        broadcastToAll("The King in Yellow Small Cards will NOT will be added", Table)
    end
end

--Adds Innsmouth to the table
function InnsmouthToggleClicked()
    local InnsmouthSet = GlobalVariables.call('isInnsmouthSet')
    local InnsmouthMonsterOnly = GlobalVariables.call('isInnsmouthMonsterOnly')
    local InnsmouthSmallCardsOnly = GlobalVariables.call('isInnsmouthSmallCardsOnly')
    
    if InnsmouthSet == false then
        broadcastToAll("The Innsmouth Horror Set will be added", Table)
        
        if InnsmouthMonsterOnly == true then
            InnsmouthMonsterOnly = false
            GlobalVariables.call('setInnsmouthMonsterOnly',InnsmouthMonsterOnly)
            Global.UI.setAttribute("InnsmouthMonsterImageToggle", "isOn", "false")
            broadcastToAll("The Innsmouth Horror Monsters Only has been overridden", {1,0,0})
        elseif InnsmouthSmallCardsOnly == true then
            InnsmouthSmallCardsOnly = false
            GlobalVariables.call('setInnsmouthSmallCardsOnly',InnsmouthSmallCardsOnly)
            Global.UI.setAttribute("InnsmouthSmallCardsImageToggle", "isOn", "false")
            broadcastToAll("The Innsmouth Horror Small Cards has been overridden", {1,0,0})
        end
        
        InnsmouthSet = true
        InnsmouthMonsterOnly = false
        GlobalVariables.call('setInnsmouth',InnsmouthSet)
        GlobalVariables.call('setInnsmouthMonsterOnly',InnsmouthMonsterOnly)
    else
        InnsmouthSet = false
        GlobalVariables.call('setInnsmouth',InnsmouthSet)
        broadcastToAll("The Innsmouth Horror Set will NOT be added", Table)
    end
end

--Adds Innsmouth to the table
function InnsmouthToggleSmallCardsClicked()
    local InnsmouthSet = GlobalVariables.call('isInnsmouthSet')
    local InnsmouthSmallCardsOnly = GlobalVariables.call('isInnsmouthSmallCardsOnly')
    
    if InnsmouthSet == true then
        broadcastToAll("The whole Innsmouth Horror Set is Selected", {1,0,0})
        Global.UI.setAttribute("InnsmouthSmallCardsImageToggle", "isOn", "false")
    elseif InnsmouthSmallCardsOnly == false then
        InnsmouthSmallCardsOnly = true
        GlobalVariables.call('setInnsmouthSmallCardsOnly',InnsmouthSmallCardsOnly)
        broadcastToAll("The Innsmouth Horror Small Cards only will be added", Table)
    else
        InnsmouthSmallCardsOnly = false
        GlobalVariables.call('setInnsmouthSmallCardsOnly',InnsmouthSmallCardsOnly)
        broadcastToAll("The Innsmouth Horror Small Cards will NOT will be added", Table)
    end
end

--Adds Kingsport to the table
function KingsportToggleClicked()
    local KingsportSet = GlobalVariables.call('isKingsportSet')
    local KingsportMonsterOnly = GlobalVariables.call('isKingsportMonsterOnly')
    local KingsportSmallCardsOnly = GlobalVariables.call('isKingsportSmallCardsOnly')
    
    if KingsportSet == false then
        if KingsportMonsterOnly == true then
            KingsportMonsterOnly = false
            GlobalVariables.call('setKingsportMonsterOnly',KingsportMonsterOnly)
            Global.UI.setAttribute("KingsportMonsterImageToggle", "isOn", "false")
            broadcastToAll("The Kingsport Horror Monsters Only has been overridden", {1,0,0})
        end
        if KingsportSmallCardsOnly == true then
            KingsportSmallCardsOnly = false
            GlobalVariables.call('setKingsportSmallCardsOnly',KingsportSmallCardsOnly)
            Global.UI.setAttribute("KingsportSmallCardsImageToggle", "isOn", "false")
            broadcastToAll("The Kingsport Horror Small Cards has been overridden", {1,0,0})
        end
        
        KingsportSet = true       
        GlobalVariables.call('setKingsport',KingsportSet)
        broadcastToAll("The Kingsport Horror Set will be added", Table)
    else
        KingsportSet = false
        GlobalVariables.call('setKingsport',KingsportSet)
        broadcastToAll("The Kingsport Horror Set will NOT be added", Table)
    end
end

--Adds Kingsport to the table
function KingsportToggleSmallCardsClicked()
    local KingsportSet = GlobalVariables.call('isKingsportSet')
    local KingsportSmallCardsOnly = GlobalVariables.call('isKingsportSmallCardsOnly')
    
    if KingsportSet == true then
        broadcastToAll("The whole Kingsport Horror Set is Selected", {1,0,0})
        Global.UI.setAttribute("KingsportSmallCardsImageToggle", "isOn", "false")
    elseif KingsportSmallCardsOnly == false then
        KingsportSmallCardsOnly = true
        GlobalVariables.call('setKingsportSmallCardsOnly',KingsportSmallCardsOnly)
        broadcastToAll("The Kingsport Small Cards only will be added", Table)
    else
        KingsportSmallCardsOnly = false
        GlobalVariables.call('setKingsportSmallCardsOnly',KingsportSmallCardsOnly)
        broadcastToAll("The Kingsport Small Cards will NOT will be added", Table)
    end
end

--Adds Dunwich to the table
function DunwichToggleClicked()
    local DunwichSet = GlobalVariables.call('isDunwichSet')
    local DunwichMonsterOnly = GlobalVariables.call('isDunwichMonsterOnly')
    local DunwichSmallCardsOnly = GlobalVariables.call('isDunwichSmallCardsOnly')
    
    
    if DunwichSet == false then
        broadcastToAll("The Dunwich Horror Set will be added", Table)
        
        if DunwichMonsterOnly == true then
            DunwichMonsterOnly = false
            GlobalVariables.call('setDunwichMonsterOnly',DunwichMonsterOnly)
            Global.UI.setAttribute("DunwichMonsterImageToggle", "isOn", "false")
            broadcastToAll("The Dunwich Horror Monsters Only has been overridden", {1,0,0})
        elseif DunwichSmallCardsOnly == true then
            DunwichSmallCardsOnly = false
            GlobalVariables.call('setDunwichSmallCardsOnly',DunwichSmallCardsOnly)
            Global.UI.setAttribute("DunwichSmallCardsImageToggle", "isOn", "false")
            broadcastToAll("The Dunwich Horror Small Cards has been overridden", {1,0,0})
        end
        
        DunwichSet = true
        DunwichMonsterOnly = false
        
        GlobalVariables.call('setDunwich',DunwichSet)
        GlobalVariables.call('setDunwichMonsterOnly',DunwichMonsterOnly)
        
    else
        DunwichSet = false
        GlobalVariables.call('setDunwich',DunwichSet)
        broadcastToAll("The Dunwich Horror Set will NOT be added", Table)
    end
end

--Adds Dunwich to the table
function DunwichToggleSmallCardsClicked()
    local DunwichSet = GlobalVariables.call('isDunwichSet')
    local DunwichSmallCardsOnly = GlobalVariables.call('isDunwichSmallCardsOnly')
    
    if DunwichSet == true then
        broadcastToAll("The whole Dunwich Horror Set is Selected", {1,0,0})
        Global.UI.setAttribute("DunwichSmallCardsImageToggle", "isOn", "false")
    elseif DunwichSmallCardsOnly == false then
        DunwichSmallCardsOnly = true
        GlobalVariables.call('setDunwichSmallCardsOnly',DunwichSmallCardsOnly)
        broadcastToAll("The Dunwich Horror Small Cards only will be added", Table)
    else
        DunwichSmallCardsOnly = false
        GlobalVariables.call('setDunwichSmallCardsOnly',DunwichSmallCardsOnly)
        broadcastToAll("The Dunwich Horror Small Cards will NOT will be added", Table)
    end
end

--
function MiskatonicToggleClicked(MiskatonicSet)
    local MiskatonicSet = GlobalVariables.call('isMiskatonicSet')
    if MiskatonicSet == false then
        
        MiskatonicSet = true
        GlobalVariables.call('setMiskatonic',MiskatonicSet)
        broadcastToAll("The Miskatonic Horror Set will be added", Table)
    else
        MiskatonicSet = false
        GlobalVariables.call('setMiskatonic',MiskatonicSet)
        broadcastToAll("The Miskatonic Horror Set will NOT be added", Table)
    end
end

function setupButtonClicked()
    
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

    if LurkerSet == nil then
        LurkerSet = false
        GlobalVariables.call('setLurker',LurkerSet)
    end
    
    if PharaohSet == nil then
        PharaohSet = false
        GlobalVariables.call('setPharaoh',PharaohSet)
    end
    
    if GoatSet == nil then
        GoatSet = false
        GlobalVariables.call('setGoat',GoatSet)
    end
    
    if YellowSet == nil then
        YellowSet = false
        GlobalVariables.call('setYellow',YellowSet)
    end
    
    if InnsmouthSet == nil then
        InnsmouthSet = false
        GlobalVariables.call('setInnsmouth',InnsmouthSet)
    end
    
    if KingsportSet == nil then
        KingsportSet = false
        GlobalVariables.call('setKingsport',KingsportSet)
    end
    
    if DunwichSet == nil then
        DunwichSet = false
        GlobalVariables.call('setDunwich',DunwichSet)
    end
    
    if MiskatonicSet == nil then
        MiskatonicSet = false
        GlobalVariables.call('setMiskatonic',MiskatonicSet)
    end
    
    if LurkerGateSet == nil then
        LurkerGateSet = false
        GlobalVariables.call('setLurkerGateSet',LurkerGateSet)
    end
    
    if DunwichMonsterOnly == nil then
        DunwichMonsterOnly = false
        GlobalVariables.call('setDunwichMonsterOnly',DunwichMonsterOnly)
    end
    
    if InnsmouthMonsterOnly == nil then
        InnsmouthMonsterOnly = false
        GlobalVariables.call('setInnsmouthMonsterOnly',InnsmouthMonsterOnly)
    end
    
    if KingsportMonsterOnly == nil then
        KingsportMonsterOnly = false
        GlobalVariables.call('setKingsportMonsterOnly',KingsportMonsterOnly)
    end
    
    if GoatMonsterOnly == nil then
        GoatMonsterOnly = false
        GlobalVariables.call('setGoatMonsterOnly',GoatMonsterOnly)
    end
    
    if YellowOriginalActs == nil then
        YellowOriginalActs = false
        GlobalVariables.call('setYellowOriginalActs',YellowOriginalActs)
    end
    
    if LurkerSmallCardsOnly == nil then
        LurkerSmallCardsOnly = false
        GlobalVariables.call('setLurkerSmallCardsOnly',LurkerSmallCardsOnly)
    end
    
    if PharaohSmallCardsOnly == nil then
        PharaohSmallCardsOnly = false
        GlobalVariables.call('setPharaohSmallCardsOnly',PharaohSmallCardsOnly)
    end
    
    if GoatSmallCardsOnly == nil then
        GoatSmallCardsOnly = false
        GlobalVariables.call('setGoatSmallCardsOnly',GoatSmallCardsOnly)
    end
    
    if YellowSmallCardsOnly == nil then
        YellowSmallCardsOnly = false
        GlobalVariables.call('setYellowSmallCardsOnly',YellowSmallCardsOnly)
    end
    
    if InnsmouthSmallCardsOnly == nil then
        InnsmouthSmallCardsOnly = false
        GlobalVariables.call('setInnsmouthSmallCardsOnly',InnsmouthSmallCardsOnly)
    end
    
    if KingsportSmallCardsOnly == nil then
        KingsportSmallCardsOnly = false
        GlobalVariables.call('setKingsportSmallCardsOnly',KingsportSmallCardsOnly)
    end
    
    if DunwichSmallCardsOnly == nil then
        DunwichSmallCardsOnly = false
        GlobalVariables.call('setDunwichSmallCardsOnly',DunwichSmallCardsOnly)
    end  
    
    -- Remove the Setup button
    GlobalVariables.call('setisSetupPerformed', false)
    Global.UI.hide("SetupWindow") 
    Global.UI.setAttribute("SetupWindow", "active", false)
    Global.UI.setAttribute("SetupShow", "active", false)
    
    CreateSetup.call('performSetup')
end

--Adds Goat to the table
function GoatToggleMonsterClicked()
    local GoatSet = GlobalVariables.call('isGoatSet')
    local GoatMonsterOnly = GlobalVariables.call('isGoatMonsterOnly')
    
    if GoatSet == true then
        broadcastToAll("The whole Black Goat of the Woods Set is Selected", {1,0,0})
        Global.UI.setAttribute("GoatMonsterImageToggle", "isOn", "false")
    elseif GoatMonsterOnly == false then
        GoatMonsterOnly = true
        GlobalVariables.call('setGoatMonsterOnly',GoatMonsterOnly)
        broadcastToAll("The Black Goat Monsters only will be added", Table)
    else
        GoatMonsterOnly = false
        GlobalVariables.call('setGoatMonsterOnly',GoatMonsterOnly)
        broadcastToAll("The Black Goat Monsters will NOT will be added", Table)
    end
end

--Adds Yellow to the table
function YellowActstoggleClicked()
    local YellowSet = GlobalVariables.call('isYellowSet')
    local YellowOriginalActs = GlobalVariables.call('isYellowOriginalActs')
    local YellowSmallCardsOnly = GlobalVariables.call('isYellowSmallCardsOnly')
    
    if YellowOriginalActs == false then
        
        if YellowSet == true then
            broadcastToAll("The King in Yellow Set with MH Acts was overridden", {1,0,0})
            YellowSet = false
            GlobalVariables.call('setYellow',YellowSet)
            Global.UI.setAttribute("KiYImageToggle", "isOn", "false")
        end
        if YellowSmallCardsOnly == true then
            broadcastToAll("The King in Yellow Small Cards was overridden", {1,0,0})
            YellowSmallCardsOnly = false
            GlobalVariables.call('setYellowSmallCardsOnly',YellowSmallCardsOnly)
            Global.UI.setAttribute("KiYSmallCardsImageToggle", "isOn", "false")
        end
        
        YellowOriginalActs = true
        GlobalVariables.call('setYellowOriginalActs',YellowOriginalActs)
        broadcastToAll("The King in Yellow Set will be added (With The Original expansion acts)", Table)
    else
        YellowOriginalActs = false
        GlobalVariables.call('setYellowOriginalActs',YellowOriginalActs)
        broadcastToAll("The King in Yellow Set will NOT be added (With The Original expansion acts)", Table)
    end
end



--Adds Innsmouth Monsters to the table
function InnsmouthToggleMonsterClicked()
    local InnsmouthSet = GlobalVariables.call('isInnsmouthSet')
    local InnsmouthMonsterOnly = GlobalVariables.call('isInnsmouthMonsterOnly')
    
    if InnsmouthSet == true then
        broadcastToAll("The whole Innsmouth Horror Set is Selected", {1,0,0})
        Global.UI.setAttribute("InnsmouthMonsterImageToggle", "isOn", "false")
    elseif InnsmouthMonsterOnly == false then
        InnsmouthMonsterOnly = true
        GlobalVariables.call('setInnsmouthMonsterOnly',InnsmouthMonsterOnly)
        broadcastToAll("The Innsmouth Horror Monsters only will be added", Table)
    else
        InnsmouthMonsterOnly = false
        GlobalVariables.call('setInnsmouthMonsterOnly',InnsmouthMonsterOnly)
        broadcastToAll("The Innsmouth Horror Monsters will NOT will be added", Table)
    end
end

--Adds Dunwich to the table
function DunwichToggleMonsterClicked()
    local DunwichSet = GlobalVariables.call('isDunwichSet')
    local DunwichMonsterOnly = GlobalVariables.call('isDunwichMonsterOnly')
    
    if DunwichSet == true then
        broadcastToAll("The whole Dunwich Horror Set is Selected", {1,0,0})
        Global.UI.setAttribute("DunwichMonsterImageToggle", "isOn", "false")
    elseif DunwichMonsterOnly == false then
        DunwichMonsterOnly = true
        GlobalVariables.call('setDunwichMonsterOnly',DunwichMonsterOnly)
        broadcastToAll("The Dunwich Horror Monsters only will be added", Table)
    else
        DunwichMonsterOnly = false
        GlobalVariables.call('setDunwichMonsterOnly',DunwichMonsterOnly)
        broadcastToAll("The Dunwich Horror Monsters will NOT will be added", Table)
    end
end

--Adds Kingsport to the table
function KingsportToggleMonsterClicked()
    local KingsportSet = GlobalVariables.call('isKingsportSet')
    local KingsportMonsterOnly = GlobalVariables.call('isKingsportMonsterOnly')
    
    if KingsportSet == true then
        broadcastToAll("The whole Kingsport Horror Set is Selected", {1,0,0})
        Global.UI.setAttribute("KingsportMonsterImageToggle", "isOn", "false")
    elseif KingsportMonsterOnly == false then
        KingsportMonsterOnly = true
        GlobalVariables.call('setKingsportMonsterOnly',KingsportMonsterOnly)
        broadcastToAll("The Kingsport Horror Monsters only will be added", Table)
    else
        KingsportMonsterOnly = false
        GlobalVariables.call('setKingsportMonsterOnly',KingsportMonsterOnly)
        broadcastToAll("The Kingsport Horror Monsters will NOT will be added", Table)
    end
end