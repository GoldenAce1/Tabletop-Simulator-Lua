local Kingsport_Bag_id = 'b2b9e8'
local Kingsport_Northside_deck_id = '8b9efe'
local Kingsport_Downtown_deck_id = '0e5032'
local Kingsport_Easttown_deck_id = 'a7935f'
local Kingsport_Merchant_deck_id = '394800'
local Kingsport_Rivertown_deck_id = '0f09e4'
local Kingsport_Miskatonic_deck_id = '0ed09a'
local Kingsport_French_deck_id = 'b0864b'
local Kingsport_Uptown_deck_id = '60ac52'
local Kingsport_Southside_deck_id = '75bbaa'

local Kingsport_Common_deck_id = 'd2e7e9'
local Kingsport_Unique_deck_id = '0bc02d'
local Kingsport_Spells_deck_id = '76078a'
local Kingsport_Skills_deck_id = '1d4d28'
local Kingsport_Allies_deck_id = 'f7a6db'

local Kingsport_Mythos_deck_id = '92405d'
local Kingsport_Gate_deck_id = '52e0f8'

-- Kingsport Specific Items
--decks
-- local Kingsport_Clue_Deck_id = 'db9159'
local Kingsport_Captain_Deck_id = 'ebc081'
local Kingsport_Changed_Deck_id = '6ce10b'
local Kingsport_Head_Deck_id = '9847a9'
local Kingsport_Harborside_Deck_id = '12f2ee'
local Kingsport_Central_Hill_Deck_id = '7001de'
local Kingsport_South_Shore_Deck_id = '798fad'

--Bags
local Kingsport_Rift_Marker_Bag_id = 'a24e13'
local Kingsport_Rift_Progress_Marker_Bag_id = '3151a5'
local Kingsport_Monster_bag_id = '04872f'
local Kingsport_Gate_Marker_Bag_id = 'ce1db3'
local Kingsport_Masked_Monster_bag_id = '9b4db6'


-- Position: {-47.81, 1.17,-3.35}
-- Rotation: {0,90.00,0}
-- Scale: {5.26,1.00,5.26}
local Kingsport_Board_Id = '64ebaa'


local Kingsport_Scripting_Zone = '0b7576'

local Kingsport_Rift_1 = 'dummy1'
local Kingsport_Rift_2 = 'dummy2'
local Kingsport_Rift_3 = 'dummy3'

-- Which of these are decks
KingsportDecks={'798fad', 'ebc081','9847a9','12f2ee','7001de','6ce10b'
-- ,'db9159'
       }
-- -- Which of these are decks
-- KingsportDecks={'8b9efe','0e5032','a7935f', '394800','0f09e4','0ed09a','b0864b',
--               '60ac52','75bbaa','1d4d28','92405d','52e0f8','798fad',
--               'ebc081','9847a9','12f2ee','7001de','6ce10b',
--               'd2e7e9','0bc02d','f7a6db','76078a'
-- -- ,'db9159'
--        }


       -- x, y, z for each die.
       -- y is the height over the table and setting it to
       -- a number higher than zero will make it fall down
       -- to the board
local KingsportPositions = {
  [Kingsport_Bag_id] = {-72.6, 1.5, -30.12},
  [Kingsport_Mythos_deck_id] = {-72.6, 1.5, -23.55},
  [Kingsport_Gate_deck_id] = {-72.6, 1.5, -21.14},
  [Kingsport_Northside_deck_id] = {-72.6, 1.5, -18.98},
  [Kingsport_Downtown_deck_id] = {-72.6, 1.5, -16.57},
  [Kingsport_Easttown_deck_id] = {-72.6, 1.5, -14.25},
  [Kingsport_Merchant_deck_id] = {-72.6, 1.5, -11.85},
  [Kingsport_Rivertown_deck_id] = {-72.6, 1.5, -9.32},
  [Kingsport_Miskatonic_deck_id] = {-72.6, 1.5, -6.91},
  [Kingsport_French_deck_id] = {-72.6, 1.5, -4.34},
  [Kingsport_Uptown_deck_id] = {-72.6, 1.5, -1.87},
  [Kingsport_Southside_deck_id] = {-72.6, 1.5, 0.61},
  [Kingsport_Skills_deck_id] = {-72.6, 1.5, 2.99},
  [Kingsport_Allies_deck_id] = {-72.6, 1.5, 6.08},
  [Kingsport_Common_deck_id] = {-72.6, 1.5, 8.08},
  [Kingsport_Unique_deck_id] = {-72.6, 1.5, 10.21},
  [Kingsport_Spells_deck_id] = {-72.6, 1.5, 12.39},
  [Kingsport_Captain_Deck_id] = {-72.60, 1.5, 14.75},
  [Kingsport_Head_Deck_id] = {-72.6, 1.5, 17.38},
  [Kingsport_Harborside_Deck_id] = {-72.65, 1.5, 22.59},
  [Kingsport_Central_Hill_Deck_id] = {-72.60, 1.5, 19.96},
  -- [Kingsport_Clue_Deck_id] = {-72.6, 1.5, 24.42},
  [Kingsport_Changed_Deck_id] = {-72.61, 1.5, 25.43},
  [Kingsport_South_Shore_Deck_id] = {-72.6, 1.5, 28.42},

  [Kingsport_Rift_Marker_Bag_id] = {-72.6, 1.5, 31.67},
  [Kingsport_Monster_bag_id] = {-72.6, 1.5, 34.62},
  [Kingsport_Rift_Progress_Marker_Bag_id] = {-72.6, 1.5, 37.62},
  [Kingsport_Gate_Marker_Bag_id] = {-72.6, 1.5, 40.62},
  [Kingsport_Board_Id] = {-72.6, 1.5, 46.62}

}
--Bags
local Kingsport_Gate_Marker_Bag_id = 'ce1db3'
function onload()

end

------------Generating getters and setters for all the junk

---------------------------------- BAG ----------------------------------------

--returns the bag id to whoever calls it
function getKingsportBagId()
    return Kingsport_Bag_id
end

--Probably not used, but just in case
--sets the id as given object
function setKingsportBagId(id)
    Kingsport_Bag_id = id.getGUID()
end

---------------------------------- BAG ----------------------------------------
-------------------------------Northside --------------------------------------

--returns the id to whoever calls it
function getKingsportNorthsideDeckId()
    return Kingsport_Northside_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setKingsportNorthsideDeckId(id)
    Kingsport_Northside_deck_id = id.getGUID()
end

-------------------------------Northside --------------------------------------
------------------------------- Downtown --------------------------------------

--returns the id to whoever calls it
function getKingsportDowntownDeckId()
    return Kingsport_Downtown_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setKingsportDowntownDeckId(id)
    Kingsport_Downtown_deck_id = id.getGUID()
end

------------------------------- Downtown --------------------------------------
------------------------------- Easttown --------------------------------------

--returns the id to whoever calls it
function getKingsportEasttownDeckId()
    return Kingsport_Easttown_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setKingsportEasttownDeckId(id)
    Kingsport_Easttown_deck_id = id.getGUID()
end

------------------------------- Easttown --------------------------------------
------------------------------- Merchant --------------------------------------

--returns the id to whoever calls it
function getKingsportMerchantDeckId()
    return Kingsport_Merchant_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setKingsportMerchantDeckId(id)
    Kingsport_Merchant_deck_id = id.getGUID()
end

------------------------------- Merchant --------------------------------------
------------------------------- Rivertown --------------------------------------

--returns the id to whoever calls it
function getKingsportRivertownDeckId()
    return Kingsport_Rivertown_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setKingsportRivertownDeckId(id)
    Kingsport_Rivertown_deck_id = id.getGUID()
end

------------------------------- Rivertown --------------------------------------
------------------------------- Miskatonic --------------------------------------

--returns the id to whoever calls it
function getKingsportMiskatonicDeckId()
    return Kingsport_Miskatonic_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setKingsportMiskatonicDeckId(id)
    Kingsport_Miskatonic_deck_id = id.getGUID()
end

------------------------------- Miskatonic -------------------------------------
------------------------------- French Hill ------------------------------------

--returns the id to whoever calls it
function getKingsportFrenchDeckId()
    return Kingsport_French_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setKingsportFrenchDeckId(id)
    Kingsport_French_deck_id = id.getGUID()
end

------------------------------- French Hill ------------------------------------
--------------------------------- Uptown --------------------------------------

--returns the id to whoever calls it
function getKingsportUptownDeckId()
    return Kingsport_Uptown_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setKingsportUptownDeckId(id)
    Kingsport_Uptown_deck_id = id.getGUID()
end

--------------------------------- Uptown --------------------------------------
-------------------------------- Southside -------------------------------------
--returns the id to whoever calls it
function getKingsportSouthsideDeckId()
    return Kingsport_Southside_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setKingsportSouthsideDeckId(id)
    Kingsport_Southside_deck_id = id.getGUID()
end

-------------------------------- Southside -------------------------------------
-- --------------------------------- Common --------------------------------------

--returns the id to whoever calls it
function getKingsportCommonDeckId()
    return Kingsport_Common_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setKingsportCommonDeckId(id)
    Kingsport_Common_deck_id = id.getGUID()
end

-- --------------------------------- Common --------------------------------------
-- --------------------------------- Unique --------------------------------------

--returns the id to whoever calls it
function getKingsportUniqueDeckId()
    return Kingsport_Unique_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setKingsportUniqueDeckId(id)
    Kingsport_Unique_deck_id = id.getGUID()
end

-- --------------------------------- Unique --------------------------------------
-- --------------------------------- Spells --------------------------------------


--returns the id to whoever calls it
function getKingsportSpellsDeckId()
    return Kingsport_Spells_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setKingsportSpellsDeckId(id)
    Kingsport_Spells_deck_id = id.getGUID()
end
--
-- --------------------------------- Spells --------------------------------------
--------------------------------- Skills --------------------------------------

--returns the id to whoever calls it
function getKingsportSkillsDeckId()
    return Kingsport_Skills_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setKingsportSkillsDeckId(id)
    Kingsport_Skills_deck_id = id.getGUID()
end

--------------------------------- Skills --------------------------------------
--------------------------------- Allies --------------------------------------
--returns the id to whoever calls it
function getKingsportAlliesDeckId()
    return Kingsport_Allies_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setKingsportAlliesDeckId(id)
    Kingsport_Allies_deck_id = id.getGUID()
end
--------------------------------- Allies --------------------------------------
--------------------------------- Mythos --------------------------------------

--returns the id to whoever calls it
function getKingsportMythosDeckId()
    return Kingsport_Mythos_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setKingsportMythosDeckId(id)
    Kingsport_Mythos_deck_id = id.getGUID()
end
--------------------------------- Mythos --------------------------------------
---------------------------------- Gate ---------------------------------------

--returns the id to whoever calls it
function getKingsportGateDeckId()
    return Kingsport_Gate_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setKingsportGateDeckId(id)
    Kingsport_Gate_deck_id = id.getGUID()
end

---------------------------------- Gate ---------------------------------------

--Expansion-specific

--------------------------------- Captain ---------------------------------------

--returns the id to whoever calls it
function getKingsportCaptainDeckId()
    return Kingsport_Captain_Deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setKingsportCaptainDeckId(id)
    Kingsport_Captain_Deck_id = id.getGUID()
end
--------------------------------- Captain ---------------------------------------
--------------------------------- Changed ---------------------------------------

--returns the id to whoever calls it
function getKingsportChangedDeckId()
    return Kingsport_Changed_Deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setKingsportChangedDeckId(id)
    Kingsport_Changed_Deck_id = id.getGUID()
end
--------------------------------- Changed ---------------------------------------
--------------------------------- Head ---------------------------------------

--returns the id to whoever calls it
function getKingsportHeadDeckId()
    return Kingsport_Head_Deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setKingsportHeadDeckId(id)
    Kingsport_Head_Deck_id = id.getGUID()
end
--------------------------------- Head ---------------------------------------
--------------------------------- Harborside ---------------------------------------

--returns the id to whoever calls it
function getKingsportHarborsideDeckId()
    return Kingsport_Harborside_Deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setKingsportHarborsideDeckId(id)
    Kingsport_Harborside_Deck_id = id.getGUID()
end
--------------------------------- Harborside ---------------------------------------
-------------------------------- Central Hill --------------------------------------

--returns the id to whoever calls it
function getKingsportCentralHillDeckId()
    return Kingsport_Central_Hill_Deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setKingsportCentralHillDeckId(id)
    Kingsport_Central_Hill_Deck_id = id.getGUID()
end
--------------------------------- Church ---------------------------------------
------------------------------ South Shore -------------------------------------

--returns the id to whoever calls it
function getKingsportSouthShoreDeckId()
    return Kingsport_South_Shore_Deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setKingsportSouthShoreDeckId(id)
    Kingsport_South_Shore_Deck_id = id.getGUID()
end
------------------------------ South Shore -------------------------------------
---------------------------- Rift Marker Bag -----------------------------------

--returns the id to whoever calls it
function getKingsportRiftMarkerBagId()
    return Kingsport_Rift_Marker_Bag_id
end

--Probably not used, but just in case
--sets the id as given object
function setKingsportRiftMarkerBagId(id)
    Kingsport_Rift_Marker_Bag_id = id.getGUID()
end
---------------------------- Rift Marker Bag ---------------------------------
--------------------------------- Clue ---------------------------------------
--
-- --returns the id to whoever calls it
-- function getKingsportClueDeckId()
--     return Kingsport_Clue_Deck_id
-- end
--
-- --Probably not used, but just in case
-- --sets the id as given object
-- function setKingsportClueDeckId(id)
--     Kingsport_Clue_Deck_id = id.getGUID()
-- end
--------------------------------- Clue ---------------------------------------
--------------------------------- Monster ---------------------------------------

--returns the id to whoever calls it
function getKingsportMonsterBagId()
    return Kingsport_Monster_bag_id
end

--Probably not used, but just in case
--sets the id as given object
function setKingsportMonsterBagId(id)
    Kingsport_Monster_bag_id = id.getGUID()
end

--returns the id to whoever calls it
function getKingsportMaskMonsterBagId()
    return Kingsport_Masked_Monster_bag_id
end

--------------------------------- Monster ---------------------------------------
----------------------------- Rift Progress -------------------------------------

--returns the id to whoever calls it
function getKingsportRiftProgressBagId()
    return Kingsport_Rift_Progress_Marker_Bag_id
end

--Probably not used, but just in case
--sets the id as given object
function setKingsportRiftProgressBagId(id)
    Kingsport_Rift_Progress_Marker_Bag_id = id.getGUID()
end
----------------------------- Rift Progress -------------------------------------
----------------------------- Gate Marker -------------------------------------

--returns the id to whoever calls it
function getKingsportGateMarkerBagId()
    return Kingsport_Gate_Marker_Bag_id
end

--Probably not used, but just in case
--sets the id as given object
function setKingsportGateMarkerBagId(id)
    Kingsport_Gate_Marker_Bag_id = id.getGUID()
end
----------------------------- Gate Marker -------------------------------------
--------------------------------- Board ---------------------------------------

--returns the id to whoever calls it
function getKingsportBoardId()
    return Kingsport_Board_Id
end

--Probably not used, but just in case
--sets the id as given object
function setKingsportBoardId(id)
    Kingsport_Board_Id = id.getGUID()
end

--Scales the board to be set on the table (Tiny)
function scaleDownKingsportBoard()
    KingsportBoard = getObjectFromGUID(Kingsport_Board_Id)
    KingsportBoard.scale({1,1,1})
end

--Scales the board to its original dimensions
-- Scale: {5.26,1.00,5.26}
function scaleUpKingsportBoard()
    KingsportBoard = getObjectFromGUID(Kingsport_Board_Id)
    KingsportBoard.scale({5.26,1.00,5.26})
end
--------------------------------- Board ---------------------------------------

--Scrpiting Zone
-------------------------- Kingsport Scripting Zone -------------------------------

--returns the id to whoever calls it
function getKingsportScriptingZone()
    return Kingsport_Scripting_Zone
end

--Probably not used, but just in case
--sets the id as given object
function setKingsportScriptingZone(id)
    Kingsport_Scripting_Zone = id.getGUID()
end
-------------------------- Kingsport Scripting Zone -------------------------------



--Returns a vector with the placing positions for the object id given
function getKingsportPositionById(id)
    return KingsportPositions[id[1]]
end

--Returns a vector with the placing positions for the object id given
function getKingsportDecks()
    return KingsportDecks
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

------------------------------ Kingsport Rifts ---------------------------------