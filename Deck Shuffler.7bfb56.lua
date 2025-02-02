local GlobalVariablesId = '7fc89f'
GlobalVariables = getObjectFromGUID(GlobalVariablesId)

ShuffleFrenchButton = {
click_function = 'ShuffleFrenchButtonClicked',
function_owner = self,
label = 'Shuffle French Hill Deck',
tooltip = "Shuffles the French Deck",
position = {0,0,0},
rotation = {0,270,0},
width = 1380,
height = 240,
font_size = 100
}

function onload()

    self.createButton(ShuffleFrenchButton)
end

function ShuffleFrenchButtonClicked()

    local Board_French_Deck_Id = GlobalVariables.call('getBoardFrenchdeckId')    
    local Board_French_Deck = getObjectFromGUID(Board_French_Deck_Id)
    Board_French_Deck.randomize()
end