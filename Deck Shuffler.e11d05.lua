local GlobalVariablesId = '7fc89f'
GlobalVariables = getObjectFromGUID(GlobalVariablesId)

ShuffleNorthsideButton = {
click_function = 'ShuffleNorthsideButtonClicked',
function_owner = self,
label = 'Shuffle Northside Deck',
tooltip = "Shuffles the Northside",
position = {0,0,0},
rotation = {0,270,0},
width = 1380,
height = 240,
font_size = 100
}

function onload()

    self.createButton(ShuffleNorthsideButton)
end

function ShuffleNorthsideButtonClicked()

    local Board_Northside_Deck_Id = GlobalVariables.call('getBoardNorthsidedeckId')
    local Board_Northside_Deck = getObjectFromGUID(Board_Northside_Deck_Id)
    Board_Northside_Deck.randomize()
end