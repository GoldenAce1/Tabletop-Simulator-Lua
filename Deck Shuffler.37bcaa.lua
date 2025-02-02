local GlobalVariablesId = '7fc89f'
GlobalVariables = getObjectFromGUID(GlobalVariablesId)

function declareButton()
    ShuffleSouthShoreButton = {
        click_function = 'ShuffleSouthShoreButtonClicked',
        function_owner = self,
        label = 'Shuffle South Shore',
        tooltip = "Shuffles the South Shore Deck",
        position = {0,0,0},
        rotation = {0,270,0},
        width = 1380,
        height = 240,
        font_size = 100
    }
end

function createButton()
    self.createButton(ShuffleSouthShoreButton)
end

function onload()
    declareButton()

    local isKingsportSet = GlobalVariables.call('isKingsportSet')
    if isKingsportSet == true then
        self.createButton(ShuffleSouthShoreButton)
    end

end

function ShuffleSouthShoreButtonClicked()

    local Board_South_Shore_Deck_Id = GlobalVariables.call('getKingsportSouthShoreDeckId')

    local Board_South_Shore_Deck = getObjectFromGUID(Board_South_Shore_Deck_Id)
    Board_South_Shore_Deck.randomize()
end