local GlobalVariablesId = '7fc89f'
GlobalVariables = getObjectFromGUID(GlobalVariablesId)

local InnsmouthVariablesId = '5c39a4'
local DunwichVariablesId = '5932f9'
local KingsportVariablesId = '00ac75'
local PharaohVariablesId = '43e2a0'

local specialRotation = {0, 0, 180}

-- Used as a switch to check if the figurine is in a location
local switch_Discardable = {
    ["Special"] = function (x)  end,
    ["Condition"] = function (x)  end,  
    ["Dunwich Horror"] = function (x)  end, 
    ["Cult Encounter"] = function (x)  end,
    ["Relationship"] = function (x)  end,
    ["Magical Effect"] = function (x)  end,
    ["Detriments"] = function (x)  end,
    ["Benefits"] = function (x)  end,
    ["Corruption"] = function (x)  end,
    ["Exhibit Items"] = function (x)  end,
    ["Exhibit Encounter"] = function (x)  end,
    ["Common Item"] = function (x)  end,
    ["Unique Item"] = function (x)  end,
    ["Spell"] = function (x)  end,
    ["Skill"] = function (x)  end,
    ["Ally"] = function (x)  end,
    ["Injury"] = function (x)  end,
    ["Madness"] = function (x)  end,
    ["Monster"] = function (x)  end,
    ["Gate Marker"] = function (x)  end,
    ["Green"] = function (x)  end,
    ["Blue"] = function (x)  end,
    ["Yellow"] = function (x)  end,
    ["Red"] = function (x)  end,
    ["RedGreen"] = function (x)  end,
    ["RedYellow"] = function (x)  end,
    ["BlueYellow"] = function (x)  end,
    ["\"One of the Thousand\" Cult Membership"] = function (x)  end,
    ["Southside"] = function (x)  end,
    ["Uptown"] = function (x)  end,
    ["French Hill"] = function (x)  end,
    ["Miskatonic University"] = function (x)  end,
    ["Rivertown"] = function (x)  end,
    ["Merchant District"] = function (x)  end,
    ["Easttown"] = function (x)  end,
    ["Downtown"] = function (x)  end,
    ["Northside"] = function (x)  end,
    ["Factory District"] = function (x)  end,
    ["Church Green"] = function (x)  end,
    ["Innsmouth Shore"] = function (x)  end,
    ["Village Commons"] = function (x)  end,
    ["Blasted Heath"] = function (x)  end,
    ["Backwoods Country"] = function (x)  end,
    ["Central Hill"] = function (x)  end,
    ["South Shore"] = function (x)  end,
    ["Harborside"] = function (x)  end,
    ["Kingsport Head"] = function (x)  end
}

--Returns a vector with the placing positions for the object id given
function getDiscardableByDescription(statement, input)
    
    if statement[input] ~= nil then
        statement[input]()
        return false
    else
        return true
    end
end

function PerformSpecialDiscard(obj)
    
    --local GlobalVariables = getObjectFromGUID(setupVariablesId)
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    
    local ObjName = obj.getName()
    local ObjDescription = obj.getDescription()
    
    if ObjName == "Rail Pass" then
        local railPassPosition = GlobalVariables.call('getBoardRailPassDiscard')
        obj.setPosition({railPassPosition[1], railPassPosition[2] + 3, railPassPosition[3]})
        obj.setRotation({0,90,0})
        
        ScrZoneExpansions = getObjectFromGUID('70a568')
        local BoardRailPassScriptingZoneId = ScrZoneExpansions.call('getDunwichScrzoneRailid')
        local BoardRailPassScriptingZone = getObjectFromGUID(BoardRailPassScriptingZoneId)
        
        function RailPassDiscardcoinside()
            waitFrames(30)
            local scriptingZoneObjects = BoardRailPassScriptingZone.getObjects()
            
            if scriptingZoneObjects ~= nil then
                
                for _, obj in ipairs(scriptingZoneObjects) do
                    if obj.type == "Deck" then
                        obj.setName("Rail Pass")
                        obj.setDescription("Special")
                        GlobalVariables.call('setDunwichRailPassDeckId', obj.guid)
                    end
                end
            end
            return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
        end
        startLuaCoroutine(self, "RailPassDiscardcoinside") --must use this way to make coroutine in order to wait frames         
    end
    
    if ObjName == "Sheldon Gang Membership" then
        local SheldonGangPosition = GlobalVariables.call('getBoardSheldonDiscard') 
        local SheldonGangRotation = GlobalVariables.call('getBoardSheldonRotation')
        obj.setPosition({SheldonGangPosition[1], SheldonGangPosition[2] + 3, SheldonGangPosition[3]})
        obj.setRotation({SheldonGangRotation[1], SheldonGangRotation[2], SheldonGangRotation[3]})
        
        ScrZoneExpansions = getObjectFromGUID('70a568')
        local BoardSheldonScriptingZoneId = ScrZoneExpansions.call('getDunwichScrzoneSheldonid')
        local BoardSheldonScriptingZone = getObjectFromGUID(BoardSheldonScriptingZoneId)
        
        function SheldonDiscardcoinside()
            waitFrames(30)
            local scriptingZoneObjects = BoardSheldonScriptingZone.getObjects()
            
            if scriptingZoneObjects ~= nil then
                
                for _, obj in ipairs(scriptingZoneObjects) do
                    if obj.type == "Deck" then
                        obj.setName("Sheldon Gang Membership")
                        obj.setDescription("Special")
                        GlobalVariables.call('setDunwichSheldonGangDeckId', obj.guid)
                    end
                end
            end
            return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
        end
        startLuaCoroutine(self, "SheldonDiscardcoinside") --must use this way to make coroutine in order to wait frames          
    end
    
    if ObjDescription == "Condition" then
        local DunwichConditionPosition = GlobalVariables.call('getDunwichConditionDeckPos')
        local DunwichConditionRotation = GlobalVariables.call('getDunwichConditionDeckRot')
        obj.setPosition({DunwichConditionPosition[1], DunwichConditionPosition[2] + 3, DunwichConditionPosition[3]})
        obj.setRotation({DunwichConditionRotation[1], DunwichConditionRotation[2], DunwichConditionRotation[3]})
        
        ScrZoneExpansions = getObjectFromGUID('70a568')
        local DunwichConditionScriptingZoneId = ScrZoneExpansions.call('getDunwichScrzoneConditionid')
        local DunwichConditionScriptingZone = getObjectFromGUID(DunwichConditionScriptingZoneId)
        
        function ConditionDiscardcoinside()
            waitFrames(30)
            local scriptingZoneObjects = DunwichConditionScriptingZone.getObjects()
            
            if scriptingZoneObjects ~= nil then
                
                for _, obj in ipairs(scriptingZoneObjects) do
                    if obj.type == "Deck" then
                        obj.setName("Condition")
                        obj.setDescription("Special")
                        GlobalVariables.call('setDunwichConditionDeckId', obj.guid)
                    end
                end
            end
            return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
        end
        startLuaCoroutine(self, "ConditionDiscardcoinside") --must use this way to make coroutine in order to wait frames           
    end
    
    if ObjName == "Captain of the White Ship"  or ObjName == "The White Ship" then
        local CaptainDiscardPosition = GlobalVariables.call('getBoardCaptainDiscard')
        obj.setPosition({CaptainDiscardPosition[1], CaptainDiscardPosition[2] + 3, CaptainDiscardPosition[3]})
        obj.setRotation({0,90,0})
        
        ScrZoneExpansions = getObjectFromGUID('70a568')
        local KingsportScrzoneCaptainScriptingZoneId = ScrZoneExpansions.call('getKingsportScrzoneCaptainid')
        local KingsportScrzoneCaptainScriptingZone = getObjectFromGUID(KingsportScrzoneCaptainScriptingZoneId)
        
        function CaptainDiscardcoinside()
            waitFrames(30)
            local scriptingZoneObjects = KingsportScrzoneCaptainScriptingZone.getObjects()
            
            if scriptingZoneObjects ~= nil then
                
                for _, obj in ipairs(scriptingZoneObjects) do
                    if obj.type == "Deck" then
                        obj.setName("Captain of the White Ship")
                        obj.setDescription("Special")
                        GlobalVariables.call('setKingsportCaptainDeckId', obj.guid)
                    end
                end
            end
            return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
        end
        startLuaCoroutine(self, "CaptainDiscardcoinside") --must use this way to make coroutine in order to wait frames        
    end
    
    if ObjName == "Changed"  or ObjName == "The Great Seal" then
        local ChangedDiscardPosition = GlobalVariables.call('getBoardChangedDiscard')
        obj.setPosition({ChangedDiscardPosition[1], ChangedDiscardPosition[2] + 3, ChangedDiscardPosition[3]})
        obj.setRotation({0,90,0})
        
        ScrZoneExpansions = getObjectFromGUID('70a568')
        local KingsportScrzoneChangeZoneId = ScrZoneExpansions.call('getKingsportScrzoneChangedid')
        local KingsportScrzoneChangeZone = getObjectFromGUID(KingsportScrzoneChangeZoneId)
        
        function ChangedDiscardcoinside()
            waitFrames(30)
            local scriptingZoneObjects = KingsportScrzoneChangeZone.getObjects()
            
            if scriptingZoneObjects ~= nil then
                
                for _, obj in ipairs(scriptingZoneObjects) do
                    if obj.type == "Deck" then
                        obj.setName("Changed")
                        obj.setDescription("Special")
                        GlobalVariables.call('setKingsportChangedDeckId', obj.guid)
                    end
                end
            end
            return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
        end
        startLuaCoroutine(self, "ChangedDiscardcoinside") --must use this way to make coroutine in order to wait frames
    end
    if ObjName == "Blessing/Curse" then
        local BlessCurseDiscardPosition = GlobalVariables.call('getBoardBlessCurseDiscard')
        obj.setPosition({BlessCurseDiscardPosition[1], BlessCurseDiscardPosition[2] + 3, BlessCurseDiscardPosition[3]})
        obj.setRotation({0,90,0})
    end
    
    if ObjName == "Patrol Wagon" or ObjName == "Deputy of Arkham" or ObjName == "Deputy's Revolver" then
        local DeputyDiscardPosition = GlobalVariables.call('getBoardDeputyDiscard')
        obj.setPosition({DeputyDiscardPosition[1], DeputyDiscardPosition[2], DeputyDiscardPosition[3]})
        obj.setRotation({0,90,0})
        
        local BoardDeputyScriptingZoneId = GlobalVariables.call('getBoardDeputyScriptingZoneId')
        local BoardDeputyScriptingZone = getObjectFromGUID(BoardDeputyScriptingZoneId)
        
        function DeputyDiscardcoinside()
            waitFrames(30)
            local scriptingZoneObjects = BoardDeputyScriptingZone.getObjects() 
            
            if scriptingZoneObjects ~= nil then
                
                for _, obj in ipairs(scriptingZoneObjects) do
                    if obj.type == "Deck" then
                        obj.setName("Deputy of Arkham")
                        obj.setDescription("Special")
                        GlobalVariables.call('setDeputyOfArkhamDeckId',obj.guid)
                    end
                end
            end
            return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
        end
        startLuaCoroutine(self, "DeputyDiscardcoinside") --must use this way to make coroutine in order to wait frames        
    end
    
    if ObjName == "Bank Loan" then
        local BankLoanDiscardPosition = GlobalVariables.call('getBoardBankLoanDiscard')
        obj.setPosition({BankLoanDiscardPosition[1], BankLoanDiscardPosition[2] + 3, BankLoanDiscardPosition[3]})
        obj.setRotation({0,90,180})
    end
    if ObjName == "Silver Twilight Lodge Membership" then
        local SilverTwilightLodgeDiscardPosition = GlobalVariables.call('getBoardSilverTwilightLodgeDiscard')
        obj.setPosition({SilverTwilightLodgeDiscardPosition[1], SilverTwilightLodgeDiscardPosition[2] + 3, SilverTwilightLodgeDiscardPosition[3]})
        obj.setRotation({0,90,0})
    end
    if ObjName == "Retainer" then
        local RetainerDiscardPosition = GlobalVariables.call('getBoardRetainerDiscard')
        obj.setPosition({RetainerDiscardPosition[1], RetainerDiscardPosition[2] + 3, RetainerDiscardPosition[3]})
        obj.setRotation({0,90,0})
    end
    
    if ObjName == "\"One of the Thousand\" Cult Membership" then
        local GoatMembershipDiscardPosition = GlobalVariables.call('getGoatMembershipDiscard')
        obj.setPosition({GoatMembershipDiscardPosition[1], GoatMembershipDiscardPosition[2] + 3, GoatMembershipDiscardPosition[3]})
        obj.setRotation({0,90,180})
    end
    
    if ObjName == "Dunwich Horror" then
        local DunwichHorrorDiscardPosition = GlobalVariables.call('getDunwichHorrorDeckDiscard')
        obj.setPosition({DunwichHorrorDiscardPosition[1], DunwichHorrorDiscardPosition[2] + 3, DunwichHorrorDiscardPosition[3]})
        obj.setRotation({0,270,0})
    end
    
end

function PerformConditionDiscard(obj)
    
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    
    local ObjName = obj.getName()
    local ObjDescription = obj.getDescription()
    
    
    if ObjDescription == "Condition" then
        local DunwichConditionPosition = GlobalVariables.call('getDunwichConditionDeckPos')
        local DunwichConditionRotation = GlobalVariables.call('getDunwichConditionDeckRot')
        obj.setPosition({DunwichConditionPosition[1], DunwichConditionPosition[2] + 3, DunwichConditionPosition[3]})
        obj.setRotation({DunwichConditionRotation[1], DunwichConditionRotation[2], DunwichConditionRotation[3]})
        
        ScrZoneExpansions = getObjectFromGUID('70a568')
        local DunwichConditionScriptingZoneId = ScrZoneExpansions.call('getDunwichScrzoneConditionid')
        local DunwichConditionScriptingZone = getObjectFromGUID(DunwichConditionScriptingZoneId)
        
        function ConditionDiscardcoinside()
            waitFrames(30)
            local scriptingZoneObjects = DunwichConditionScriptingZone.getObjects()
            
            if scriptingZoneObjects ~= nil then
                
                for _, obj in ipairs(scriptingZoneObjects) do
                    if obj.type == "Deck" then
                        obj.setName("Condition")
                        obj.setDescription("Special")
                        GlobalVariables.call('setDunwichConditionDeckId', obj.guid)
                    end
                end
            end
            return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
        end
        startLuaCoroutine(self, "ConditionDiscardcoinside") --must use this way to make coroutine in order to wait frames           
    end    
end


function PerformDunwichHorrorCardDiscard(obj)
    
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    
    local ObjName = obj.getName()
    local ObjDescription = obj.getDescription()
    
    local DunwichConditionPosition = GlobalVariables.call('getDunwichHorrorDeckDiscard')
    
    obj.setPosition({DunwichConditionPosition[1], DunwichConditionPosition[2] + 3, DunwichConditionPosition[3]})
    obj.setRotation({0,270,0}) 
end


function PerformCultEncounterDiscard(obj)
    
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    
    local ObjName = obj.getName()
    local ObjDescription = obj.getDescription()
    
    local CultEncounterPosition = GlobalVariables.call('getGoatEncountersDeckpos')
    local CultEncounterRotation = GlobalVariables.call('getGoatEncountersDeckrot')
    
    obj.setPosition({CultEncounterPosition[1], CultEncounterPosition[2] + 3, CultEncounterPosition[3]})
    obj.setRotation({CultEncounterRotation[1], CultEncounterRotation[2], CultEncounterRotation[3]})
end


-- Tee hee... They Broke up!
function PerformRelationshipDiscard(obj)
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local RelationshipDiscardPosition = GlobalVariables.call('getBoardRelationshipDiscard')
    obj.setPosition({RelationshipDiscardPosition[1], RelationshipDiscardPosition[2] + 3, RelationshipDiscardPosition[3]})
    obj.setRotation({0,90,0})
end

function PerformMagicalEffectDiscard(obj)
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local MagicalEffectDiscardPosition = GlobalVariables.call('getBoardMagicalEffectDiscard')
    obj.setPosition({MagicalEffectDiscardPosition[1], MagicalEffectDiscardPosition[2] + 3, MagicalEffectDiscardPosition[3]})
    obj.setRotation(specialRotation)
    obj.setRotation({0,90,0})
end

function PerformDetrimentsDiscard(obj)
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local DetrimentsDiscardPosition = GlobalVariables.call('getBoardDetrimentsDiscard')
    obj.setPosition({DetrimentsDiscardPosition[1], DetrimentsDiscardPosition[2] + 3, DetrimentsDiscardPosition[3]})
    obj.setRotation({0,90,180})
end

function PerformBenefitsDiscard(obj)
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local BenefitsDiscardPosition = GlobalVariables.call('getBoardBenefitsDiscard')
    obj.setPosition({BenefitsDiscardPosition[1], BenefitsDiscardPosition[2] + 3, BenefitsDiscardPosition[3]})
    obj.setRotation({0,90,180})
end

function PerformCorruptionDiscard(obj)
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local CorruptionDiscardPosition = GlobalVariables.call('getBoardCorruptionDiscard')
    obj.setPosition({CorruptionDiscardPosition[1], CorruptionDiscardPosition[2] + 3, CorruptionDiscardPosition[3]})
    obj.setRotation({0,90,0})
end

function PerformExhibitItemsDiscard(obj)
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local ExhibitItemsDiscardPosition = GlobalVariables.call('getBoardExhibitItemsDiscard')
    obj.setPosition({ExhibitItemsDiscardPosition[1], ExhibitItemsDiscardPosition[2] + 0.1, ExhibitItemsDiscardPosition[3]})
    obj.setRotation({0,90,180})
    
    function ExhibitItemsDiscardcoinside()
        yieldWhileObjectsAreMoving({obj})
        local Pharaoh_Exhibit_Item_Deck_id = GlobalVariables.call("getPharaohExhibitItemDeckid")
        local Pharaoh_Exhibit_Item_Deck = getObjectFromGUID(Pharaoh_Exhibit_Item_Deck_id)
        Pharaoh_Exhibit_Item_Deck.putObject(obj)
        return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
    end
    startLuaCoroutine(self, "ExhibitItemsDiscardcoinside") --must use this way to make coroutine in order to wait frames  
end

function PerformExhibitEncounterDiscard(obj)
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local ExhibitEncounterDiscardPosition = GlobalVariables.call('getPharaohExhibitEncounterDeckPos')
    local ExhibitEncounterDiscardRotation = GlobalVariables.call('getPharaohExhibitEncounterDeckRot')
    obj.setPosition({ExhibitEncounterDiscardPosition[1], ExhibitEncounterDiscardPosition[2] + 0.1, ExhibitEncounterDiscardPosition[3]})
    obj.setRotation({ExhibitEncounterDiscardRotation[1], ExhibitEncounterDiscardRotation[2] + 1, ExhibitEncounterDiscardRotation[3]})

    obj.setRotation({0,90,180})
    local Pharaoh_Exhibit_Encounter_Deck_id = GlobalVariables.call("getPharaohExhibitEncounterDeckId")
    local Pharaoh_Exhibit_Encounter_Deck = getObjectFromGUID(Pharaoh_Exhibit_Encounter_Deck_id)
    Pharaoh_Exhibit_Encounter_Deck.randomize()
end

function PerformCommonItemsDiscard(obj)
    
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local CommonItemsDiscardPosition = GlobalVariables.call('getBoardCommonItemDiscard')
    obj.setPosition({CommonItemsDiscardPosition[1], CommonItemsDiscardPosition[2] + 0.1, CommonItemsDiscardPosition[3]})
    obj.setRotation({0,90,180})
    
    function CommonItemsDiscardcoinside()
        yieldWhileObjectsAreMoving({obj})
        local CommonItemsDeckId = GlobalVariables.call('getBoardCommondeckId')
        local CommonItemsDeck = getObjectFromGUID(CommonItemsDeckId)
        CommonItemsDeck.putObject(obj)
        return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
    end
    startLuaCoroutine(self, "CommonItemsDiscardcoinside") --must use this way to make coroutine in order to wait frames
    
end

function PerformUniqueItemsDiscard(obj)
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local UniqueItemsDiscardPosition = GlobalVariables.call('getBoardUniqueItemDiscard')
    obj.setPosition({UniqueItemsDiscardPosition[1], UniqueItemsDiscardPosition[2] + 0.1, UniqueItemsDiscardPosition[3]})
    obj.setRotation({0,90,180})
    
    function UniqueItemsDiscardcoinside()
        yieldWhileObjectsAreMoving({obj})
        local UniqueItemsDeckId = GlobalVariables.call('getBoardUniquedeckId')
        local UniqueItemsDeck = getObjectFromGUID(UniqueItemsDeckId)
        UniqueItemsDeck.putObject(obj)
        return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
    end
    startLuaCoroutine(self, "UniqueItemsDiscardcoinside") --must use this way to make coroutine in order to wait frames
    
end

function PerformSpellDiscard(obj)
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local SpellDiscardPosition = GlobalVariables.call('getBoardSpellDiscard')
    obj.setPosition({SpellDiscardPosition[1], SpellDiscardPosition[2] + 0.1, SpellDiscardPosition[3]})
    obj.setRotation({0,90,180})
    
    function SpellDiscardcoinside()
        yieldWhileObjectsAreMoving({obj})
        local SpellDeckId = GlobalVariables.call('getBoardSpellsdeckId')
        local SpellDeck = getObjectFromGUID(SpellDeckId)
        SpellDeck.putObject(obj)
        return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
    end
    startLuaCoroutine(self, "SpellDiscardcoinside") --must use this way to make coroutine in order to wait frames
    
end

function PerformSkillDiscard(obj)
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local SkillDiscardPosition = GlobalVariables.call('getBoardSkillDiscard')
    obj.setPosition({SkillDiscardPosition[1], SkillDiscardPosition[2] + 0.1, SkillDiscardPosition[3]})
    obj.setRotation({0,90,180})
    
    function SkillDiscardcoinside()
        yieldWhileObjectsAreMoving({obj})
        local SkillsDeckId = GlobalVariables.call('getBoardSkillsdeckId')
        local SkillsDeck = getObjectFromGUID(SkillsDeckId)
        SkillsDeck.putObject(obj)
        return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
    end
    startLuaCoroutine(self, "SkillDiscardcoinside") --must use this way to make coroutine in order to wait frames
    
end

function PerformAllyDiscard(obj)
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local AllyDiscardPosition = GlobalVariables.call('getBoardAllyDiscard')
    obj.setPosition({AllyDiscardPosition[1], AllyDiscardPosition[2] + 0.1, AllyDiscardPosition[3]})
    obj.setRotation({0,90,180})
    
    function AllyDiscardcoinside()
        yieldWhileObjectsAreMoving({obj})
        local AlliesDeckId = GlobalVariables.call('getBoardAlliesdeckId')
        local AlliesDeck = getObjectFromGUID(AlliesDeckId)
        AlliesDeck.putObject(obj)
        return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
    end
    startLuaCoroutine(self, "AllyDiscardcoinside") --must use this way to make coroutine in order to wait frames
    
end

function PerformInjuryDiscard(obj)
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local InjuryDiscardPosition = GlobalVariables.call('getBoardInjuryDiscard')
    obj.setPosition({InjuryDiscardPosition[1], InjuryDiscardPosition[2] + 3, InjuryDiscardPosition[3]})
    obj.setRotation({0,90,0})
end

function PerformMadnessDiscard(obj)
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local MadnessDiscardPosition = GlobalVariables.call('getBoardMadnessDiscard')
    obj.setPosition({MadnessDiscardPosition[1], MadnessDiscardPosition[2] + 3, MadnessDiscardPosition[3]})
    obj.setRotation({0,0,0})
end

function PerformMonsterDiscard(obj)
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    
    local MonsterBag = ''
    local MonsterBagId = GlobalVariables.call('getBoardMonsterBagId')
    local MonsterBag = getObjectFromGUID(MonsterBagId)
    
    function MonsterBagcoinside()
        MonsterBag.putObject(obj)
        waitFrames(80)
        MonsterBag.randomize()
        return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
    end
    startLuaCoroutine(self, "MonsterBagcoinside") --must use this way to make coroutine in order to wait frames
end

function PerformGateDiscard(obj)
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    
    LurkerGateSet = GlobalVariables.call('isLurkerGateSet')
    
    local Board_Gate_Bag = ''
    
    --Whether Lurker gates or Normal gates, it gets the gate bag. Lurker gates bag replaces Normal Gates Bag
    local Board_Gate_Bag_id = GlobalVariables.call('getBoardGateBagId')
    Board_Gate_Bag = getObjectFromGUID(Board_Gate_Bag_id)
    
    function GateBagcoinside()
        Board_Gate_Bag.putObject(obj)
        waitFrames(80)
        Board_Gate_Bag.randomize()
        return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
    end
    startLuaCoroutine(self, "GateBagcoinside") --must use this way to make coroutine in order to wait frames
end

function PerformGateDeckDiscard(obj)
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local GateCardDiscardPosition = GlobalVariables.call('getBoardGateDiscardPosition')
    
    obj.setPosition({GateCardDiscardPosition[1], 3, GateCardDiscardPosition[3]})
end

function PerformSouthsideDeckDiscard(obj)
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local SouthsideDeckId = GlobalVariables.call('getBoardSouthsidedeckId')
    local SouthsideDeck = getObjectFromGUID(SouthsideDeckId)
    
    function Southsidecoinside()
        SouthsideDeck.putObject(obj)
        waitFrames(80)
        SouthsideDeck.randomize()
        return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
    end
    startLuaCoroutine(self, "Southsidecoinside") --must use this way to make coroutine in order to wait frames
    
end

function PerformUptownDeckDiscard(obj)
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local UptownDeckId = GlobalVariables.call('getBoardUptowndeckId')
    local UptownDeck = getObjectFromGUID(UptownDeckId)
    
    function FrenchHillcoinside()
        UptownDeck.putObject(obj)
        waitFrames(80)
        UptownDeck.randomize()
        return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
    end
    startLuaCoroutine(self, "FrenchHillcoinside") --must use this way to make coroutine in order to wait frames
end

function PerformFrenchHillDeckDiscard(obj)
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local FrenchHillDeckId = GlobalVariables.call('getBoardFrenchdeckId')
    local FrenchHillDeck = getObjectFromGUID(FrenchHillDeckId)
    
    function FrenchHillcoinside()
        FrenchHillDeck.putObject(obj)
        waitFrames(80)
        FrenchHillDeck.randomize()
        return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
    end
    startLuaCoroutine(self, "FrenchHillcoinside") --must use this way to make coroutine in order to wait frames
end

function PerformMiskatonicUniversityDeckDiscard(obj)
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local MiskatonicUniversityDeckId = GlobalVariables.call('getBoardMiskatonicdeckId')
    local MiskatonicUniversityDeck = getObjectFromGUID(MiskatonicUniversityDeckId)
    
    function MiskatonicUniversitycoinside()
        MiskatonicUniversityDeck.putObject(obj)
        waitFrames(80)
        MiskatonicUniversityDeck.randomize()
        return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
    end
    startLuaCoroutine(self, "MiskatonicUniversitycoinside") --must use this way to make coroutine in order to wait frames
end

function PerformRivertownDeckDiscard(obj)
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local RivertownDeckId = GlobalVariables.call('getBoardRivertowndeckId')
    local RivertownDeck = getObjectFromGUID(RivertownDeckId)
    
    function Rivertowncoinside()
        RivertownDeck.putObject(obj)
        waitFrames(80)
        RivertownDeck.randomize()
        return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
    end
    startLuaCoroutine(self, "Rivertowncoinside") --must use this way to make coroutine in order to wait frames
end

function PerformMerchantDistrictDeckDiscard(obj)
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local MerchantDistrictDeckId = GlobalVariables.call('getBoardMerchantdeckId')
    local MerchantDistrictDeck = getObjectFromGUID(MerchantDistrictDeckId)
    
    function MerchantDistrictcoinside()
        MerchantDistrictDeck.putObject(obj)
        waitFrames(80)
        MerchantDistrictDeck.randomize()
        return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
    end
    startLuaCoroutine(self, "MerchantDistrictcoinside") --must use this way to make coroutine in order to wait frames
end

function PerformEasttownDeckDiscard(obj)
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local EasttownDeckId = GlobalVariables.call('getBoardEasttowndeckId')
    local EasttownDeck = getObjectFromGUID(EasttownDeckId)
    
    function Easttowncoinside()
        EasttownDeck.putObject(obj)
        waitFrames(80)
        EasttownDeck.randomize()
        return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
    end
    startLuaCoroutine(self, "Easttowncoinside") --must use this way to make coroutine in order to wait frames
end

function PerformDowntownDeckDiscard(obj)
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local DowntownDeckId = GlobalVariables.call('getBoardDowntowndeckId')
    local DowntownDeck = getObjectFromGUID(DowntownDeckId)
    
    function Downtowncoinside()
        DowntownDeck.putObject(obj)
        waitFrames(80)
        DowntownDeck.randomize()
        return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
    end
    startLuaCoroutine(self, "Downtowncoinside") --must use this way to make coroutine in order to wait frames
end

function PerformNorthsideDeckDiscard(obj)
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local NorthsideDeckId = GlobalVariables.call('getBoardNorthsidedeckId')
    local NorthsideDeck = getObjectFromGUID(NorthsideDeckId)
    
    function Northsidecoinside()
        NorthsideDeck.putObject(obj)
        waitFrames(80)
        NorthsideDeck.randomize()
        return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
    end
    startLuaCoroutine(self, "Northsidecoinside") --must use this way to make coroutine in order to wait frames
end

function PerformFactoryDistrictDeckDiscard(obj) 
    local FactoryDistrictDeckId = GlobalVariables.call('getInnsmouthFactoryDeckId')
    local FactoryDistrictDeck = getObjectFromGUID(FactoryDistrictDeckId)
    
    function FactoryDistrictcoinside()
        FactoryDistrictDeck.putObject(obj)
        waitFrames(80)
        FactoryDistrictDeck.randomize()
        return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
    end
    startLuaCoroutine(self, "FactoryDistrictcoinside") --must use this way to make coroutine in order to wait frames
end

function PerformChurchGreenDeckDiscard(obj)
    
    local ChurchGreenDeckId = GlobalVariables.call('getInnsmouthChurchDeckId')
    local ChurchGreenDeck = getObjectFromGUID(ChurchGreenDeckId)
    
    function ChurchGreencoinside()
        ChurchGreenDeck.putObject(obj)
        waitFrames(80)
        ChurchGreenDeck.randomize()
        return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
    end
    startLuaCoroutine(self, "ChurchGreencoinside") --must use this way to make coroutine in order to wait frames
end

function PerformInnsmouthShoreDeckDiscard(obj)
    local InnsmouthShoreDeckId = GlobalVariables.call('getInnsmouthShoreDeckId')
    local InnsmouthShoreDeck = getObjectFromGUID(InnsmouthShoreDeckId)
    
    function InnsmouthShorecoinside()
        InnsmouthShoreDeck.putObject(obj)
        waitFrames(80)
        InnsmouthShoreDeck.randomize()
        return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
    end
    startLuaCoroutine(self, "InnsmouthShorecoinside") --must use this way to make coroutine in order to wait frames
end

function PerformVillageCommonsDeckDiscard(obj)
    local VillageCommonsDeckId = GlobalVariables.call('getDunwichVillageCommonsDeckId')
    local VillageCommonsDeck = getObjectFromGUID(VillageCommonsDeckId)
    
    function VillageCommonscoinside()
        VillageCommonsDeck.putObject(obj)
        waitFrames(80)
        VillageCommonsDeck.randomize()
        return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
    end
    startLuaCoroutine(self, "VillageCommonscoinside") --must use this way to make coroutine in order to wait frames
end

function PerformBlastedHeathDeckDiscard(obj)
    local BlastedHeathDeckId = GlobalVariables.call('getDunwichBlastedHeathDeckId')
    local BlastedHeathDeck = getObjectFromGUID(BlastedHeathDeckId)
    
    function BlastedHeathcoinside()
        BlastedHeathDeck.putObject(obj)
        waitFrames(80)
        BlastedHeathDeck.randomize()
        return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
    end
    startLuaCoroutine(self, "BlastedHeathcoinside") --must use this way to make coroutine in order to wait frames
end

function PerformBackwoodsCountryDeckDiscard(obj)
    local BackwoodsCountryDeckId = GlobalVariables.call('getDunwichBackwoodsDeckId')
    local BackwoodsCountryDeck = getObjectFromGUID(BackwoodsCountryDeckId)
    
    function BackwoodsCountrycoinside()
        BackwoodsCountryDeck.putObject(obj)
        waitFrames(80)
        BackwoodsCountryDeck.randomize()
        return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
    end
    startLuaCoroutine(self, "BackwoodsCountrycoinside") --must use this way to make coroutine in order to wait frames
end

function PerformCentralHillDeckDiscard(obj)
    local CentralHillDeckId = GlobalVariables.call('getKingsportCentralHillDeckId')
    local CentralHillDeck = getObjectFromGUID(CentralHillDeckId)
    
    function CentralHillcoinside()
        CentralHillDeck.putObject(obj)
        waitFrames(80)
        CentralHillDeck.randomize()
        return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
    end
    startLuaCoroutine(self, "CentralHillcoinside") --must use this way to make coroutine in order to wait frames
end

function PerformSouthShoreDeckDiscard(obj)
    local SouthShoreDeckId = GlobalVariables.call('getKingsportSouthShoreDeckId')
    local SouthShoreDeck = getObjectFromGUID(SouthShoreDeckId)
    
    function SouthShorecoinside()
        SouthShoreDeck.putObject(obj)
        waitFrames(80)
        SouthShoreDeck.randomize()
        return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
    end
    startLuaCoroutine(self, "SouthShorecoinside") --must use this way to make coroutine in order to wait frames
end

function PerformHarborsideDeckDiscard(obj)
    local HarborsideDeckId = GlobalVariables.call('getKingsportHarborsideDeckId')
    local HarborsideDeck = getObjectFromGUID(HarborsideDeckId)
    
    function Harborsidecoinside()
        HarborsideDeck.putObject(obj)
        waitFrames(80)
        HarborsideDeck.randomize()
        return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
    end
    startLuaCoroutine(self, "Harborsidecoinside") --must use this way to make coroutine in order to wait frames
end

function PerformKingsportHeadDeckDiscard(obj)
    local KingsportHeadDeckId = GlobalVariables.call('getKingsportHeadDeckId')
    local KingsportHeadDeck = getObjectFromGUID(KingsportHeadDeckId)
    
    function KingsportHeadcoinside()
        KingsportHeadDeck.putObject(obj)
        waitFrames(80)
        KingsportHeadDeck.randomize()
        return 1 --must return 1 at the end because that is how startLuaCoroutine() works, it is in the api. Without, it will error
    end
    startLuaCoroutine(self, "KingsportHeadcoinside") --must use this way to make coroutine in order to wait frames
end

function DistributeStuffInTrash(obj)
    
    if obj.tag == "Deck" then
        
        obj.setPosition({obj.getPosition()[1], obj.getPosition()[2]+2, obj.getPosition()[3]})
        
        for _, card in ipairs(obj.getObjects()) do
            
            if obj.remainder == nil then -- Returns Nil until you reach a card
                local item = obj.takeObject({
                    guid = card.guid,
                    smooth = false
                })
                DiscardableByDescription(item)
            end                    
        end
    else
        DiscardableByDescription(obj)
    end
end 

function DiscardableByDescription(obj)
    
    local description = obj.getDescription()
    local objname = obj.getName()
    
    local discardable = getDiscardableByDescription(switch_Discardable, description)
    
    
    if discardable == false then
        
        if description == "Special" then
            PerformSpecialDiscard(obj)
        end
        if description == "Condition" then
            PerformConditionDiscard(obj)
        end
        if objname == "Dunwich Horror" then
            PerformDunwichHorrorCardDiscard(obj)
        end        
        if description == "Cult Encounter" then
            PerformCultEncounterDiscard(obj)
        end
        if description == "Relationship" then
            PerformRelationshipDiscard(obj)
        end
        if description == "Magical Effect" then
            PerformMagicalEffectDiscard(obj)
        end
        
        if description == "Detriments" then
            PerformDetrimentsDiscard(obj)
        end
        if description == "Benefits" then
            PerformBenefitsDiscard(obj)
        end
        if description == "Corruption" then
            PerformCorruptionDiscard(obj)
        end
        if description == "Exhibit Items" then
            PerformExhibitItemsDiscard(obj)
        end
        if description == "Exhibit Encounter" then
            PerformExhibitEncounterDiscard(obj)
        end
        if description == "Common Item" then
            PerformCommonItemsDiscard(obj)
        end
        if description == "Unique Item" then
            PerformUniqueItemsDiscard(obj)
        end
        if description == "Spell" then
            PerformSpellDiscard(obj)
        end
        if description == "Skill" then
            PerformSkillDiscard(obj)
        end
        if description == "Ally" then
            PerformAllyDiscard(obj)
        end
        if description == "Injury" then
            PerformInjuryDiscard(obj)
        end
        if description == "Madness" then
            PerformMadnessDiscard(obj)
        end
        if description == "Gate Marker" then
            PerformGateDiscard(obj)
        end
        if description == "Monster" then
            PerformMonsterDiscard(obj)
        end
        if description == "Green"  or
        description == "Blue"  or
        description == "Yellow"  or
        description == "Red"  or
        description == "RedGreen"  or
        description == "RedYellow"  or
        description == "BlueYellow"
        then
            PerformGateDeckDiscard(obj)
        end
        
        if description == "Southside" or objname == "Southside" then
            PerformSouthsideDeckDiscard(obj)
        end
        if description == "Uptown" or objname == "Uptown" then
            PerformUptownDeckDiscard(obj)
        end
        if description == "French Hill" or objname == "French Hill" then
            PerformFrenchHillDeckDiscard(obj)
        end
        if description == "Miskatonic University" or objname == "Miskatonic University" then
            PerformMiskatonicUniversityDeckDiscard(obj)
        end
        if description == "Rivertown" or objname == "Rivertown" then
            PerformRivertownDeckDiscard(obj)
        end
        if description == "Merchant District" or objname == "Merchant District" then
            PerformMerchantDistrictDeckDiscard(obj)
        end
        if description == "Easttown" or objname == "Easttown" then
            PerformEasttownDeckDiscard(obj)
        end
        if description == "Downtown" or objname == "Downtown" then
            PerformDowntownDeckDiscard(obj)
        end
        if description == "Northside" or objname == "Northside" then
            PerformNorthsideDeckDiscard(obj)
        end
        if description == "Factory District" or objname == "Factory District" then
            PerformFactoryDistrictDeckDiscard(obj)
        end
        if description == "Church Green" or objname == "Church Green" then
            PerformChurchGreenDeckDiscard(obj)
        end
        if description == "Innsmouth Shore" or objname == "Innsmouth Shore" then
            PerformInnsmouthShoreDeckDiscard(obj)
        end
        if description == "Village Commons" or objname == "Village Commons" then
            PerformVillageCommonsDeckDiscard(obj)
        end
        if description == "Blasted Heath" or objname == "Blasted Heath" then
            PerformBlastedHeathDeckDiscard(obj)
        end
        if description == "Backwoods Country" or objname == "Backwoods Country" then
            PerformBackwoodsCountryDeckDiscard(obj)
        end
        if description == "Central Hill" or objname == "Central Hill" then
            PerformCentralHillDeckDiscard(obj)
        end
        if description == "South Shore" or objname == "South Shore" then
            PerformSouthShoreDeckDiscard(obj)
        end
        if description == "Harborside" or objname == "Harborside" then
            PerformHarborsideDeckDiscard(obj)
        end
        if description == "Kingsport Head" or objname == "Kingsport Head" then
            PerformKingsportHeadDeckDiscard(obj)
        end
        
        return false
    else
        -- We don't want our beautiful table in the trash, hence sending all
        -- Other non-locked objects to Oblivion
        -- Same applies to the wonderful Player Mats!
        if obj.getGUID() ~= '4ee1f2'
        and obj.getName() ~= 'Player Mat'
        and obj.type ~= 'Figurine'
        and obj.type ~= 'Tile'
        and obj.type ~= 'Generic'  then
            return true
        else
            return false
        end
    end
end

-- For Coroutines, waits X frames
function waitFrames(frames)
    while frames > 0 do
        coroutine.yield(0)
        frames = frames - 1
    end
end

--Thank you Redditor SirLoin49 for this awesome function
    function yieldWhileObjectsAreMoving(moving_objects)
        -- yield the coroutine until all objects stopped smooth moving
        if(#moving_objects == 0) then
            return
        end
        
        local objects_moving = true
        while objects_moving do
            for j = 1, 50 do
                -- do a few yields, otherwise tts crashes
                    coroutine.yield(0)
                end
                for _, i in ipairs(moving_objects) do
                    if(not i.isSmoothMoving()) then
                        objects_moving = false
                        break
                    end
                end
            end
        end