local GlobalVariablesId = '7fc89f'
GlobalVariables = getObjectFromGUID(GlobalVariablesId)

function declareButton()
    ShuffleBlastedHeathButton = {
        click_function = 'ShuffleBlastedHeathButtonClicked',
        function_owner = self,
        label = 'Shuffle Blasted Heath',
        tooltip = "Shuffles the Blasted Heath Deck",
        position = {0,0,0},
        rotation = {0,270,0},
        width = 1380,
        height = 240,
        font_size = 100
    }
end

function createButton()
    self.createButton(ShuffleBlastedHeathButton)
end

function onload()
    declareButton()

    local isDunwichSet = GlobalVariables.call('isDunwichSet')
    if isDunwichSet == true then
        self.createButton(ShuffleBlastedHeathButton)
    end

end

function ShuffleBlastedHeathButtonClicked()
    
    local Board_Blasted_Heath_Deck_Id = GlobalVariables.call('getDunwichBlastedHeathDeckId')

    local Board_Blasted_Heath_Deck = getObjectFromGUID(Board_Blasted_Heath_Deck_Id)
    Board_Blasted_Heath_Deck.randomize()
end