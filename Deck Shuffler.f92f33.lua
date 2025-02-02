local GlobalVariablesId = '7fc89f'
GlobalVariables = getObjectFromGUID(GlobalVariablesId)

function declareButton()
    ShuffleBackwoodsCountryButton = {
        click_function = 'ShuffleBackwoodsCountryButtonClicked',
        function_owner = self,
        label = 'Shuffle Backwoods Country',
        tooltip = "Shuffles the Backwoods Country Deck",
        position = {0,0,0},
        rotation = {0,270,0},
        width = 1380,
        height = 240,
        font_size = 100
    }
end

function createButton()
    self.createButton(ShuffleBackwoodsCountryButton)
end

function onload()
    declareButton()

    local isDunwichSet = GlobalVariables.call('isDunwichSet')
    if isDunwichSet == true then
        self.createButton(ShuffleBackwoodsCountryButton)
    end

end

function ShuffleBackwoodsCountryButtonClicked()

    local Board_Backwoods_Country_Deck_Id = GlobalVariables.call('getDunwichBackwoodsDeckId')

    local Board_Backwoods_Country_Deck = getObjectFromGUID(Board_Backwoods_Country_Deck_Id)
    Board_Backwoods_Country_Deck.randomize()
end