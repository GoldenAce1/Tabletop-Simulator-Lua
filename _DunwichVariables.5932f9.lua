local Dunwich_Bag_id = 'c6caab'
local Dunwich_Northside_deck_id = '320f83'
local Dunwich_Downtown_deck_id = '58ce9e'
local Dunwich_Easttown_deck_id = '137f03'
local Dunwich_Merchant_deck_id = '65a7ad'
local Dunwich_Rivertown_deck_id = '30ed29'
local Dunwich_Miskatonic_deck_id = 'de16e5'
local Dunwich_French_deck_id = '474347'
local Dunwich_Uptown_deck_id = 'a1a1b4'
local Dunwich_Southside_deck_id = 'e61a2b'

local Dunwich_Common_deck_id = '4ea2b4'
local Dunwich_Unique_deck_id = '4d119c'
local Dunwich_Spells_deck_id = '6cabdf'
local Dunwich_Skills_deck_id = 'd78bc1'
local Dunwich_Allies_deck_id = '587077'

local Dunwich_Mythos_deck_id = '2766be'
local Dunwich_Gate_deck_id = '18fe8f'

-- Dunwich Specific Items
--decks
-- local Dunwich_Clue_Deck_id = '0d4407'
local Dunwich_Condition_Deck_id = '599bec'
local Dunwich_Sheldon_Gang_Deck_id = '7b1682'
local Dunwich_Rail_Pass_Deck_id = 'cef428'
local Dunwich_Blasted_Heath_Deck_id = 'aa4024'
local Dunwich_Backwoods_Deck_id = 'ebbc65'
local Dunwich_Village_Commons_Deck_id = 'b7f872'
local Dunwich_Horror_Deck_id = 'f4cef1'

-- Monster (Special)
local Dunwich_Horror_Monster_id = '2afa8a'
--local Dunwich_Horror_Token_id = '0849cc'
-- local Dunwich_Horror_Token_id = '68d22e'
local Dunwich_Horror_Token_id = '9637e5'

--Bags
local Dunwich_Monster_bag_id = '2ba9b3'
local Dunwich_Gate_Marker_Bag_id = 'f7d75a'
local Dunwich_Mask_Monster_Bag_id = '4a2ce0'

-- Position: {-33.89, 1.17,-3.35}
-- Rotation: {0,89.99,0}
-- Scale: {5.26,1.00,5.26}
local Dunwich_Board_Id = '354605'


local Dunwich_Scripting_Zone = 'a7ec96'

-- Which of these are decks
DunwichDecks={'b7f872', '599bec','cef428','aa4024','ebbc65','7b1682','f4cef1'
       }
-- -- Which of these are decks
-- DunwichDecks={'320f83','58ce9e','137f03', '65a7ad','30ed29','de16e5','474347',
--               'a1a1b4','e61a2b','d78bc1','2766be','18fe8f','b7f872',
--               '599bec','cef428','aa4024','ebbc65','7b1682','f4cef1',
--               '4ea2b4','4d119c','587077','6cabdf'
--        }
-- Clue Deck
--'0d4407',

       -- x, y, z for each die.
       -- y is the height over the table and setting it to
       -- a number higher than zero will make it fall down
       -- to the board
local DunwichPositions = {
  [Dunwich_Bag_id] = {-67.88, 1.5, -30.12},
--  [Dunwich_Mythos_deck_id] = {-67.88, 1.5, -23.55},
 -- [Dunwich_Gate_deck_id] = {-67.88, 1.5, -21.14},
 -- [Dunwich_Northside_deck_id] = {-67.88, 1.5, -18.98},
--  [Dunwich_Downtown_deck_id] = {-67.88, 1.5, -16.57},
 -- [Dunwich_Easttown_deck_id] = {-67.88, 1.5, -14.25},
--  [Dunwich_Merchant_deck_id] = {-67.88, 1.5, -11.85},
--  [Dunwich_Rivertown_deck_id] = {-67.88, 1.5, -9.32},
 -- [Dunwich_Miskatonic_deck_id] = {-67.88, 1.5, -6.91},
--  [Dunwich_French_deck_id] = {-67.88, 1.5, -4.34},
--  [Dunwich_Uptown_deck_id] = {-67.88, 1.5, -1.87},
--  [Dunwich_Southside_deck_id] = {-67.88, 1.5, 0.61},
--  [Dunwich_Skills_deck_id] = {-67.88, 1.5, 2.99},
--[Dunwich_Allies_deck_id] = {-67.88, 1.5, 6.08},
--  [Dunwich_Common_deck_id] = {-67.88, 1.5, 8.08},
--  [Dunwich_Common_deck_id] = {-68.79, 0.81, 13.87},
--[Dunwich_Unique_deck_id] = {-67.88, 1.5, 10.21},
 -- [Dunwich_Unique_deck_id] = {-68.72, 0.86, 16.20},
 -- [Dunwich_Spells_deck_id] = {-67.88, 1.5, 12.39},
  [Dunwich_Condition_Deck_id] = {-107.13, 0.77, -24.89},
  [Dunwich_Rail_Pass_Deck_id] = {-107.15, 0.77, -21.48},
  --["Dunwich_Blasted_Heath_Deck"] = {-107.05, 0.77, -18.59},
  [Dunwich_Backwoods_Deck_id] = {-107.06, 0.77, -15.71},
  [Dunwich_Sheldon_Gang_Deck_id] = {-107.04, 0.77, -12.76},
  [Dunwich_Village_Commons_Deck_id] = {-106.98, 0.78, -9.93},
  [Dunwich_Horror_Deck_id] = {-106.95, 0.78, -5.99},
  [Dunwich_Horror_Monster_id] = {-106.95, 0.78, -1.49},
  [Dunwich_Monster_bag_id] = {-106.94, 0.78, 2.60},
  [Dunwich_Horror_Token_id] = {-106.88, 0.78, 5.95},
  [Dunwich_Gate_Marker_Bag_id] = {-106.74, 0.78, 9.90},
  [Dunwich_Board_Id] = {-106.64, 0.78, 15.60}
-- [Dunwich_Clue_Deck_id] = {-67.88, 3.49, 24.93},
}

function onload()

end

------------Generating getters and setters for all the junk

---------------------------------- BAG ----------------------------------------

--returns the bag id to whoever calls it
function getDunwichBagId()
    return Dunwich_Bag_id
end

--Probably not used, but just in case
--sets the id as given object
function setDunwichBagId(id)
    Dunwich_Bag_id = id.getGUID()
end

---------------------------------- BAG ----------------------------------------
-------------------------------Northside --------------------------------------

--returns the id to whoever calls it
function getDunwichNorthsideDeckId()
    return Dunwich_Northside_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setDunwichNorthsideDeckId(id)
    Dunwich_Northside_deck_id = id.getGUID()
end

-------------------------------Northside --------------------------------------
------------------------------- Downtown --------------------------------------

--returns the id to whoever calls it
function getDunwichDowntownDeckId()
    return Dunwich_Downtown_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setDunwichDowntownDeckId(id)
    Dunwich_Downtown_deck_id = id.getGUID()
end

------------------------------- Downtown --------------------------------------
------------------------------- Easttown --------------------------------------

--returns the id to whoever calls it
function getDunwichEasttownDeckId()
    return Dunwich_Easttown_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setDunwichEasttownDeckId(id)
    Dunwich_Easttown_deck_id = id.getGUID()
end

------------------------------- Easttown --------------------------------------
------------------------------- Merchant --------------------------------------

--returns the id to whoever calls it
function getDunwichMerchantDeckId()
    return Dunwich_Merchant_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setDunwichMerchantDeckId(id)
    Dunwich_Merchant_deck_id = id.getGUID()
end

------------------------------- Merchant --------------------------------------
------------------------------- Rivertown --------------------------------------

--returns the id to whoever calls it
function getDunwichRivertownDeckId()
    return Dunwich_Rivertown_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setDunwichRivertownDeckId(id)
    Dunwich_Rivertown_deck_id = id.getGUID()
end

------------------------------- Rivertown --------------------------------------
------------------------------- Miskatonic --------------------------------------

--returns the id to whoever calls it
function getDunwichMiskatonicDeckId()
    return Dunwich_Miskatonic_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setDunwichMiskatonicDeckId(id)
    Dunwich_Miskatonic_deck_id = id.getGUID()
end

------------------------------- Miskatonic -------------------------------------
------------------------------- French Hill ------------------------------------

--returns the id to whoever calls it
function getDunwichFrenchDeckId()
    return Dunwich_French_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setDunwichFrenchDeckId(id)
    Dunwich_French_deck_id = id.getGUID()
end

------------------------------- French Hill ------------------------------------
--------------------------------- Uptown --------------------------------------

--returns the id to whoever calls it
function getDunwichUptownDeckId()
    return Dunwich_Uptown_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setDunwichUptownDeckId(id)
    Dunwich_Uptown_deck_id = id.getGUID()
end

--------------------------------- Uptown --------------------------------------
-------------------------------- Southside -------------------------------------
--returns the id to whoever calls it
function getDunwichSouthsideDeckId()
    return Dunwich_Southside_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setDunwichSouthsideDeckId(id)
    Dunwich_Southside_deck_id = id.getGUID()
end

-------------------------------- Southside -------------------------------------
-- --------------------------------- Common --------------------------------------

--returns the id to whoever calls it
function getDunwichCommonDeckId()
    return Dunwich_Common_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setDunwichCommonDeckId(id)
    Dunwich_Common_deck_id = id.getGUID()
end

--------------------------------- Common --------------------------------------
--------------------------------- Unique --------------------------------------

--returns the id to whoever calls it
function getDunwichUniqueDeckId()
    return Dunwich_Unique_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setDunwichUniqueDeckId(id)
    Dunwich_Unique_deck_id = id.getGUID()
end

--------------------------------- Unique --------------------------------------
--------------------------------- Spells --------------------------------------


--returns the id to whoever calls it
function getDunwichSpellsDeckId()
    return Dunwich_Spells_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setDunwichSpellsDeckId(id)
    Dunwich_Spells_deck_id = id.getGUID()
end

--------------------------------- Spells --------------------------------------
--------------------------------- Skills --------------------------------------

--returns the id to whoever calls it
function getDunwichSkillsDeckId()
    return Dunwich_Skills_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setDunwichSkillsDeckId(id)
    Dunwich_Skills_deck_id = id.getGUID()
end

--------------------------------- Skills --------------------------------------
--------------------------------- Allies --------------------------------------
--returns the id to whoever calls it
function getDunwichAlliesDeckId()
    return Dunwich_Allies_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setDunwichAlliesDeckId(id)
    Dunwich_Allies_deck_id = id.getGUID()
end
--------------------------------- Allies --------------------------------------
--------------------------------- Mythos --------------------------------------

--returns the id to whoever calls it
function getDunwichMythosDeckId()
    return Dunwich_Mythos_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setDunwichMythosDeckId(id)
    Dunwich_Mythos_deck_id = id.getGUID()
end
--------------------------------- Mythos --------------------------------------
---------------------------------- Gate ---------------------------------------

--returns the id to whoever calls it
function getDunwichGateDeckId()
    return Dunwich_Gate_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setDunwichGateDeckId(id)
    Dunwich_Gate_deck_id = id.getGUID()
end

---------------------------------- Gate ---------------------------------------

--Expansion-specific

----------------------------Dunwich Horror Deck------------------------------

--returns the id to whoever calls it
function getDunwichHorrorDeckId()
    return Dunwich_Horror_Deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setDunwichHorrorDeckId(id)
    Dunwich_Horror_Deck_id = id.getGUID()
end
----------------------------Dunwich Horror Deck------------------------------
--------------------------------- Condition ---------------------------------------

--returns the id to whoever calls it
function getDunwichConditionDeckId()
    return Dunwich_Condition_Deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setDunwichConditionDeckId(id)
    Dunwich_Condition_Deck_id = id.getGUID()
end
--------------------------------- Condition ---------------------------------------
--------------------------------- Sheldon Gang ---------------------------------------

--returns the id to whoever calls it
function getDunwichSheldonGangDeckId()
    return Dunwich_Sheldon_Gang_Deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setDunwichSheldonGangDeckId(id)
    Dunwich_Sheldon_Gang_Deck_id = id.getGUID()
end
--------------------------------- Sheldon Gang ---------------------------------------
--------------------------------- Rail Pass ---------------------------------------

--returns the id to whoever calls it
function getDunwichRailPassDeckId()
    return Dunwich_Rail_Pass_Deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setDunwichRailPassDeckId(id)
    Dunwich_Rail_Pass_Deck_id = id.getGUID()
end
--------------------------------- Rail Pass ---------------------------------------
--------------------------------- Blasted Heath ---------------------------------------

--returns the id to whoever calls it
function getDunwichBlastedHeathDeckId()
    return Dunwich_Blasted_Heath_Deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setDunwichBlastedHeathDeckId(id)
    Dunwich_Blasted_Heath_Deck_id = id.getGUID()
end
--------------------------------- Blasted Heath ---------------------------------------
-------------------------------- Backwoods --------------------------------------

--returns the id to whoever calls it
function getDunwichBackwoodsDeckId()
    return Dunwich_Backwoods_Deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setDunwichBackwoodsDeckId(id)
    Dunwich_Backwoods_Deck_id = id.getGUID()
end
--------------------------------- Backwoods ---------------------------------------
------------------------------ Village Commons -------------------------------------

--returns the id to whoever calls it
function getDunwichVillageCommonsDeckId()
    return Dunwich_Village_Commons_Deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setDunwichVillageCommonsDeckId(id)
    Dunwich_Village_Commons_Deck_id = id.getGUID()
end
------------------------------ Village Commons -------------------------------------
------------------------ Dunwich Horror Monster --------------------------------

--returns the id to whoever calls it
function getDunwichHorrorMonsterId()
    return Dunwich_Horror_Monster_id
end

--Probably not used, but just in case
--sets the id as given object
function setDunwichHorrorMonsterId(id)
    Dunwich_Horror_Monster_id = id.getGUID()
end
------------------------- Dunwich Horror Monster -------------------------------
--------------------------------- Clue ---------------------------------------
--
-- --returns the id to whoever calls it
-- function getDunwichClueDeckId()
--     return Dunwich_Clue_Deck_id
-- end
--
-- --Probably not used, but just in case
-- --sets the id as given object
-- function setDunwichClueDeckId(id)
--     Dunwich_Clue_Deck_id = id.getGUID()
-- end
--------------------------------- Clue ---------------------------------------
--------------------------------- Monster ---------------------------------------

--returns the id to whoever calls it
function getDunwichMonsterBagId()
    return Dunwich_Monster_bag_id
end

--Probably not used, but just in case
--sets the id as given object
function setDunwichMonsterBagId(id)
    Dunwich_Monster_bag_id = id.getGUID()
end

--returns the id to whoever calls it
function getDunwichMaskMonsterBagId()
    return Dunwich_Mask_Monster_Bag_id
end
--------------------------------- Monster ---------------------------------------
------------------------- Dunwich Horror Token ---------------------------------

--returns the id to whoever calls it
function getDunwichHorrorTokenId()
    return Dunwich_Horror_Token_id
end

--Probably not used, but just in case
--sets the id as given object
function setDunwichHorrorTokenId(id)
    Dunwich_Horror_Token_id = id.getGUID()
end
------------------------- Dunwich Horror Token ---------------------------------
----------------------------- Gate Marker -------------------------------------

--returns the id to whoever calls it
function getDunwichGateMarkerBagId()
    return Dunwich_Gate_Marker_Bag_id
end

--Probably not used, but just in case
--sets the id as given object
function setDunwichGateMarkerBagId(id)
    Dunwich_Gate_Marker_Bag_id = id.getGUID()
end
----------------------------- Rift Progress -------------------------------------
--------------------------------- Board ---------------------------------------

--returns the id to whoever calls it
function getDunwichBoardId()
    return Dunwich_Board_Id
end

--Probably not used, but just in case
--sets the id as given object
function setDunwichBoardId(id)
    Dunwich_Board_Id = id.getGUID()
end

--Scales the board to be set on the table (Tiny)
function scaleDownDunwichBoard()
    DunwichBoard = getObjectFromGUID(Dunwich_Board_Id)
    DunwichBoard.scale({1,1,1})
end

--Scales the board to its original dimensions
-- Scale: {5.26,1.00,5.26}
function scaleUpDunwichBoard()
    DunwichBoard = getObjectFromGUID(Dunwich_Board_Id)
    DunwichBoard.scale({5.26,1.00,5.26})
end
--------------------------------- Board ---------------------------------------

--Scrpiting Zone
-------------------------- Dunwich Scripting Zone -------------------------------

--returns the id to whoever calls it
function getDunwichScriptingZone()
    return Dunwich_Scripting_Zone
end

--Probably not used, but just in case
--sets the id as given object
function setDunwichScriptingZone(id)
    Dunwich_Scripting_Zone = id.getGUID()
end
-------------------------- Dunwich Scripting Zone -------------------------------



--Returns a vector with the placing positions for the object id given
function getDunwichPositionById(id)
    return DunwichPositions[id[1]]
end

--Returns a vector with the placing positions for the object id given
function getDunwichDecks()
    return DunwichDecks
end