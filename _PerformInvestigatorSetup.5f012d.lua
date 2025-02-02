
function SetupMoney(money, Money_Bag)

    if money > 0 then
            dollarBag = getObjectFromGUID(Money_Bag)
            if dollarBag ~= nil then

            for var=1,money,1 do
                initialmoney = dollarBag.takeObject({
                    position = moneyPosition,
                    rotation = moneyRotation,
                })
            end
        else
            print("Infinite money bag not found. Perform setup manually.")
        end
    end
end
function SetupClues(clues)

    if clues > 0 then
            cluesBag = getObjectFromGUID(clues_Bag_Id)
            if cluesBag ~= nil then

            for var=1,clues,1 do
                initialClues = cluesBag.takeObject({
                    position = cluesPosition,
                    rotation = cluesRotation,
                })
            end
        else
            print("Infinite Clue bag not found. Perform setup manually.")
        end
    end
end

function SetupFixedCommonItems(FixedCommonItems)

    local CommonItemDeckId = setupVariables.call('getBoardCommondeckId')
    local CommonItemDeck = getObjectFromGUID(CommonItemDeckId)

    local CommonItemDeckObjects = CommonItemDeck.getObjects()

    local numberItems = FixedCommonItems[1]

    local nudgeX = 0

    for var=1,numberItems,1 do
        local k = var + 1
        local ItemName = FixedCommonItems[k]
        foundFixedItem = false
        for _, obj in pairs(CommonItemDeckObjects) do

            if obj.name == ItemName  then
                CommonItem = CommonItemDeck.takeObject({
                    guid = obj.guid,
                    position = {FixedCommonPosition[1]+nudgeX, FixedCommonPosition[2], FixedCommonPosition[3]},
                    rotation = FixedCommonRotation,
                })
                break
                foundFixedItem = true
            end
        end
        nudgeX = nudgeX + 3
    end

    -- Yes, It's hammering a solution, but I'm happy with it!
    -- The foundFixedItem works, since both items are from the same expansion
    if guid == InvestigatorSetup.getVar('Mark_Harrigan_Sheet') and foundFixedItem == false then
        local DunwichPlacementTable = getObjectFromGUID('27d633')
        local DunwichRemove = getObjectFromGUID('25872f')
        local DunwichVariables = getObjectFromGUID('5932f9')
        DunwichPlacementTable.call('placeCommon')

        local DunwichCommonDeck = getObjectFromGUID(DunwichVariables.call('getDunwichCommonDeckId'))
        local DunwichCommonDeckObjects = DunwichCommonDeck.getObjects()
        for var=1,numberItems,1 do
            local k = var + 1
            local ItemName = FixedCommonItems[k]
            for _, obj in pairs(DunwichCommonDeckObjects) do

                if obj.name == ItemName  then
                    CommonItem = DunwichCommonDeck.takeObject({
                        guid = obj.guid,
                        position = {FixedCommonPosition[1]+nudgeX, FixedCommonPosition[2], FixedCommonPosition[3]},
                        rotation = FixedCommonRotation,
                    })
                    break
                end
            end
            nudgeX = nudgeX + 3
        end
        Wait.time(function() DunwichRemove.call('DunwichRemove') end,1)

    end
    -- Yes, It's hammering a solution, but I'm happy with it!
    -- The foundFixedItem works, since both items are from the same expansion
    if guid == InvestigatorSetup.getVar('Tony_Morgan_Sheet') and foundFixedItem == false then
        local     KingsportPlacement = getObjectFromGUID('674ce4')
        local KingsportRemove = getObjectFromGUID('358fed')
        local KingsportVariables = getObjectFromGUID('00ac75')
        KingsportPlacement.call('placeCommon')

        local KingsportCommonDeck = getObjectFromGUID(KingsportVariables.call('getKingsportCommonDeckId'))
        local KingsportCommonDeckObjects = KingsportCommonDeck.getObjects()
        for var=1,numberItems,1 do
            local k = var + 1
            local ItemName = FixedCommonItems[k]
            for _, obj in pairs(KingsportCommonDeckObjects) do

                if obj.name == ItemName  then
                    CommonItem = KingsportCommonDeck.takeObject({
                        guid = obj.guid,
                        position = {FixedCommonPosition[1]+nudgeX, FixedCommonPosition[2], FixedCommonPosition[3]},
                        rotation = FixedCommonRotation,
                    })
                    break
                end
            end
            nudgeX = nudgeX + 3
        end
        Wait.time(function() KingsportRemove.call('KingsportRemove') end,1)
    end
end

function SetupFixedUniqueItems(FixedUniqueItems, FixedUniquePosition, FixedUniqueRotation)

    local UniqueItemDeckId = setupVariables.call('getBoardUniquedeckId')
    local UniqueItemDeck = getObjectFromGUID(UniqueItemDeckId)

    local UniqueItemDeckObjects = UniqueItemDeck.getObjects()

    local numberItems = FixedUniqueItems[1]
    foundFixedUniqueItem = false

    local nudgeX = 0

    for var=1,numberItems,1 do
        local k = var + 1
        local ItemName = FixedUniqueItems[k]
        for _, obj in pairs(UniqueItemDeckObjects) do
            if obj.name == ItemName  then
                UniqueItem = UniqueItemDeck.takeObject({
                    guid = obj.guid,
                    position = {FixedUniquePosition[1]+nudgeX, FixedUniquePosition[2], FixedUniquePosition[3]},
                    rotation = FixedUniqueRotation,
                })
                foundFixedUniqueItem = true
                break
            end
        end
        nudgeX = nudgeX + 3
    end

    -- Yes, It's hammering a solution, but I'm happy with it!
    if guid == InvestigatorSetup.getVar('Jim_Culver_Sheet') and foundFixedUniqueItem == false then
        local DunwichPlacementTable = getObjectFromGUID('27d633')
        local DunwichRemove = getObjectFromGUID('25872f')
        local DunwichVariables = getObjectFromGUID('5932f9')
        DunwichPlacementTable.call('placeUnique')

        local DunwichUniqueDeck = getObjectFromGUID(DunwichVariables.call('getDunwichUniqueDeckId'))
        local DunwichUniqueDeckObjects = DunwichUniqueDeck.getObjects()

        nudgeX = 0

        for var=1,numberItems,1 do
            local k = var + 1
            local ItemName = FixedUniqueItems[k]
            for _, obj in pairs(DunwichUniqueDeckObjects) do

                if obj.name == ItemName  then
                    UniqueItem = DunwichUniqueDeck.takeObject({
                        guid = obj.guid,
                        position = {FixedUniquePosition[1]+nudgeX, FixedUniquePosition[2], FixedUniquePosition[3]},
                        rotation = FixedUniqueRotation,
                    })
                    break
                end
            end
            nudgeX = nudgeX + 3
        end
        Wait.time(function() DunwichRemove.call('DunwichRemove') end,1)

    end
    -- Yes, It's hammering a solution, but I'm happy with it!
    if guid == InvestigatorSetup.getVar('Daisy_Walker_Sheet') and foundFixedUniqueItem == false then
        local KingsportPlacement = getObjectFromGUID('674ce4')
        local KingsportRemove = getObjectFromGUID('358fed')
        local KingsportVariables = getObjectFromGUID('00ac75')
        KingsportPlacement.call('placeUnique')

        local KingsportUniqueDeck = getObjectFromGUID(KingsportVariables.call('getKingsportUniqueDeckId'))
        local KingsportUniqueDeckObjects = KingsportUniqueDeck.getObjects()

        nudgeX = 0

        for var=1,numberItems,1 do
            local k = var + 1
            local ItemName = FixedUniqueItems[k]
            for _, obj in pairs(KingsportUniqueDeckObjects) do

                if obj.name == ItemName  then
                    UniqueItem = KingsportUniqueDeck.takeObject({
                        guid = obj.guid,
                        position = {FixedUniquePosition[1]+nudgeX, FixedUniquePosition[2], FixedUniquePosition[3]},
                        rotation = FixedUniqueRotation,
                    })
                    break
                end
            end
            nudgeX = nudgeX + 3
        end
        Wait.time(function() KingsportRemove.call('KingsportRemove') end,1)

    end
end

function SetupFixedSpellItems(FixedSpellItems, FixedSpellPosition, FixedSpellRotation)

    local SpellItemDeckId = setupVariables.call('getBoardSpellsdeckId')
    local SpellItemDeck = getObjectFromGUID(SpellItemDeckId)

    local SpellItemDeckObjects = SpellItemDeck.getObjects()

    local numberItems = FixedSpellItems[1]


    for var=1,numberItems,1 do
        local k = var + 1
        local ItemName = FixedSpellItems[k]
        for _, obj in pairs(SpellItemDeckObjects) do

            if obj.name == ItemName  then
                SpellItem = SpellItemDeck.takeObject({
                    guid = obj.guid,
                    position = FixedSpellPosition,
                    rotation = FixedSpellRotation,
                })
                break
            end
        end
    end
end

function SetupFixedSkillItems(FixedSkillItems, FixedSkillPosition, FixedSkillRotation)

    local SkillItemDeckId = setupVariables.call('getBoardSkillsdeckId')
    local SkillItemDeck = getObjectFromGUID(SkillItemDeckId)

    local SkillItemDeckObjects = SkillItemDeck.getObjects()

    local numberItems = FixedSkillItems[1]


    for var=1,numberItems,1 do
        local k = var + 1
        local ItemName = FixedSkillItems[k]
        foundFixedSkill = false
        for _, obj in pairs(SkillItemDeckObjects) do
            if obj.name == ItemName  then
                SkillItem = SkillItemDeck.takeObject({
                    guid = obj.guid,
                    position = FixedSkillPosition,
                    rotation = FixedSkillRotation,
                })
                foundFixedSkill = true
                break
            end
        end
    end
    -- Yes, It's hammering a solution, but I'm happy with it!
    -- The foundFixedItem works, since both items are from the same expansion
    if guid == InvestigatorSetup.getVar('Lily_Chen_Sheet') and foundFixedSkill == false then
        local KingsportPlacement = getObjectFromGUID('674ce4')
        local KingsportRemove = getObjectFromGUID('358fed')
        local KingsportVariables = getObjectFromGUID('00ac75')
        KingsportPlacement.call('placeSkills')

        local nudgeX = 0

        local KingsportSkillDeck = getObjectFromGUID(KingsportVariables.call('getKingsportSkillsDeckId'))
        local KingsportSkillDeckObjects = KingsportSkillDeck.getObjects()

        for var=1,numberItems,1 do
            local k = var + 1
            local SkillName = FixedSkillItems[k]

            for _, obj in pairs(KingsportSkillDeckObjects) do

                if obj.name == SkillName  then
                    theskill = KingsportSkillDeck.takeObject({
                        guid = obj.guid,
                        position = FixedSkillPosition,
                        rotation = {FixedSkillRotation[1] + nudgeX, FixedSkillRotation[2], FixedSkillRotation[3]},
                    })
                    break
                end
            end
            nudgeX = nudgeX + 3
        end
        Wait.time(function() KingsportRemove.call('KingsportRemove') end,1)

    end
end

function SetupFixedAllyItems(FixedAllyItems, FixedAllyPosition, FixedAllyRotation)

    local AllyItemDeckId = setupVariables.call('getBoardAlliesdeckId')
    local AllyItemDeck = getObjectFromGUID(AllyItemDeckId)

    local AllyItemDeckObjects = AllyItemDeck.getObjects()

    local numberItems = FixedAllyItems[1]

    local nudgeX = 0
    for var=1,numberItems,1 do
        local k = var + 1
        local ItemName = FixedAllyItems[k]
        for _, obj in pairs(AllyItemDeckObjects) do
            if obj.name == ItemName  then
                AllyItem = AllyItemDeck.takeObject({
                    guid = obj.guid,
                    position = {FixedAllyPosition[1] + nudgeX, FixedAllyPosition[2], FixedAllyPosition[3]},
                    rotation = FixedAllyRotation,
                })
                break
            end
        end
        nudgeX = nudgeX + 3
    end
end

function SetupFixedSpecialItems(FixedSpecialItems, FixedSpecialPosition, FixedSpecialRotation)

    local numberItems = FixedSpecialItems[1]
    local nudgeX = 0

    for var=1,numberItems,1 do
        local k = var + 1
        local ItemName = FixedSpecialItems[k]

        if ItemName == 'Blessing' or ItemName =='Curse' then
            local Blessdeck = getObjectFromGUID('ac8b51')

            if ItemName == 'Blessing' then
                SpecialItem = Blessdeck.takeObject({
                    position = {FixedSpecialPosition[1] + nudgeX, FixedSpecialPosition[2], FixedSpecialPosition[3]},
                    rotation = FixedSpecialRotation,
                })
            else
                SpecialItem = Blessdeck.takeObject({
                    position = {FixedSpecialPosition[1] + nudgeX, FixedSpecialPosition[2], FixedSpecialPosition[3]},
                    rotation = {FixedSpecialRotation[1], FixedSpecialRotation[2], 180},
                })
            end
        end

        if ItemName == 'Retainer' then
            local Retainerdeck = getObjectFromGUID('df08bd')
            SpecialItem = Retainerdeck.takeObject({
                position = {FixedSpecialPosition[1] + nudgeX, FixedSpecialPosition[2], FixedSpecialPosition[3]},
                rotation = FixedSpecialRotation,
            })
        end

        if ItemName == 'Bank Loan' then
            local SetupVariables = getObjectFromGUID('2a8dee')
            local BankLoandeckId = SetupVariables.call('getBankLoanId')
            local BankLoandeck = getObjectFromGUID(BankLoandeckId)
            SpecialItem = BankLoandeck.takeObject({
                position = {FixedSpecialPosition[1] + nudgeX, FixedSpecialPosition[2], FixedSpecialPosition[3]},
                rotation = FixedSpecialRotation,
            })
        end
        if ItemName == 'Silver Twilight Lodge Membership' then
            local SilverTwilightLodgedeck = getObjectFromGUID('402c0f')
            SpecialItem = SilverTwilightLodgedeck.takeObject({
                position = {FixedSpecialPosition[1] + nudgeX, FixedSpecialPosition[2], FixedSpecialPosition[3]},
                rotation = FixedSpecialRotation,
            })
        end
        nudgeX = nudgeX + 3
    end


end

function SetupRandomDeckItems(FixedSpecialItems, RandomDeckPosition, RandomDeckRotation)

    local numberCommonItems = FixedSpecialItems[1]

    local nudgeX = 0
    local nudgeZ = 0

    if numberCommonItems > 0 then
        local CommonItemDeckId = setupVariables.call('getBoardCommondeckId')
        local CommonItemDeck = getObjectFromGUID(CommonItemDeckId)

        for var=1,numberCommonItems,1 do
            CommonItem = CommonItemDeck.takeObject({
                position = {RandomDeckPosition[1] + nudgeX, RandomDeckPosition[2], RandomDeckPosition[3] + nudgeZ},
                rotation = RandomDeckRotation,
            })
            nudgeX = nudgeX + 2
        end
    end
    -- Reset the nudge for the next item
    nudgeX = 0
    --Increment Nudge in the Z coordinates
    nudgeZ = nudgeZ + 2

    local numberUniqueItems = FixedSpecialItems[2]

    if numberUniqueItems > 0 then
        local UniqueItemDeckId = setupVariables.call('getBoardUniquedeckId')
        local UniqueItemDeck = getObjectFromGUID(UniqueItemDeckId)

        for var=1,numberUniqueItems,1 do
            UniqueItem = UniqueItemDeck.takeObject({
                position = {RandomDeckPosition[1] + nudgeX, RandomDeckPosition[2], RandomDeckPosition[3] + nudgeZ},
                rotation = FixedSpecialRotation,
            })
            nudgeX = nudgeX + 2
        end
    end

    -- Reset the nudge for the next item
    nudgeX = 0
    --Increment Nudge in the Z coordinates
    nudgeZ = nudgeZ + 2

    local numberSpellItems = FixedSpecialItems[3]

    if numberSpellItems > 0 then
        local SpellItemDeckId = setupVariables.call('getBoardSpellsdeckId')
        local SpellItemDeck = getObjectFromGUID(SpellItemDeckId)

        for var=1,numberSpellItems,1 do
            SpellItem = SpellItemDeck.takeObject({
                position = {RandomDeckPosition[1] + nudgeX, RandomDeckPosition[2], RandomDeckPosition[3] + nudgeZ},
                rotation = FixedSpecialRotation,
            })
            nudgeX = nudgeX + 2
        end
    end
    -- Reset the nudge for the next item
    nudgeX = 0
    --Increment Nudge in the Z coordinates
    nudgeZ = nudgeZ + 2

    local numberSkillItems = FixedSpecialItems[4]

    if numberSkillItems > 0 then
        local SkillItemDeckId = setupVariables.call('getBoardSkillsdeckId')
        local SkillItemDeck = getObjectFromGUID(SkillItemDeckId)

        for var=1,numberSkillItems,1 do
            SkillItem = SkillItemDeck.takeObject({
                position = {RandomDeckPosition[1] + nudgeX, RandomDeckPosition[2], RandomDeckPosition[3] + nudgeZ},
                rotation = FixedSpecialRotation,
            })
            nudgeX = nudgeX + 2
        end
    end
    -- Reset the nudge for the next item
    nudgeX = 0
    --Increment Nudge in the Z coordinates
    nudgeZ = nudgeZ + 2

    local numberAllyItems = FixedSpecialItems[5]

    if numberAllyItems > 0 then
        local AllyItemDeckId = setupVariables.call('getBoardAlliesdeckId')
        local AllyItemDeck = getObjectFromGUID(AllyItemDeckId)

        for var=1,numberAllyItems,1 do
            AllyItem = AllyItemDeck.takeObject({
                position = {RandomDeckPosition[1] + nudgeX, RandomDeckPosition[2], RandomDeckPosition[3] + nudgeZ},
                rotation = FixedSpecialRotation,
            })
            nudgeX = nudgeX + 2
        end
    end
end

function SetupRandomSpecialItems(RandomSpecialItems, RandomSpecialPosition, RandomSpecialRotation )

    local numberItems = FixedSpecialItems[1]
    local ItemName = FixedSpecialItems[2]

    if ItemName == 'Monster' then
        for var=1,numberItems,1 do

            local BoardMonsterBagId = setupVariables.call('getBoardMonsterBagId')
            local BoardMonsterBag = getObjectFromGUID(BoardMonsterBagId)

            Monster = BoardMonsterBag.takeObject({
                position = RandomSpecialPosition,
                rotation = RandomSpecialRotation,
            })
        end
    end
    if ItemName == 'Gate' then

        LurkerGateSet = ControlPanelVariables.call('isLurkerGateSet')

        local BoardMonsterBagId = ''

        for var=1,numberItems,1 do

            if LurkerGateSet == true then
                LurkerVariables = getObjectFromGUID('edd1ef')
                BoardGateBagId = LurkerVariables.call('getLurkerGateMarkerBagId')
            else
                BoardGateBagId = setupVariables.call('getBoardGateBagId')
            end
            local BoardGateBag = getObjectFromGUID(BoardGateBagId)

            Gate = BoardGateBag.takeObject({
                position = RandomSpecialPosition,
                rotation = RandomSpecialRotation,
            })
        end
    end
end