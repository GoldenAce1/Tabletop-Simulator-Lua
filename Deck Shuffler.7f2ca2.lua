local GlobalVariablesId = '7fc89f'
local ControlPanelVariablesId = 'bf1ea5'
--{41.75, 0.68, 24.19}

function declareButton()
    ShuffleCultEncountersButton = {
        click_function = 'ShuffleCultEncountersButtonClicked',
        function_owner = self,
        label = 'Shuffle Cult Encounters Deck',
        tooltip = "Shuffles the Cult Encounters Deck",
        position = {0,0,0},
        rotation = {0,270,0},
        width = 1380,
        height = 240,
        font_size = 100
    }
end

function createButton()
    self.createButton(ShuffleCultEncountersButton)
end

function onload()
    declareButton()

    local ControlPanelVariables = getObjectFromGUID(ControlPanelVariablesId)
    local isGoatSet = ControlPanelVariables.call('isGoatSet')

    if isGoatSet == true then
        createButton()
    end
end

function ShuffleCultEncountersButtonClicked()
    local GlobalVariables = getObjectFromGUID(GlobalVariablesId)
    local Board_Cult_Encounters_Deck_Id = GlobalVariables.call('getGoatEncountersDeckid')

    local Board_Cult_Encounters_Deck = getObjectFromGUID(Board_Cult_Encounters_Deck_Id)
    Board_Cult_Encounters_Deck.randomize()
end