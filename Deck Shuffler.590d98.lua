local GlobalVariablesId = '7fc89f'
GlobalVariables = getObjectFromGUID(GlobalVariablesId)

function declareButton()
    ShuffleFactoryDistrictButton = {
        click_function = 'ShuffleFactoryDistrictButtonClicked',
        function_owner = self,
        label = 'Shuffle Factory District',
        tooltip = "Shuffles the Factory District Deck",
        position = {0,0,0},
        rotation = {0,270,0},
        width = 1380,
        height = 240,
        font_size = 100
    }
end

function createButton()
    self.createButton(ShuffleFactoryDistrictButton)
end

function onload()
    declareButton()

    local isInnsmouthSet = GlobalVariables.call('isInnsmouthSet')
    if isInnsmouthSet == true then
        self.createButton(ShuffleFactoryDistrictButton)
    end

end

function ShuffleFactoryDistrictButtonClicked()
    
    local Board_Factory_District_Deck_Id = GlobalVariables.call('getInnsmouthFactoryDeckId')

    local Board_Factory_District_Deck = getObjectFromGUID(Board_Factory_District_Deck_Id)
    Board_Factory_District_Deck.randomize()
end