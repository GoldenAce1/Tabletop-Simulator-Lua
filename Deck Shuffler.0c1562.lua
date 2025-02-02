local InnsmouthVariablesId = '5c39a4'
local ControlPanelVariablesId = 'bf1ea5'

function declareButton()
    ShuffleChurchGreenButton = {
        click_function = 'ShuffleChurchGreenButtonClicked',
        function_owner = self,
        label = 'Shuffle Church Green Deck',
        tooltip = "Shuffles the Church Green Deck",
        position = {0,0,0},
        rotation = {0,270,0},
        width = 1380,
        height = 240,
        font_size = 100
    }
end

function createButton()
    self.createButton(ShuffleChurchGreenButton)
end

function onload()
    declareButton()

    local ControlPanelVariables = getObjectFromGUID(ControlPanelVariablesId)
    local isInnsmouthSet = ControlPanelVariables.call('isInnsmouthSet')
    if isInnsmouthSet == true then
        self.createButton(ShuffleChurchGreenButton)
    end

end

function ShuffleChurchGreenButtonClicked()
    local InnsmouthVariables = getObjectFromGUID(InnsmouthVariablesId)
    local Board_Church_Green_Deck_Id = InnsmouthVariables.call('getInnsmouthChurchDeckId')

    local Board_Church_Green_Deck = getObjectFromGUID(Board_Church_Green_Deck_Id)
    Board_Church_Green_Deck.randomize()
end