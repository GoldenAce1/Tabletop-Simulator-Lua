local lastActiveInvForWhite = nil -- stores color only

-- these two tables store all changes to visibility and activity
-- before they are applied to xml in one go
local visibilityCached = {}
setmetatable(visibilityCached, { __index = function(t, id)
  return Global.UI.getAttribute(id, "visibility") end})

local activityCached = {}
setmetatable(activityCached, { __index = function(t, id)
  return Global.UI.getAttribute(id, "active") end})

local interfaceGroups = {}

local groupInterfaces = {
  rightBorder = {"luckTracker"}
}

local sharedUI = {
  lvlupMenu = "Red|Green|Blue|White"
}

-- Local methods declaration
local interfaceRequestCorrect
local hideOtherInterfacesInGroup
local changeVisibility
local handleSpecialCases
local cachedShow
local cachedHide
local commitVisibility

function onLoad()
  -- create inverfaceGroups from groupInterfaces
  for group, interfaces in pairs(groupInterfaces) do
    for _, inf in ipairs(interfaces) do
      if interfaceGroups[inf] then
        table.insert(interfaceGroups[inf], group)
      else
        interfaceGroups[inf] = {group}
      end
    end
  end
end

function interfaceRequestCorrect(req)
  return req and req.id and req.color
end


function hideOtherInterfacesInGroup(id, color)
  local groupsToHide = interfaceGroups[id]

  if groupsToHide then
    for _, group in ipairs(groupsToHide) do
      for _, inf in ipairs(groupInterfaces[group]) do
        if inf ~= id then
          if sharedUI[inf] then
            for clr in string.gmatch(sharedUI[inf], "[^|]+") do
              cachedHide(inf, clr)
            end
          else
            cachedHide(inf, color)
          end
        end
      end
    end
  end
end

-- handle with care. Ciruclar interface dependencies will result in infinite recursion
function handleSpecialCases(id, color, mode)
  local fieldName, fieldColor = utils.stripXmlFieldColor(id)

  if fieldName == "inventoryPanel" then
    -- update inventory control buttons visibility

    if color == "White" then
      if mode == "add" then
        -- show panel
        cachedShow("inventoryModePanel"..color, color)

        -- show proper "giveToColorItem" buttons
        for _, clr in ipairs(constants.allMarineColors) do
          if clr == fieldColor then
            lastActiveInvForWhite = clr
            cachedHide("giveTo"..clr.."Item"..color, color)
          else
            cachedShow("giveTo"..clr.."Item"..color, color)
          end
        end
      else
        -- hide full panel
        cachedHide("inventoryModePanel"..color, color)
      end

    else
      -- marine players
      if fieldColor == color and mode == "add" then
        cachedShow("inventoryModePanel"..color, color)
      else
        cachedHide("inventoryModePanel"..color, color)
      end
    end

  elseif fieldName == "calculator" and mode == "rem" then
    -- hide stats when hiding calculator
    cachedHide("stats", color, "rem")

  elseif fieldName == "lvlupMenu" and mode == "add" then
    -- show ready tick for seated players only
    -- since ticks are always shown to all players, toggle "active" directly
    -- without touching "visibility"
    for _, clr in ipairs(constants.allPlayerColors) do
      Global.UI.setAttribute("readyTick"..clr, "active", tostring(Player[clr].seated))
    end
  end
end

function isActive(id)
  return string.lower(activityCached[id] or "true") == "true"
end

function isVisible(req)
  local vis = visibilityCached[req.id] or ""
  return isActive(req.id) and (vis == "" or string.find(vis, req.color, 1, true))
end

function showInterface(req)
  assert(interfaceRequestCorrect(req), "showInterface: wrong request")
  req.color = sharedUI[req.id] or req.color
  for color in string.gmatch(req.color, "[^|]+") do
    cachedShow(req.id, color)
  end

  commitVisibility()
end

function hideInterface(req)
  assert(interfaceRequestCorrect(req), "hideInterface: wrong request")
  req.color = sharedUI[req.id] or req.color
  for color in string.gmatch(req.color, "[^|]+") do
    cachedHide(req.id, color)
  end

  commitVisibility()
end

function toggleInterface(req)
  log("here")
  assert(interfaceRequestCorrect(req), "toggleInterface: wrong request")
  req.color = sharedUI[req.id] or req.color
  for color in string.gmatch(req.color, "[^|]+") do
    if isVisible({id=req.id, color=color}) then
      cachedHide(req.id, color)
    else
      cachedShow(req.id, color)
    end
  end

  commitVisibility()
end

function cachedShow(id, color)
  if isVisible({id = id, color = color}) then
    return
  end

  hideOtherInterfacesInGroup(id, color)
  handleSpecialCases(id, color, "add")
  changeVisibility(id, color, "add")
end

function cachedHide(id, color)
  if not isVisible({id = id, color = color}) then
    return
  end

  handleSpecialCases(id, color, "rem")
  changeVisibility(id, color, "rem")
end

function commitVisibility()
  local textColors = {}
  for id, vis in pairs(visibilityCached) do
    textColors[id] = Global.UI.getAttribute(id, "textColor")
    Global.UI.setAttribute(id, "visibility", vis)
  end

  for id, act in pairs(activityCached) do
    if not textColors[id] then
      textColors[id] = Global.UI.getAttribute(id, "textColor")
    end
    Global.UI.setAttribute(id, "active", act)
  end

  for id, clr in pairs(textColors) do
    -- changes to visibility clears text color for some reason
    Global.UI.setAttribute(id, "textColor", clr)
  end
end

-- mode is add/rem/tgl
function changeVisibility(id, color, mode)
  local visBase = visibilityCached[id] or ""

  local vis = visBase
  if not string.find(vis, color, 1, true) then
    if mode == "add" then
      vis = (vis) .. "|" .. color
    end
  else
    if mode == "rem" then
      vis = string.gsub(vis, color, "")
    end
  end

  vis=utils.fixPipes(vis)
  --log(
  --  (visBase or "") .. " => " .. (vis),
  --  mode .. " visibility of " .. id .. " for " .. color .. ":")

  if vis~=visBase then
    visibilityCached[id] = utils.fixPipes(vis)
  end

  local act = isActive(id)
  if not act and vis and vis ~= "" then
    activityCached[id] = "true"
  elseif act and (not vis or vis == "") then
    activityCached[id] = "false"
  end
end


function getActiveInventoryForWhite()
  if isVisible({id = "inventoryPanel" .. lastActiveInvForWhite, color = "White"}) then
    return lastActiveInvForWhite
  else
    log("ERROR no active inventory for white player at this time")
    return nil
  end
end