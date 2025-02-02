local GlobalVariablesId = '7fc89f'
GlobalVariables = getObjectFromGUID(GlobalVariablesId)

function declareButton()
    ShuffleVillageCommonsButton = {
        click_function = 'ShuffleVillageCommonsButtonClicked',
        function_owner = self,
        label = 'Shuffle Village Commons',
        tooltip = "Shuffles the Village Commons Deck",
        position = {0,0,0},
        rotation = {0,270,0},
        width = 1380,
        height = 240,
        font_size = 100
    }
end

function createButton()
    self.createButton(ShuffleVillageCommonsButton)
end

function onload()
    declareButton()

    local isDunwichSet = GlobalVariables.call('isDunwichSet')
    if isDunwichSet == true then
        self.createButton(ShuffleVillageCommonsButton)
    end

end

function ShuffleVillageCommonsButtonClicked()

    local Board_Village_Commons_Deck_Id = GlobalVariables.call('getDunwichVillageCommonsDeckId')

    local Board_Village_Commons_Deck = getObjectFromGUID(Board_Village_Commons_Deck_Id)
    Board_Village_Commons_Deck.randomize()
end