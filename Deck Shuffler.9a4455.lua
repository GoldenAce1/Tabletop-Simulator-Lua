local GlobalVariablesId = '7fc89f'
GlobalVariables = getObjectFromGUID(GlobalVariablesId)

ShuffleEasttownButton = {
click_function = 'ShuffleEasttownButtonClicked',
function_owner = self,
label = 'Shuffle Easttown Deck',
tooltip = "Shuffles the Easttown Deck",
position = {0,0,0},
rotation = {0,270,0},
width = 1380,
height = 240,
font_size = 100
}

function onload()

    self.createButton(ShuffleEasttownButton)
end

function ShuffleEasttownButtonClicked()

    local Board_Easttown_Deck_Id = GlobalVariables.call('getBoardEasttowndeckId')     
    local Board_Easttown_Deck = getObjectFromGUID(Board_Easttown_Deck_Id)
    Board_Easttown_Deck.randomize()
end