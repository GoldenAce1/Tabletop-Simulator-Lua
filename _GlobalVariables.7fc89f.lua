-- Call me by:
--local GlobalVariablesId = '7fc89f'
--GlobalVariables = getObjectFromGUID(GlobalVariablesId)

--Stores the variables, tables and all the variables. Keeps Global clean of this visual trash


--------------------------- Setup Performed?

local isSetupPerformed = false

-------------------------------------Board Variables
local Board_Northside_deck_id = '5b4e01'
local Board_Downtown_deck_id = 'ff194f'
local Board_Easttown_deck_id = 'a2f1a3'
local Board_Merchant_deck_id = '7cef3a'
local Board_Rivertown_deck_id = '296cbf'
local Board_Miskatonic_deck_id = '6498d4'
local Board_French_deck_id = '8e5ce3'
local Board_Uptown_deck_id = '90385e'
local Board_Southside_deck_id = '8a77a4'

local Board_Common_deck_id = '1b56d4'
local Board_Unique_deck_id = '3ff256'
local Board_Spells_deck_id = '0a0fff'
local Board_Skills_deck_id = '9e3c21'
local Board_Allies_deck_id = '5a68e6'
-- local Board_Relationship_deck_id = '631c18'
local Board_Relationship_deck_id = '054a22'
local Board_Injury_deck_id = '7f41df'
local Board_Madness_deck_id = '57ea24'
local Board_Bank_Loan_deck_id = 'd01ce3'
local Board_Red_Epic_Battle_deck_id = '19d83a'
local Board_Green_Epic_Battle_deck_id = 'e78b6c'
local Board_Retainer_Deck_Id = '99985f'
local Board_Blessing_Curse_Deck_Id = '9dab84'
local Silver_Twilight_Lodge_Deck_Id = 'c211ef'
local Board_Deputy_deck_id = 'fe2337'
local Board_Deputy_Scripting_Zone_Id = 'a5698a'
 
local Board_Gate_Bag_id = '8c026b'
local Board_Monster_Bag_id ='f9fe2d'
local Board_Mask_Monster_Bag_Id = '390884'

local Board_Mythos_deck_id = 'c93c23'

local Board_Gate_deck_id = '85633d'
local Board_Gate_deck_Position = {3.63, 0.89, 12.90}
local Board_Gate_Deck_Scripting_Zone_Id = '576baf'

local Board_Gate_Discard_Scripting_zone_Id = '9f59c5'
local Board_Gate_Discard_Position = {3.57, 0.65, 16.43}

local Board_Unused_Gates_Position = {-98.9, 3.49, 59.83}
local Board_Gate_Bag_Position = {10.29, 0.45, 21.15}

local Board_Monster_Bag_Position = {8.30, 1.02, 12.48}

local Board_Common_Item_Discard = {39.99, 0.44, -20.04}
local Board_Unique_Item_Discard = {39.99, 0.44, -13.73}
local Board_Spell_Discard = {40.10, 0.44, -7.47}
local Board_Skill_Discard = {40.10, 0.44, -0.85}
local Board_Ally_Discard = {40.10, 0.44, 5.75}
local Board_Injury_Discard = {40.25, 0.44, 13.17}
local Board_Madness_Discard = {45.33, 0.44, 13.17}

local Board_Bless_Curse_Discard = {20.36, 1.01, 15.50}
local Board_Deputy_Discard = {20.44, 1.01, 18.29}
local Board_Bank_Loan_Discard = {20.63, 0.73, 21.69}
local Board_Changed_Discard = {24.89, 1.01, 12.91}
local Board_Captain_Discard = {25.33, 0.60, 16.52}
local Board_Sheldon_Discard = {25.32, 0.64, 20.21}
local Board_Sheldon_Rotation = {0, 90, 0}
local Board_Rail_Pass_Discard = {25.29, 0.64, 28.46}
local Board_Magical_Effect_Discard = {34.79, 0.63, 28.99}
local Board_Silver_Twilight_Lodge_Discard = {20.60, 0.73, 25.12}
local Board_Retainer_Discard = {20.29, 1.01, 12.83}
local Board_Relationship_Discard = {45.70, 0.57, 5.73}
local Pharaoh_Detriments_Discard = {30.11, 0.61, 17.15}
local Pharaoh_Benefits_Discard = {30.12, 0.62, 13.30}
local Goat_Corruption_Discard = {29.95, 0.59, 24.34}
local Pharaoh_Exhibit_Items_Discard = {38.15, 0.58, 15.07}
local Goat_Membership_Discard = {35.02, 0.63, 25.30}
local Board_Mythos_Scale = {1.25, 1.00, 1.25}
local Board_Gate_Scale = {1.25, 1.00, 1.25}
local Board_Common_Scale = {1.25, 1.00, 1.25}
local Board_Unique_Scale = {1.25, 1.00, 1.25}
local Board_Spells_Scale = {1.25, 1.00, 1.25}
local Board_Skills_Scale = {1.25, 1.00, 1.25}
local Board_Allies_Scale = {1.25, 1.00, 1.25}
local Board_Northside_Scale = {1.25, 1.00, 1.25}
local Board_Downtown_Scale = {1.25, 1.00, 1.25}
local Board_Easttown_Scale = {1.25, 1.00, 1.25}
local Board_Merchant_Scale = {1.25, 1.00, 1.25}
local Board_Rivertown_Scale = {1.25, 1.00, 1.25}
local Board_Miskatonic_Scale = {1.25, 1.00, 1.25}
local Board_French_Scale = {1.25, 1.00, 1.25}
local Board_Uptown_Scale = {1.25, 1.00, 1.25}
local Board_Southside_Scale = {1.25, 1.00, 1.25}

local Board_First_Player_Marker = '0714fc'
local Board_Phase_Controller = '5db38d'

-- Board Variables
local Board_Decks_Shuffle = {'5b4e01','ff194f','a2f1a3','7cef3a','296cbf',
'6498d4','8e5ce3','90385e','8a77a4','1b56d4',
'3ff256','0a0fff','9e3c21','5a68e6','054a22',
'7f41df','57ea24','d01ce3','19d83a','e78b6c',
'c93c23','85633d'}

--------------------------- Expansion-Specific
local Dunwich_Condition_Deck_id = ''
local Dunwich_Sheldon_Gang_Deck_id = ''
local Dunwich_Rail_Pass_Deck_id = ''
local Dunwich_Horror_Deck_id = ''
local Dunwich_Horror_Deck_Discard = {45.93, 0.57, 20.99}
local Dunwich_Horror_Token_id = '9637e5'
local Dunwich_Horror_Monster_id = '2afa8a'
local Dunwich_Village_Commons_Deck_id = ''
local Dunwich_Backwoods_Deck_id = ''
local Dunwich_Blasted_Heath_Deck_id = ''
local Dunwich_Condition_Deck_pos = {25.48, 0.63, 24.66}
local Dunwich_Condition_Deck_rot = {0,90,0}

-- Innsmouth Horror
local Innsmouth_Look_Deck_id = ''
local Innsmouth_Factory_Deck_id = ''
local Innsmouth_Shore_Deck_id = ''
local Innsmouth_Church_Deck_id = ''
local Innsmouth_Deep_one_Uprising_Token_id = ''
local Innsmouth_Clue_Tokens_id = ''

-- Kingsport Horror
local Kingsport_Captain_Deck_id = ''
local Kingsport_Changed_Deck_id = ''
local Kingsport_Head_Deck_id = ''
local Kingsport_Harborside_Deck_id = ''
local Kingsport_Central_Hill_Deck_id = ''
local Kingsport_South_Shore_Deck_id = ''
local Kingsport_Rift_Progress_Marker_Bag_id = '3151a5'

-- The King in Yellow
local Yellow_Acts_Deck_id = ''
local Yellow_Original_Acts_Deck_id = ''
local Yellow_Magical_Effect_Deck_id= ''

-- The Black Goat of the woods
local Goat_Encounters_Deck_id = ''
local Goat_Encounters_Deck_pos = {34.96, 0.59, 21.33}
local Goat_Encounters_Deck_rot = {0,90,180}
local Goat_Membership_Deck_id = ''
local Goat_Red_Corruption_Deck_id = ''
local Goat_Green_Corruption_Deck_Id = ''

-- The Curse of the Dark Pharaoh
local Pharaoh_Benefits_Deck_id = ''
local Pharaoh_Detriments_Deck_id = ''
local Pharaoh_Exhibit_Item_Deck_id = ''
local Pharaoh_Exhibit_Encounter_Deck_Id = ''
local Pharaoh_Exhibit_Encounter_Deck_pos = {34.93, 0.72, 17.11}
local Pharaoh_Exhibit_Encounter_Deck_rot = {0.08, 90.00, 179.98}
local Pharaoh_Patrol_Marker_Id = ''
local Pharaoh_Ancient_Whispers_Token_Id = ''

-- board types - If big expansion apply, only one will be lit
local InnsmouthSolo = false
local KingsportSolo = false
local DunwichSolo = false
local KingsportDunwich = false
local InnsmouthKingsport = false
local InnsmouthDunwich = false
-- The bravest man of all - All boards!
local AllThreeBoards = false

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

local OutskirtsScriptingZoneId = 'cb6df9'

function onSave()
    local state = {}
    
    state.InnsmouthSolo = InnsmouthSolo
    state.KingsportSolo = KingsportSolo
    state.DunwichSolo = DunwichSolo
    state.KingsportDunwich = KingsportDunwich
    state.InnsmouthKingsport = InnsmouthKingsport
    state.InnsmouthDunwich = InnsmouthDunwich
    state.AllThreeBoards = AllThreeBoards
    state.Dunwich_Condition_Deck_id = Dunwich_Condition_Deck_id
    state.Dunwich_Sheldon_Gang_Deck_id = Dunwich_Sheldon_Gang_Deck_id
    state.Dunwich_Rail_Pass_Deck_id = Dunwich_Rail_Pass_Deck_id
    state.Dunwich_Horror_Deck_id = Dunwich_Horror_Deck_id
    state.Dunwich_Horror_Token_id = Dunwich_Horror_Token_id
    state.Dunwich_Horror_Monster_id = Dunwich_Horror_Monster_id
    state.Dunwich_Village_Commons_Deck_id = Dunwich_Village_Commons_Deck_id
    state.Dunwich_Backwoods_Deck_id = Dunwich_Backwoods_Deck_id
    state.Dunwich_Blasted_Heath_Deck_id = Dunwich_Blasted_Heath_Deck_id
    state.Innsmouth_Look_Deck_id = Innsmouth_Look_Deck_id
    state.Innsmouth_Factory_Deck_id = Innsmouth_Factory_Deck_id
    state.Innsmouth_Shore_Deck_id = Innsmouth_Shore_Deck_id
    state.Innsmouth_Church_Deck_id = Innsmouth_Church_Deck_id
    state.Innsmouth_Deep_one_Uprising_Token_id = Innsmouth_Deep_one_Uprising_Token_id
    state.Innsmouth_Clue_Tokens_id = Innsmouth_Clue_Tokens_id
    state.Kingsport_Captain_Deck_id = Kingsport_Captain_Deck_id
    state.Kingsport_Changed_Deck_id = Kingsport_Changed_Deck_id
    state.Kingsport_Head_Deck_id = Kingsport_Head_Deck_id
    state.Kingsport_Harborside_Deck_id = Kingsport_Harborside_Deck_id
    state.Kingsport_Central_Hill_Deck_id = Kingsport_Central_Hill_Deck_id
    state.Kingsport_South_Shore_Deck_id = Kingsport_South_Shore_Deck_id
    state.Kingsport_Rift_Progress_Marker_Bag_id = Kingsport_Rift_Progress_Marker_Bag_id
    state.Yellow_Acts_Deck_id = Yellow_Acts_Deck_id
    state.Yellow_Original_Acts_Deck_id = Yellow_Original_Acts_Deck_id
    state.Yellow_Magical_Effect_Deck_id = Yellow_Magical_Effect_Deck_id
    state.Goat_Encounters_Deck_id = Goat_Encounters_Deck_id
    state.Goat_Membership_Deck_id = Goat_Membership_Deck_id
    state.Goat_Red_Corruption_Deck_id = Goat_Red_Corruption_Deck_id
    state.Goat_Green_Corruption_Deck_Id = Goat_Green_Corruption_Deck_Id
    state.Pharaoh_Benefits_Deck_id = Pharaoh_Benefits_Deck_id
    state.Pharaoh_Detriments_Deck_id = Pharaoh_Detriments_Deck_id
    state.Pharaoh_Exhibit_Item_Deck_id = Pharaoh_Exhibit_Item_Deck_id
    state.Pharaoh_Exhibit_Encounter_Deck_Id  = Pharaoh_Exhibit_Encounter_Deck_Id 
    state.Pharaoh_Patrol_Marker_Id = Pharaoh_Patrol_Marker_Id
    state.Pharaoh_Ancient_Whispers_Token_Id = Pharaoh_Ancient_Whispers_Token_Id
    
    -- From ControlPanelVariables
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
    state.isSetupPerformed = isSetupPerformed
    
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
        -- From ControlPanelVariables
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

        isSetupPerformed = data.isSetupPerformed        
        InnsmouthSolo = data.InnsmouthSolo
        KingsportSolo = data.KingsportSolo
        DunwichSolo = data.DunwichSolo
        KingsportDunwich = data.KingsportDunwich
        InnsmouthKingsport = data.InnsmouthKingsport
        InnsmouthDunwich = data.InnsmouthDunwich
        AllThreeBoards = data.AllThreeBoards
        Dunwich_Condition_Deck_id = data.Dunwich_Condition_Deck_id
        Dunwich_Sheldon_Gang_Deck_id = data.Dunwich_Sheldon_Gang_Deck_id
        Dunwich_Rail_Pass_Deck_id = data.Dunwich_Rail_Pass_Deck_id
        Dunwich_Horror_Deck_id = data.Dunwich_Horror_Deck_id
        Dunwich_Horror_Token_id = data.Dunwich_Horror_Token_id
        Dunwich_Horror_Monster_id = data.Dunwich_Horror_Monster_id
        Dunwich_Village_Commons_Deck_id = data.Dunwich_Village_Commons_Deck_id
        Dunwich_Backwoods_Deck_id = data.Dunwich_Backwoods_Deck_id
        Dunwich_Blasted_Heath_Deck_id = data.Dunwich_Blasted_Heath_Deck_id
        Innsmouth_Look_Deck_id = data.Innsmouth_Look_Deck_id
        Innsmouth_Factory_Deck_id = data.Innsmouth_Factory_Deck_id
        Innsmouth_Shore_Deck_id = data.Innsmouth_Shore_Deck_id
        Innsmouth_Church_Deck_id = data.Innsmouth_Church_Deck_id
        Innsmouth_Deep_one_Uprising_Token_id = data.Innsmouth_Deep_one_Uprising_Token_id
        Innsmouth_Clue_Tokens_id = data.Innsmouth_Clue_Tokens_id
        Kingsport_Captain_Deck_id = data.Kingsport_Captain_Deck_id
        Kingsport_Changed_Deck_id = data.Kingsport_Changed_Deck_id
        Kingsport_Head_Deck_id = data.Kingsport_Head_Deck_id
        Kingsport_Harborside_Deck_id = data.Kingsport_Harborside_Deck_id
        Kingsport_Central_Hill_Deck_id = data.Kingsport_Central_Hill_Deck_id
        Kingsport_South_Shore_Deck_id = data.Kingsport_South_Shore_Deck_id
        Kingsport_Rift_Progress_Marker_Bag_id = data.Kingsport_Rift_Progress_Marker_Bag_id
        Yellow_Acts_Deck_id = data.Yellow_Acts_Deck_id
        Yellow_Original_Acts_Deck_id = data.Yellow_Original_Acts_Deck_id
        Yellow_Magical_Effect_Deck_id = data.Yellow_Magical_Effect_Deck_id
        Goat_Encounters_Deck_id = data.Goat_Encounters_Deck_id
        Goat_Membership_Deck_id = data.Goat_Membership_Deck_id
        Goat_Red_Corruption_Deck_id = data.Goat_Red_Corruption_Deck_id
        Goat_Green_Corruption_Deck_Id = data.Goat_Green_Corruption_Deck_Id
        Pharaoh_Benefits_Deck_id = data.Pharaoh_Benefits_Deck_id
        Pharaoh_Detriments_Deck_id = data.Pharaoh_Detriments_Deck_id
        Pharaoh_Exhibit_Item_Deck_id = data.Pharaoh_Exhibit_Item_Deck_id
        Pharaoh_Exhibit_Encounter_Deck_Id  = data.Pharaoh_Exhibit_Encounter_Deck_Id 
        Pharaoh_Patrol_Marker_Id = data.Pharaoh_Patrol_Marker_Id
        Pharaoh_Ancient_Whispers_Token_Id = data.Pharaoh_Ancient_Whispers_Token_Id

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
        isSetupPerformed = false     
    end

end

--used to return the location color for the XML
local locations_ColorXML = {
    ["Ye Olde Magick Shoppe"] = '#DA1918',
    ["Woods"] = '#DA1918',
    ["Historical Society"] = '#8B5A13',
    ["South Church"] = '#8B5A13',
    ["Ma's Boarding House"] = '#8B5A13',
    ["Southside Streets"] = '#8B5A13',
    ["Uptown Streets"] = '#DA1918',
    ["St. Mary's Hospital"] = '#DA1918',
    ["Administration"] = '#B78817',
    ["Library"] = '#B78817',
    ["Silver Twilight Lodge"] = '#0A8187',
    ["The Witch House"] = '#0A8187',
    ["French Hill Streets"] = '#0A8187',
    ["Science Building"] = '#B78817',
    ["Miskatonic University Streets"] = '#B78817',
    ["River Docks"] = '#3B6C22',
    ["The Unnamable"] = '#3B6C22',
    ["General Store"] = '#724F88',
    ["Black Cave"] = '#724F88',
    ["Graveyard"] = '#724F88',
    ["Rivertown Streets"] = '#724F88',
    ["Merchant District Streets"] = '#3B6C22',
    ["Unvisited Isle"] = '#3B6C22',
    ["Curiositie Shoppe"] = '#A94216',
    ["Easttown Streets"] = '#684B32',
    ["Police Station"] = '#684B32',
    ["Velma's Diner"] = '#684B32',
    ["Hibb's Roadhouse"] = '#684B32',
    ["Downtown Streets"] = '#D2D2D2',
    ["Northside Streets"] = '#A94216',
    ["Newspaper"] = '#A94216',
    ["Train Station"] = '#A94216',
    ["Bank of Arkham"] = '#D2D2D2',
    ["Arkham Asylum"] = '#D2D2D2',
    ["Independence Square"] = '#D2D2D2',
    ["Another Dimention"] = '#484848',
    ["Abyss"] = '#484848',
    ["City of the Great Race"] = '#484848',
    ["Yuggoth"] = '#484848',
    ["Great Hall of Celeano"] = '#484848',
    ["The Dreamlands"] = '#484848',
    ["Plateau of Leng"] = '#484848',
    ["R'lyeh"] = '#484848',
    ["Falcon Point"] = '#07A407',
    ["Innsmouth Shore Streets"] = '#07A407',
    ["Marsh Refinery"] = '#434BFD',
    ["Gilman House Hotel"] = '#434BFD',
    ["First National Grocery"] = '#434BFD',
    ["Factory District Streets"] = '#434BFD',
    ["Church Green Streets"] = '#FFD980',
    ["Joe Sargent's Bus Service"] = '#484848',
    ["Y'ha-Nthlei"] = '#07A407',
    ["Devil Reef"] = '#07A407',
    ["Esoteric Order of Dagon"] = '#FFD980',
    ["Sawbone Alley"] = '#FFD980',
    ["Innsmouth Jail"] = '#FFD980',
    ["Darke's Carnival"] = '#127A02',
    ["Bishop's Brook Bridge"] = '#127A02',
    ["Dunwich Village"] = '#127A02',
    ["Harney Jones' Shack"] = '#075584',
    ["Cold Spring Glen"] = '#4A000D',
    ["Village Commons Streets"] = '#127A02',
    ["Devil's Hopyard"] = '#075584',
    ["Blasted Heath Streets"] = '#075584',
    ["Sentinel Hill"] = '#484848',
    ["Backwoods Country Streets"] = '#4A000D',
    ["Wizard's Hill"] = '#4A000D',
    ["Whateley Farm"] = '#4A000D',
    ["Gardners' Place"] = '#075584',
    ["Another Time"] = '#484848',
    ["Lost Carcosa"] = '#484848',
    ["Neil's Curiosity Shop"] = '#CA0533',
    ["The Hall School"] = '#CA0533',
    ["Artists' Colony"] = '#CA0533',
    ["7th House on the left"] = '#014FAD',
    ["Congregational Hospital"] = '#014FAD',
    ["Central Hill Streets"] = '#014FAD',
    ["South Shore Streets"] = '#CA0533',
    ["The Causeway"] = '#FFFFFF',
    ["Harborside Streets"] = '#FAB511',
    ["St. Erasmus's Home"] = '#014FAD',
    ["607 Water St"] = '#FAB511',
    ["The Rope and Anchor"] = '#FAB511',
    ["North Point Lighthouse"] = '#FAB511',
    ["Wireless Station"] = '#FFFFFF',
    ["Strange High House in The Mist"] = '#FFFFFF',
    ["The Underworld"] = '#484848',
    ["Unknown Kadath"] = '#484848',
    ["Arkham Horror Core Board"] = '#FFFFFF',
    ["default"] = '#FFFFFF'
}
--used to return the location color
local Arkham_Locations = {
    ["Ye Olde Magick Shoppe"] = '[DA1918]',
    ["Woods"] = '[DA1918]',
    ["Historical Society"] = '[8B5A13]',
    ["South Church"] = '[8B5A13]',
    ["Ma's Boarding House"] = '[8B5A13]',
    ["Southside Streets"] = '[8B5A13]',
    ["Uptown Streets"] = '[DA1918]',
    ["St. Mary's Hospital"] = '[DA1918]',
    ["Administration"] = '[B78817]',
    ["Library"] = '[B78817]',
    ["Silver Twilight Lodge"] = '[0A8187]',
    ["The Witch House"] = '[0A8187]',
    ["French Hill Streets"] = '[0A8187]',
    ["Science Building"] = '[B78817]',
    ["Miskatonic University Streets"] = '[B78817]',
    ["River Docks"] = '[3B6C22]',
    ["The Unnamable"] = '[3B6C22]',
    ["General Store"] = '[724F88]',
    ["Black Cave"] = '[724F88]',
    ["Graveyard"] = '[724F88]',
    ["Rivertown Streets"] = '[724F88]',
    ["Merchant District Streets"] = '[3B6C22]',
    ["Unvisited Isle"] = '[3B6C22]',
    ["Curiositie Shoppe"] = '[A94216]',
    ["Easttown Streets"] = '[684B32]',
    ["Police Station"] = '[684B32]',
    ["Velma's Diner"] = '[684B32]',
    ["Hibb's Roadhouse"] = '[684B32]',
    ["Downtown Streets"] = '[D2D2D2]',
    ["Northside Streets"] = '[A94216]',
    ["Newspaper"] = '[A94216]',
    ["Train Station"] = '[A94216]',
    ["Bank of Arkham"] = '[D2D2D2]',
    ["Arkham Asylum"] = '[D2D2D2]',
    ["Independence Square"] = '[D2D2D2]'
}

local Other_World_Locations = {
    ["Another Dimention"] = '[DA1918]O [0060FF]O [FFD980]O [00F857]O',
    ["Abyss"] = '[DA1918]O [0060FF]O',
    ["City of the Great Race"] = '[00F857]O [FFD980]O',
    ["Yuggoth"] = '[0060FF]O [FFD980]O',
    ["Great Hall of Celeano"] = ' [0060FF]O [00F857]O',
    ["The Dreamlands"] = '[DA1918]O [0060FF]O [FFD980]O [00F857]O',
    ["Plateau of Leng"] = '[DA1918]O [00F857]O',
    ["R'lyeh"] = '[DA1918]O [FFD980]O',
    ["Another Time"] = '[DA1918]O [00F857]O',
    ["Lost Carcosa"] = '[0060FF]O [FFD980]O',
    ["The Underworld"] = '[0060FF]O [00F857]O',
    ["Unknown Kadath"] = '[DA1918]O [FFD980]O'
}

local Other_World_LocationsXML = {
    ["Another Dimention"] = '<textcolor color="#DA1918">O</textcolor> <textcolor color="#0060FF">O</textcolor> <textcolor color="#FFD980">O</textcolor> <textcolor color="#00F857">O</textcolor>',
    ["Abyss"] = '<textcolor color="#DA1918">O</textcolor> <textcolor color="#0060FF">O</textcolor>',
    ["City of the Great Race"] = '<textcolor color="#00F857">O</textcolor> <textcolor color="#FFD980">O</textcolor>',
    ["Yuggoth"] = '<textcolor color="#0060FF">O</textcolor> <textcolor color="#FFD980">O</textcolor>',
    ["Great Hall of Celeano"] = ' <textcolor color="#0060FF">O</textcolor> <textcolor color="#00F857">O</textcolor>',
    ["The Dreamlands"] = '<textcolor color="#DA1918">O</textcolor> <textcolor color="#0060FF">O</textcolor> <textcolor color="#FFD980">O</textcolor> <textcolor color="#00F857">O</textcolor>',
    ["Plateau of Leng"] = '<textcolor color="#DA1918">O</textcolor> <textcolor color="#00F857">O</textcolor>',
    ["R'lyeh"] = '<textcolor color="#DA1918">O</textcolor> <textcolor color="#FFD980">O</textcolor>',
    ["Another Time"] = '<textcolor color="#DA1918">O</textcolor> <textcolor color="#00F857">O</textcolor>',
    ["Lost Carcosa"] = '<textcolor color="#0060FF">O</textcolor> <textcolor color="#FFD980">O</textcolor>',
    ["The Underworld"] = '<textcolor color="#0060FF">O</textcolor> <textcolor color="#00F857">O</textcolor>',
    ["Unknown Kadath"] = '<textcolor color="#DA1918">O</textcolor> <textcolor color="#FFD980">O</textcolor>'
}

local Other_World_Locations_ColorXML = {
    ["Another Dimention"] = {'#DA1918','#0060FF','#FFD980','#00F857'},
    ["Abyss"] = {'#DA1918','#0060FF'},
    ["City of the Great Race"] = {'#00F857','#FFD980'},
    ["Yuggoth"] = {'#0060FF','#FFD980'},
    ["Great Hall of Celeano"] = {'#0060FF','#00F857'},
    ["The Dreamlands"] = {'#DA1918','#0060FF','#FFD980','#00F857'},
    ["Plateau of Leng"] = {'#DA1918','#00F857'},
    ["R'lyeh"] = {'#DA1918','#FFD980'},
    ["Another Time"] = {'#DA1918','#00F857'},
    ["Lost Carcosa"] = {'#0060FF','#FFD980'},
    ["The Underworld"] = {'#0060FF','#00F857'},
    ["Unknown Kadath"] = {'#DA1918','#FFD980'}
}


local Innsmouth_Locations = {
    ["Falcon Point"] = '[07A407]',
    ["Innsmouth Shore Streets"] = '[07A407]',
    ["Marsh Refinery"] = '[434BFD]',
    ["Gilman House Hotel"] = '[434BFD]',
    ["First National Grocery"] = '[434BFD]',
    ["Factory District Streets"] = '[434BFD]',
    ["Church Green Streets"] = '[FFD980]',
    ["Joe Sargent's Bus Service"] = '[484848]',
    ["Y'ha-Nthlei"] = '[07A407]',
    ["Devil Reef"] = '[07A407]',
    ["Esoteric Order of Dagon"] = '[FFD980]',
    ["Sawbone Alley"] = '[FFD980]',
    ["Innsmouth Jail"] = '[FFD980]'
}

local Dunwich_Locations = {
    ["Darke's Carnival"] = '[127A02]',
    ["Bishop's Brook Bridge"] = '[127A02]',
    ["Dunwich Village"] = '[127A02]',
    ["Harney Jones' Shack"] = '[075584]',
    ["Cold Spring Glen"] = '[4A000D]',
    ["Village Commons Streets"] = '[127A02]',
    ["Devil's Hopyard"] = '[075584]',
    ["Blasted Heath Streets"] = '[075584]',
    ["Sentinel Hill"] = '[484848]',
    ["Backwoods Country Streets"] = '[4A000D]',
    ["Wizard's Hill"] = '[4A000D]',
    ["Whateley Farm"] = '[4A000D]',
    ["Gardners' Place"] = '[075584]'
}

local Kingsport_Locations = {
    ["Neil's Curiosity Shop"] = '[CA0533]',
    ["The Hall School"] = '[CA0533]',
    ["Artists' Colony"] = '[CA0533]',
    ["7th House on the left"] = '[014FAD]',
    ["Congregational Hospital"] = '[014FAD]',
    ["Central Hill Streets"] = '[014FAD]',
    ["South Shore Streets"] = '[CA0533]',
    ["The Causeway"] = '[FFFFFF]',
    ["Harborside Streets"] = '[FAB511]',
    ["St. Erasmus's Home"] = '[014FAD]',
    ["607 Water St"] = '[FAB511]',
    ["The Rope and Anchor"] = '[FAB511]',
    ["North Point Lighthouse"] = '[FAB511]',
    ["Wireless Station"] = '[FFFFFF]',
    ["Strange High House in The Mist"] = '[FFFFFF]'
}

--used to return the location color
local Arkham_Locations_Positions = {
    ["Ye Olde Magick Shoppe"] = {28.11, 0.72, -19.44},
    ["Woods"] = {28.23, 0.72, -13.05},
    ["Historical Society"] = {28.21, 0.72, -7.24},
    ["South Church"] = {27.78, 0.73, -1.49},
    ["Ma's Boarding House"] = {22.12, 0.73, 0.46},
    ["Southside Streets"] = {22.34, 0.73, -6.55},
    ["Uptown Streets"] = {22.30, 0.73, -13.37},
    ["St. Mary's Hospital"] = {23.14, 0.73, -23.02},
    ["Administration"] = {17.73, 0.73, -20.19},
    ["Library"] = {15.81, 0.74, -15.60},
    ["Silver Twilight Lodge"] = {17.03, 0.74, -4.14},
    ["The Witch House"] = {14.26, 0.75, 0.41},
    ["French Hill Streets"] = {12.90, 0.75, -7.15},
    ["Science Building"] = {12.62, 0.74, -22.99},
    ["Miskatonic University Streets"] = {12.14, 0.74, -14.54},
    ["River Docks"] = {4.13, 1.05, -15.68},
    ["The Unnamable"] = {8.36, 0.75, -18.03},
    ["General Store"] = {8.74, 0.75, -5.36},
    ["Black Cave"] = {8.31, 0.75, 0.42},
    ["Graveyard"] = {4.35, 0.76, 0.33},
    ["Rivertown Streets"] = {4.15, 0.76, -7.40},
    ["Merchant District Streets"] = {4.27, 0.75, -14.58},
    ["Unvisited Isle"] = {2.62, 0.75, -23.02},
    ["Curiositie Shoppe"] = {-2.71, 0.76, -22.99},
    ["Easttown Streets"] = {-0.85, 0.77, -3.32},
    ["Police Station"] = {-0.87, 0.77, -0.44},
    ["Velma's Diner"] = {-6.16, 0.77, 0.37},
    ["Hibb's Roadhouse"] = {-6.06, 0.77, -4.72},
    ["Downtown Streets"] = {-4.66, 0.77, -10.19},
    ["Northside Streets"] = {-4.59, 0.77, -17.12},
    ["Newspaper"] = {-7.36, 0.77, -22.84},
    ["Train Station"] = {-11.18, 0.77, -19.92},
    ["Bank of Arkham"] = {-10.46, 0.78, -14.89},
    ["Arkham Asylum"] = {-10.23, 0.78, -9.80},
    ["Independence Square"] = {-11.17, 0.78, -4.84}
}

--used to return the location color
local Arkham_Neighborhoods = {
    ["Ye Olde Magick Shoppe"] = "Uptown Streets",
    ["Woods"] = "Uptown Streets",
    ["Historical Society"] = "Southside Streets",
    ["South Church"] = "Southside Streets",
    ["Ma's Boarding House"] = "Southside Streets",
    ["Southside Streets"] = "Southside Streets",
    ["Uptown Streets"] = "Uptown Streets",
    ["St. Mary's Hospital"] = "Uptown Streets",
    ["Administration"] = "Miskatonic University Streets",
    ["Library"] = "Miskatonic University Streets",
    ["Silver Twilight Lodge"] = "French Hill Streets",
    ["The Witch House"] = "French Hill Streets",
    ["French Hill Streets"] = "French Hill Streets",
    ["Science Building"] = "Miskatonic University Streets",
    ["Miskatonic University Streets"] = "Miskatonic University Streets",
    ["River Docks"] = "Merchant District Streets",
    ["The Unnamable"] = "Merchant District Streets",
    ["General Store"] = "Rivertown Streets",
    ["Black Cave"] = "Rivertown Streets",
    ["Graveyard"] = "Rivertown Streets",
    ["Rivertown Streets"] = "Rivertown Streets",
    ["Merchant District Streets"] = "Merchant District Streets",
    ["Unvisited Isle"] = "Merchant District Streets",
    ["Curiositie Shoppe"] = "Northside Streets",
    ["Easttown Streets"] = "Easttown Streets",
    ["Police Station"] = "Easttown Streets",
    ["Velma's Diner"] = "Easttown Streets",
    ["Hibb's Roadhouse"] = "Easttown Streets",
    ["Downtown Streets"] = "Downtown Streets",
    ["Northside Streets"] = "Northside Streets",
    ["Newspaper"] = "Northside Streets",
    ["Train Station"] = "Northside Streets",
    ["Bank of Arkham"] = "Downtown Streets",
    ["Arkham Asylum"] = "Downtown Streets",
    ["Independence Square"] = "Downtown Streets"
}
local switch_locations = {
    ["Ye Olde Magick Shoppe"] = function (x) local location = getBoardUptowndeckId() return location end,
    ["Woods"] = function (x) local location = getBoardUptowndeckId() return location end,
    ["Historical Society"] = function (x) local location = getBoardSouthsidedeckId() return location end,
    ["South Church"] = function (x) local location = getBoardSouthsidedeckId() return location end,
    ["Ma's Boarding House"] = function (x) local location = getBoardSouthsidedeckId() return location end,
    ["St. Mary's Hospital"] = function (x) local location = getBoardUptowndeckId() return location end,
    ["Administration"] = function (x) local location = getBoardMiskatonicdeckId() return location end,
    ["Library"] = function (x) local location = getBoardMiskatonicdeckId() return location end,
    ["Science Building"] = function (x) local location = getBoardMiskatonicdeckId() return location end,
    ["Silver Twilight Lodge"] = function (x) local location = getBoardFrenchdeckId() return location end,
    ["The Witch House"] = function (x) local location = getBoardFrenchdeckId() return location end,
    ["River Docks"] = function (x) local location = getBoardMerchantdeckId() return location end,
    ["The Unnamable"] = function (x) local location = getBoardMerchantdeckId() return location end,
    ["General Store"] = function (x) local location = getBoardRivertowndeckId() return location end,
    ["Black Cave"] = function (x) local location = getBoardRivertowndeckId() return location end,
    ["Graveyard"] = function (x) local location = getBoardRivertowndeckId() return location end,
    ["Unvisited Isle"] = function (x) local location = getBoardMerchantdeckId() return location end,
    ["Curiositie Shoppe"] = function (x) local location = getBoardNorthsidedeckId() return location end,
    ["Police Station"] = function (x) local location = getBoardEasttowndeckId() return location end,
    ["Velma's Diner"] = function (x) local location = getBoardEasttowndeckId() return location end,
    ["Hibb's Roadhouse"] = function (x) local location = getBoardEasttowndeckId() return location end,
    ["Newspaper"] = function (x) local location = getBoardNorthsidedeckId() return location end,
    ["Train Station"] = function (x) local location = getBoardNorthsidedeckId() return location end,
    ["Bank of Arkham"] = function (x) local location = getBoardDowntowndeckId() return location end,
    ["Arkham Asylum"] = function (x) local location = getBoardDowntowndeckId() return location end,
    ["Independence Square"] = function (x) local location = getBoardDowntowndeckId() return location end,
    ["Falcon Point"] = function (x) return Innsmouth_Shore_Deck_id end,
    ["Marsh Refinery"] = function (x) return Innsmouth_Factory_Deck_id end,
    ["Gilman House Hotel"] = function (x) return Innsmouth_Factory_Deck_id end,
    ["First National Grocery"] = function (x) return Innsmouth_Factory_Deck_id end,
    ["Y'ha-Nthlei"] = function (x) return Innsmouth_Shore_Deck_id end,
    ["Devil Reef"] = function (x) return Innsmouth_Shore_Deck_id end,
    ["Esoteric Order of Dagon"] = function (x) return Innsmouth_Church_Deck_id end,
    ["Sawbone Alley"] = function (x) return Innsmouth_Church_Deck_id end,
    ["Innsmouth Jail"] = function (x) return Innsmouth_Church_Deck_id end,
    ["Darke's Carnival"] = function (x) return Dunwich_Village_Commons_Deck_id end,
    ["Bishop's Brook Bridge"] = function (x) return Dunwich_Village_Commons_Deck_id end,
    ["Dunwich Village"] = function (x) return Dunwich_Village_Commons_Deck_id end,
    ["Harney Jones' Shack"] = function (x) return Dunwich_Blasted_Heath_Deck_id end,
    ["Cold Spring Glen"] = function (x) return Dunwich_Backwoods_Deck_id end,
    ["Devil's Hopyard"] = function (x) return Dunwich_Blasted_Heath_Deck_id end,
    ["Wizard's Hill"] = function (x) return Dunwich_Backwoods_Deck_id end,
    ["Whateley Farm"] = function (x) return Dunwich_Backwoods_Deck_id end,
    ["Gardners' Place"] = function (x) return Dunwich_Blasted_Heath_Deck_id end,
    ["Neil's Curiosity Shop"] = function (x) return Kingsport_South_Shore_Deck_id end,
    ["The Hall School"] = function (x) return Kingsport_South_Shore_Deck_id end,
    ["Artists' Colony"] = function (x) return Kingsport_South_Shore_Deck_id end,
    ["7th House on the left"] = function (x) return Kingsport_Central_Hill_Deck_id end,
    ["Congregational Hospital"] = function (x) return Kingsport_Central_Hill_Deck_id end,
    ["The Causeway"] = function (x) return Kingsport_Head_Deck_id end,
    ["St. Erasmus's Home"] = function (x) return Kingsport_Central_Hill_Deck_id end,
    ["607 Water St"] = function (x) return Kingsport_Harborside_Deck_id end,
    ["The Rope and Anchor"] = function (x) return Kingsport_Harborside_Deck_id end,
    ["North Point Lighthouse"] = function (x) return Kingsport_Harborside_Deck_id end,
    ["Wireless Station"] = function (x) return Kingsport_Head_Deck_id end,
    ["Strange High House in The Mist"] = function (x) return Kingsport_Head_Deck_id end,
    ["default"] = function (x) return '' end
}


-- Scripting zones - Used to count # monsters in Arkham
local Arkham_Scripting_Zones = {'15cbb3', '282bef', '4abaa8', '08e727',
'530923', '64c832', 'cfdf67', '2cb42f',
'2e89d5', '9af418', '46c132', '98b894',
'9bb07f', 'bafc99', '6165e2', '995dd3',
'90dfea', '75df91', '6f7fd8', 'dfbd5a',
'5f02d6', '776e39', 'ad4f9d', 'ae8009',
'5fbc32', '7a5923', '23fe18',
'4b9b7d', 'c7bb37', 'bef8bb', 'db38b7',
'c8adf2', '2761b1', 'edff3f', 'b1c9e9',
--Sky
'694ca9'
}

function getSwitchLocations()
    return switch_locations
end

function getLocationsColorXML(location)
    return locations_ColorXML[location]
end

function getisSetupPerformed()
    return isSetupPerformed
end

function setisSetupPerformed(setup)
    isSetupPerformed = setup
end


------------------------ get board decks ---------------------------------------
-- Board Variables

--returns the id to whoever calls it
function getBoardNorthsidedeckId()
    return Board_Northside_deck_id
end

function getBoardDowntowndeckId()
    return Board_Downtown_deck_id
end

function getBoardEasttowndeckId()
    return Board_Easttown_deck_id
end

function getBoardMerchantdeckId()
    return Board_Merchant_deck_id
end

function getBoardRivertowndeckId()
    return Board_Rivertown_deck_id
end

function getBoardMiskatonicdeckId()
    return Board_Miskatonic_deck_id
end

function getBoardFrenchdeckId()
    return Board_French_deck_id
end

function getBoardUptowndeckId()
    return Board_Uptown_deck_id
end

function getBoardSouthsidedeckId()
    return Board_Southside_deck_id
end

function getBoardCommondeckId()
    return Board_Common_deck_id
end

function getBoardUniquedeckId()
    return Board_Unique_deck_id
end

function getBoardSpellsdeckId()
    return Board_Spells_deck_id
end

function getBoardSkillsdeckId()
    return Board_Skills_deck_id
end

function getBoardAlliesdeckId()
    return Board_Allies_deck_id
end

function getBoardGateBagId()
    return Board_Gate_Bag_id
end

function getBoardMonsterBagId()
    return Board_Monster_Bag_id
end

function getBoardMaskMonsterBagId()
    return Board_Mask_Monster_Bag_Id
end

function getBoardMythosdeckId()
    return Board_Mythos_deck_id
end

function getBoardGatedeckId()
    return Board_Gate_deck_id
end

function getBoardGatedeckPosition()
    return Board_Gate_deck_Position
end

function getBoardGateDiscardScriptingId()
    return Board_Gate_Discard_Scripting_zone_Id
end

function getBoardGateDeckScriptingZoneId()
    return Board_Gate_Deck_Scripting_Zone_Id
end

function getBoardGateDiscardPosition()
    return Board_Gate_Discard_Position
end

function getBoardUnusedGatesPosition()
    return Board_Unused_Gates_Position
end

function getBoardGateBagPosition()
    return Board_Gate_Bag_Position
end

function getBoardMonsterBagPosition()
    return Board_Monster_Bag_Position
end

function getBoardGreenEpicBattledeckid()
    return Board_Green_Epic_Battle_deck_id
end

function getBoardRedEpicBattledeckid()
    return Board_Red_Epic_Battle_deck_id
end

function getBoardMythosScaledeckid()
    return  Board_Mythos_Scale
end

function getBoardGateScaledeckid()
    return Board_Gate_Scale
end

function getBoardCommonScaledeckid()
    return Board_Common_Scale
end

function getBoardUniqueScaledeckid()
    return Board_Unique_Scale
end

function getBoardSpellsScaledeckid()
    return Board_Spells_Scale
end

function getBoardSkillsScaledeckid()
    return Board_Skills_Scale
end

function getBoardAlliesScaledeckid()
    return Board_Allies_Scale
end

function getBoardNorthsideScaledeckid()
    return Board_Northside_Scale
end

function getBoardDowntownScaledeckid()
    return Board_Downtown_Scale
end

function getBoardEasttownScaledeckid()
    return Board_Easttown_Scale
end

function getBoardMerchantScaledeckid()
    return Board_Merchant_Scale
end

function getBoardRivertownScaledeckid()
    return Board_Rivertown_Scale
end

function getBoardMiskatonicScaledeckid()
    return Board_Miskatonic_Scale
end

function getBoardFrenchScaledeckid()
    return Board_French_Scale
end

function getBoardUptownScaledeckid()
    return Board_Uptown_Scale
end

function getBoardSouthsideScaledeckid()
    return Board_Southside_Scale
end 

function getFirstPlayerMarker()
    return Board_First_Player_Marker
end

function getPhaseController()
    return Board_Phase_Controller
end

------------------------------ Player Setup ------------------------------------

function getBankLoanId()
    return Board_Bank_Loan_deck_id
end

function getDeputyOfArkhamDeckId()
    return Board_Deputy_deck_id
end

function getBoardDeputyScriptingZoneId()
    return Board_Deputy_Scripting_Zone_Id
end

function getBoardRetainerDeckId()
    return Board_Retainer_Deck_Id
end

function getBoardBlessingCurseDeckId()
    return Board_Blessing_Curse_Deck_Id
end

function getSilverTwilightLodgeDeckId()
    return Silver_Twilight_Lodge_Deck_Id
end

function getBoardInjurydeckId()
    return Board_Injury_deck_id
end

function getBoardMadnessdeckId()
    return Board_Madness_deck_id
end


--------------------- Elements to put in discard pile -------------------------
function getBoardCommonItemDiscard()
    return Board_Common_Item_Discard
end

function getBoardUniqueItemDiscard()
    return Board_Unique_Item_Discard
end

function getBoardSpellDiscard()
    return Board_Spell_Discard
end

function getBoardSkillDiscard()
    return Board_Skill_Discard
end

function getBoardAllyDiscard()
    return Board_Ally_Discard
end

function getBoardInjuryDiscard()
    return Board_Injury_Discard
end

function getBoardMadnessDiscard()
    return Board_Madness_Discard
end

function getBoardBlessCurseDiscard()
    return Board_Bless_Curse_Discard
end

function getBoardDeputyDiscard()
    return Board_Deputy_Discard
end

function getBoardBankLoanDiscard()
    return Board_Bank_Loan_Discard
end

function getBoardChangedDiscard()
    return Board_Changed_Discard
end

function getBoardCaptainDiscard()
    return Board_Captain_Discard
end

function getBoardSheldonDiscard()
    return Board_Sheldon_Discard
end

function getBoardSheldonRotation()
    return Board_Sheldon_Rotation
end

function getBoardMagicalEffectDiscard()
    return Board_Magical_Effect_Discard
end

function getBoardRailPassDiscard()
    return Board_Rail_Pass_Discard
end

function getBoardSilverTwilightLodgeDiscard()
    return Board_Silver_Twilight_Lodge_Discard
end

function getBoardRetainerDiscard()
    return Board_Retainer_Discard
end

function getBoardRelationshipDiscard()
    return Board_Relationship_Discard
end

function getBoardDetrimentsDiscard()
    return Pharaoh_Detriments_Discard
end

function getBoardBenefitsDiscard()
    return Pharaoh_Benefits_Discard
end

function getBoardCorruptionDiscard()
    return Goat_Corruption_Discard
end

function getBoardExhibitItemsDiscard()
    return Pharaoh_Exhibit_Items_Discard
end

function getGoatMembershipDiscard()
    return Goat_Membership_Discard
end

-- As redundant as it may seem, locating by location, it returns the place the
-- investigator is in.
-- Uses: Other world, you can get deck colors.
function isInvestigatorInOtherWorld(location)
    if Other_World_Locations[location] ~= nil then
        return true
    end
    return false
end

function getInvestigatorBoard(location)
    if Arkham_Locations[location] ~= nil then
        return "Arkham"
    end
    if Innsmouth_Locations[location] ~= nil then
        return "Innsmouth"
    end
    if Dunwich_Locations[location] ~= nil then
        return "Dunwich"
    end
    if Kingsport_Locations[location] ~= nil then
        return "Kingsport"
    end
    return ''
end

function getLocationPositionBoard(location)
    if Arkham_Locations_Positions[location] ~= nil then
        return Arkham_Locations_Positions[location]
    end
    return ''
end

function getLocationNeighborhoods(location)
    if Arkham_Neighborhoods[location] ~= nil then
        return Arkham_Neighborhoods[location]
    end
    return ''
end

--Returns other world's color XML Format
function getOtherWorldColorXML(location)
    if Other_World_LocationsXML[location] ~= nil then
        return Other_World_LocationsXML[location]
    end
    return ''
end

--Returns other world's color XML Format
function getOtherWorldColorArrayXML(location)
    if Other_World_Locations_ColorXML[location] ~= nil then
        return Other_World_Locations_ColorXML[location]
    end
    return ''
end


function getInnsmouthSolo()
    return InnsmouthSolo
end

function getKingsportSolo()
    return KingsportSolo
end

function getDunwichSolo()
    return DunwichSolo
end

function getKingsportDunwich()
    return KingsportDunwich
end

function getInnsmouthKingsport()
    return InnsmouthKingsport
end

function getInnsmouthDunwich()
    return InnsmouthDunwich
end

function getAllThreeBoards()
    return AllThreeBoards
end

function getArkhamScriptingZones()
    return Arkham_Scripting_Zones
end

function getOutskirtsScriptingZoneId()
    return OutskirtsScriptingZoneId
end

function getInnsmouthFactoryDeckid()
    return Innsmouth_Factory_Deck_id
end

function getInnsmouthShoreDeckid()
    return Innsmouth_Shore_Deck_id
end

function getInnsmouthChurchDeckid()
    return Innsmouth_Church_Deck_id
end


-------------------------------- Setters ------------------------------------
function setDeputyOfArkhamDeckId(id)
    Board_Deputy_deck_id = id
end

function setInnsmouthSolo(toSet)
    InnsmouthSolo = toSet
    onSave()
end

function setKingsportSolo(toSet)
    KingsportSolo = toSet
    onSave()
end

function setDunwichSolo(toSet)
    DunwichSolo = toSet
    onSave()
end

function setKingsportDunwich(toSet)
    KingsportDunwich = toSet
    onSave()
end

function setInnsmouthKingsport(toSet)
    InnsmouthKingsport = toSet
    onSave()
end

function setInnsmouthDunwich(toSet)
    InnsmouthDunwich = toSet
    onSave()
end

function setAllThreeBoards(toSet)
    AllThreeBoards = toSet
    onSave()
end

-------------------------------Getters and Setters
------------when a variable is used throughout bameplay and not just setup

-- Dunwich Horror
function getDunwichHorrorDeckid()
    return Dunwich_Horror_Deck_id
end

function getDunwichHorrorTokenid()
    return Dunwich_Horror_Token_id
end

function getDunwichHorrorDeckDiscard()
    return Dunwich_Horror_Deck_Discard
end

function getDunwichVillageCommonsDeckId()
    return Dunwich_Village_Commons_Deck_id
end

function getDunwichBackwoodsDeckId()
    return Dunwich_Backwoods_Deck_id 
end

function getDunwichBlastedHeathDeckId()
    return Dunwich_Blasted_Heath_Deck_id
end

function getDunwichRailPassDeckId()
    return Dunwich_Rail_Pass_Deck_id
end

function getDunwichSheldonGangDeckId()
    return Dunwich_Sheldon_Gang_Deck_id
end

function getDunwichConditionDeckId()
    return Dunwich_Condition_Deck_id
end

function getDunwichHorrorMonsterid()
    return Dunwich_Horror_Monster_id
end

function getDunwichConditionDeckPos()
    return Dunwich_Condition_Deck_pos
end

function getDunwichConditionDeckRot()
    return Dunwich_Condition_Deck_rot
end

-- Kingsport Horror

function getKingsportCaptainDeckPosition()
    return Kingsport_Captain_Deck_pos
end

function getKingsportRiftProgressMarkerBagid()
    return Kingsport_Rift_Progress_Marker_Bag_id
end

function getKingsportChangedDeckId()
    return Kingsport_Changed_Deck_id
end

function getKingsportHeadDeckId()
    return Kingsport_Head_Deck_id
end

function getKingsportHarborsideDeckId()
    return Kingsport_Harborside_Deck_id
end

function getKingsportCentralHillDeckId()
    return Kingsport_Central_Hill_Deck_id
end

function getKingsportSouthShoreDeckId()
    return Kingsport_South_Shore_Deck_id
end

-- Yellow

function getYellowMagicalEffectDeckid()
    return Yellow_Magical_Effect_Deck_id
end

function getYellowActsDeckid()
    return Yellow_Acts_Deck_id
end

function getYellowOriginalActsDeckid()
    return Yellow_Original_Acts_Deck_id
end

-- Goat
function getGoatEncountersDeckid()
    return Goat_Encounters_Deck_id
end

function getGoatEncountersDeckpos()
    return Goat_Encounters_Deck_pos
end

function getGoatEncountersDeckrot()
    return Goat_Encounters_Deck_rot
end

function getGoatMembershipDeckid()
    return Goat_Membership_Deck_id
end

function getGoatRedCorruptionDeckid()
    return Goat_Red_Corruption_Deck_id
end

function getGoatGreenCorruptionDeckId()
    return Goat_Green_Corruption_Deck_Id
end

-- Pharaoh

function getPharaohExhibitEncounterDeckId()
    return Pharaoh_Exhibit_Encounter_Deck_Id
end

function getPharaohExhibitItemDeckid()
    return Pharaoh_Exhibit_Item_Deck_id
end

function getPharaohExhibitEncounterDeckPos()
    return Pharaoh_Exhibit_Encounter_Deck_pos
end

function getPharaohExhibitEncounterDeckRot()
    return Pharaoh_Exhibit_Encounter_Deck_rot
end

function getPharaohBenefitsDeckid()
    return Pharaoh_Benefits_Deck_id
end

function getPharaohDetrimentsDeckid()
    return Pharaoh_Detriments_Deck_id
end

function getPharaohAncientWhispersTokenId()
    return Pharaoh_Ancient_Whispers_Token_Id
end

function getPharaohPatrolMarkerId()
    return Pharaoh_Patrol_Marker_Id
end

--Setters

--Board

function setBoardGateBagid(id)
    Board_Gate_Bag_id = id
end

-- Dunwich

function setDunwichHorrorTokenid(id)
    Dunwich_Horror_Token_id = id
end

function setDunwichHorrorDeckId(id)
    Dunwich_Horror_Deck_id = id
end

function setDunwichVillageCommonsDeckId(id)
    Dunwich_Village_Commons_Deck_id = id
end

function setDunwichBackwoodsDeckId(id)
    Dunwich_Backwoods_Deck_id = id
end

function setDunwichBlastedHeathDeckId(id)
    Dunwich_Blasted_Heath_Deck_id = id
end

function setDunwichRailPassDeckId(id)
    Dunwich_Rail_Pass_Deck_id = id
end

function setDunwichSheldonGangDeckId(id)
    Dunwich_Sheldon_Gang_Deck_id = id
end

function setDunwichConditionDeckId(id)
    Dunwich_Condition_Deck_id = id
end

function setDunwichHorrorMonsterid(id)
    Dunwich_Horror_Monster_id = id
end

--Innsmouth
function setInnsmouthLookDeckid(id)
    Innsmouth_Look_Deck_id = id
end

function setInnsmouthFactoryDeckid(id)
    Innsmouth_Factory_Deck_id = id
end

function setInnsmouthShoreDeckid(id)
    Innsmouth_Shore_Deck_id = id
end

function setInnsmouthChurchDeckid(id)
    Innsmouth_Church_Deck_id = id
end

-- Kingsport

function setKingsportCaptainDeckId(id)
    Kingsport_Captain_Deck_id = id
end

function setKingsportChangedDeckId(id)
    Kingsport_Changed_Deck_id = id
end

function setKingsportHeadDeckId(id)
    Kingsport_Head_Deck_id = id
end

function setKingsportHarborsideDeckId(id)
    Kingsport_Harborside_Deck_id = id
end

function setKingsportCentralHillDeckId(id)
    Kingsport_Central_Hill_Deck_id = id
end

function setKingsportSouthShoreDeckId(id)
    Kingsport_South_Shore_Deck_id = id
end

function setKingsportRiftProgressMarkerBagid(id)
    Kingsport_Rift_Progress_Marker_Bag_id = id
end
-- Yellow

function setYellowActsDeckid(id)
    Yellow_Acts_Deck_id = id
end

function setYellowOriginalActsDeckid(id)
    Yellow_Original_Acts_Deck_id = id
end

function setYellowMagicalEffectDeckid(id)
    Yellow_Magical_Effect_Deck_id = id
end

-- Goat

function setGoatEncountersDeckid(id)
    Goat_Encounters_Deck_id = id
end

function setGoatMembershipDeckid(id)
    Goat_Membership_Deck_id = id
end

function setGoatRedCorruptionDeckid(id)
    Goat_Red_Corruption_Deck_id = id
end

function setGoatGreenCorruptionDeckId(id)
    Goat_Green_Corruption_Deck_Id = id
end

-- Pharaoh

function setPharaohExhibitEncounterDeckId(id)
    Pharaoh_Exhibit_Encounter_Deck_Id = id
end

function setPharaohExhibitItemDeckid(id)
    Pharaoh_Exhibit_Item_Deck_id = id
end

function setPharaohBenefitsDeckid(id)
    Pharaoh_Benefits_Deck_id = id
end

function setPharaohDetrimentsDeckid(id)
    Pharaoh_Detriments_Deck_id = id
end

function setPharaohAncientWhispersTokenId(id)
    Pharaoh_Ancient_Whispers_Token_Id = id
end

function setPharaohPatrolMarkerId(id)
    Pharaoh_Patrol_Marker_Id = id
end

------------ Getters and Setters from Controle Panel

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
    LurkerSet = toSet
    onSave()
end

-- For external purposes sets to true or false for Lurker gate Variant
function setLurkerGate(toSet)
    LurkerGateSet = toSet
    onSave()
end

-- For external purposes sets to true or false for Pharaoh
function setPharaoh(toSet)
    PharaohSet = toSet
    onSave()
end

-- For external purposes sets to true or false for Goat
function setGoat(toSet)
    GoatSet = toSet
    onSave()
end

-- For external purposes sets to true or false for Yellow
function setYellow(toSet)
    YellowSet = toSet
    onSave()
end

-- For external purposes sets to true or false for Innsmouth
function setInnsmouth(toSet)
    InnsmouthSet = toSet
    onSave()
end

-- For external purposes sets to true or false for Kingsport
function setKingsport(toSet)
    KingsportSet = toSet
    onSave()
end

-- For external purposes sets to true or false for Dunwich
function setDunwich(toSet)
    DunwichSet = toSet
    onSave()
end

-- For external purposes sets to true or false for Miskatonic
function setMiskatonic(toSet)
    MiskatonicSet = toSet
    onSave()
end

-- For external purposes returns true or false depending on DunwichMonsterOnly being set
function setDunwichMonsterOnly(toSet)
    DunwichMonsterOnly = toSet
    onSave()
end

-- For external purposes returns true or false depending on InnsmouthMonsterOnly being set
function setInnsmouthMonsterOnly(toSet)
    InnsmouthMonsterOnly = toSet
    onSave()
end

-- For external purposes returns true or false depending on KingsportMonsterOnly being set
function setKingsportMonsterOnly(toSet)
    KingsportMonsterOnly = toSet
    onSave()
end

-- For external purposes returns true or false depending on GoatMonsterOnly being set
function setGoatMonsterOnly(toSet)
    GoatMonsterOnly = toSet
    onSave()
end

-- For external purposes returns true or false depending on YellowOriginalActs being set
function setYellowOriginalActs(toSet)
    YellowOriginalActs = toSet
    onSave()
end

-- For external purposes sets to true or false
function setLurkerSmallCardsOnly(toSet)
    LurkerSmallCardsOnly = toSet
    onSave()
end

-- For external purposes sets to true or false
function setPharaohSmallCardsOnly(toSet)
    PharaohSmallCardsOnly = toSet
    onSave()
end

-- For external purposes sets to true or false
function setGoatSmallCardsOnly(toSet)
    GoatSmallCardsOnly = toSet
    onSave()
end

-- For external purposes sets to true or false
function setYellowSmallCardsOnly(toSet)
    YellowSmallCardsOnly = toSet
    onSave()
end

-- For external purposes sets to true or false
function setInnsmouthSmallCardsOnly(toSet)
    InnsmouthSmallCardsOnly = toSet
    onSave()
end

-- For external purposes sets to true or false
function setKingsportSmallCardsOnly(toSet)
    KingsportSmallCardsOnly = toSet
    onSave()
end

-- For external purposes sets to true or false
function setDunwichSmallCardsOnly(toSet)
    DunwichSmallCardsOnly = toSet
    onSave()
end

function Switch_All_Locations(input)
    
    if switch_locations[input] ~= nil then
        local deckId = switch_locations[input]()
        return deckId
    else
        switch_locations.default()
    end
end