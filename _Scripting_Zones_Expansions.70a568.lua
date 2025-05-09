local Innsmouth_ScrZone_Devil_Reef_id = ''
local Innsmouth_ScrZone_Deep_Rising_id = ''
local Innsmouth_ScrZone_Jail_id = ''
local Innsmouth_ScrZone_Sawbone_Alley_id =''
local Innsmouth_ScrZone_Esoteric_Dagon_id = ''
local Innsmouth_ScrZone_Church_Green_id = ''
local Innsmouth_ScrZone_Factory_District_id = ''
local Innsmouth_ScrZone_First_National_Grocery_id = ''
local Innsmouth_ScrZone_Gilman_House_Hotel_id = ''
local Innsmouth_ScrZone_Marsh_Refinery_id = ''
local Innsmouth_ScrZone_Innsmouth_Shore_id = ''
local Innsmouth_ScrZone_Joe_Sargents_id = ''
local Innsmouth_ScrZone_Falcon_Point_id = ''
local Innsmouth_ScrZone_Yha_Nthlei_id = ''
local Innsmouth_Scrzone_Deep_Rising_sca = {3.48, 2.24, 4.84}
local Innsmouth_Scrzone_Deep_Rising_Rot = {0.00, 270.10, 0.00}

local Kingsport_ScrZone_Hall_School_id = ''
local Kingsport_ScrZone_607_Water_Street_id = ''
local Kingsport_ScrZone_Central_Hill_id = ''
local Kingsport_ScrZone_Congregational_Hospital_id =''
local Kingsport_ScrZone_Harborside_id = ''
local Kingsport_ScrZone_Rope_And_Anchor_Commons_id = ''
local Kingsport_ScrZone_Wireless_Station_id = ''
local Kingsport_ScrZone_Artists_Colony_id = ''
local Kingsport_ScrZone_7th_House_id = ''
local Kingsport_ScrZone_Neils_Curiosity_id = ''
local Kingsport_ScrZone_North_Point_Lighthouse_id = ''
local Kingsport_ScrZone_The_Causeway_id = ''
local Kingsport_ScrZone_St_Erasmus_id = ''
local Kingsport_ScrZone_Strange_High_House_id = ''
local Kingsport_ScrZone_South_Shore_id = ''
local Kingsport_ScrZone_The_Underworld_id = ''
local Kingsport_ScrZone_Unknown_Kadath_id = ''
local Kingsport_Scrzone_RiftProgress1_id = ''
local Kingsport_Scrzone_RiftProgress2_id = ''
local Kingsport_Scrzone_RiftProgress3_id = ''
local Kingsport_Scrzone_Changed_id = ''
local Kingsport_Scrzone_Captain_id = ''

local Dunwich_ScrZone_Whateley_Farm_id = ''
local Dunwich_ScrZone_Wizards_Hill_id = ''
local Dunwich_ScrZone_Cold_Spring_id = ''
local Dunwich_ScrZone_Backwoods_id =''
local Dunwich_ScrZone_Sentinel_Hill_id = ''
local Dunwich_ScrZone_Village_Commons_id = ''
local Dunwich_ScrZone_Darkes_Carnival_id = ''
local Dunwich_ScrZone_Bishop_Brooke_id = ''
local Dunwich_ScrZone_Dunwich_Village_id = ''
local Dunwich_ScrZone_Blasted_Heath_id = ''
local Dunwich_ScrZone_Gardners_Place_id = ''
local Dunwich_ScrZone_Devils_Hopyard_id = ''
local Dunwich_ScrZone_Harney_Jones_Shack_id = ''
local Dunwich_ScrZone_Another_Time_id = ''
local Dunwich_ScrZone_Lost_Carcosa_id = ''
local Dunwich_ScrZone_D_Horror_id = ''
local Dunwich_Scrzone_Sheldon_id = ''
local Dunwich_Scrzone_Condition_id = ''
local Dunwich_Scrzone_Rail_id = ''

local Pharaoh_Scrzone_Benefits_id = ''
local Pharaoh_Scrzone_Detriments_id = ''

local Kingsport_Scrzone_Changed_pos = {25.22, 0.63, 12.73}
local Kingsport_Scrzone_Captain_pos = {25.28, 0.53, 16.44}
local Dunwich_Scrzone_Sheldon_pos = {25.34, 0.53, 20.24}
local Dunwich_Scrzone_Condition_pos = {25.47, 0.50, 24.68}
local Dunwich_Scrzone_Rail_pos = {25.28, 0.53, 28.43}
local Pharaoh_Benefits_pos = {30.12, 0.57, 13.31}
local Pharaoh_Detriments_pos = {30.08, 0.56, 17.12}
local SpecialRotation = {0.00, 270, 0.00}
local Kingsport_Scrzone_Changed_sca = {2.27, 0.56, 3.34}
local Kingsport_Scrzone_Captain_sca = {2.22, 0.28, 3.25}
local Dunwich_Scrzone_Sheldon_sca = {2.22, 0.28, 3.25}
local Dunwich_Scrzone_Condition_sca = {2.23, 0.49, 3.29}
local Dunwich_Scrzone_Rail_sca = {2.24, 0.25, 3.33}
local Pharaoh_Benefits_sca = {2.22, 0.28, 3.25}
local Pharaoh_Detriments_sca = {2.23, 0.49, 3.29}


-------------------------------- ONlOAD/SAVE -----------------------------------
function onSave()
    local state = {}

    state.Innsmouth_ScrZone_Devil_Reef_id = Innsmouth_ScrZone_Devil_Reef_id
    state.Innsmouth_ScrZone_Deep_Rising_id = Innsmouth_ScrZone_Deep_Rising_id
    state.Innsmouth_ScrZone_Jail_id = Innsmouth_ScrZone_Jail_id
    state.Innsmouth_ScrZone_Sawbone_Alley_id = Innsmouth_ScrZone_Sawbone_Alley_id
    state.Innsmouth_ScrZone_Esoteric_Dagon_id = Innsmouth_ScrZone_Esoteric_Dagon_id
    state.Innsmouth_ScrZone_Church_Green_id = Innsmouth_ScrZone_Church_Green_id
    state.Innsmouth_ScrZone_Factory_District_id = Innsmouth_ScrZone_Factory_District_id
    state.Innsmouth_ScrZone_First_National_Grocery_id = Innsmouth_ScrZone_First_National_Grocery_id
    state.Innsmouth_ScrZone_Gilman_House_Hotel_id = Innsmouth_ScrZone_Gilman_House_Hotel_id
    state.Innsmouth_ScrZone_Marsh_Refinery_id = Innsmouth_ScrZone_Marsh_Refinery_id
    state.Innsmouth_ScrZone_Innsmouth_Shore_id = Innsmouth_ScrZone_Innsmouth_Shore_id
    state.Innsmouth_ScrZone_Joe_Sargents_id = Innsmouth_ScrZone_Joe_Sargents_id
    state.Innsmouth_ScrZone_Falcon_Point_id = Innsmouth_ScrZone_Falcon_Point_id
    state.Innsmouth_ScrZone_Yha_Nthlei_id = Innsmouth_ScrZone_Yha_Nthlei_id
    state.Kingsport_ScrZone_Hall_School_id = Kingsport_ScrZone_Hall_School_id
    state.Kingsport_ScrZone_607_Water_Street_id = Kingsport_ScrZone_607_Water_Street_id
    state.Kingsport_ScrZone_Central_Hill_id = Kingsport_ScrZone_Central_Hill_id
    state.Kingsport_ScrZone_Congregational_Hospital_id = Kingsport_ScrZone_Congregational_Hospital_id
    state.Kingsport_ScrZone_Harborside_id = Kingsport_ScrZone_Harborside_id
    state.Kingsport_ScrZone_Rope_And_Anchor_Commons_id = Kingsport_ScrZone_Rope_And_Anchor_Commons_id
    state.Kingsport_ScrZone_Wireless_Station_id = Kingsport_ScrZone_Wireless_Station_id
    state.Kingsport_ScrZone_Artists_Colony_id = Kingsport_ScrZone_Artists_Colony_id
    state.Kingsport_ScrZone_7th_House_id = Kingsport_ScrZone_7th_House_id
    state.Kingsport_ScrZone_Neils_Curiosity_id = Kingsport_ScrZone_Neils_Curiosity_id
    state.Kingsport_ScrZone_North_Point_Lighthouse_id = Kingsport_ScrZone_North_Point_Lighthouse_id
    state.Kingsport_ScrZone_The_Causeway_id = Kingsport_ScrZone_The_Causeway_id
    state.Kingsport_ScrZone_St_Erasmus_id = Kingsport_ScrZone_St_Erasmus_id
    state.Kingsport_ScrZone_Strange_High_House_id = Kingsport_ScrZone_Strange_High_House_id
    state.Kingsport_ScrZone_South_Shore_id = Kingsport_ScrZone_South_Shore_id
    state.Kingsport_ScrZone_The_Underworld_id = Kingsport_ScrZone_The_Underworld_id
    state.Kingsport_ScrZone_Unknown_Kadath_id = Kingsport_ScrZone_Unknown_Kadath_id
    state.Kingsport_Scrzone_RiftProgress1_id = Kingsport_Scrzone_RiftProgress1_id
    state.Kingsport_Scrzone_RiftProgress2_id = Kingsport_Scrzone_RiftProgress2_id
    state.Kingsport_Scrzone_RiftProgress3_id = Kingsport_Scrzone_RiftProgress3_id
    state.Dunwich_ScrZone_Whateley_Farm_id = Dunwich_ScrZone_Whateley_Farm_id
    state.Dunwich_ScrZone_Wizards_Hill_id = Dunwich_ScrZone_Wizards_Hill_id
    state.Dunwich_ScrZone_Cold_Spring_id = Dunwich_ScrZone_Cold_Spring_id
    state.Dunwich_ScrZone_Backwoods_id = Dunwich_ScrZone_Backwoods_id
    state.Dunwich_ScrZone_Sentinel_Hill_id = Dunwich_ScrZone_Sentinel_Hill_id
    state.Dunwich_ScrZone_Village_Commons_id = Dunwich_ScrZone_Village_Commons_id
    state.Dunwich_ScrZone_Darkes_Carnival_id = Dunwich_ScrZone_Darkes_Carnival_id
    state.Dunwich_ScrZone_Bishop_Brooke_id = Dunwich_ScrZone_Bishop_Brooke_id
    state.Dunwich_ScrZone_Dunwich_Village_id = Dunwich_ScrZone_Dunwich_Village_id
    state.Dunwich_ScrZone_Blasted_Heath_id = Dunwich_ScrZone_Blasted_Heath_id
    state.Dunwich_ScrZone_Gardners_Place_id = Dunwich_ScrZone_Gardners_Place_id
    state.Dunwich_ScrZone_Devils_Hopyard_id = Dunwich_ScrZone_Devils_Hopyard_id
    state.Dunwich_ScrZone_Harney_Jones_Shack_id = Dunwich_ScrZone_Harney_Jones_Shack_id
    state.Dunwich_ScrZone_Another_Time_id = Dunwich_ScrZone_Another_Time_id
    state.Dunwich_ScrZone_Lost_Carcosa_id = Dunwich_ScrZone_Lost_Carcosa_id
    state.Dunwich_ScrZone_D_Horror_id = Dunwich_ScrZone_D_Horror_id
    state.Kingsport_Scrzone_Changed_id = Kingsport_Scrzone_Changed_id
    state.Kingsport_Scrzone_Captain_id = Kingsport_Scrzone_Captain_id
    state.Dunwich_Scrzone_Sheldon_id = Dunwich_Scrzone_Sheldon_id
    state.Dunwich_Scrzone_Condition_id = Dunwich_Scrzone_Condition_id
    state.Dunwich_Scrzone_Rail_id = Dunwich_Scrzone_Rail_id
    state.Pharaoh_Scrzone_Benefits_id = Pharaoh_Scrzone_Benefits_id
    state.Pharaoh_Scrzone_Detriments_id = Pharaoh_Scrzone_Detriments_id

     return JSON.encode_pretty(state)
end

--[[ The onLoad event is called after the game save finishes loading. --]]
function onLoad(saveState)

    if saveState ~= "" then
        local data = JSON.decode(saveState)

        Innsmouth_ScrZone_Devil_Reef_id = data.Innsmouth_ScrZone_Devil_Reef_id
        Innsmouth_ScrZone_Deep_Rising_id = data.Innsmouth_ScrZone_Deep_Rising_id
        Innsmouth_ScrZone_Jail_id = data.Innsmouth_ScrZone_Jail_id
        Innsmouth_ScrZone_Sawbone_Alley_id = data.Innsmouth_ScrZone_Sawbone_Alley_id
        Innsmouth_ScrZone_Esoteric_Dagon_id = data.Innsmouth_ScrZone_Esoteric_Dagon_id
        Innsmouth_ScrZone_Church_Green_id = data.Innsmouth_ScrZone_Church_Green_id
        Innsmouth_ScrZone_Factory_District_id = data.Innsmouth_ScrZone_Factory_District_id
        Innsmouth_ScrZone_First_National_Grocery_id = data.Innsmouth_ScrZone_First_National_Grocery_id
        Innsmouth_ScrZone_Gilman_House_Hotel_id = data.Innsmouth_ScrZone_Gilman_House_Hotel_id
        Innsmouth_ScrZone_Marsh_Refinery_id = data.Innsmouth_ScrZone_Marsh_Refinery_id
        Innsmouth_ScrZone_Innsmouth_Shore_id = data.Innsmouth_ScrZone_Innsmouth_Shore_id
        Innsmouth_ScrZone_Joe_Sargents_id = data.Innsmouth_ScrZone_Joe_Sargents_id
        Innsmouth_ScrZone_Falcon_Point_id = data.Innsmouth_ScrZone_Falcon_Point_id
        Innsmouth_ScrZone_Yha_Nthlei_id = data.Innsmouth_ScrZone_Yha_Nthlei_id
        Kingsport_ScrZone_Hall_School_id = data.Kingsport_ScrZone_Hall_School_id
        Kingsport_ScrZone_607_Water_Street_id = data.Kingsport_ScrZone_607_Water_Street_id
        Kingsport_ScrZone_Central_Hill_id = data.Kingsport_ScrZone_Central_Hill_id
        Kingsport_ScrZone_Congregational_Hospital_id = data.Kingsport_ScrZone_Congregational_Hospital_id
        Kingsport_ScrZone_Harborside_id = data.Kingsport_ScrZone_Harborside_id
        Kingsport_ScrZone_Rope_And_Anchor_Commons_id = data.Kingsport_ScrZone_Rope_And_Anchor_Commons_id
        Kingsport_ScrZone_Wireless_Station_id = data.Kingsport_ScrZone_Wireless_Station_id
        Kingsport_ScrZone_Artists_Colony_id = data.Kingsport_ScrZone_Artists_Colony_id
        Kingsport_ScrZone_7th_House_id = data.Kingsport_ScrZone_7th_House_id
        Kingsport_ScrZone_Neils_Curiosity_id = data.Kingsport_ScrZone_Neils_Curiosity_id
        Kingsport_ScrZone_North_Point_Lighthouse_id = data.Kingsport_ScrZone_North_Point_Lighthouse_id
        Kingsport_ScrZone_The_Causeway_id = data.Kingsport_ScrZone_The_Causeway_id
        Kingsport_ScrZone_St_Erasmus_id = data.Kingsport_ScrZone_St_Erasmus_id
        Kingsport_ScrZone_Strange_High_House_id = data.Kingsport_ScrZone_Strange_High_House_id
        Kingsport_ScrZone_South_Shore_id = data.Kingsport_ScrZone_South_Shore_id
        Kingsport_ScrZone_The_Underworld_id = data.Kingsport_ScrZone_The_Underworld_id
        Kingsport_ScrZone_Unknown_Kadath_id = data.Kingsport_ScrZone_Unknown_Kadath_id
        Kingsport_Scrzone_RiftProgress1_id = data.Kingsport_Scrzone_RiftProgress1_id
        Kingsport_Scrzone_RiftProgress2_id = data.Kingsport_Scrzone_RiftProgress2_id
        Kingsport_Scrzone_RiftProgress3_id = data.Kingsport_Scrzone_RiftProgress3_id
        Dunwich_ScrZone_Whateley_Farm_id = data.Dunwich_ScrZone_Whateley_Farm_id
        Dunwich_ScrZone_Wizards_Hill_id = data.Dunwich_ScrZone_Wizards_Hill_id
        Dunwich_ScrZone_Cold_Spring_id = data.Dunwich_ScrZone_Cold_Spring_id
        Dunwich_ScrZone_Backwoods_id = data.Dunwich_ScrZone_Backwoods_id
        Dunwich_ScrZone_Sentinel_Hill_id = data.Dunwich_ScrZone_Sentinel_Hill_id
        Dunwich_ScrZone_Village_Commons_id = data.Dunwich_ScrZone_Village_Commons_id
        Dunwich_ScrZone_Darkes_Carnival_id = data.Dunwich_ScrZone_Darkes_Carnival_id
        Dunwich_ScrZone_Bishop_Brooke_id = data.Dunwich_ScrZone_Bishop_Brooke_id
        Dunwich_ScrZone_Dunwich_Village_id = data.Dunwich_ScrZone_Dunwich_Village_id
        Dunwich_ScrZone_Blasted_Heath_id = data.Dunwich_ScrZone_Blasted_Heath_id
        Dunwich_ScrZone_Gardners_Place_id = data.Dunwich_ScrZone_Gardners_Place_id
        Dunwich_ScrZone_Devils_Hopyard_id = data.Dunwich_ScrZone_Devils_Hopyard_id
        Dunwich_ScrZone_Harney_Jones_Shack_id = data.Dunwich_ScrZone_Harney_Jones_Shack_id
        Dunwich_ScrZone_Another_Time_id = data.Dunwich_ScrZone_Another_Time_id
        Dunwich_ScrZone_Lost_Carcosa_id = data.Dunwich_ScrZone_Lost_Carcosa_id
        Dunwich_ScrZone_D_Horror_id = data.Dunwich_ScrZone_D_Horror_id
        Kingsport_Scrzone_Changed_id = data.Kingsport_Scrzone_Changed_id
        Kingsport_Scrzone_Captain_id = data.Kingsport_Scrzone_Captain_id
        Dunwich_Scrzone_Sheldon_id = data.Dunwich_Scrzone_Sheldon_id
        Dunwich_Scrzone_Condition_id = data.Dunwich_Scrzone_Condition_id
        Dunwich_Scrzone_Rail_id = data.Dunwich_Scrzone_Rail_id
        Pharaoh_Scrzone_Benefits_id = data.Pharaoh_Scrzone_Benefits_id
        Pharaoh_Scrzone_Detriments_id = data.Pharaoh_Scrzone_Detriments_id
    end
end
-------------------------------- ONlOAD/SAVE -----------------------------------
  -- x, y, z for each die.
  -- y is the height over the table and setting it to
  -- a number higher than zero will make it fall down
  -- to the board
  local BoardPositionsScrZones3Boards = {
 -- x, y, z for each die.
 -- y is the height over the table and setting it to
 -- a number higher than zero will make it fall down
 -- to the board
 ["Innsmouth_ScrZone_Devil_Reef"] = {-27.97, 1.68, 1.73},
 ["Innsmouth_ScrZone_Jail"] = {-27.53, 1.68, -22.29},
 ["Innsmouth_ScrZone_Deep_Rising"] = {-22.21, 1.03, 7.49},
 ["Innsmouth_ScrZone_Sawbone_Alley"] = {-29.09, 1.68, -16.02},
 ["Innsmouth_ScrZone_Esoteric_Dagon"] = {-28.52, 1.68, -10.89},
 ["Innsmouth_ScrZone_Church_Green"] = {-23.54, 1.68, -13.73},
 ["Innsmouth_ScrZone_Factory_District"] = {-21.80, 1.68, -20.60},
 ["Innsmouth_ScrZone_First_National_Grocery"] = {-16.74, 1.68, -23.19},
 ["Innsmouth_ScrZone_Gilman_House_Hotel"] = {-16.58, 1.68, -18.37},
 ["Innsmouth_ScrZone_Marsh_Refinery"] = {-17.01, 1.68, -13.57},
 ["Innsmouth_ScrZone_Innsmouth_Shore"] = {-19.25, 1.68, -8.67},
 ["Innsmouth_ScrZone_Joe_Sargents"] = {-24.23, 1.68, -4.28},
 ["Innsmouth_ScrZone_Falcon_Point"] = {-17.39, 1.68, -2.90},
 ["Innsmouth_ScrZone_Yha_Nthlei"] = {-20.56, 1.68, 1.85},
 ["Dunwich_ScrZone_Whateley_Farm"] = {-46.82, 1.68, -22.46},
 ["Dunwich_ScrZone_Wizards_Hill"] = {-42.12, 1.68, -22.36},
 ["Dunwich_ScrZone_Cold_Spring"] = {-37.26, 1.68, -22.36},
 ["Dunwich_ScrZone_Backwoods"] = {-43.59, 1.68, -16.50},
 ["Dunwich_ScrZone_Sentinel_Hill"] = {-42.25, 1.68, -10.87},
 ["Dunwich_ScrZone_Village_Commons"] = {-38.48, 1.68, -10.82},
 ["Dunwich_ScrZone_Darkes_Carnival"] = {-34.54, 1.68, -17.26},
 ["Dunwich_ScrZone_Bishop_Brooke"] = {-33.90, 1.68, -10.94},
 ["Dunwich_ScrZone_Dunwich_Village"] = {-34.50, 1.68, -5.15},
 ["Dunwich_ScrZone_Blasted_Heath"] = {-43.60, 1.68, -5.18},
 ["Dunwich_ScrZone_Gardners_Place"] = {-46.96, 1.68, 0.57},
 ["Dunwich_ScrZone_Devils_Hopyard"] = {-41.76, 1.68, 0.55},
 ["Dunwich_ScrZone_Harney_Jones_Shack"] = {-35.97, 1.68, -0.16},
 ["Dunwich_ScrZone_Another_Time"] = {-36.85, 1.68, 7.25},
 ["Dunwich_ScrZone_Lost_Carcosa"] = {-45.06, 1.68, 7.49},
 ["Dunwich_ScrZone_D_Horror"] = {-48.43, 1.68, -10.70},
 ["Kingsport_ScrZone_Hall_School"] = {-51.69, 1.68, -10.97},
 ["Kingsport_ScrZone_607_Water_Street"] = {-62.72, 1.68, -18.04},
 ["Kingsport_ScrZone_Central_Hill"] = {-57.64, 1.68, -17.45},
 ["Kingsport_ScrZone_Congregational_Hospital"] = {-58.14, 1.68, -23.23},
 ["Kingsport_ScrZone_Harborside"] = {-59.20, 1.68, -10.85},
 ["Kingsport_ScrZone_Rope_And_Anchor_Commons"] = {-64.69, 1.68, -13.82},
 ["Kingsport_ScrZone_Wireless_Station"] = {-63.69, 1.68, -3.00},
 ["Kingsport_ScrZone_Artists_Colony"] = {-51.71, 1.68, -16.78},
 ["Kingsport_ScrZone_7th_House"] = {-52.27, 1.25, -22.40},
 ["Kingsport_ScrZone_Neils_Curiosity"] = {-52.30, 1.68, -5.25},
 ["Kingsport_ScrZone_North_Point_Lighthouse"] = {-64.67, 1.25, -9.23},
 ["Kingsport_ScrZone_The_Causeway"] = {-58.16, 1.68, -5.34},
 ["Kingsport_ScrZone_St_Erasmus"] = {-64.23, 1.68, -23.22},
 ["Kingsport_ScrZone_Strange_High_House"] = {-64.46, 1.68, 1.65},
 ["Kingsport_ScrZone_South_Shore"] = {-56.04, 1.68, -10.86},
 ["Kingsport_ScrZone_The_Underworld"] = {-54.95, 1.68, 7.38},
 ["Kingsport_ScrZone_Unknown_Kadath"] = {-63.10, 1.68, 7.33},
 ["Kingsport_Scrzone_RiftProgress1"] = {-58.70, 1.68, -1.32},
 ["Kingsport_Scrzone_RiftProgress2"] = {-55.01, 1.68, -1.42},
 ["Kingsport_Scrzone_RiftProgress3"] = {-51.40, 1.68, -1.38}
  }

  local BoardPositionsScrZonesInnsmouthSolo = {
 -- x, y, z for each die.
 -- y is the height over the table and setting it to
 -- a number higher than zero will make it fall down
 -- to the board
 ["Innsmouth_ScrZone_Devil_Reef"] = {-27.97, 1.68, 1.73},
 ["Innsmouth_ScrZone_Jail"] = {-27.53, 1.68, -22.29},
 ["Innsmouth_ScrZone_Deep_Rising"] = {-22.21, 1.03, 7.49},
 ["Innsmouth_ScrZone_Sawbone_Alley"] = {-29.26, 2.09, -15.95},
 ["Innsmouth_ScrZone_Esoteric_Dagon"] = {-28.52, 1.68, -10.89},
 ["Innsmouth_ScrZone_Church_Green"] = {-23.54, 1.68, -13.73},
 ["Innsmouth_ScrZone_Factory_District"] = {-21.80, 1.68, -20.60},
 ["Innsmouth_ScrZone_First_National_Grocery"] = {-16.74, 1.68, -23.19},
 ["Innsmouth_ScrZone_Gilman_House_Hotel"] =  {-16.58, 1.68, -18.37},
 ["Innsmouth_ScrZone_Marsh_Refinery"] = {-17.01, 1.68, -13.57},
 ["Innsmouth_ScrZone_Innsmouth_Shore"] = {-19.25, 1.68, -8.67},
 ["Innsmouth_ScrZone_Joe_Sargents"] = {-24.23, 1.68, -4.28},
 ["Innsmouth_ScrZone_Falcon_Point"] = {-17.39, 1.68, -2.90},
 ["Innsmouth_ScrZone_Yha_Nthlei"] = {-20.56, 1.68, 1.85}
  }

  local BoardPositionsScrZonesDunwichSolo = {
 -- x, y, z for each die.
 -- y is the height over the table and setting it to
 -- a number higher than zero will make it fall down
 -- to the board
 ["Dunwich_ScrZone_Whateley_Farm"] = {-28.67, 1.68, -22.49},
 ["Dunwich_ScrZone_Wizards_Hill"] = {-23.95, 1.68, -22.40},
 ["Dunwich_ScrZone_Cold_Spring"] = {-19.07, 1.68, -22.39},
 ["Dunwich_ScrZone_Backwoods"] = {-25.37, 1.68, -16.54},
 ["Dunwich_ScrZone_Sentinel_Hill"] = {-24.05, 1.68, -10.90},
 ["Dunwich_ScrZone_Village_Commons"] = {-20.24, 1.68, -10.86},
 ["Dunwich_ScrZone_Darkes_Carnival"] = {-16.37, 1.68, -17.14},
 ["Dunwich_ScrZone_Bishop_Brooke"] = {-15.71, 1.68, -10.89},
 ["Dunwich_ScrZone_Dunwich_Village"] = {-16.41, 1.68, -5.14},
 ["Dunwich_ScrZone_Blasted_Heath"] = {-25.51, 1.68, -5.16},
 ["Dunwich_ScrZone_Gardners_Place"] = {-28.75, 1.68, 0.56},
 ["Dunwich_ScrZone_Devils_Hopyard"] = {-23.54, 1.68, 0.59},
 ["Dunwich_ScrZone_Harney_Jones_Shack"] = {-17.65, 1.68, -0.17},
 ["Dunwich_ScrZone_Another_Time"] = {-18.93, 1.68, 7.22},
 ["Dunwich_ScrZone_Lost_Carcosa"] = {-26.86, 1.68, 7.46},
 ["Dunwich_ScrZone_D_Horror"] = {-30.34, 1.68, -10.78}
  }

  local BoardPositionsScrZonesKingsportSolo = {
 -- x, y, z for each die.
 -- y is the height over the table and setting it to
 -- a number higher than zero will make it fall down
 -- to the board
 ["Kingsport_ScrZone_Hall_School"] = {-15.37, 1.68, -11.02},
 ["Kingsport_ScrZone_607_Water_Street"] = {-26.62, 1.68, -18.06},
 ["Kingsport_ScrZone_Central_Hill"] = {-21.56, 1.68, -17.55},
 ["Kingsport_ScrZone_Congregational_Hospital"] = {-21.96, 1.68, -23.26},
 ["Kingsport_ScrZone_Harborside"] = {-23.05, 1.25, -10.85},
 ["Kingsport_ScrZone_Rope_And_Anchor_Commons"] = {-28.52, 1.68, -13.85},
 ["Kingsport_ScrZone_Wireless_Station"] = {-27.53, 1.68, -2.95},
 ["Kingsport_ScrZone_Artists_Colony"] = {-15.52, 1.68, -16.80},
 ["Kingsport_ScrZone_7th_House"] = {-16.03, 1.68, -22.43},
 ["Kingsport_ScrZone_Neils_Curiosity"] = {-16.11, 1.68, -5.31},
 ["Kingsport_ScrZone_North_Point_Lighthouse"] = {-28.47, 1.68, -9.30},
 ["Kingsport_ScrZone_The_Causeway"] = {-21.97, 1.68, -5.32},
 ["Kingsport_ScrZone_St_Erasmus"] = {-27.95, 1.68, -23.31},
 ["Kingsport_ScrZone_Strange_High_House"] = {-28.33, 1.68, 1.62},
 ["Kingsport_ScrZone_South_Shore"] = {-19.89, 1.68, -10.85},
 ["Kingsport_ScrZone_The_Underworld"] = {-18.85, 1.68, 7.38},
 ["Kingsport_ScrZone_Unknown_Kadath"] = {-26.99, 1.68, 7.41},
 ["Kingsport_Scrzone_RiftProgress1"] = {-22.47, 1.68, -1.39},
 ["Kingsport_Scrzone_RiftProgress2"] = {-18.94, 1.68, -1.38},
 ["Kingsport_Scrzone_RiftProgress3"] = {-15.18, 1.68, -1.45}
  }

  local BoardPositionsScrZonesKingsportDunwich = {
 -- x, y, z for each die.
 -- y is the height over the table and setting it to
 -- a number higher than zero will make it fall down
 -- to the board
 ["Kingsport_ScrZone_Hall_School"] = {-15.37, 1.68, -11.02},
 ["Kingsport_ScrZone_607_Water_Street"] = {-26.62, 1.68, -18.06},
 ["Kingsport_ScrZone_Central_Hill"] = {-21.56, 1.68, -17.55},
 ["Kingsport_ScrZone_Congregational_Hospital"] = {-21.96, 1.68, -23.26},
 ["Kingsport_ScrZone_Harborside"] = {-23.05, 1.25, -10.85},
 ["Kingsport_ScrZone_Rope_And_Anchor_Commons"] = {-28.52, 1.68, -13.85},
 ["Kingsport_ScrZone_Wireless_Station"] = {-27.53, 1.68, -2.95},
 ["Kingsport_ScrZone_Artists_Colony"] = {-15.52, 1.68, -16.80},
 ["Kingsport_ScrZone_7th_House"] = {-16.03, 1.68, -22.43},
 ["Kingsport_ScrZone_Neils_Curiosity"] = {-15.46, 1.68, -1.95},
 ["Kingsport_ScrZone_North_Point_Lighthouse"] = {-28.47, 1.68, -9.30},
 ["Kingsport_ScrZone_The_Causeway"] = {-21.97, 1.68, -5.32},
 ["Kingsport_ScrZone_St_Erasmus"] = {-27.95, 1.68, -23.31},
 ["Kingsport_ScrZone_Strange_High_House"] = {-28.33, 1.68, 1.62},
 ["Kingsport_ScrZone_South_Shore"] = {-19.89, 1.68, -10.85},
 ["Kingsport_ScrZone_The_Underworld"] = {-18.85, 1.68, 7.38},
 ["Kingsport_ScrZone_Unknown_Kadath"] = {-26.99, 1.68, 7.41},
 ["Kingsport_Scrzone_RiftProgress1"] = {-22.47, 1.68, -1.39},
 ["Kingsport_Scrzone_RiftProgress2"] = {-18.94, 1.68, -1.38},
 ["Kingsport_Scrzone_RiftProgress3"] = {-15.18, 1.68, -1.45},
 ["Dunwich_ScrZone_Whateley_Farm"] = {-46.82, 1.68, -22.46},
 ["Dunwich_ScrZone_Wizards_Hill"] = {-42.12, 1.68, -22.36},
 ["Dunwich_ScrZone_Cold_Spring"] = {-31.75, 1.68, -15.08},
 ["Dunwich_ScrZone_Backwoods"] = {-43.59, 1.68, -16.50},
 ["Dunwich_ScrZone_Sentinel_Hill"] = {-42.25, 1.68, -10.87},
 ["Dunwich_ScrZone_Village_Commons"] = {-38.48, 1.68, -10.82},
 ["Dunwich_ScrZone_Darkes_Carnival"] = {-34.54, 1.68, -17.26},
 ["Dunwich_ScrZone_Bishop_Brooke"] = {-33.90, 1.68, -10.94},
 ["Dunwich_ScrZone_Dunwich_Village"] = {-34.50, 1.68, -5.15},
 ["Dunwich_ScrZone_Blasted_Heath"] = {-43.60, 1.68, -5.18},
 ["Dunwich_ScrZone_Gardners_Place"] = {-46.96, 1.68, 0.57},
 ["Dunwich_ScrZone_Devils_Hopyard"] = {-41.76, 1.68, 0.55},
 ["Dunwich_ScrZone_Harney_Jones_Shack"] = {-35.97, 1.68, -0.16},
 ["Dunwich_ScrZone_Another_Time"] = {-36.85, 1.68, 7.25},
 ["Dunwich_ScrZone_Lost_Carcosa"] = {-45.06, 1.68, 7.49},
 ["Dunwich_ScrZone_D_Horror"] = {-48.43, 1.68, -10.70}
  }

  local BoardPositionsScrZonesInnsmouthKingsport = {
 -- x, y, z for each die.
 -- y is the height over the table and setting it to
 -- a number higher than zero will make it fall down
 -- to the board
 ["Innsmouth_ScrZone_Devil_Reef"] = {-27.97, 1.68, 1.73},
 ["Innsmouth_ScrZone_Jail"] = {-27.53, 1.68, -22.29},
 ["Innsmouth_ScrZone_Deep_Rising"] = {-22.21, 1.03, 7.49},
 ["Innsmouth_ScrZone_Sawbone_Alley"] = {-29.26, 2.09, -15.95},
 ["Innsmouth_ScrZone_Esoteric_Dagon"] = {-28.52, 1.68, -10.89},
 ["Innsmouth_ScrZone_Church_Green"] = {-23.54, 1.68, -13.73},
 ["Innsmouth_ScrZone_Factory_District"] = {-21.80, 1.68, -20.60},
 ["Innsmouth_ScrZone_First_National_Grocery"] = {-16.74, 1.68, -23.19},
 ["Innsmouth_ScrZone_Gilman_House_Hotel"] =  {-16.58, 1.68, -18.37},
 ["Innsmouth_ScrZone_Marsh_Refinery"] = {-17.01, 1.68, -13.57},
 ["Innsmouth_ScrZone_Innsmouth_Shore"] = {-19.25, 1.68, -8.67},
 ["Innsmouth_ScrZone_Joe_Sargents"] = {-24.23, 1.68, -4.28},
 ["Innsmouth_ScrZone_Falcon_Point"] = {-17.39, 1.68, -2.90},
 ["Innsmouth_ScrZone_Yha_Nthlei"] = {-20.56, 1.68, 1.85},
 ["Kingsport_ScrZone_Hall_School"] = {-33.50, 1.68, -10.85},
 ["Kingsport_ScrZone_607_Water_Street"] = {-44.94, 1.68, -17.98},
 ["Kingsport_ScrZone_Central_Hill"] = {-39.87, 1.68, -17.51},
 ["Kingsport_ScrZone_Congregational_Hospital"] = {-40.36, 1.68, -23.13},
 ["Kingsport_ScrZone_Harborside"] = {-41.08, 1.68, -10.81},
 ["Kingsport_ScrZone_Rope_And_Anchor_Commons"] = {-46.89, 1.68, -13.72},
 ["Kingsport_ScrZone_Wireless_Station"] = {-45.89, 1.68, -2.91},
 ["Kingsport_ScrZone_Artists_Colony"] = {-33.80, 1.68, -16.69},
 ["Kingsport_ScrZone_7th_House"] = {-34.53, 1.68, -22.19},
 ["Kingsport_ScrZone_Neils_Curiosity"] = {-34.46, 1.68, -5.15},
 ["Kingsport_ScrZone_North_Point_Lighthouse"] = {-46.49, 1.93, -9.25},
 ["Kingsport_ScrZone_The_Causeway"] = {-40.32, 1.68, -5.17},
 ["Kingsport_ScrZone_St_Erasmus"] = {-46.44, 1.68, -23.14},
 ["Kingsport_ScrZone_Strange_High_House"] = {-46.65, 1.68, 1.78},
 ["Kingsport_ScrZone_South_Shore"] = {-37.94, 1.68, -10.72},
 ["Kingsport_ScrZone_The_Underworld"] = {-37.08, 1.68, 7.38},
 ["Kingsport_ScrZone_Unknown_Kadath"] = {-45.69, 1.68, 7.39},
 ["Kingsport_Scrzone_RiftProgress1"] = {-40.82, 1.68, -1.33},
 ["Kingsport_Scrzone_RiftProgress2"] = {-37.31, 1.68, -1.29},
 ["Kingsport_Scrzone_RiftProgress3"] = {-33.70, 1.68, -1.32}
  }

  local BoardPositionsScrZonesInnsmouthDunwich = {
 -- x, y, z for each die.
 -- y is the height over the table and setting it to
 -- a number higher than zero will make it fall down
 -- to the board
 ["Innsmouth_ScrZone_Devil_Reef"] = {-27.97, 1.68, 1.73},
 ["Innsmouth_ScrZone_Jail"] = {-27.53, 1.68, -22.29},
 ["Innsmouth_ScrZone_Deep_Rising"] = {-22.21, 1.03, 7.49},
 ["Innsmouth_ScrZone_Sawbone_Alley"] = {-29.26, 2.09, -15.95},
 ["Innsmouth_ScrZone_Esoteric_Dagon"] = {-28.52, 1.68, -10.89},
 ["Innsmouth_ScrZone_Church_Green"] = {-23.54, 1.68, -13.73},
 ["Innsmouth_ScrZone_Factory_District"] = {-21.80, 1.68, -20.60},
 ["Innsmouth_ScrZone_First_National_Grocery"] = {-16.74, 1.68, -23.19},
 ["Innsmouth_ScrZone_Gilman_House_Hotel"] =  {-16.58, 1.68, -18.37},
 ["Innsmouth_ScrZone_Marsh_Refinery"] = {-17.01, 1.68, -13.57},
 ["Innsmouth_ScrZone_Innsmouth_Shore"] = {-19.25, 1.68, -8.67},
 ["Innsmouth_ScrZone_Joe_Sargents"] = {-24.23, 1.68, -4.28},
 ["Innsmouth_ScrZone_Falcon_Point"] = {-17.39, 1.68, -2.90},
 ["Innsmouth_ScrZone_Yha_Nthlei"] = {-20.56, 1.68, 1.85},
 ["Dunwich_ScrZone_Whateley_Farm"] = {-46.82, 1.68, -22.46},
 ["Dunwich_ScrZone_Wizards_Hill"] = {-42.12, 1.68, -22.36},
 ["Dunwich_ScrZone_Cold_Spring"] = {-37.26, 1.68, -22.36},
 ["Dunwich_ScrZone_Backwoods"] = {-43.59, 1.68, -16.50},
 ["Dunwich_ScrZone_Sentinel_Hill"] = {-42.25, 1.68, -10.87},
 ["Dunwich_ScrZone_Village_Commons"] = {-38.48, 1.68, -10.82},
 ["Dunwich_ScrZone_Darkes_Carnival"] = {-34.54, 1.68, -17.26},
 ["Dunwich_ScrZone_Bishop_Brooke"] = {-33.90, 1.68, -10.94},
 ["Dunwich_ScrZone_Dunwich_Village"] = {-34.50, 1.68, -5.15},
 ["Dunwich_ScrZone_Blasted_Heath"] = {-43.60, 1.68, -5.18},
 ["Dunwich_ScrZone_Gardners_Place"] = {-46.96, 1.68, 0.57},
 ["Dunwich_ScrZone_Devils_Hopyard"] = {-41.76, 1.68, 0.55},
 ["Dunwich_ScrZone_Harney_Jones_Shack"] = {-35.97, 1.68, -0.16},
 ["Dunwich_ScrZone_Another_Time"] = {-36.85, 1.68, 7.25},
 ["Dunwich_ScrZone_Lost_Carcosa"] = {-45.06, 1.68, 7.49},
 ["Dunwich_ScrZone_D_Horror"] = {-48.43, 1.68, -10.70}
}

-- Getters

function getInnsmouthScrZoneDevilReefid()
    return Innsmouth_ScrZone_Devil_Reef_id
end

function getInnsmouthScrZoneDeepRisingid()
    return Innsmouth_ScrZone_Deep_Rising_id
end

function getInnsmouthScrZoneDeepRisingRot()
     return Innsmouth_Scrzone_Deep_Rising_Rot
end

function getInnsmouthScrZoneDeepRisingSca()
     return Innsmouth_Scrzone_Deep_Rising_sca
end

function getInnsmouthScrZoneJailid()
    return Innsmouth_ScrZone_Jail_id
end

function getInnsmouthScrZoneSawboneAlleyid()
    return Innsmouth_ScrZone_Sawbone_Alley_id
end

function getInnsmouthScrZoneEsotericDagonid()
    return Innsmouth_ScrZone_Esoteric_Dagon_id
end

function getInnsmouthScrZoneChurchGreenid()
    return Innsmouth_ScrZone_Church_Green_id
end

function getInnsmouthScrZoneFactoryDistrictid()
    return Innsmouth_ScrZone_Factory_District_id
end

function getInnsmouthScrZoneFirstNationalGroceryid()
    return Innsmouth_ScrZone_First_National_Grocery_id
end

function getInnsmouthScrZoneGilmanHouseHotelid()
    return Innsmouth_ScrZone_Gilman_House_Hotel_id
end

function getInnsmouthScrZoneMarshRefineryid()
    return Innsmouth_ScrZone_Marsh_Refinery_id
end

function getInnsmouthScrZoneInnsmouthShoreid()
    return Innsmouth_ScrZone_Innsmouth_Shore_id
end

function getInnsmouthScrZoneJoeSargentsid()
    return Innsmouth_ScrZone_Joe_Sargents_id
end

function getInnsmouthScrZoneFalconPointid()
    return Innsmouth_ScrZone_Falcon_Point_id
end

function getInnsmouthScrZoneYhaNthleiid()
    return Innsmouth_ScrZone_Yha_Nthlei_id
end

function getKingsportScrZoneHallSchoolid()
    return Kingsport_ScrZone_Hall_School_id
end

function getKingsportScrZone607WaterStreetid()
    return Kingsport_ScrZone_607_Water_Street_id
end

function getKingsportScrZoneCentralHillid()
    return Kingsport_ScrZone_Central_Hill_id
end

function getKingsportScrZoneCongregationalHospitalid()
    return Kingsport_ScrZone_Congregational_Hospital_id
end

function getKingsportScrZoneHarborsideid()
    return Kingsport_ScrZone_Harborside_id
end

function getKingsportScrZoneRopeAndAnchorCommonsid()
    return Kingsport_ScrZone_Rope_And_Anchor_Commons_id
end

function getKingsportScrZoneWirelessStationid()
    return Kingsport_ScrZone_Wireless_Station_id
end

function getKingsportScrZoneArtistsColonyid()
    return Kingsport_ScrZone_Artists_Colony_id
end

function getKingsportScrZone7thHouseid()
    return Kingsport_ScrZone_7th_House_id
end

function getKingsportScrZoneNeilsCuriosityid()
    return Kingsport_ScrZone_Neils_Curiosity_id
end

function getKingsportScrZoneNorthPointLighthouseid()
    return Kingsport_ScrZone_North_Point_Lighthouse_id
end

function getKingsportScrZoneTheCausewayid()
    return Kingsport_ScrZone_The_Causeway_id
end

function getKingsportScrZoneStErasmusid()
    return Kingsport_ScrZone_St_Erasmus_id
end

function getKingsportScrZoneStrangeHighHouseid()
    return Kingsport_ScrZone_Strange_High_House_id
end

function getKingsportScrZoneSouthShoreid()
    return Kingsport_ScrZone_South_Shore_id
end

function getKingsportScrZoneTheUnderworldid()
    return Kingsport_ScrZone_The_Underworld_id
end

function getKingsportScrZoneUnknownKadathid()
    return Kingsport_ScrZone_Unknown_Kadath_id
end

function getKingsportScrzoneRiftProgress1id()
    return Kingsport_Scrzone_RiftProgress1_id
end

function getKingsportScrzoneRiftProgress2id()
    return Kingsport_Scrzone_RiftProgress2_id
end

function getKingsportScrzoneRiftProgress3id()
    return Kingsport_Scrzone_RiftProgress3_id
end

function getKingsportScrzoneCaptainid()
    return Kingsport_Scrzone_Captain_id
end

function getKingsportScrzoneCaptainpos()
    return Kingsport_Scrzone_Captain_pos
end

function getKingsportScrzoneChangedid()
    return Kingsport_Scrzone_Changed_id
end

function getKingsportScrzoneChangedpos()
    return Kingsport_Scrzone_Changed_pos
end

------------------------------------------------ Dunwich --------------------------------------------

function getDunwichScrZoneWhateleyFarmid()
    return Dunwich_ScrZone_Whateley_Farm_id
end

function getDunwichScrZoneWizardsHillid()
    return Dunwich_ScrZone_Wizards_Hill_id
end

function getDunwichScrZoneColdSpringid()
    return Dunwich_ScrZone_Cold_Spring_id
end

function getDunwichScrZoneBackwoodsid()
    return Dunwich_ScrZone_Backwoods_id
end

function getDunwichScrZoneSentinelHillid()
    return Dunwich_ScrZone_Sentinel_Hill_id
end

function getDunwichScrZoneVillageCommonsid()
    return Dunwich_ScrZone_Village_Commons_id
end

function getDunwichScrZoneDarkesCarnivalid()
    return Dunwich_ScrZone_Darkes_Carnival_id
end

function getDunwichScrZoneBishopBrookeid()
    return Dunwich_ScrZone_Bishop_Brooke_id
end

function getDunwichScrZoneDunwichVillageid()
    return Dunwich_ScrZone_Dunwich_Village_id
end

function getDunwichScrZoneBlastedHeathid()
    return Dunwich_ScrZone_Blasted_Heath_id
end

function getDunwichScrZoneGardnersPlaceid()
    return Dunwich_ScrZone_Gardners_Place_id
end

function getDunwichScrZoneDevilsHopyardid()
    return Dunwich_ScrZone_Devils_Hopyard_id
end

function getDunwichScrZoneHarneyJonesShackid()
    return Dunwich_ScrZone_Harney_Jones_Shack_id
end

function getDunwichScrZoneAnotherTimeid()
    return Dunwich_ScrZone_Another_Time_id
end

function getDunwichScrZoneLostCarcosaid()
    return Dunwich_ScrZone_Lost_Carcosa_id
end

function getDunwichScrZoneDHorrorid()
    return Dunwich_ScrZone_D_Horror_id
end

function getDunwichScrzoneSheldonid()
    return Dunwich_Scrzone_Sheldon_id
end

function getDunwichScrzoneSheldonpos()
    return Dunwich_Scrzone_Sheldon_pos
end

function getDunwichScrzoneConditionid()
    return Dunwich_Scrzone_Condition_id
end

function getDunwichScrzoneConditionpos()
    return Dunwich_Scrzone_Condition_pos
end

function getDunwichScrzoneRailid()
    return Dunwich_Scrzone_Rail_id
end

function getPharaohScrzoneBenefitsid()
     return Pharaoh_Scrzone_Benefits_id
end

function getPharaohScrzoneDetrimentsid()
     return Pharaoh_Scrzone_Detriments_id
end

function getDunwichScrzoneRailpos()
    return Dunwich_Scrzone_Rail_pos
end

function getPharaohScrzoneBenefitsPos()
    return Pharaoh_Benefits_pos
end

function getPharaohScrzoneDetrimentsPos()
    return Pharaoh_Detriments_pos
end

-- Getters end
-- Setters

function setInnsmouthScrZoneDevilReefid(GUID)
     Innsmouth_ScrZone_Devil_Reef_id = GUID
end

function setInnsmouthScrZoneDeepRisingid(GUID)
     Innsmouth_ScrZone_Deep_Rising_id = GUID
end

function setInnsmouthScrZoneJailid(GUID)
     Innsmouth_ScrZone_Jail_id = GUID
end

function setInnsmouthScrZoneSawboneAlleyid(GUID)
     Innsmouth_ScrZone_Sawbone_Alley_id = GUID
end

function setInnsmouthScrZoneEsotericDagonid(GUID)
     Innsmouth_ScrZone_Esoteric_Dagon_id = GUID
end

function setInnsmouthScrZoneChurchGreenid(GUID)
     Innsmouth_ScrZone_Church_Green_id = GUID
end

function setInnsmouthScrZoneFactoryDistrictid(GUID)
     Innsmouth_ScrZone_Factory_District_id = GUID
end

function setInnsmouthScrZoneFirstNationalGroceryid(GUID)
     Innsmouth_ScrZone_First_National_Grocery_id = GUID
end

function setInnsmouthScrZoneGilmanHouseHotelid(GUID)
     Innsmouth_ScrZone_Gilman_House_Hotel_id = GUID
end

function setInnsmouthScrZoneMarshRefineryid(GUID)
     Innsmouth_ScrZone_Marsh_Refinery_id = GUID
end

function setInnsmouthScrZoneInnsmouthShoreid(GUID)
     Innsmouth_ScrZone_Innsmouth_Shore_id = GUID
end

function setInnsmouthScrZoneJoeSargentsid(GUID)
     Innsmouth_ScrZone_Joe_Sargents_id = GUID
end

function setInnsmouthScrZoneFalconPointid(GUID)
     Innsmouth_ScrZone_Falcon_Point_id = GUID
end

function setInnsmouthScrZoneYhaNthleiid(GUID)
     Innsmouth_ScrZone_Yha_Nthlei_id = GUID
end

function setKingsportScrZoneHallSchoolid(GUID)
     Kingsport_ScrZone_Hall_School_id = GUID
end

function setKingsportScrZone607WaterStreetid(GUID)
     Kingsport_ScrZone_607_Water_Street_id = GUID
end

function setKingsportScrZoneCentralHillid(GUID)
     Kingsport_ScrZone_Central_Hill_id = GUID
end

function setKingsportScrZoneCongregationalHospitalid(GUID)
     Kingsport_ScrZone_Congregational_Hospital_id = GUID
end

function setKingsportScrZoneHarborsideid(GUID)
     Kingsport_ScrZone_Harborside_id = GUID
end

function setKingsportScrZoneRopeAndAnchorCommonsid(GUID)
     Kingsport_ScrZone_Rope_And_Anchor_Commons_id = GUID
end

function setKingsportScrZoneWirelessStationid(GUID)
     Kingsport_ScrZone_Wireless_Station_id = GUID
end

function setKingsportScrZoneArtistsColonyid(GUID)
     Kingsport_ScrZone_Artists_Colony_id = GUID
end

function setKingsportScrZone7thHouseid(GUID)
     Kingsport_ScrZone_7th_House_id = GUID
end

function setKingsportScrZoneNeilsCuriosityid(GUID)
     Kingsport_ScrZone_Neils_Curiosity_id = GUID
end

function setKingsportScrZoneNorthPointLighthouseid(GUID)
     Kingsport_ScrZone_North_Point_Lighthouse_id = GUID
end

function setKingsportScrZoneTheCausewayid(GUID)
     Kingsport_ScrZone_The_Causeway_id = GUID
end

function setKingsportScrZoneStErasmusid(GUID)
     Kingsport_ScrZone_St_Erasmus_id = GUID
end

function setKingsportScrZoneStrangeHighHouseid(GUID)
     Kingsport_ScrZone_Strange_High_House_id = GUID
end

function setKingsportScrZoneSouthShoreid(GUID)
     Kingsport_ScrZone_South_Shore_id = GUID
end

function setKingsportScrZoneTheUnderworldid(GUID)
     Kingsport_ScrZone_The_Underworld_id = GUID
end

function setKingsportScrZoneUnknownKadathid(GUID)
     Kingsport_ScrZone_Unknown_Kadath_id = GUID
end

function setKingsportScrzoneRiftProgress1id(GUID)
     Kingsport_Scrzone_RiftProgress1_id = GUID
end

function setKingsportScrzoneRiftProgress2id(GUID)
     Kingsport_Scrzone_RiftProgress2_id = GUID
end

function setKingsportScrzoneRiftProgress3id(GUID)
     Kingsport_Scrzone_RiftProgress3_id = GUID
end

function setKingsportScrzoneCaptainid(GUID)
     Kingsport_Scrzone_Captain_id = GUID
end

function setKingsportScrzoneChangedid(GUID)
     Kingsport_Scrzone_Changed_id = GUID
end

function setDunwichScrZoneWhateleyFarmid(GUID)
     Dunwich_ScrZone_Whateley_Farm_id = GUID
end

function setDunwichScrZoneWizardsHillid(GUID)
     Dunwich_ScrZone_Wizards_Hill_id = GUID
end

function setDunwichScrZoneColdSpringid(GUID)
     Dunwich_ScrZone_Cold_Spring_id = GUID
end

function setDunwichScrZoneBackwoodsid(GUID)
     Dunwich_ScrZone_Backwoods_id = GUID
end

function setDunwichScrZoneSentinelHillid(GUID)
     Dunwich_ScrZone_Sentinel_Hill_id = GUID
end

function setDunwichScrZoneVillageCommonsid(GUID)
     Dunwich_ScrZone_Village_Commons_id = GUID
end

function setDunwichScrZoneDarkesCarnivalid(GUID)
     Dunwich_ScrZone_Darkes_Carnival_id = GUID
end

function setDunwichScrZoneBishopBrookeid(GUID)
     Dunwich_ScrZone_Bishop_Brooke_id = GUID
end

function setDunwichScrZoneDunwichVillageid(GUID)
     Dunwich_ScrZone_Dunwich_Village_id = GUID
end

function setDunwichScrZoneBlastedHeathid(GUID)
     Dunwich_ScrZone_Blasted_Heath_id = GUID
end

function setDunwichScrZoneGardnersPlaceid(GUID)
     Dunwich_ScrZone_Gardners_Place_id = GUID
end

function setDunwichScrZoneDevilsHopyardid(GUID)
     Dunwich_ScrZone_Devils_Hopyard_id = GUID
end

function setDunwichScrZoneHarneyJonesShackid(GUID)
     Dunwich_ScrZone_Harney_Jones_Shack_id = GUID
end

function setDunwichScrZoneAnotherTimeid(GUID)
     Dunwich_ScrZone_Another_Time_id = GUID
end

function setDunwichScrZoneLostCarcosaid(GUID)
     Dunwich_ScrZone_Lost_Carcosa_id = GUID
end

function setDunwichScrZoneDHorrorid(GUID)
     Dunwich_ScrZone_D_Horror_id = GUID
end

function setDunwichScrzoneSheldonid(GUID)
     Dunwich_Scrzone_Sheldon_id = GUID
end

function setDunwichScrzoneConditionid(GUID)
     Dunwich_Scrzone_Condition_id = GUID
end

function setDunwichScrzoneRailid(GUID)
     Dunwich_Scrzone_Rail_id = GUID
end

function setPharaohScrzoneBenefitsid(GUID)
     Pharaoh_Scrzone_Benefits_id = GUID
end

function setPharaohScrzoneDetrimentsid(GUID)
     Pharaoh_Scrzone_Detriments_id = GUID
end

-- Setters end

function getInnsmouthScrZoneDevilReefRotation()
     return {0.00, 270.10, 0.00}
end

function getInnsmouthScrZoneJailRotation()
     return {0.00, 270.10, 0.00}
end

function getInnsmouthScrZoneDeepRisingRotation()
     return {0.00, 270, 0.00}
end

function getInnsmouthScrZoneSawboneAlleyRotation()
     return {0.00, 270.10, 0.00}
end

function getInnsmouthScrZoneEsotericDagonRotation()
     return {0.00, 270.10, 0.00}
end

function getInnsmouthScrZoneChurchGreenRotation()
     return {0.00, 270.10, 0.00}
end

function getInnsmouthScrZoneFactoryDistrictRotation()
     return {0.00, 270.10, 0.00}
end

function getInnsmouthScrZoneFirstNationalGroceryRotation()
     return {0.00, 270.10, 0.00}
end

function getInnsmouthScrZoneGilmanHouseHotelRotation()
     return {0.00, 270.10, 0.00}
end

function getInnsmouthScrZoneMarshRefineryRotation()
     return {0.00, 270.10, 0.00}
end

function getInnsmouthScrZoneInnsmouthShoreRotation()
     return {0.00, 270.10, 0.00}
end

function getInnsmouthScrZoneJoeSargentsRotation()
     return {0.00, 270.10, 0.00}
end

function getInnsmouthScrZoneFalconPointRotation()
     return {0.00, 270.10, 0.00}
end

function getInnsmouthScrZoneYhaNthleiRotation()
     return {0.00, 270.10, 0.00}
end

-- Dunwich

function getDunwichScrZoneWhateleyFarmRotation()
     return {0.00, 270.10, 0.00}
end

function getDunwichScrZoneWizardsHillRotation()
     return {0.00, 270.10, 0.00}
end

function getDunwichScrZoneColdSpringRotation()
     return {0.00, 270.10, 0.00}
end

function getDunwichScrZoneBackwoodsRotation()
     return  {0.00, 270.10, 0.00}
end

function getDunwichScrZoneSentinelHillRotation()
     return {0.00, 270.10, 0.00}
end

function getDunwichScrZoneVillageCommonsRotation()
     return {0.00, 270.10, 0.00}
end

function getDunwichScrZoneDarkesCarnivalRotation()
     return {0.00, 270.10, 0.00}
end

function getDunwichScrZoneBishopBrookeRotation()
     return {0.00, 270.10, 0.00}
end

function getDunwichScrZoneDunwichVillageRotation()
     return {0.00, 270.10, 0.00}
end

function getDunwichScrZoneBlastedHeathRotation()
     return {0.00, 270.10, 0.00}
end

function getDunwichScrZoneGardnersPlaceRotation()
     return {0.00, 270.10, 0.00}
end

function getDunwichScrZoneDevilsHopyardRotation()
     return {0.00, 270.10, 0.00}
end

function getDunwichScrZoneHarneyJonesShackRotation()
     return {0.00, 270.10, 0.00}
end

function getDunwichScrZoneAnotherTimeRotation()
     return {0.00, 270.10, 0.00}
end

function getDunwichScrZoneLostCarcosaRotation()
     return {0.00, 270.10, 0.00}
end

function getDunwichScrZoneDHorrorRotation()
     return {0.00, 270.10, 0.00}
end

-- Kingsport

function getKingsportScrZoneHallSchoolRotation()
     return {0.00, 269.27, 0.00}
end

function getKingsportScrZone607WaterStreetRotation()
     return {0.00, 269.27, 0.00}
end

function getKingsportScrZoneCentralHillRotation()
     return {0.00, 269.27, 0.00}
end

function getKingsportScrZoneCongregationalHospitalRotation()
     return {0.00, 269.27, 0.00}
end

function getKingsportScrZoneHarborsideRotation()
     return {0.00, 269.27, 0.00}
end

function getKingsportScrZoneRopeAndAnchorCommonsRotation()
     return {0.00, 269.27, 0.00}
end

function getKingsportScrZoneWirelessStationRotation()
     return {0.00, 269.27, 0.00}
end

function getKingsportScrZoneArtistsColonyRotation()
     return {0.00, 269.27, 0.00}
end

function getKingsportScrZone7thHouseRotation()
     return {0.00, 269.27, 0.00}
end

function getKingsportScrZoneNeilsCuriosityRotation()
     return {0.00, 269.27, 0.00}
end

function getKingsportScrZoneNorthPointLighthouseRotation()
     return {0.00, 269.27, 0.00}
end

function getKingsportScrZoneTheCausewayRotation()
     return {0.00, 269.27, 0.00}
end

function getKingsportScrZoneStErasmusRotation()
     return {0.00, 269.27, 0.00}
end

function getKingsportScrZoneStrangeHighHouseRotation()
     return {0.00, 269.27, 0.00}
end

function getKingsportScrZoneSouthShoreRotation()
     return {0.00, 269.27, 0.00}
end

function getKingsportScrZoneTheUnderworldRotation()
     return  {0.00, 269.27, 0.00}
end

function getKingsportScrZoneUnknownKadathRotation()
     return {0.00, 269.27, 0.00}
end

function getKingsportScrzoneRiftProgress1Rotation()
     return {0.00, 269.27, 0.00}
end

function getKingsportScrzoneRiftProgress2Rotation()
     return {0.00, 269.27, 0.00}
end

function getKingsportScrzoneRiftProgress3Rotation()
     return {0.00, 269.27, 0.00}
end

function getSpecialRotation()
     return SpecialRotation
end

--Innsmouth Scale

function getInnsmouthScrZoneDevilReefScale()
     return {3.48, 2.24, 4.84}
end

function getInnsmouthScrZoneJailScale()
     return {6.12, 2.24, 7.42}
end

function getInnsmouthScrZoneDeepRisingScale()
     return {5.94, 2.24, 17.87}
end

function getInnsmouthScrZoneSawboneAlleyScale()
     return {5.42, 2.24, 4.12}
end

function getInnsmouthScrZoneEsotericDagonScale()
     return {4.37, 2.24, 5.31}
end

function getInnsmouthScrZoneChurchGreenScale()
     return {5.77, 2.24, 3.66}
end

function getInnsmouthScrZoneFactoryDistrictScale()
     return {5.69, 2.24, 3.52}
end

function getInnsmouthScrZoneFirstNationalGroceryScale()
     return {4.37, 2.24, 6.39}
end

function getInnsmouthScrZoneGilmanHouseHotelScale()
     return {4.44, 2.24, 6.37}
end

function getInnsmouthScrZoneMarshRefineryScale()
     return {4.17, 2.24, 5.37}
end

function getInnsmouthScrZoneInnsmouthShoreScale()
     return {5.35, 2.24, 3.51}
end

function getInnsmouthScrZoneJoeSargentsScale()
     return {4.98, 2.24, 3.63}
end

function getInnsmouthScrZoneFalconPointScale()
     return {4.37, 2.24, 7.90}
end

function getInnsmouthScrZoneYhaNthleiScale()
     return {4.53, 2.24, 6.85}
end

-- Dunwich Scale

function getDunwichScrZoneWhateleyFarmScale()
     return {4.88, 2.24, 4.58}
end

function getDunwichScrZoneWizardsHillScale()
     return {4.43, 2.24, 4.43}
end

function getDunwichScrZoneColdSpringScale()
     return {4.54, 2.24, 4.48}
end

function getDunwichScrZoneBackwoodsScale()
     return  {5.12, 2.24, 2.94}
end

function getDunwichScrZoneSentinelHillScale()
     return {4.53, 2.24, 2.32}
end

function getDunwichScrZoneVillageCommonsScale()
     return {5.16, 2.24, 2.99}
end

function getDunwichScrZoneDarkesCarnivalScale()
     return {4.33, 2.24, 5.62}
end

function getDunwichScrZoneBishopBrookeScale()
     return {4.31, 2.24, 4.49}
end

function getDunwichScrZoneDunwichVillageScale()
     return {4.53, 2.24, 5.87}
end

function getDunwichScrZoneBlastedHeathScale()
     return {5.28, 2.24, 2.94}
end

function getDunwichScrZoneGardnersPlaceScale()
     return {4.47, 2.24, 4.40}
end

function getDunwichScrZoneDevilsHopyardScale()
     return {4.35, 2.24, 5.79}
end

function getDunwichScrZoneHarneyJonesShackScale()
     return {4.54, 2.24, 5.44}
end

function getDunwichScrZoneAnotherTimeScale()
     return {6.50, 2.24, 6.09}
end

function getDunwichScrZoneLostCarcosaScale()
     return {6.87, 2.24, 5.82}
end

function getDunwichScrZoneDHorrorScale()
     return {6.40, 2.24, 1.60}
end

function getDunwichScrzoneRailsca()
     return Dunwich_Scrzone_Rail_sca
end

function getDunwichScrzoneConditionsca()
     return Dunwich_Scrzone_Rail_sca
end

function getDunwichScrzoneSheldonsca()
     return Dunwich_Scrzone_Rail_sca
end

-- Kingsport

function getKingsportScrZoneHallSchoolScale()
     return {4.26, 2.24, 4.54}
end

function getKingsportScrZone607WaterStreetScale()
     return {4.26, 2.24, 4.44}
end

function getKingsportScrZoneCentralHillScale()
     return {5.16, 2.24, 2.96}
end

function getKingsportScrZoneCongregationalHospitalScale()
     return {4.23, 2.24, 5.39}
end

function getKingsportScrZoneHarborsideScale()
     return {5.05, 2.24, 2.89}
end

function getKingsportScrZoneRopeAndAnchorCommonsScale()
     return {4.11, 2.24, 5.59}
end

function getKingsportScrZoneWirelessStationScale()
     return {4.26, 2.24, 5.47}
end

function getKingsportScrZoneArtistsColonyScale()
     return {4.17, 2.24, 4.56}
end

function getKingsportScrZone7thHouseScale()
     return {4.33, 2.24, 4.61}
end

function getKingsportScrZoneNeilsCuriosityScale()
     return {4.16, 2.24, 5.86}
end

function getKingsportScrZoneNorthPointLighthouseScale()
     return {4.24, 2.24, 5.72}
end

function getKingsportScrZoneTheCausewayScale()
     return {4.19, 2.24, 5.39}
end

function getKingsportScrZoneStErasmusScale()
     return {4.22, 2.24, 4.50}
end

function getKingsportScrZoneStrangeHighHouseScale()
     return {4.22, 2.24, 5.98}
end

function getKingsportScrZoneSouthShoreScale()
     return {5.26, 2.24, 3.04}
end

function getKingsportScrZoneTheUnderworldScale()
     return  {6.20, 2.24, 5.69}
end

function getKingsportScrZoneUnknownKadathScale()
     return {6.23, 2.24, 5.99}
end

function getKingsportScrzoneRiftProgress1Scale()
     return {2.61, 2.24, 2.93}
end

function getKingsportScrzoneRiftProgress2Scale()
     return {2.86, 2.24, 2.97}
end

function getKingsportScrzoneRiftProgress3Scale()
     return {2.85, 2.24, 3.21}
end

function getKingsportScrzoneChangedsca()
     return Kingsport_Scrzone_Changed_sca
end

function getKingsportScrzoneCaptainsca()
     return Kingsport_Scrzone_Captain_sca
end

--Pharaoh

function getPharaohScrzoneBenefitsSca()
     return Pharaoh_Benefits_sca
 end
 
 function getPharaohScrzoneDetrimentsSca()
     return Pharaoh_Detriments_sca
 end

--Returns a vector with the placing positions for the object id given
function getBoardPositionsScrZones3Boards(id)
    return BoardPositionsScrZones3Boards[id[1]]
end

function getBoardPositionsScrZonesInnsmouthSolo(id)
    return BoardPositionsScrZonesInnsmouthSolo[id[1]]
end

function getBoardPositionsScrZonesDunwichSolo(id)
    return BoardPositionsScrZonesDunwichSolo[id[1]]
end

function getBoardPositionsScrZonesKingsportSolo(id)
    return BoardPositionsScrZonesKingsportSolo[id[1]]
end

function getBoardPositionsScrZonesKingsportDunwich(id)
    return BoardPositionsScrZonesKingsportDunwich[id[1]]
end

function getBoardPositionsScrZonesInnsmouthKingsport(id)
    return BoardPositionsScrZonesInnsmouthKingsport[id[1]]
end

function getBoardPositionsScrZonesInnsmouthDunwich(id)
    return BoardPositionsScrZonesInnsmouthDunwich[id[1]]
end