local CurrentPhase = ''

local UpkeepButton_param = {
    click_function = "UpkeepPhase",
    function_owner = self,
    label = "Upkeep",
    position = {0, 0.100000001490116, -0.15},
    scale = {0.3, 0.3, 0.3},
    width = 1000,
    height = 300,
    font_size = 200,
    tooltip = "Upkeep Phase"
}
local MovementButton_param = {
    click_function = "MovementPhase",
    function_owner = self,
    label = "Movement",
    position = {0, 0.100000001490116, 0.1},
    scale = {0.3, 0.3, 0.3},
    width = 1000,
    height = 300,
    font_size = 200,
    tooltip = "Movement Phase"
}
local AEButton_param = {
    click_function = "AHPhase",
    function_owner = self,
    label = "Arkham Encounters",
    position = {0, 0.1, 0.35},
    scale = {0.3, 0.3, 0.3},
    width = 1800,
    height = 300,
    font_size = 200,
    tooltip = "Arkham Encounters Encounters Phase"
}
local OWEncounterButton_param = {
    click_function = "OWPhase",
    function_owner = self,
    label = "Other World Encounters",
    position = {0, 0.1, 0.6},
    scale = {0.3, 0.3, 0.3},
    width = 2100,
    height = 300,
    font_size = 200,
    tooltip = "Other World Encounters Phase"
}
local MythosButton_param = {
    click_function = "MythosPhase",
    function_owner = self,
    label = "Mythos",
    position = {0, 0.1, 0.85},
    scale = {0.3, 0.3, 0.3},
    width = 1000,
    height = 300,
    font_size = 200,
    tooltip = "Mythos Phase"
}
local PHASEINDICATORButton_param = {
    input_function = "None",
    function_owner = self,
    label = "Phase Indicator",
    position = {0, 0.1, -0.5},
    scale = {0.3, 0.3, 0.3},
    width = 2100,
    height = 300,
    font_size = 200,
    tooltip = "Phase Indicator",
    alignment = 3
}

function onSave()
    local stats = {}
    stats.CurrentPhase = CurrentPhase

    return JSON.encode_pretty(stats)
end

function onLoad(saveState)

    if saveState ~= "" then
        local data = JSON.decode(saveState)
        CurrentPhase = data.CurrentPhase
    else
        CurrentPhase = ' '
    end

    self.createButton(UpkeepButton_param)
    self.createButton(MovementButton_param)
    self.createButton(AEButton_param)
    self.createButton(OWEncounterButton_param)
    self.createButton(MythosButton_param)
    self.createInput(PHASEINDICATORButton_param)
end


function UpkeepPhase()
    CurrentPhase = 'Upkeep'
    UpdatePhaseIndicator()
end
function MovementPhase()
    CurrentPhase = 'Movement'
    UpdatePhaseIndicator()
end
function AHPhase()
    CurrentPhase = 'Arkham Encounters'
    UpdatePhaseIndicator()
end
function OWPhase()
    CurrentPhase = 'Other World Encounters'
    UpdatePhaseIndicator()
end
function MythosPhase()
    CurrentPhase = 'Mythos'
    UpdatePhaseIndicator()
end

function UpdatePhaseIndicator()
    self.editInput({index=0, label = CurrentPhase})
end

function None()

end

function getCurrentPhase()
    return CurrentPhase
end