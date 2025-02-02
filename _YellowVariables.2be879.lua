local Yellow_Bag_id = '54a84b'
local Yellow_Northside_deck_id = 'c06d22'
local Yellow_Downtown_deck_id = 'db1150'
local Yellow_Easttown_deck_id = '65f9c8'
local Yellow_Merchant_deck_id = '1a7008'
local Yellow_Rivertown_deck_id = '6162de'
local Yellow_Miskatonic_deck_id = '204cb4'
local Yellow_French_deck_id = '1f427e'
local Yellow_Uptown_deck_id = '03588c'
local Yellow_Southside_deck_id = '44e372'

local Yellow_Common_deck_id = 'd44316'
local Yellow_Unique_deck_id = 'ca6e14'
local Yellow_Spells_deck_id = '83682f'
--local Yellow_Skills_deck_id = 'ba63e7'
--local Yellow_Skills_deck_id = 'eed6d8'
local Yellow_Skills_deck_id = '626b05'
--Yellow has no Allies... No one likes the play. Bad reviews Everyone insane! :(
--local Yellow_Allies_deck_id = '5de360'

local Yellow_Mythos_deck_id = '823e69'
local Yellow_Gate_deck_id = '953b42'

-- King in Yellow Specific Items
local Yellow_Acts_Deck_id = 'ec98bc'
local Yellow_Original_Acts_Deck_id = '9b973f'
local Yellow_Magical_Effect_Deck_id = 'a50db1'

local Yellow_Scripting_Zone = '2cd25e'

local Yellow_Placemat_Id = '76b211'
local Yellow_Placemat_Position = {5.57, 0.61, 22.05}
local Yellow_Placemat_Rotation = {0.00, 90.00, 0.00}

local Yellow_Extras_Bag_Id = 'f280ed'

-- Which of these are decks
YellowDecks={'a50db1'}

YellowDecks_Original={'a50db1'
   }
-- -- Which of these are decks
-- YellowDecks={'c06d22','db1150','65f9c8', '1a7008','6162de','204cb4','1f427e',
--               '03588c','d44316','ca6e14','ec98bc',
--        '44e372','83682f','eed6d8','823e69','953b42','a50db1'
--        }
--
-- YellowDecks_Original={'c06d22','db1150','65f9c8', '1a7008','6162de','204cb4','1f427e',
--        '03588c','d44316','ca6e14','9b973f',
--        '44e372','83682f','eed6d8','823e69','953b42','a50db1'
--    }

       -- x, y, z for each die.
       -- y is the height over the table and setting it to
       -- a number higher than zero will make it fall down
       -- to the board
local YellowPositions = {
  [Yellow_Bag_id] = {-83.42, 4.8, -30.12},
--[[   [Yellow_Mythos_deck_id] = {-83.42, 4.8, -23.55},
  [Yellow_Gate_deck_id] = {-83.42, 4.8, -21.14},
  [Yellow_Northside_deck_id] = {-83.42, 4.8, -18.98},
  [Yellow_Downtown_deck_id] = {-83.42, 4.8, -16.57},
  [Yellow_Easttown_deck_id] = {-83.42, 4.8, -14.25},
  [Yellow_Merchant_deck_id] = {-83.42, 4.8, -11.85},
  [Yellow_Rivertown_deck_id] = {-83.42, 4.8, -9.32},
  [Yellow_Miskatonic_deck_id] = {-83.42, 4.8, -6.91},
  [Yellow_French_deck_id] = {-83.42, 4.8, -4.34},
  [Yellow_Uptown_deck_id] = {-83.42, 4.8, -1.87},
  [Yellow_Southside_deck_id] = {-83.42, 4.8, 0.61},
  [Yellow_Skills_deck_id] = {-83.42, 4.8, 2.99},
  [Yellow_Common_deck_id] = {-83.42, 4.8, 7.8},
  [Yellow_Unique_deck_id] = {-83.42, 4.8, 10.21},
  [Yellow_Spells_deck_id] = {-83.42, 4.8, 12.39},
  [Yellow_Acts_Deck_id] = {-83.42, 4.8, 16.62},
  [Yellow_Magical_Effect_Deck_id] = {-83.42, 4.8, 20.62} --]]

-- -- No allies
 --[Yellow_Allies_deck_id] = {-83.42, 4.8, 6.08},
}

function onload()

end

------------Generating getters and setters for all the junk

---------------------------------- BAG ----------------------------------------

--returns the bag id to whoever calls it
function getYellowBagId()
    return Yellow_Bag_id
end

--Probably not used, but just in case
--sets the id as given object
function setYellowBagId(id)
    Yellow_Bag_id = id.getGUID()
end

---------------------------------- BAG ----------------------------------------
-------------------------------Northside --------------------------------------

--returns the id to whoever calls it
function getYellowNorthsideDeckId()
    return Yellow_Northside_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setYellowNorthsideDeckId(id)
    Yellow_Northside_deck_id = id.getGUID()
end

-------------------------------Northside --------------------------------------
------------------------------- Downtown --------------------------------------

--returns the id to whoever calls it
function getYellowDowntownDeckId()
    return Yellow_Downtown_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setYellowDowntownDeckId(id)
    Yellow_Downtown_deck_id = id.getGUID()
end

------------------------------- Downtown --------------------------------------
------------------------------- Easttown --------------------------------------

--returns the id to whoever calls it
function getYellowEasttownDeckId()
    return Yellow_Easttown_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setYellowEasttownDeckId(id)
    Yellow_Easttown_deck_id = id.getGUID()
end

------------------------------- Easttown --------------------------------------
------------------------------- Merchant --------------------------------------

--returns the id to whoever calls it
function getYellowMerchantDeckId()
    return Yellow_Merchant_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setYellowMerchantDeckId(id)
    Yellow_Merchant_deck_id = id.getGUID()
end

------------------------------- Merchant --------------------------------------
------------------------------- Rivertown --------------------------------------

--returns the id to whoever calls it
function getYellowRivertownDeckId()
    return Yellow_Rivertown_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setYellowRivertownDeckId(id)
    Yellow_Rivertown_deck_id = id.getGUID()
end

------------------------------- Rivertown --------------------------------------
------------------------------- Miskatonic --------------------------------------

--returns the id to whoever calls it
function getYellowMiskatonicDeckId()
    return Yellow_Miskatonic_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setYellowMiskatonicDeckId(id)
    Yellow_Miskatonic_deck_id = id.getGUID()
end

------------------------------- Miskatonic -------------------------------------
------------------------------- French Hill ------------------------------------

--returns the id to whoever calls it
function getYellowFrenchDeckId()
    return Yellow_French_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setYellowFrenchDeckId(id)
    Yellow_French_deck_id = id.getGUID()
end

------------------------------- French Hill ------------------------------------
--------------------------------- Uptown --------------------------------------

--returns the id to whoever calls it
function getYellowUptownDeckId()
    return Yellow_Uptown_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setYellowUptownDeckId(id)
    Yellow_Uptown_deck_id = id.getGUID()
end

--------------------------------- Uptown --------------------------------------
-------------------------------- Southside -------------------------------------
--returns the id to whoever calls it
function getYellowSouthsideDeckId()
    return Yellow_Southside_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setYellowSouthsideDeckId(id)
    Yellow_Southside_deck_id = id.getGUID()
end

-------------------------------- Southside -------------------------------------
--------------------------------- Common --------------------------------------

--returns the id to whoever calls it
function getYellowCommonDeckId()
    return Yellow_Common_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setYellowCommonDeckId(id)
    Yellow_Common_deck_id = id.getGUID()
end

--------------------------------- Common --------------------------------------
--------------------------------- Unique --------------------------------------

--returns the id to whoever calls it
function getYellowUniqueDeckId()
    return Yellow_Unique_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setYellowUniqueDeckId(id)
    Yellow_Unique_deck_id = id.getGUID()
end

--------------------------------- Unique --------------------------------------
--------------------------------- Spells --------------------------------------


--returns the id to whoever calls it
function getYellowSpellsDeckId()
    return Yellow_Spells_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setYellowSpellsDeckId(id)
    Yellow_Spells_deck_id = id.getGUID()
end

--------------------------------- Spells --------------------------------------
--------------------------------- Skills --------------------------------------

--returns the id to whoever calls it
function getYellowSkillsDeckId()
    return Yellow_Skills_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setYellowSkillsDeckId(id)
    Yellow_Skills_deck_id = id.getGUID()
end

--------------------------------- Skills --------------------------------------
--------------------------------- Allies --------------------------------------
-- --returns the id to whoever calls it
-- function getYellowAlliesDeckId()
--     return Yellow_Allies_deck_id
-- end
--
-- --Probably not used, but just in case
-- --sets the id as given object
-- function setYellowAlliesDeckId(id)
--     Yellow_Allies_deck_id = id.getGUID()
-- end
--------------------------------- Allies --------------------------------------
--------------------------------- Mythos --------------------------------------

--returns the id to whoever calls it
function getYellowMythosDeckId()
    return Yellow_Mythos_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setYellowMythosDeckId(id)
    Yellow_Mythos_deck_id = id.getGUID()
end
--------------------------------- Mythos --------------------------------------
---------------------------------- Gate ---------------------------------------

--returns the id to whoever calls it
function getYellowGateDeckId()
    return Yellow_Gate_deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setYellowGateDeckId(id)
    Yellow_Gate_deck_id = id.getGUID()
end

---------------------------------- Gate ---------------------------------------

--Expansion-specific

--------------------------------- Acts ---------------------------------------

--returns the id to whoever calls it
function getYellowActsDeckId()
    return Yellow_Acts_Deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setYellowActsDeckId(id)
    Yellow_Acts_Deck_id = id.getGUID()
end
--------------------------------- Acts ---------------------------------------
------------------------------ Original Acts -----------------------------------

--returns the id to whoever calls it
function getYellowOriginalActsDeckId()
    return Yellow_Original_Acts_Deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setYellowOriginalActsDeckId(id)
    Yellow_Original_Acts_Deck_id = id.getGUID()
end
------------------------------ Original Acts -----------------------------------
-------------------------- Magical Effects -------------------------------------

--returns the id to whoever calls it
function getYellowMagicalEffectsDeckId()
    return Yellow_Magical_Effect_Deck_id
end

--Probably not used, but just in case
--sets the id as given object
function setYellowMagicalEffectsDeckId(id)
    Yellow_Magical_Effect_Deck_id = id.getGUID()
end
-------------------------- Magical Effects -------------------------------------

-------------------------- Yellow Scripting Zone -------------------------------

--returns the id to whoever calls it
function getYellowScriptingZone()
    return Yellow_Scripting_Zone
end

--Probably not used, but just in case
--sets the id as given object
function setYellowScriptingZone(id)
    Yellow_Scripting_Zone = id.getGUID()
end
-------------------------- Yellow Scripting Zone -------------------------------



--Returns a vector with the placing positions for the object id given
function getYellowPositionById(id)
    return YellowPositions[id[1]]
end

--Returns a vector with the placing positions for the object id given
function getYellowDecks()
    return YellowDecks
end

--Returns a vector with the placing positions for the object id given
function getYellowDecksOriginal()
    return YellowDecks_Original
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