Tag = ""
ZoneId = ""

function onLoad()
    self.createInput({
        input_function = "tag_func",
        function_owner = self,
        label          = "tag",
        alignment      = 3,
        position       = {x=0, y=0, z=1},
        width          = 1200,
        height         = 150,
        value = Tag
    })
    self.createInput({
        input_function = "zone_func",
        function_owner = self,
        label          = "zone id",
        alignment      = 3,
        position       = {x=0, y=0, z=1.5},
        width          = 1200,
        height = 150,
        value = ZoneId
    })
    self.createButton({
        click_function = "addTag",
        function_owner = self,
        label          = "Add Tag",
        position       = {x=0, y=0, z=2},
        width          = 1200,
        height         = 150
    })
end

function addTag()
    if (Tag == "" or ZoneId == "") then
        broadcastToAll("Zone or Tag is missing")
        return
    end
    local zone = getObjectFromGUID(ZoneId)
    if (zone == nil) then
        broadcastToAll("Cannot find zone")
        return
    end

    local objects = zone.getObjects()
    local heightDelta = 0.3

    for _,deck in ipairs(objects) do
        if (deck.type == "Deck") then
            local cardsCount = #deck.getObjects()
            local deckBounds = deck.getBounds()
            local startPoint = deckBounds.size.y + heightDelta
            for i=cardsCount,1,-1 do
                deck.takeObject({
                    position = {
                        x = deckBounds.center.x,
                        z = deckBounds.center.z,
                        y = startPoint + heightDelta * i
                    },
                    smooth=false,
                    callback_function = function (card)
                        card.addTag(Tag)
                        log('added tag '.. Tag .. ' for ' .. card.guid)
                    end
                })
            end
        elseif (deck.type == "Card") then
            deck.addTag(Tag)
            log('added tag '.. Tag .. ' for ' .. deck.guid)
        end
    end

end

function tag_func(obj, color, input, stillEditing)
    Tag = input
end

function zone_func(obj, color, input, stillEditing)
    ZoneId = input
end