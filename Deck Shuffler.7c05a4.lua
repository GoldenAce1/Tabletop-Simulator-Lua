local GlobalVariablesId = '7fc89f'
GlobalVariables = getObjectFromGUID(GlobalVariablesId)

function declareButton()
    ShuffleInnsmouthShoreButton = {
        click_function = 'ShuffleInnsmouthShoreButtonClicked',
        function_owner = self,
        label = 'Shuffle Innsmouth Shore Deck',
        tooltip = "Shuffles the Innsmouth Shore Deck",
        position = {0,0,0},
        rotation = {0,270,0},
        width = 1380,
        height = 240,
        font_size = 100
    }
end

function createButton()
    self.createButton(ShuffleInnsmouthShoreButton)
end

function onload()
    declareButton()

    local isInnsmouthSet = GlobalVariables.call('isInnsmouthSet')
    if isInnsmouthSet == true then
        self.createButton(ShuffleInnsmouthShoreButton)
    end

end

function ShuffleInnsmouthShoreButtonClicked()
    
    local Board_Innsmouth_Shore_Deck_Id = GlobalVariables.call('getInnsmouthShoreDeckId')

    local Board_Innsmouth_Shore_Deck = getObjectFromGUID(Board_Innsmouth_Shore_Deck_Id)
    Board_Innsmouth_Shore_Deck.randomize()
end