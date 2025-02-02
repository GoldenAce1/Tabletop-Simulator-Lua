local GlobalVariablesId = '7fc89f'
GlobalVariables = getObjectFromGUID(GlobalVariablesId)

function declareButton()
    ShuffleKingsportHeadButton = {
        click_function = 'ShuffleKingsportHeadButtonClicked',
        function_owner = self,
        label = 'Shuffle Kingsport Head',
        tooltip = "Shuffles the Kingsport Head Deck",
        position = {0,0,0},
        rotation = {0,270,0},
        width = 1380,
        height = 240,
        font_size = 100
    }
end

function createButton()
    self.createButton(ShuffleKingsportHeadButton)
end

function onload()
    declareButton()

    local isKingsportSet = GlobalVariables.call('isKingsportSet')
    if isKingsportSet == true then
        self.createButton(ShuffleKingsportHeadButton)
    end

end

function ShuffleKingsportHeadButtonClicked()
    
    local Board_Kingsport_Head_Deck_Id = GlobalVariables.call('getKingsportHeadDeckId')

    local Board_Kingsport_Head_Deck = getObjectFromGUID(Board_Kingsport_Head_Deck_Id)
    Board_Kingsport_Head_Deck.randomize()
end