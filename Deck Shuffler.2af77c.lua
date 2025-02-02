--local InnsmouthVariablesId = '5c39a4'
-- Shuffles Innsmouth Look Deck

local GlobalVariablesId = '7fc89f'
GlobalVariables = getObjectFromGUID(GlobalVariablesId)


function declareButton()
    ShuffleInnsmouthLookButton = {
        click_function = 'ShuffleInnsmouthLookButtonClicked',
        function_owner = self,
        label = 'Shuffle Innsmouth Look Deck',
        tooltip = "Shuffles the Innsmouth Look Deck",
        position = {0,0,0},
        rotation = {0,270,0},
        width = 1380,
        height = 240,
        font_size = 100
    }
end

function createButton()
    self.createButton(ShuffleInnsmouthLookButton)
end

function onload()
    declareButton()

    local isInnsmouthSet = GlobalVariables.call('isInnsmouthSet')

    if isInnsmouthSet == true then
        createButton()
    end
end

function ShuffleInnsmouthLookButtonClicked()
    
    local Board_Innsmouth_Look_Deck_Id = GlobalVariables.call('getInnsmouthLookDeckId')

    local Board_Innsmouth_Look_Deck = getObjectFromGUID(Board_Innsmouth_Look_Deck_Id)
    Board_Innsmouth_Look_Deck.randomize()
end