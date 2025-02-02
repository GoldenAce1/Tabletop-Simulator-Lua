local GlobalVariablesId = '7fc89f'
GlobalVariables = getObjectFromGUID(GlobalVariablesId)

ShuffleMerchantButton = {
click_function = 'ShuffleMerchantButtonClicked',
function_owner = self,
label = 'Shuffle Merchant Deck',
tooltip = "Shuffles the Merchant",
position = {0,0,0},
rotation = {0,270,0},
width = 1380,
height = 240,
font_size = 100
}

function onload()

    self.createButton(ShuffleMerchantButton)
end

function ShuffleMerchantButtonClicked()

    local Board_Merchant_Deck_Id = GlobalVariables.call('getBoardMerchantdeckId')
    local Board_Merchant_Deck = getObjectFromGUID(Board_Merchant_Deck_Id)
    Board_Merchant_Deck.randomize()
end