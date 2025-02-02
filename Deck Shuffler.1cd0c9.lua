local KingsportVariablesId = '00ac75'
local ControlPanelVariablesId = 'bf1ea5'

function declareButton()
    ShuffleCentralHillButton = {
        click_function = 'ShuffleCentralHillButtonClicked',
        function_owner = self,
        label = 'Shuffle Central Hill Deck',
        tooltip = "Shuffles the Central Hill Deck",
        position = {0,0,0},
        rotation = {0,270,0},
        width = 1380,
        height = 240,
        font_size = 100
    }
end

function createButton()
    self.createButton(ShuffleCentralHillButton)
end

function onload()
    declareButton()

    local ControlPanelVariables = getObjectFromGUID(ControlPanelVariablesId)
    local isKingsportSet = ControlPanelVariables.call('isKingsportSet')
    if isKingsportSet == true then
        self.createButton(ShuffleCentralHillButton)
    end

end

function ShuffleCentralHillButtonClicked()
    local KingsportVariables = getObjectFromGUID(KingsportVariablesId)
    local Board_Central_Hill_Deck_Id = KingsportVariables.call('getKingsportCentralHillDeckId')

    local Board_Central_Hill_Deck = getObjectFromGUID(Board_Central_Hill_Deck_Id)
    Board_Central_Hill_Deck.randomize()
end