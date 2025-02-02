instances = {}
local package = instances

-- PACKAGE IMPORT
local setmetatable = setmetatable
local getObjectFromGUID = getObjectFromGUID
local assert = assert
local error = error

-- PACKAGE BODY
local _ENV = package

-- non-local, but should be avoided
-- preferred way to use other instance is "instances.calc.call()"
guidList = {   
    vis = "f69e97", -- interface visibility manager
    luck = "86377f" -- luckTracker
}

setmetatable(package, {__index = function(t, k)
    if guidList[k] then
        local obj = getObjectFromGUID(guidList[k])
        assert(obj, "instances: can't get " .. k .. " from GUID " .. guidList[k])
        t[k] = obj
        return obj
    end
    error("instances: no preset GUID for " .. k)
end
})

local hitLuck = nil
local ammoLuck = nil

local legendString = [[
n - number of rolles
x - summ of rolled values
μ - expected sum
σ - standard deviation
k - number of deviations in difference between expected and actual
P - max probability of having at least current difference
]]

local playerLuckString = [[
n = %d
x = %d
μ = %.2f
σ = %.2f
k = |x - μ| / σ = %.2f
P = 1/k^2 = %d%%
]]
--rolled wounds(x), expected wounds(μ), standard deviation(σ), Δ=NUM * σ, probability(P)

-- Local methods declaration
local splitStats
local updateLuck
local displayLuck

function onPreprocFinished()
    resetLuck()
end

-- color, hit, ammo, stats
function addRoll(req)
    if not req.color or not req.hit or not req.stats then
        log(req, "ERROR bad request to addRoll:")
        return
    end
    
    local hitStats, ammoStats = splitStats(req.stats)
    
    --log(hitStats, "hitStats:")
    updateLuck(hitLuck[req.color], hitStats, req.hit)
    --log(ammoStats, "ammoStats:")
    updateLuck(ammoLuck[req.color], ammoStats, req.ammo and 1 or 0)
end

function updateLuck(luck, stats, value)
    luck.N = luck.N + 1
    luck.X = luck.X + value
    
    local M = 0
    for i, v in pairs(stats) do
        M = M + i*v
    end
    luck.M = luck.M + M
    
    local D = 0
    for i, v in pairs(stats) do
        D = D + v * (i - M) * (i - M)
    end
    luck.D = luck.D + D
    
    displayLuck(luck)
    
end

function displayLuck(luck)
    local standardDeviation = math.sqrt(luck.D)
    
    local k = (luck.X - luck.M) / standardDeviation
    local probability = 100
    if k == k then -- checking against NaN
        probability = math.min(1, 1/(k*k)) * 100
    end
    
    Global.UI.setAttribute("luckExpected" .. luck.type, "text", string.format("%.2f", luck.M))
    Global.UI.setAttribute("luckRolled" .. luck.type, "text", luck.X)
    Global.UI.setAttribute("luckPerRoll" .. luck.type, "text", string.format("%.2f", luck.X/luck.N))
    
    Global.UI.setAttribute("luckDeviation" .. luck.type, "text", string.format("%.2f", standardDeviation))
    Global.UI.setAttribute("luckK" .. luck.type, "text", string.format("%.2f", k))
    Global.UI.setAttribute("luckProbability" .. luck.type, "text", string.format("%.2f", probability))
    local formattedStr = string.format(playerLuckString,
    luck.N, luck.X, luck.M,
    standardDeviation, k, probability)
    
    -- number of rolls is shared value, but it should be updated only once
    if string.find(luck.type, "Wounds") then
        Global.UI.setAttribute("luckN" .. utils.getColor(luck.type), "text", luck.N)
    end
end

function splitStats(stats)
    local hitStats = {}
    local ammoStats = {[0] = 100 - stats["ammo"], [1] = stats["ammo"]}
    
    for i, v in pairs(stats) do -- copies all hits except 0 and miss
        if i~=0 and i~="miss" and i~="ammo" then
            hitStats[i] = v
        end
    end
    hitStats[0] = (stats[0] or 0) + (stats["miss"] or 0)
    
    for i in pairs(hitStats) do
        hitStats[i] = hitStats[i] / 100
    end
    for i in pairs(ammoStats) do
        ammoStats[i] = ammoStats[i] / 100
    end
    
    return hitStats, ammoStats
end

function onLuckClick(player, value, id)
    log("onLuckClick")
    instances.vis.call("toggleInterface",
    {color = player.color, id = "luckTracker"})
end

function resetLuck()
    hitLuck = {Red={}, Green={}, Blue={}, White={}}
    ammoLuck = {Red={}, Green={}, Blue={}, White={}}
    
    -- set all default values to 0 for luck tables
    for _, color in ipairs(constants.allPlayerColors) do
        utils.setTableDefaultValue(hitLuck[color], 0)
        utils.setTableDefaultValue(ammoLuck[color], 0)
        hitLuck[color].type = "Wounds"..color
        ammoLuck[color].type = "Ammo"..color
        
        Global.UI.setAttribute("luckN" .. color, "text", "")
        for _, type in ipairs({hitLuck[color].type, ammoLuck[color].type}) do
            Global.UI.setAttribute("luckExpected" .. type, "text", "")
            Global.UI.setAttribute("luckRolled" .. type, "text", "")
            Global.UI.setAttribute("luckPerRoll" .. type, "text", "")
            
            Global.UI.setAttribute("luckDeviation" .. type, "text", "")
            Global.UI.setAttribute("luckK" .. type, "text", "")
            Global.UI.setAttribute("luckProbability" .. type, "text", "")
        end
    end
end