local GlobalVariablesId = '7fc89f'
GlobalVariables = getObjectFromGUID(GlobalVariablesId)

function declareButton()
    ShuffleHarborsideButton = {
        click_function = 'ShuffleHarborsideButtonClicked',
        function_owner = self,
        label = 'Shuffle Harborside',
        tooltip = "Shuffles the Harborside Deck",
        position = {0,0,0},
        rotation = {0,270,0},
        width = 1380,
        height = 240,
        font_size = 100
    }
end

function createButton()
    self.createButton(ShuffleHarborsideButton)
end

function onload()
    declareButton()

    local isKingsportSet = GlobalVariables.call('isKingsportSet')
    if isKingsportSet == true then
        self.createButton(ShuffleHarborsideButton)
    end

end

function ShuffleHarborsideButtonClicked()
    
    local Board_Harborside_Deck_Id = GlobalVariables.call('getKingsportHarborsideDeckId')

    local Board_Harborside_Deck = getObjectFromGUID(Board_Harborside_Deck_Id)
    Board_Harborside_Deck.randomize()
end