local GlobalVariablesId = '7fc89f'
GlobalVariables = getObjectFromGUID(GlobalVariablesId)

ShuffleSouthsideButton = {
click_function = 'ShuffleSouthsideButtonClicked',
function_owner = self,
label = 'Shuffle Southside',
tooltip = "Shuffles the Southside Deck",
position = {0,0,0},
rotation = {0,270,0},
width = 1380,
height = 240,
font_size = 100
}

function onload()

    self.createButton(ShuffleSouthsideButton)
end

function ShuffleSouthsideButtonClicked()

    local Board_Southside_Deck_Id = GlobalVariables.call('getBoardSouthsidedeckId')    
    local Board_Southside_Deck = getObjectFromGUID(Board_Southside_Deck_Id)
    Board_Southside_Deck.randomize()
end