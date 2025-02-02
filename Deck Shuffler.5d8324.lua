local GlobalVariablesId = '7fc89f'
GlobalVariables = getObjectFromGUID(GlobalVariablesId)

ShuffleDowntownButton = {
click_function = 'ShuffleDowntownButtonClicked',
function_owner = self,
label = 'Shuffle Downtown Deck',
tooltip = "Shuffles the Downtown Deck",
position = {0,0,0},
rotation = {0,270,0},
width = 1380,
height = 240,
font_size = 100
}

function onload()

    self.createButton(ShuffleDowntownButton)
end

function ShuffleDowntownButtonClicked()
    
    local Board_Downtown_Deck_Id = GlobalVariables.call('getBoardDowntowndeckId')
    local Board_Downtown_Deck = getObjectFromGUID(Board_Downtown_Deck_Id)
    Board_Downtown_Deck.randomize()
end