ScriptHost:LoadScript("scripts/settings.lua")

local variant = Tracker.ActiveVariantUID
print("Active Variant:")
print(Tracker.ActiveVariantUID)

-- Items
require("scripts/items_import")

-- Logic
require("scripts/logic/logic_helper")
require("scripts/logic/logic_main")

-- Maps
if Tracker.ActiveVariantUID == "maps-u" then
    Tracker:AddMaps("maps/maps-u.json")  
else
    Tracker:AddMaps("maps/maps.json")  
end  

-- Layout
require("scripts/layouts_import")

-- Locations
require("scripts/locations_import")

-- Logic
require("scripts/Layoutlogic")

-- AutoTracking for Poptracker
if PopVersion and PopVersion >= "0.26.0" then
    require("scripts/autotracking")
end