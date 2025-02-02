local GlobalVariablesId = '7fc89f'
GlobalVariables = getObjectFromGUID(GlobalVariablesId)

ShuffleUptownButton = {
click_function = 'ShuffleUptownButtonClicked',
function_owner = self,
label = 'Shuffle Uptown Deck',
tooltip = "Shuffles the Uptown Deck",
position = {0,0,0},
rotation = {0,270,0},
width = 1380,
height = 240,
font_size = 100
}

function onload()

    self.createButton(ShuffleUptownButton)
end

function ShuffleUptownButtonClicked()

    local Board_Uptown_Deck_Id = GlobalVariables.call('getBoardUptowndeckId')

    local Board_Uptown_Deck = getObjectFromGUID(Board_Uptown_Deck_Id)
    Board_Uptown_Deck.randomize()
end