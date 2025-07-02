

function updateLayout()
    local style = Tracker:FindObjectForCode("PEra")
    local layoutString = "layouts/items"
    if style.CurrentStage ~= 0 then
        layoutString = layoutString .. "_districts"
    end
    if style.CurrentStage > 1 then
        layoutString = layoutString .. "_era"
    end
    Tracker:AddLayouts(layoutString .. ".json")
end
ScriptHost:AddWatchForCode("layouts", "PEra", updateLayout)