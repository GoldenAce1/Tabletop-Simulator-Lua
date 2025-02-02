MarkerGUID = '0e9959'

local InvestigatorSetupId = '581acb'
local setupVariablesId = '2a8dee'
speedArray = {'1','2','3','4'}

SanityList = {4, 5, 6, 7}
StaminaList = {7, 6, 5, 4}

maxSanity = 0
maxStamina = 0
sanityV = 0
speedV = 1
fightV = 1
loreV = 1

traitTracker = {}
traitTracker['Sanity'] = 0
traitTracker['Stamina'] = 0
traitTracker['speedV'] = 1
traitTracker['fightV'] = 1
traitTracker['loreV'] = 1

owner = 'white'
SanityIndex = 1
StaminaIndex = 0

function onSave()
  local stats = {}

  stats.stamina = Currentstamina
  stats.sanity = Currentsanity
  stats.sanityV = sanityV
  stats.speedV = speedV
  stats.fightV = fightV
  stats.loreV = loreV

  if sanitySlider ~= nil then
    stats.sanitySliderTracker = sanitySlider.getGUID()
  end

  if speed ~= nil then
    stats.speedTracker = speed.getGUID()
  end
  if fight ~= nil then
    stats.fightTracker = fight.getGUID()
  end
  if lore ~= nil then
    stats.loreTracker = lore.getGUID()
  end


  return JSON.encode_pretty(stats)
end

function onLoad(saveState)
    DeclareButtonsLoadSliders()
    if saveState ~= "" then

        local data = JSON.decode(saveState)

        Currentstamina = data.stamina
        Currentsanity = data.sanity

        sanityV = data.sanityV
        speedV = data.speedV
        fightV = data.fightV
        loreV = data.loreV
        maxSanity = SanityList[sanityV]
        maxStamina = StaminaList[sanityV]

        if data.sanitySliderTracker ~= nil then
            sanitySlider = getObjectFromGUID(data.sanitySliderTracker)
        end
        if data.speedTracker ~= nil then
            speed = getObjectFromGUID(data.speedTracker)
        end
        if data.fightTracker ~= nil then
            fight = getObjectFromGUID(data.fightTracker)
        end
        if data.loreTracker ~= nil then
            lore = getObjectFromGUID(data.loreTracker)
        end
    end

    if speed ~= nil or fight ~= nil or lore ~= nil or sanitySlider ~= nil then
        rotateWithMath()
        loadState()

    else
        self.createButton(loadButton_param)
    end

    if getObjectFromGUID(MarkerGUID) == nil then
        local NewMarkerGuid = refreshMarkerStatus()

        if NewMarkerGuid == '' then
            print('The Figurine is not on the table')
        else
            MarkerGUID = NewMarkerGuid
        end
    end
end

function DeclareButtonsLoadSliders()
    loadButton_param = {
        function_owner = self,
        click_function = 'loadSliders',
        label = 'Load Sliders',
        position = {-0.74, 0.150000005960464, 0.55},
        tooltip = "Load Sliders and lock",
        rotation = {0, 0, 0},
        width = 360,
        height = 70,
        font_size = 60
    }

    sanityplusButton_param = {
        function_owner = self,
        click_function = 'sanityPlus',
        label = '>',
        position = {0.1, 0.200000002980232, -2},
        tooltip = "Increase Sanity",
        rotation = {0, 0, 0},
        width = 120,
        height = 120,
        font_size = 120
    }
    sanityminusButton_param = {
        function_owner = self,
        click_function = 'sanityMinus',
        label = '<',
        position = {-0.65, 0.200000002980232, -2},
        tooltip = "Decrease Sanity",
        rotation = {0, 0, 0},
        width = 120,
        height = 120,
        font_size = 120
    }
    staminaplusButton_param = {
        function_owner = self,
        click_function = 'staminaPlus',
        label = '>',
        position = {0.1, 0.200000002980232, -1.4},
        tooltip = "Increase Stamina",
        rotation = {0, 0, 0},
        width = 120,
        height = 120,
        font_size = 120
    }
    staminaminusButton_param = {
        function_owner = self,
        click_function = 'staminaMinus',
        label = '<',
        position = {-0.65, 0.200000002980232, -1.4},
        tooltip = "Decrease Stamina",
        rotation = {0, 0, 0},
        width = 120,
        height = 120,
        font_size = 120
    }
    sanitysliderplusButton_param = {
        function_owner = self,
        click_function = 'sanitySliderPlus',
        label = '>',
        position = {-2.3, 0.2, 1.52 - 0.8},
        tooltip = "Increase Speed",
        rotation = {0, 0, 0},
        width = 120,
        height = 120,
        font_size = 120
    }
    sanitysliderminusButton_param = {
        function_owner = self,
        click_function = 'sanitySliderMinus',
        label = '<',
        position = {-2.6, 0.2, 1.52 - 0.8},
        tooltip = "Decrease Speed",
        rotation = {0, 0, 0},
        width = 120,
        height = 120,
        font_size = 120
    }
    speedplusButton_param = {
        function_owner = self,
        click_function = 'speedPlus',
        label = '>',
        position = {-2.3, 0.2, 1.52},
        tooltip = "Increase Speed",
        rotation = {0, 0, 0},
        width = 120,
        height = 120,
        font_size = 120
    }
    speedminusButton_param = {
        function_owner = self,
        click_function = 'speedMinus',
        label = '<',
        position = {-2.6, 0.2, 1.52},
        tooltip = "Decrease Speed",
        rotation = {0, 0, 0},
        width = 120,
        height = 120,
        font_size = 120
    }
    fightplusButton_param = {
        function_owner = self,
        click_function = 'fightPlus',
        label = '>',
        position = {-2.3, 0.2, 1.52 + 0.8},
        tooltip = "Increase Fight",
        rotation = {0, 0, 0},
        width = 120,
        height = 120,
        font_size = 120
    }
    fightminusButton_param = {
        function_owner = self,
        click_function = 'fightMinus',
        label = '<',
        position = {-2.6, 0.2, 1.52 + 0.8},
        tooltip = "Decrease Fight",
        rotation = {0, 0, 0},
        width = 120,
        height = 120,
        font_size = 120
    }
    loreplusButton_param = {
        function_owner = self,
        click_function = 'lorePlus',
        label = '>',
        position = {-2.3, 0.2, 1.52 + 1.6},
        tooltip = "Increase Lore",
        rotation = {0, 0, 0},
        width = 120,
        height = 120,
        font_size = 120
    }
    loreminusButton_param = {
        function_owner = self,
        click_function = 'loreMinus',
        label = '<',
        position = {-2.6, 0.2, 1.52 + 1.6},
        tooltip = "Decrease Lore",
        rotation = {0, 0, 0},
        width = 120,
        height = 120,
        font_size = 120
    }
    cleanUpButton_param = {
        function_owner = self,
        click_function = 'cleanSliders',
        label = 'Clear Sliders',
        position = {0.1, 0.15, 0.55},
        tooltip = "Clear Sliders and unlock",
        rotation = {0, 0, 0},
        width = 250,
        height = 70,
        font_size = 40
    }
end

function onDropped(player_color)
    owner = player_color
end

function cleanSliders()
    self.clearButtons()
    if speed ~= nil or fight ~= nil or lore ~= nil then
        speed.destruct()
        fight.destruct()
        lore.destruct()
        sanitySlider.destruct()
    end
    self.createButton(loadButton_param)
    self.unlock()
    -- data_to_save = {}
    saved_data = ''
    Global.call('removePlayer', MarkerGUID)
    SetInvestigatorMarkerOut()
    onSave()
end

function rotateMath(xin, zin, angle)
    local angle = math.rad(-angle)
    local xout = (xin * math.cos(angle)) - (zin * math.sin(angle))
    local zout = (xin * math.sin(angle)) + (zin * math.cos(angle))
    return {xout, zout}
end

function rotateWithMath()
    local angle = self.getRotation()['y']
    --Zero Degree Values
    sanityX0 = 0.95
    sanityZ0 = 1.05
    speedX0 = 1.54
    speedZ0 = 1.85
    fightX0 = 0.95
    fightZ0 = 2.65
    loreX0 = 1.54
    loreZ0 = 3.5
    spaceX0 = -1.2
    spaceZ0 = 0

    --Angle Degree Values
    sanityX = rotateMath(sanityX0, sanityZ0, angle)[1]
    sanityZ = rotateMath(sanityX0, sanityZ0, angle)[2]
    speedX = rotateMath(speedX0, speedZ0, angle)[1]
    speedZ = rotateMath(speedX0, speedZ0, angle)[2]
    fightX = rotateMath(fightX0, fightZ0, angle)[1]
    fightZ = rotateMath(fightX0, fightZ0, angle)[2]
    loreX = rotateMath(loreX0, loreZ0, angle)[1]
    loreZ = rotateMath(loreX0, loreZ0, angle)[2]
    spaceX = rotateMath(spaceX0, spaceZ0, angle)[1]
    spaceZ = rotateMath(spaceX0, spaceZ0, angle)[2]

    sliderRotate = {0,angle,0}
end

function findBag()
    found = false
    for _, obj in ipairs(getAllObjects()) do
        if obj.getName() == 'Skill Slider' and obj.tag == 'Infinite' then
            sliderBag = obj
            found = true
        end
    end
    if found == false then print('No Skill Slider Bag found') end
    return found
end

-- When the load Sliders are pressed, all variables are set to default
function loadSliders()

    maxSanity = SanityList[1]
    maxStamina = StaminaList[1]
    Currentstamina = maxStamina
    Currentsanity = maxSanity
    sanityV = 1
    speedV = 1
    fightV = 1
    loreV = 1
    Global.call('addPlayer', MarkerGUID)
    SetInvestigatorMarker()

    rotateWithMath()
    if findBag() == true then
        self.lock()
        sanitySlider = sliderBag.takeObject({
            position = {self.getPosition()['x']+sanityX,self.getPosition()['y']+0.2,self.getPosition()['z']+sanityZ},
            rotation = sliderRotate,
        })
        speed = sliderBag.takeObject({
            position = {self.getPosition()['x']+speedX,self.getPosition()['y']+0.2,self.getPosition()['z']+speedZ},
            rotation = sliderRotate,
        })
        fight = sliderBag.takeObject({
            position = {self.getPosition()['x']+fightX,self.getPosition()['y']+0.2,self.getPosition()['z']+fightZ},
            rotation = sliderRotate,
        })
        lore = sliderBag.takeObject({
            position = {self.getPosition()['x']+loreX,self.getPosition()['y']+0.2,self.getPosition()['z']+loreZ},
            rotation = sliderRotate,
        })

        speed.lock()
        fight.lock()
        lore.lock()
        sanitySlider.lock()
        self.clearButtons()
        makeStaSanButtons()
        self.createButton(stamina_param)
        self.createButton(sanity_param)
        updateStaminaDisplay()
        updateSanityDisplay()
        self.createButton(sanityplusButton_param)
        self.createButton(sanityminusButton_param)
        self.createButton(staminaplusButton_param)
        self.createButton(staminaminusButton_param)
        self.createButton(sanitysliderplusButton_param)
        self.createButton(sanitysliderminusButton_param)
        self.createButton(speedplusButton_param)
        self.createButton(speedminusButton_param)
        self.createButton(fightplusButton_param)
        self.createButton(fightminusButton_param)
        self.createButton(loreplusButton_param)
        self.createButton(loreminusButton_param)
        self.createButton(cleanUpButton_param)
    end
end

function loadState()
    self.lock()
    -- speed.lock()
    -- fight.lock()
    -- lore.lock()
    makeStaSanButtons()
    self.createButton(stamina_param)
    self.createButton(sanity_param)
    updateStaminaDisplay()
    updateSanityDisplay()
    activateFigurine()
    self.createButton(sanityplusButton_param)
    self.createButton(sanityminusButton_param)
    self.createButton(staminaplusButton_param)
    self.createButton(staminaminusButton_param)
    self.createButton(sanitysliderplusButton_param)
    self.createButton(sanitysliderminusButton_param)
    self.createButton(speedplusButton_param)
    self.createButton(speedminusButton_param)
    self.createButton(fightplusButton_param)
    self.createButton(fightminusButton_param)
    self.createButton(loreplusButton_param)
    self.createButton(loreminusButton_param)
    self.createButton(cleanUpButton_param)
end

function makeStaSanButtons()
    sanity_param = {
        index = SanityIndex,
        function_owner = self,
        click_function = 'none',
        label = ' ',
        position = {-0.25, 0.200000002980232, -2},
        tooltip = "Current Sanity",
        rotation = {0, 0, 0},
        width = 120,
        height = 120,
        font_size = 120
    }

    stamina_param = {
        index = SanityIndex,
        function_owner = self,
        click_function = 'none',
        label = ' ',
        position = {-0.25, 0.200000002980232, -1.4},
        tooltip = "Current Stamina",
        rotation = {0, 0, 0},
        width = 120,
        height = 120,
        font_size = 120
    }
end

function none()
end

function updateStaminaDisplay()
    self.editButton({index=StaminaIndex, label = Currentstamina})
end

function updateSanityDisplay()
    self.editButton({index=SanityIndex, label = Currentsanity})
end

function sanitySliderPlus()
    if sanityV < 4 then
        sanitySlider.setPosition({sanitySlider.getPosition()['x'] + spaceX, sanitySlider.getPosition()['y'], sanitySlider.getPosition()['z']+ spaceZ})
        sanityV = sanityV + 1
    end
end

function sanitySliderMinus()
    if sanityV > 1 then
        sanitySlider.setPosition({sanitySlider.getPosition()['x'] - spaceX, sanitySlider.getPosition()['y'], sanitySlider.getPosition()['z']- spaceZ})
        sanityV = sanityV - 1
    end
end

function speedPlus()

    if speedV < 4 then
        speed.setPosition({speed.getPosition()['x'] + spaceX, speed.getPosition()['y'], speed.getPosition()['z'] + spaceZ})
        speedV = speedV + 1
    end
    changeSpeedFigurine()
end

function speedMinus()

    if speedV > 1 then
        speed.setPosition({speed.getPosition()['x'] - spaceX, speed.getPosition()['y'], speed.getPosition()['z']- spaceZ})
        speedV = speedV - 1
    end
    changeSpeedFigurine()
end

function fightPlus()
    if fightV < 4 then
        fight.setPosition({fight.getPosition()['x'] + spaceX, fight.getPosition()['y'], fight.getPosition()['z']+ spaceZ})
        fightV = fightV + 1
    end
end

function fightMinus()
    if fightV > 1 then
        fight.setPosition({fight.getPosition()['x'] - spaceX, fight.getPosition()['y'], fight.getPosition()['z']- spaceZ})
        fightV = fightV - 1
    end
end

function lorePlus()
    if loreV < 4 then
        lore.setPosition({lore.getPosition()['x'] + spaceX, lore.getPosition()['y'], lore.getPosition()['z']+ spaceZ})
        loreV = loreV + 1
    end
end

function loreMinus()
    if loreV > 1 then
        lore.setPosition({lore.getPosition()['x'] - spaceX, lore.getPosition()['y'], lore.getPosition()['z']- spaceZ})
        loreV = loreV - 1
    end
end

--sanity Plus - The new remedy for your lack of sanity. Hallucinations might be side effect!
function sanityPlus()
    if Currentsanity < maxSanity then
        Currentsanity = Currentsanity + 1
        updateSanityDisplay()
    end
end

function sanityMinus()
    if Currentsanity > 0 then
        Currentsanity = Currentsanity - 1
    else
        Currentsanity = 0
    end
    updateSanityDisplay()
end

--Stamina Plus - The new remedy for your lack of Stamina.  Perscription not required!
function staminaPlus()

    if Currentstamina < maxStamina then
        Currentstamina = Currentstamina + 1
        updateStaminaDisplay()
    end
end

function staminaMinus()
    if Currentstamina > 0 then
        Currentstamina = Currentstamina - 1
    else
        Currentstamina = 0
    end
    updateStaminaDisplay()
end

function sanMax()
    Currentsanity  = maxSanity
    updateSanityDisplay()
end

function staMax()
    Currentstamina  = maxStamina
    updateStaminaDisplay()
end

function SetInvestigatorMarker()
    local Marker = getObjectFromGUID(MarkerGUID)
    local InvestigatorSetup = getObjectFromGUID(InvestigatorSetupId)
    local StartLocation = InvestigatorSetup.call('InvestigatorStart', self.guid)
    activateFigurine()

    if Marker ~= nil then
        if StartLocation == 'Player\'s Choice' then
            broadcastToAll("Choose ".. Marker.getName() .. "'s starting place.")
        else
            if Marker.getName() == 'Kate Winthrop' then
                broadcastToAll("Remember to remove 1 Clue from " ..StartLocation ..".")
            end

            local setupVariables = getObjectFromGUID(setupVariablesId)

            local StartLocationPosition = setupVariables.call('getPlayerStartingPosition', StartLocation)
            Marker.setPosition(StartLocationPosition)
        end
    else
        broadcastToAll("Please remove the figurine from the bag.")
    end


end

function SetInvestigatorMarkerOut()
    local Marker = getObjectFromGUID(MarkerGUID)

    if Marker ~= nil then
        deactivateFigurine()
        Marker.setPosition(self.getPosition())
    end
end

function refreshMarkerStatus()

    for k, v in pairs(getAllObjects()) do
        if v.getName() == self.getName() and v.getDescription() == 'Figurine' then
            return v.getGUID()
        end
    end
    return ""
end

function activateFigurine()

    local Marker = getObjectFromGUID(MarkerGUID)
    local GUID = self.getGUID()
    Marker.call('setFigurineActive', GUID)
    local curSpeed = speedArray[speedV]

    Marker.call('createSpeedTracker',curSpeed)

end

function changeSpeedFigurine()
    local Marker = getObjectFromGUID(MarkerGUID)

    local curSpeed = speedArray[speedV]

    Marker.call('updateSpeedDisplay',curSpeed)
end

function deactivateFigurine()

    local Marker = getObjectFromGUID(MarkerGUID)
    Marker.call('setFigurineInactive')
end

function getInvestigatorMarker()
    return MarkerGUID
end