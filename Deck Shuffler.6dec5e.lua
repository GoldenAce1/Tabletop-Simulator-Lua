local GlobalVariablesId = '7fc89f'
GlobalVariables = getObjectFromGUID(GlobalVariablesId)

function declareButton()
    ShuffleExhibitEncounterButton = {
        click_function = 'ShuffleExhibitEncounterButtonClicked',
        function_owner = self,
        label = 'Shuffle Exhibit Encounters',
        tooltip = "Shuffles the Exhibit Encounter Deck",
        position = {0,0,0},
        rotation = {0,270,0},
        width = 1380,
        height = 240,
        font_size = 100
    }
end

function createButton()
    self.createButton(ShuffleExhibitEncounterButton)
end

function onload()
    declareButton()

    local isPharaohSet = GlobalVariables.call('isPharaohSet')

    if isPharaohSet == true then
        createButton()
    end
end

function ShuffleExhibitEncounterButtonClicked()

    local Board_Exhibit_Encounter_Deck_Id = GlobalVariables.call('getPharaohExhibitEncounterDeckId')

    local Board_Exhibit_Encounter_Deck = getObjectFromGUID(Board_Exhibit_Encounter_Deck_Id)
    Board_Exhibit_Encounter_Deck.randomize()
end