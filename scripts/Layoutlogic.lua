

function updateLayout()
    print("Call updateLayout")
    local style = Tracker:FindObjectForCode("PEra")
    local layoutString = "layouts/items_districts"
    if style.CurrentStage == 1 then
        layoutString = layoutString .. "_era"
    end
    if style.CurrentStage > 1 then
        layoutString = "layouts/items"
    end
    Tracker:AddLayouts(layoutString .. ".json")
end
ScriptHost:AddWatchForCode("layouts", "PEra", updateLayout)