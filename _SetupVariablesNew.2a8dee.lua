local GlobalVariablesId = '7fc89f'
GlobalVariables = getObjectFromGUID(GlobalVariablesId)

---Board Variables - Needed for setup references
local Board_Northside_deck_id = GlobalVariables.call('getBoardNorthsidedeckId')
local Board_Downtown_deck_id = GlobalVariables.call('getBoardDowntowndeckId')
local Board_Easttown_deck_id = GlobalVariables.call('getBoardEasttowndeckId')
local Board_Merchant_deck_id = GlobalVariables.call('getBoardMerchantdeckId')
local Board_Rivertown_deck_id = GlobalVariables.call('getBoardRivertowndeckId')
local Board_Miskatonic_deck_id = GlobalVariables.call('getBoardMiskatonicdeckId')
local Board_French_deck_id = GlobalVariables.call('getBoardFrenchdeckId')
local Board_Uptown_deck_id = GlobalVariables.call('getBoardUptowndeckId')
local Board_Southside_deck_id = GlobalVariables.call('getBoardSouthsidedeckId')

local Board_Common_deck_id = GlobalVariables.call('getBoardCommondeckId')
local Board_Unique_deck_id = GlobalVariables.call('getBoardUniquedeckId')
local Board_Spells_deck_id = GlobalVariables.call('getBoardSpellsdeckId')
local Board_Skills_deck_id = GlobalVariables.call('getBoardSkillsdeckId')
local Board_Allies_deck_id = GlobalVariables.call('getBoardAlliesdeckId')
local Board_Gate_deck_id = GlobalVariables.call('getBoardGatedeckId')
local Board_Mythos_deck_id = GlobalVariables.call('getBoardMythosdeckId')

-- Dunwich Specific Items
local Dunwich_Bag_id = 'c6caab'
local Dunwich_Board_Id = '354605'
local Dunwich_Horror_Token_id = GlobalVariables.call('getDunwichHorrorTokenid')
local Dunwich_Monster_bag_id = ''
local Dunwich_Mask_Monster_Bag_id = '4a2ce0'
local Dunwich_Monster_bag_pos = {-106.94, 0.57, -24.72} 
local Dunwich_Gate_Marker_Bag_id = ''
local Dunwich_Gate_Marker_Bag_pos = {-106.74, 0.57, -21.44}
local Dunwich_Board_rot = {0, 90, 0}
local Dunwich_Board_sca = {6.85, 1.00, 6.85}

local Dunwich_Horror_Deck_pos = {45.92, 0.64, 16.98}
local Dunwich_Horror_Deck_rot = {0, 270, 180}
local Dunwich_Village_Commons_Deck_pos = {5.27, 0.73, -32.25}
local Dunwich_Village_Commons_Deck_rot = {0,90,180}
local Dunwich_Backwoods_Deck_pos = {5.27, 0.72, -36.20}
local Dunwich_Backwoods_Deck_rot = {0,90,180}

local Dunwich_Blasted_Heath_Deck_pos = {5.35, 0.73, -28.20}
local Dunwich_Blasted_Heath_Deck_rot = {0,90,180}
local Dunwich_Rail_Pass_Deck_pos = {25.29, 0.60, 28.46}
local Dunwich_Rail_Pass_Deck_rot = {0,90,0}
local Dunwich_Sheldon_Gang_Deck_pos = {25.32, 0.65, 20.21}
local Dunwich_Sheldon_Gang_Deck_rot = {0,90,0}
local Dunwich_Condition_Deck_pos = {25.48, 0.63, 24.66}
local Dunwich_Condition_Deck_rot = {0,90,0}
local Dunwich_Horror_Token_rot = {0, 90, 0}
local Dunwich_Horror_Monster_rot = {0, 90, 0}
local Dunwich_Horror_Monster_id = GlobalVariables.call('getDunwichHorrorMonsterid')
local Dunwich_Scripting_Zone = 'a7ec96'


-- Innsmouth Specific Items
local Innsmouth_Bag_id = 'ec313d'
local Innsmouth_Board_Id = 'ec313d'
local Innsmouth_Board_pos = {-22.26, 0.69, -7.28}
local Innsmouth_Board_rot = {0, 90, 0}
local Innsmouth_Board_sca = {6.85, 1.00, 6.85}

local Innsmouth_Look_Deck_pos = {39.94, 0.66, 16.99}
local Innsmouth_Factory_Deck_pos = {12.51, 0.71, -36.42}
local Innsmouth_Shore_Deck_pos = {12.49, 0.72, -28.21}
local Innsmouth_Church_Deck_pos = {12.47, 0.72, -32.28}
local Innsmouth_Look_Deck_rot = {0,90,180}
local Innsmouth_Factory_Deck_rot = {0,90,180}
local Innsmouth_Shore_Deck_rot = {0,90,180}
local Innsmouth_Church_Deck_rot = {0,90,180}
local Innsmouth_Deep_one_Uprising_Token_pos = {-22.14, 1.01, 11.5}
local Innsmouth_Deep_one_Uprising_Token_rot = {0, 90, 0}

local Innsmouth_Clue_Tokens_pos = {-20.01, 1.01, 11.71}
-- local Innsmouth_Clue_Deck_id = InnsmouthVariables.call('getInnsmouthClueDeckId')
local Innsmouth_Monster_bag_id = ''
local Innsmouth_Mask_Monster_bag_id = '6fd3a4'
local Innsmouth_Monster_bag_pos = {-77.75, 0.56, -25.95}
local Innsmouth_Scripting_Zone = 'ddd66e'

-- Kingsport Specific Items
--decks

local Kingsport_Board_Id = '64ebaa'
local Kingsport_Board_sca = {6.85, 1.00, 6.85}
local Kingsport_Board_rot = {0, 90, 0}
local Kingsport_Captain_Deck_pos = {25.33, 0.62, 16.52}
local Kingsport_Captain_Deck_rot = {0,90,0}

local Kingsport_Changed_Deck_pos = {25.28, 0.61, 12.75}
local Kingsport_Changed_Deck_rot = {0,90,0}
local Kingsport_Scripting_Zone = '0b7576'

local Kingsport_Head_Deck_pos = {-2.21, 0.74, -28.04}
local Kingsport_Head_Deck_rot = {0,90,180}
local Kingsport_Harborside_Deck_pos = {-1.90, 0.74, -32.06}
local Kingsport_Harborside_Deck_rot = {0,90,180}
local Kingsport_Central_Hill_Deck_pos = {-1.94, 0.73, -40.23}
local Kingsport_Central_Hill_Deck_rot = {0,90,180}
local Kingsport_South_Shore_Deck_pos = {-2.11, 0.74, -36.01}
local Kingsport_South_Shore_Deck_rot = {0,90,180}

--Bags
local Kingsport_Bag_id = 'b2b9e8'
local Kingsport_Rift_Progress_Marker_Bag_id = GlobalVariables.call('getKingsportRiftProgressMarkerBagid')
local Kingsport_Monster_bag_id = ''
local Kingsport_Monster_bag_pos = {-72.34, 0.53, -18.20}
local Kingsport_Gate_Marker_Bag_id = 'ce1db3'
local Kingsport_Gate_Marker_Bag_pos = {-72.49, 0.62, -10.75}
local Kingsport_Rift_Marker_Bag_id = 'a24e13'
local Kingsport_Masked_Monster_bag_id = '9b4db6'
local Kingsport_Rift_Marker_Bag_pos = {-72.49, 0.72, -26.00}
local Kingsport_Rift_Progress_Marker_Bag_pos = {-72.48, 0.53, -21.74}
local Kingsport_Rift_1 = 'dummy1'
local Kingsport_Rift_2 = 'dummy2'
local Kingsport_Rift_3 = 'dummy3'
local Kingsport_Rift_Progress_Marker_Bag_rot = {0,90,0}

-- The King in Yellow
local Yellow_Bag_id = '54a84b'
local Yellow_Placemat_Id = '76b211'
local Yellow_Placemat_Position = {5.57, 0.61, 22.05}
local Yellow_Placemat_Rotation = {0.00, 90.00, 0.00}
local Yellow_Original_Acts_Deck_pos = {3.60, 0.9, 22.02}
local Yellow_Original_Acts_Deck_rot = {0,0,180}
local Yellow_Acts_Deck_pos = {3.60, 0.9, 22.02}
local Yellow_Acts_Deck_rot = {0,90,180}
local Yellow_Magical_Effect_Deck_pos = {34.79, 0.63, 28.99}
local Yellow_Magical_Effect_Deck_rot = {0,90,0}

local Yellow_Placemat_Id = '76b211'
local Yellow_Placemat_Position = {5.57, 0.61, 22.05}
local Yellow_Placemat_Rotation = {0.00, 90.00, 0.00}

local Yellow_Extras_Bag_Id = 'f280ed'
local Yellow_Scripting_Zone = '2cd25e'

-- The Black Goat of the woods
local Goat_Bag_id = '8dcaec'
local Goat_Monster_Bag_Id = ''
local Goat_Monster_Bag_rot = {0,90,0}
local Goat_Encounters_Deck_pos = {34.96, 0.59, 21.33}
local Goat_Membership_Deck_pos = {35.02, 0.63, 25.30}
local Goat_Red_Corruption_Deck_pos = {30.06, 0.75, 20.61}
local Goat_Green_Corruption_Deck_pos = {30.10, 0.59, 24.23}
local Goat_Monster_Bag_pos = {-88.12, 0.78, -24.50}	
local Goat_Encounters_Deck_rot = {0,90,180}
local Goat_Membership_Deck_rot = {0,90,180}
local Goat_Red_Corruption_Deck_rot = {0,90,180}
local Goat_Green_Corruption_Deck_rot = {0,90,180}
local Goat_Scripting_Zone = '9a90da'

-- The Curse of the Dark Pharaoh
local Pharaoh_Bag_id = '84d18a'
local Pharaoh_Exhibit_Encounter_Deck_pos = {34.93, 0.72, 17.11}
local Pharaoh_Exhibit_Encounter_Deck_rot = {0.08, 90.00, 179.98}
local Pharaoh_Exhibit_Item_Deck_pos = {34.97, 0.58, 13.18}
local Pharaoh_Exhibit_Item_Deck_rot = {0.08, 90.00, 179.98}
local Pharaoh_Detriments_Deck_pos = {30.11, 0.59, 17.15}
local Pharaoh_Benefits_Deck_pos = {30.12, 0.59, 13.30}
local Pharaoh_Detriments_Deck_rot = {0.08, 90.00, 179.98}
local Pharaoh_Benefits_Deck_rot = {0.08, 90.00, 179.98}
local Pharaoh_Patrol_Marker_pos = {30.20, 0.62, 27.90}
local Pharaoh_Patrol_Marker_rot = {0, 90.00, 0}
local Pharaoh_Ancient_Whispers_Token_pos = {12.07, 2, -14.47}
local Pharaoh_Ancient_Whispers_Token_rot = {0, 90.00, 0}
local Pharaoh_Scripting_Zone = 'fac27b'

-- The Lurker at the Threshold
local Lurker_Bag_id = 'fca9fb'

local Lurker_Gate_Marker_Bag_id = ''
local Lurker_Dunw_Gate_Marker_Bag_id = ''
local Lurker_King_Gate_Marker_Bag_id = ''
local Lurker_Gate_Marker_Bag_pos = {-97.62, 0.76, -25.17}
local Lurker_Dunw_Gate_Marker_Bag_pos = {-97.56, 0.76, -20.96}
local Lurker_King_Gate_Marker_Bag_pos = {-97.51, 0.76, -16.41}
local Lurker_Scripting_Zone = '20a413'

-- Miskatonic
local Miskatonic_Bag_Id = '551071'
local Miskatonic_Scripting_Zone = 'cd3018'
local Miskatonic_Mythos_Deck_Id = 'e2a68a'


local BoardPositionsDecks = {
    -- x, y, z for each die.
    -- y is the height over the table and setting it to
    -- a number higher than zero will make it fall down
    -- to the board
    [Board_Northside_deck_id] = {37.88, 2.5, -23.01},
    [Board_Downtown_deck_id] = {37.98, 2.5, -19.36},
    [Board_Easttown_deck_id] = {38.05, 2.5, -16.06},
    [Board_Merchant_deck_id] = {37.98, 2.5, -13.02},
    [Board_Rivertown_deck_id] = {37.89, 2.5, -9.87},
    [Board_Miskatonic_deck_id] = {37.97, 2.5, -6.91},
    [Board_French_deck_id] = {37.95, 2.5, -3.84},
    [Board_Uptown_deck_id] = {37.99, 2.5, -0.93},
    [Board_Southside_deck_id] = {38.00, 2.5, 2.13},
    [Board_Common_deck_id] = {32.45, 2.5, -16.06},
    [Board_Unique_deck_id] = {32.49, 2.5, -9.81},
    [Board_Spells_deck_id] = {32.49, 2.5, -3.95},
    [Board_Skills_deck_id] = {32.48, 2.5, 1.89},
    [Board_Allies_deck_id] = {32.33, 2.5, 8.12},
    [Board_Mythos_deck_id] = {15.72, 1.04, 16.34},
    [Board_Gate_deck_id] = {3.63, 0.87, 12.90},
    [Lurker_Gate_Marker_Bag_id] = {20.41, 1.01, 34.83},
    [Lurker_Dunw_Gate_Marker_Bag_id] = {12.09, 1.01, 35.32},
    [Lurker_King_Gate_Marker_Bag_id] = {8.21, 1.01, 34.59}
}

local BoardPositions3Boards = {
    -- x, y, z for each die.
    -- y is the height over the table and setting it to
    -- a number higher than zero will make it fall down
    -- to the board
    [Innsmouth_Board_Id] = {-22.26, 0.69, -7.28},
    [Innsmouth_Monster_bag_id] = {9.53, 1.01, 30.03},
    [Dunwich_Horror_Token_id] = {-42.71, 0.74, -26.76},
    [Dunwich_Horror_Monster_id] = {-39.51, 0.61, -26.76},
    [Dunwich_Board_Id] =   {-40.39, 0.77, -7.29},
    [Dunwich_Monster_bag_id] = {18.02, 1.01, 26.8},
    [Kingsport_Board_Id] = {-58.46, 0.80, -7.26},
    [Kingsport_Rift_1] = {-58.64, 0.86, 1.59},
    [Kingsport_Rift_2] = {-55.07, 0.87, 1.58},
    [Kingsport_Rift_3] = {-51.51, 0.89, 1.58},
    [Kingsport_Rift_Marker_Bag_id] = {-58.89, 0.52, 13.23},
    [Kingsport_Monster_bag_id] = {11.84, 1.01, 26.36},
    [Kingsport_Gate_Marker_Bag_id] = {14.8, 1.01, 32.58},
    [Kingsport_Rift_Progress_Marker_Bag_id] = {-57.31, 0.52, 14.52}
} 

local BoardPositionsDunwichSolo = {
    -- x, y, z for each die.
    -- y is the height over the table and setting it to
    -- a number higher than zero will make it fall down
    -- to the board
    [Dunwich_Board_Id] = {-22.23, 0.77, -7.25},
    [Dunwich_Horror_Token_id] = {-19.07, 0.58, -27.13},
    [Dunwich_Horror_Monster_id] = {-22.08, 0.71, -27.12},
    [Dunwich_Monster_bag_id] = {18.02, 1.01, 26.8}
    
}
local BoardPositionsKingsportSolo = {
    -- x, y, z for each die.
    -- y is the height over the table and setting it to
    -- a number higher than zero will make it fall down
    -- to the board
    [Kingsport_Board_Id] = {-22.30, 0.69, -7.32},
    [Kingsport_Rift_Marker_Bag_id] = {-23.64, 1.01, 13.28},
    [Kingsport_Monster_bag_id] = {11.84, 1.01, 26.36},
    [Kingsport_Gate_Marker_Bag_id] = {14.8, 1.01, 32.58},
    [Kingsport_Rift_Progress_Marker_Bag_id] = {-24.90, 0.47, 14.53},
    [Kingsport_Rift_1] = {-22.50, 0.76, 1.53},
    [Kingsport_Rift_2] = {-18.92, 0.75, 1.52},
    [Kingsport_Rift_3] = {-15.36, 0.75, 1.52}
}
local BoardPositionsKingsportDunwich = {
    -- x, y, z for each die.
    -- y is the height over the table and setting it to
    -- a number higher than zero will make it fall down
    -- to the board
    [Kingsport_Board_Id] = {-22.30, 0.69, -7.32},
    [Kingsport_Rift_Marker_Bag_id] = {-23.64, 1.01, 13.28},
    [Kingsport_Rift_Progress_Marker_Bag_id] = {-24.90, 0.47, 14.53},
    [Kingsport_Monster_bag_id] = {11.84, 1.01, 26.36},
    [Kingsport_Gate_Marker_Bag_id] = {14.8, 1.01, 32.58},
    [Kingsport_Rift_1] = {-22.50, 0.76, 1.53},
    [Kingsport_Rift_2] = {-18.92, 0.75, 1.52},
    [Kingsport_Rift_3] = {-15.36, 0.75, 1.52},
    [Dunwich_Horror_Token_id] = {-42.71, 0.74, -26.76},
    [Dunwich_Horror_Monster_id] = {-39.51, 0.61, -26.76},
    [Dunwich_Monster_bag_id] = {18.02, 1.01, 26.8},
    [Dunwich_Board_Id] = {-40.39, 0.77, -7.29}
}
local BoardPositionsInnsmouthKingsport = {
    -- x, y, z for each die.
    -- y is the height over the table and setting it to
    -- a number higher than zero will make it fall down
    -- to the board
    [Innsmouth_Board_Id] = {-22.26, 0.69, -7.28},
    [Kingsport_Board_Id] = {-40.41, 0.72, -7.20},
    [Kingsport_Rift_Marker_Bag_id] = {-35.74, 1.01, 12.41},
    [Kingsport_Monster_bag_id] = {11.84, 1.01, 26.36},
    [Kingsport_Gate_Marker_Bag_id] = {14.8, 1.01, 32.58},
    -- [Kingsport_Clue_Deck_id] = {12.22, 7.5, 21.1},
    [Kingsport_Rift_Progress_Marker_Bag_id] = {-41.25, 0.49, 14.52},
    [Kingsport_Rift_1] = {-40.59, 0.78, 1.64},
    [Kingsport_Rift_2] = {-37.02, 0.78, 1.64},
    [Kingsport_Rift_3] = {-33.46, 0.77, 1.64},
}
local BoardPositionsInnsmouthDunwich = {
    -- x, y, z for each die.
    -- y is the height over the table and setting it to
    -- a number higher than zero will make it fall down
    -- to the board
    [Innsmouth_Board_Id] = {-22.26, 0.69, -7.28},
    [Dunwich_Horror_Token_id] = {-42.71, 0.74, -26.76},
    [Dunwich_Horror_Monster_id] = {-39.51, 0.61, -26.76},
    [Dunwich_Monster_bag_id] = {18.02, 1.01, 26.8},
    [Dunwich_Board_Id] = {-40.39, 0.77, -7.29}
}

local BoardRotation = {
    -- x, y, z for each die.
    -- y is the height over the table and setting it to
    -- a number higher than zero will make it fall down
    -- to the board
    [Innsmouth_Board_Id] = {0.08, 90.00, 359.98},
    [Dunwich_Board_Id] =   {0.08, 90.01, 359.98},
    [Kingsport_Board_Id] = {359.76, 90.01, 359.98}
}

local Arkham_Unstable = {
    --Woods
    {28.23, 0.72, -13.05},
    -- Historical Society
    {28.21, 0.72, -7.24},
    -- Silver Twilight Lodge
    {17.03, 0.74, -4.14},
    -- The Whitch House
    {14.26, 0.75, 0.41},
    -- Science Building
    {12.62, 0.74, -22.99},
    -- The Unnamable
    {8.36, 0.75, -18.03},
    -- Unvisited Isle
    {2.62, 0.76, -23.02},
    -- Black Cave
    {8.31, 0.75, 0.42},
    -- Graveyard
    {4.35, 0.76, 0.33},
    -- Hibb's Roadhouse
    {-6.06, 0.77, -4.72},
    -- Independence Square
    {-11.17, 0.78, -4.84}
}

local Innsmouth_Unstable_Solo = {
    --Devil Reef
    {-28.02, 0.81, 1.87},
    -- Y'ha_Nthlei
    {-20.67, 0.80, 1.74},
    -- Esoteric Order of Dagon
    {-28.29, 0.80, -10.96},
    -- Marsh Refinery
    {-16.82, 0.78, -13.58}
}

local Dunwich_Unstable_Second = {
    -- Whateley Farm
    {-46.91, 0.82, -22.37},
    --Wizards Hill
    {-42.12, 0.82, -21.83},
    --Cold Spring Glen
    {-37.27, 0.81, -22.32},
    -- Gardner's Place
    {-46.93, 0.83, 0.73},
    -- Devil's Hopyard
    {-41.79, 0.82, 0.62}
}

local Dunwich_Unstable_Solo = {
    -- Whateley Farm
    {-28.74, 0.80, -22.33},
    --Wizards Hill
    {-23.96, 0.79, -21.79},
    --Cold Spring Glen
    {-19.10, 0.78, -22.30},
    -- Gardner's Place
    {-28.76, 0.81, 0.76},
    -- Devil's Hopyard
    {-23.63, 0.80, 0.66}
}

local Player_Starting_Position = {
    ['Ma\'s Boarding House'] = {22.12, 0.73, 0.46},
    ['Arkham Asylum'] = {-10.23, 0.78, -9.80},
    ['South Church'] = {27.78, 0.73, -1.49},
    ['Administration'] = {17.73, 0.73, -20.19},
    ['River Docks'] = {4.13, 1.05, -15.68},
    ['Ye Olde Magick Shoppe'] = {28.11, 0.72, -19.44},
    ['Curiositie Shoppe'] = {28.11, 0.72, -19.44},
    ['Train Station'] = {-11.18, 0.77, -19.92},
    ['St. Mary\'s Hospital'] = {23.14, 0.73, -23.02},
    ['Police Station'] = {-0.87, 0.77, -0.44},
    ['Bank of Arkham'] = {-10.46, 0.78, -14.89},
    ['Velma\'s Diner'] = {-6.16, 0.77, 0.37},
    ['Newspaper'] = {-7.36, 0.77, -22.84},
    ['Library'] = {15.81, 0.74, -15.60},
    ['General Store'] = {8.74, 0.75, -5.36},
    ['Science Building'] = {12.62, 0.74, -22.99},
    ['The Dreamlands'] = {3.07, 0.76, 6.93}
}


local switch_Is_MH_locations = {
    ['Harborside'] = function (x)  end,
    ['Kingsport Head'] = function (x)  end,
    ['Central Hill'] = function (x)  end,
    ['South Shore'] = function (x)  end,
    ['Church Green'] = function (x)  end,
    ['Innsmouth Shore'] = function (x)  end,
    ['Factory District'] = function (x)  end,
    ['Backwoods Country'] = function (x)  end,
    ['Village Commons'] = function (x)  end,
    ['Blasted Heath'] = function (x)  end,
    ['Gate_Deck'] = function (x)  end
}

local switch_MH_locations = {
    ['Harborside'] =  'Kingsport',
    ['Kingsport Head'] =  'Kingsport',
    ['Central Hill'] =  'Kingsport',
    ['South Shore'] = 'Kingsport',
    ['Church Green'] = 'Innsmouth',
    ['Innsmouth Shore'] = 'Innsmouth',
    ['Factory District'] = 'Innsmouth',
    ['Backwoods Country'] = 'Dunwich',
    ['Village Commons'] = 'Dunwich',
    ['Blasted Heath'] = 'Dunwich',
    ['Gate_Deck'] = 'Gate'
}

local switch_MH_Dual_locations = {
    ['Dun_Goa'] =  {'Dunwich','Goat'},
    ['Dun_Inn'] =  {'Dunwich','Innsmouth'},
    ['Dun_King'] =  {'Dunwich', 'Kingsport'},
    ['Dun_KiY'] = {'Dunwich','KiY'},
    ['Dun_Lur'] = {'Dunwich','Lurker'},
    ['Dun_Pha'] = {'Dunwich','Pharaoh'},
    ['Inn_Goa'] =  {'Innsmouth','Goat'},
    ['Inn_KiY'] = {'Innsmouth','KiY'},
    ['Inn_Lur'] = {'Innsmouth','Lurker'},
    ['Inn_Pha'] = {'Innsmouth','Pharaoh'},
    ['King_Goa'] =  {'Kingsport','Goat'},
    ['King_Inn'] =  {'Kingsport','Innsmouth'},
    ['King_KiY'] = {'Kingsport','KiY'},
    ['King_Lur'] = {'Innsmouth','Lurker'},
    ['King_Pha'] = {'Innsmouth','Pharaoh'},        
    ['Gate_Deck'] = {'Gate'}
}

local switch_MH_Positions = {
    ['Kingsport Head'] = {-101.94, 0.77, -19.35},
    ['Harborside'] = {-101.97, 0.77, -15.83},
    ['Central Hill'] = {-101.92, 0.77, -12.11},
    ['South Shore'] = {-101.99, 0.77, -8.22},
    ['Factory District'] = {-101.98, 0.77, -4.53},
    ['Innsmouth Shore'] = {-101.92, 0.77, -1.01},
    ['Church Green'] = {-101.86, 0.77, 2.66},
    ['Village Commons'] = {-101.86, 0.77, 6.42},
    ['Backwoods Country'] = {-101.82, 0.77, 10.01},
    ['Blasted Heath'] = {-101.76, 0.78, 13.68},
    ['Gate_Deck'] = {-101.76, 0.78, 17.12} 
}


function getSwitchMHLocations(id)
    return switch_MH_locations[id]
end

function getSwitchMHDualLocations(id)
    return switch_MH_Dual_locations[id] 
end

--Returns a vector with the placing positions for the object id given
function isLocationByTag(input)
    if switch_Is_MH_locations[input] ~= nil then
        switch_Is_MH_locations[input]()
        return true
    else
        return false
    end
end

--Returns a vector with the placing positions for the object id given
function getMHPositionById(id)
    return switch_MH_Positions[id]
end

-------------------------- Expansion-Specific ----------------------------------
function getYellowActsDeckId()
    return Yellow_Acts_Deck_id
end

function getYellowOriginalActsDeckId()
    return Yellow_Original_Acts_Deck_id
end

function getYellowMagicalEffectDeckId()
    return Yellow_Magical_Effect_Deck_id
end

function getGoatEncountersDeckid()
    return Goat_Encounters_Deck_id
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

function getGoatMonsterBagId()
    return Goat_Monster_Bag_Id
end


-------------------------- Board-Specific ----------------------------------
function getBoardRotation(id)
    return BoardRotation[id]
end

-------------------------- Expansion-Specific ----------------------------------
------------------------ get board decks ---------------------------------------

--Returns a vector with the placing positions for the object id given
function getBoardPositionsDecksById(id)
    return BoardPositionsDecks[id]
end

--Returns a vector with the placing positions for the object id given
function getBoardPositionsDunwichSoloById(id)
    return BoardPositionsDunwichSolo[id[1]]
end
--Returns a vector with the placing positions for the object id given
function getBoardPositionsKingsportSoloById(id)
    return BoardPositionsKingsportSolo[id[1]]
end
--Returns a vector with the placing positions for the object id given
function getBoardPositionsKingsportDunwichById(id)
    return BoardPositionsKingsportDunwich[id[1]]
end
--Returns a vector with the placing positions for the object id given
function getBoardPositionsInnsmouthKingsportById(id)
    return BoardPositionsInnsmouthKingsport[id[1]]
end
--Returns a vector with the placing positions for the object id given
function getBoardPositionsInnsmouthDunwichById(id)
    return BoardPositionsInnsmouthDunwich[id[1]]
end
--Returns a vector with the placing positions for the object id given
function getBoardPositions3BoardsById(id)
    return BoardPositions3Boards[id[1]]
end

function getBoardDecksShuffle()
    return Board_Decks_Shuffle
end

function getArkhamUnstable()
    return Arkham_Unstable
end

function getDunwichUnstableSolo()
    return Dunwich_Unstable_Solo
end

function getDunwichUnstableSecond()
    return Dunwich_Unstable_Second
end

function getInnsmouthUnstable()
    return Innsmouth_Unstable_Solo
end

-- Innsmouth Horror

function getInnsmouthBagId()
    return Innsmouth_Bag_id
end

function getInnsmouthBoardpos()
    return Innsmouth_Board_pos
end

function getInnsmouthLookDeckid()
    return Innsmouth_Look_Deck_id
end

function getInnsmouthLookDeckpos()
    return Innsmouth_Look_Deck_pos
end

function getInnsmouthLookDeckrot()
    return Innsmouth_Look_Deck_rot
end

function getInnsmouthFactoryDeckpos()
    return Innsmouth_Factory_Deck_pos
end

function getInnsmouthFactoryDeckrot()
    return Innsmouth_Factory_Deck_rot
end

function getInnsmouthShoreDeckpos()
    return Innsmouth_Shore_Deck_pos
end

function getInnsmouthShoreDeckrot()
    return Innsmouth_Shore_Deck_rot
end

function getInnsmouthChurchDeckpos()
    return Innsmouth_Church_Deck_pos
end

function getInnsmouthChurchDeckrot()
    return Innsmouth_Church_Deck_rot
end

function getInnsmouthDeeponeUprisingTokenpos()
    return Innsmouth_Deep_one_Uprising_Token_pos
end

function getInnsmouthDeeponeUprisingTokenrot()
    return Innsmouth_Church_Deck_rot
end

function getInnsmouthMonsterBagId()
    return Innsmouth_Monster_bag_id
end    

function getInnsmouthMonsterbagpos()
    return Innsmouth_Monster_bag_pos
end

function getInnsmouthBoardRot()
    return Innsmouth_Board_rot
end

function getInnsmouthBoardSca()
    return Innsmouth_Board_sca
end

function getInnsmouthClueTokenPos()
    return Innsmouth_Clue_Tokens_pos
end

function getInnsmouthMaskMonsterBagId()
    return Innsmouth_Mask_Monster_bag_id
end  

--returns the id to whoever calls it
function getInnsmouthScriptingZone()
    return Innsmouth_Scripting_Zone
end

--Probably not used, but just in case
--sets the id as given object
function setInnsmouthScriptingZone(id)
    Innsmouth_Scripting_Zone = id.getGUID()
end

-- Dunwich Horror

--returns the bag id to whoever calls it
function getDunwichBagId()
    return Dunwich_Bag_id
end

function getDunwichGateMarkerBagid()
    return Dunwich_Gate_Marker_Bag_id
end

function getDunwichHorrorDeckPos()
    return Dunwich_Horror_Deck_pos
end

function getDunwichHorrorDeckDeckRot()
    return Dunwich_Horror_Deck_rot
end

function getDunwichVillageCommonsDeckPos()
    return Dunwich_Village_Commons_Deck_pos
end

function getDunwichVillageCommonsDeckRot()
    return Dunwich_Village_Commons_Deck_rot
end

function getDunwichBackwoodsDeckPos()
    return Dunwich_Backwoods_Deck_pos
end

function getDunwichBackwoodsDeckRot()
    return Dunwich_Backwoods_Deck_rot
end

function getDunwichBlastedHeathDeckPos()
    return Dunwich_Blasted_Heath_Deck_pos
end

function getDunwichBlastedHeathDeckRot()
    return Dunwich_Blasted_Heath_Deck_rot
end

function getDunwichRailPassDeckPos()
    return Dunwich_Rail_Pass_Deck_pos
end

function getDunwichRailPassDeckRot()
    return Dunwich_Rail_Pass_Deck_rot
end

function getDunwichSheldonGangDeckPos()
    return Dunwich_Sheldon_Gang_Deck_pos
end

function getDunwichSheldonGangDeckRot()
    return Dunwich_Sheldon_Gang_Deck_rot
end

function getDunwichConditionDeckPos()
    return Dunwich_Condition_Deck_pos
end

function getDunwichConditionDeckRot()
    return Dunwich_Condition_Deck_rot
end

function getDunwichBoardRot()
    return Dunwich_Board_rot
end

function getDunwichBoardSca()
    return Dunwich_Board_sca
end

function getDunwichHorrorTokenRotation()
    return Dunwich_Horror_Token_rot
end

function getDunwichHorrorMonsterRotation()
    return Dunwich_Horror_Monster_rot
end

function getDunwichMonsterbagid()
    return Dunwich_Monster_bag_id
end

function getDunwichMaskMonsterBagId()
    return Dunwich_Mask_Monster_Bag_id
end

function getDunwichMonsterbagpos()
    return Dunwich_Monster_bag_pos
end

function getDunwichGateMarkerBagpos()
    return Dunwich_Gate_Marker_Bag_pos
end


--returns the id to whoever calls it
function getDunwichScriptingZone()
    return Dunwich_Scripting_Zone
end

--Probably not used, but just in case
--sets the id as given object
function setDunwichScriptingZone(id)
    Dunwich_Scripting_Zone = id.getGUID()
end

-- Kingsport Horror

--returns the bag id to whoever calls it
function getKingsportBagId()
    return Kingsport_Bag_id
end

function getKingsportCaptainDeckPosition()
    return Kingsport_Captain_Deck_pos
end

function getKingsportCaptainDeckRotation()
    return Kingsport_Captain_Deck_rot
end

function getKingsportChangedDeckPosition()
    return Kingsport_Changed_Deck_pos
end

function getKingsportChangedDeckRotation()
    return Kingsport_Changed_Deck_rot
end

function getKingsportHeadDeckPosition()
    return Kingsport_Head_Deck_pos
end

function getKingsportHeadDeckRotation()
    return Kingsport_Head_Deck_rot
end

function getKingsportHarborsideDeckPosition()
    return Kingsport_Harborside_Deck_pos
end

function getKingsportHarborsideDeckRotation()
    return Kingsport_Harborside_Deck_rot
end

function getKingsportCentralHillDeckPosition()
    return Kingsport_Central_Hill_Deck_pos
end

function getKingsportCentralHillDeckRotation()
    return Kingsport_Central_Hill_Deck_rot
end

function getKingsportSouthShoreDeckPosition()
    return Kingsport_South_Shore_Deck_pos
end

function getKingsportSouthShoreDeckRotation()
    return Kingsport_South_Shore_Deck_rot
end

function getKingsportRiftProgressMarkerRotation()
    return Kingsport_Rift_Progress_Marker_Bag_rot
end

function getKingsportBoardScale()
    return Kingsport_Board_sca
end

function getKingsportBoardRotation()
    return Kingsport_Board_rot
end

function getKingsportRiftMarkerBagid()
    return Kingsport_Rift_Marker_Bag_id
end

function getKingsportRiftMarkerBagpos()
    return Kingsport_Rift_Marker_Bag_pos
end

function getKingsportMonsterBagid()
    return Kingsport_Monster_bag_id
end

function getKingsportMaskMonsterBagId()
    return Kingsport_Masked_Monster_bag_id
end

function getKingsportMonsterbagpos()
    return Kingsport_Monster_bag_pos
end

function getKingsportGateMarkerBagId()
    return Kingsport_Gate_Marker_Bag_id
end

function getKingsportGateMarkerBagpos()
    return Kingsport_Gate_Marker_Bag_pos
end

--returns the id to whoever calls it
function getKingsportScriptingZone()
    return Kingsport_Scripting_Zone
end

--Probably not used, but just in case
--sets the id as given object
function setKingsportScriptingZone(id)
    Kingsport_Scripting_Zone = id.getGUID()
end
------------------------------ Kingsport Rifts ---------------------------------
--Returns a vector with the placing positions for the object id given
function getKingsportRift1()
    return Kingsport_Rift_1
end

function getKingsportRift2()
    return Kingsport_Rift_2
end

function getKingsportRift3()
    return Kingsport_Rift_3
end

-- Yellow

--returns the bag id to whoever calls it
function getYellowBagId()
    return Yellow_Bag_id
end

function getYellowMagicalEffectDeckrot()
    return Yellow_Magical_Effect_Deck_rot
end

function getYellowMagicalEffectDeckpos()
    return Yellow_Magical_Effect_Deck_pos
end

function getYellowActsDeckrot()
    return Yellow_Acts_Deck_rot
end

function getYellowActsDeckpos()
    return Yellow_Acts_Deck_pos
end

function getYellowOriginalActsDeckrot()
    return Yellow_Original_Acts_Deck_rot
end

function getYellowOriginalActsDeckpos()
    return Yellow_Original_Acts_Deck_pos
end

--returns the id to whoever calls it
function getYellowScriptingZone()
    return Yellow_Scripting_Zone
end

--Probably not used, but just in case
--sets the id as given object
function setYellowScriptingZone(id)
    Yellow_Scripting_Zone = id.getGUID()
end

--------------------------------- Placemat -------------------------------------

function getYellowPlacematId()
    return Yellow_Placemat_Id
end

function getYellowPlacematPosition()
    return Yellow_Placemat_Position
end

function getYellowPlacematRotation()
    return Yellow_Placemat_Rotation
end

function getYellowExtrasBagId()
    return Yellow_Extras_Bag_Id
end

-- Goat
--returns the bag id to whoever calls it
function getGoatBagId()
    return Goat_Bag_id
end

function getGoatEncountersDeckPos()
    return Goat_Encounters_Deck_pos
end

function getGoatMembershipDeckPos()
    return Goat_Membership_Deck_pos
end

function getGoatRedCorruptionDeckPos()
    return Goat_Red_Corruption_Deck_pos
end

function getGoatGreenCorruptionDeckPos()
    return Goat_Green_Corruption_Deck_pos
end

function getGoatMonsterBagPos()
    return Goat_Monster_Bag_pos
end

function getGoatEncountersDeckRot()
    return Goat_Encounters_Deck_rot
end

function getGoatMembershipDeckRot()
    return Goat_Membership_Deck_rot
end

function getGoatRedCorruptionDeckRot()
    return Goat_Red_Corruption_Deck_rot
end

function getGoatGreenCorruptionDeckRot()
    return Goat_Green_Corruption_Deck_rot
end

function getGoatMonsterBagRot()
    return Goat_Monster_Bag_rot
end

--returns the id to whoever calls it
function getGoatScriptingZone()
    return Goat_Scripting_Zone
end

--Probably not used, but just in case
--sets the id as given object
function setGoatScriptingZone(id)
    Goat_Scripting_Zone = id.getGUID()
end
-- Pharaoh

function getPharaohBagId()
    return Pharaoh_Bag_id
end

function getPharaohExhibitEncounterDeckpos()
    return Pharaoh_Exhibit_Encounter_Deck_pos
end

function getPharaohExhibitEncounterDeckrot()
    return Pharaoh_Exhibit_Encounter_Deck_rot
end


function getPharaohExhibitItemDeckpos()
    return Pharaoh_Exhibit_Item_Deck_pos
end

function getPharaohExhibitItemDeckrot()
    return Pharaoh_Exhibit_Item_Deck_rot
end

function getPharaohBenefitsDeckpos()
    return Pharaoh_Benefits_Deck_pos
end

function getPharaohBenefitsDeckrot()
    return Pharaoh_Benefits_Deck_rot
end

function getPharaohDetrimentsDeckpos()
    return Pharaoh_Detriments_Deck_pos
end

function getPharaohDetrimentsDeckrot()
    return Pharaoh_Detriments_Deck_rot
end

function getPharaohAncientWhispersTokenpos()
    return Pharaoh_Ancient_Whispers_Token_pos
end

function getPharaohAncientWhispersTokenrot()
    return Pharaoh_Ancient_Whispers_Token_rot
end

function getPharaohPatrolMarkerpos()
    return Pharaoh_Patrol_Marker_pos
end

function getPharaohPatrolMarkerrot()
    return Pharaoh_Patrol_Marker_rot
end

--returns the id to whoever calls it
function getPharaohScriptingZone()
    return Pharaoh_Scripting_Zone
end

--Probably not used, but just in case
--sets the id as given object
function setPharaohScriptingZone(id)
    Pharaoh_Scripting_Zone = id.getGUID()
end
-- Lurker

function getLurkerBagId()
    return Lurker_Bag_id
end

--returns the id to whoever calls it
function getLurkerGateMarkerBagId()
    return Lurker_Gate_Marker_Bag_id
end

--returns the id to whoever calls it
function getLurkerDunwGateMarkerBagId()
    return Lurker_Dunw_Gate_Marker_Bag_id
end

--returns the id to whoever calls it
function getLurkerKingGateMarkerBagId()
    return Lurker_King_Gate_Marker_Bag_id
end

--returns the id to whoever calls it
function getLurkerGateMarkerBagpos()
    return Lurker_Gate_Marker_Bag_pos
end

--returns the id to whoever calls it
function getLurkerDunwGateMarkerBagpos()
    return Lurker_Dunw_Gate_Marker_Bag_pos
end

--returns the id to whoever calls it
function getLurkerKingGateMarkerBagpos()
    return Lurker_King_Gate_Marker_Bag_pos
end


--returns the id to whoever calls it
function getLurkerScriptingZone()
    return Lurker_Scripting_Zone
end

---------------- Miskatonic

--Probably not used, but just in case
--sets the id as given object
function setLurkerScriptingZone(id)
    Lurker_Scripting_Zone = id.getGUID()
end

function getMiskatonicBagId()
    return Miskatonic_Bag_Id
end

-------------------------- Miskatonic Scripting Zone -------------------------------

--returns the id to whoever calls it
function getMiskatonicScriptingZone()
   return Miskatonic_Scripting_Zone
end

--Probably not used, but just in case
--sets the id as given object
function setMiskatonicScriptingZone(id)
   Miskatonic_Scripting_Zone = id.getGUID()
end
-------------------------- Miskatonic Scripting Zone -------------------------------

--Decks
function getMiskatonicMythosDeckId()
    return Miskatonic_Mythos_Deck_Id
end

function getMiskatonicHeadDeckpos()
	return Miskatonic_Head_Deck_pos
end

function getMiskatonicHarborsideDeckpos()
	return Miskatonic_Harborside_Deck_pos
end

function getMiskatonicCentralHillDeckpos()
	return Miskatonic_Central_Hill_Deck_pos
end

function getMiskatonicSouthShoreDeckpos()
	return Miskatonic_South_Shore_Deck_pos
end

function getMiskatonicFactoryDeckpos()
	return Miskatonic_Factory_Deck_pos
end

function getMiskatonicShoreDeckpos()
	return Miskatonic_Shore_Deck_pos
end

function getMiskatonicChurchDeckpos()
	return Miskatonic_Church_Deck_pos
end

function getMiskatonicVillageCommonsDeckpos()
	return Miskatonic_Village_Commons_Deck_pos
end

function getMiskatonicBackwoodsDeckpos()
	return Miskatonic_Backwoods_Deck_pos
end

function getMiskatonicBlastedHeathDeckpos()
	return Miskatonic_Blasted_Heath_Deck_pos
end

------------------------------ Setters ------------------------------------
function setInnsmouthMonsterbagid(id)
    Innsmouth_Monster_bag_id = id
end

-- Dunwich
function setDunwichGateMarkerBagid(id)
    Dunwich_Gate_Marker_Bag_id = id
end

function setDunwichHorrorDeckId(id)
    Dunwich_Horror_Deck_id = id
end

function setDunwichMonsterbagid(id)
    Dunwich_Monster_bag_id = id
end

-- Kingsport
function setKingsportMonsterBagid(id)
    Kingsport_Monster_bag_id = id
end

function setKingsportRiftMarkerBagid(id)
    Kingsport_Rift_Marker_Bag_id = id
end

-- Goat
function setGoatMonsterBagId(id)
    Goat_Monster_Bag_Id = id
end

-- Lurker
--sets the id as given object
function setLurkerGateMarkerBagId(id)
    Lurker_Gate_Marker_Bag_id = id
end

--sets the id as given object
function setLurkerDunwGateMarkerBagId(id)
    Lurker_Dunw_Gate_Marker_Bag_id = id
end

--sets the id as given object
function setLurkerKingGateMarkerBagId(id)
    Lurker_King_Gate_Marker_Bag_id = id
end

------------------------------ Player Setup ------------------------------------

function getPlayerStartingPosition(startLocation)
    return Player_Starting_Position[startLocation]
end