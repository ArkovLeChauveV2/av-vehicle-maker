// don't search docs i didn't do them yet (i will not do them later)
local Vehicle = FindMetaTable("Vehicle")

function Vehicle:IsAVVehMaker()
    return string.StartsWith(self:GetVehicleClass(), "vmaker_")
end