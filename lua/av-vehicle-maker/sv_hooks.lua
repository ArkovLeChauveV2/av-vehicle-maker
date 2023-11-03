// don't search docs i didn't do them yet (i will not do them later)
    
hook.Add("PlayerSpawnedVehicle", "AVVEHMAKER:SetProperties", function(ply, ent)
    if !ent:IsAVVehMaker() then return end

    local vehClass = ent:GetVehicleClass()

    if AVVehMaker.Bodygroups[vehClass] then
        for k, v in pairs(AVVehMaker.Bodygroups[vehClass]) do
            ent:SetBodygroup(k, v)
        end
    end

    if AVVehMaker.Mats[vehClass] then
        ent:SetMaterial(AVVehMaker.Mats[vehClass])
    end
end)