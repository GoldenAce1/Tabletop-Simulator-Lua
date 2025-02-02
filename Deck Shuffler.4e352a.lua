local GlobalVariablesId = '7fc89f'
GlobalVariables = getObjectFromGUID(GlobalVariablesId)

ShuffleMiskatonicUniversityButton = {
click_function = 'ShuffleMiskatonicUniversityButtonClicked',
function_owner = self,
label = 'Shuffle Miskatonic U. Deck',
tooltip = "Shuffles the Miskatonic University Deck",
position = {0,0,0},
rotation = {0,270,0},
width = 1380,
height = 240,
font_size = 100
}

function onload()

    self.createButton(ShuffleMiskatonicUniversityButton)
end

function ShuffleMiskatonicUniversityButtonClicked()

    local Board_MiskatonicUniversity_Deck_Id = GlobalVariables.call('getBoardMiskatonicdeckId')
    
    local Board_MiskatonicUniversity_Deck = getObjectFromGUID(Board_MiskatonicUniversity_Deck_Id)
    Board_MiskatonicUniversity_Deck.randomize()
end