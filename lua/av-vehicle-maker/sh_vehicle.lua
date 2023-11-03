// don't search docs i didn't do them yet (i will not do them later)

if SERVER then
    AVVehMaker.Bodygroups = {}
    AVVehMaker.Mats = {}
end

function AVVehMaker:AddVehicle(vehInfos)
    list.Set("Vehicles", "vmaker_" .. vehInfos.class, {
        Name = vehInfos.name,
        Model = vehInfos.model,
        Class = vehInfos.baseClass,
        Category = vehInfos.category,
    
        Author = vehInfos.author,
        Information = vehInfos.informations,
    
        KeyValues = vehInfos.keyvalues,
    })

    if SERVER && vehInfos.bodygroups then AVVehMaker.Bodygroups["vmaker_" .. vehInfos.class] = vehInfos.bodygroups end
    if SERVER && vehInfos.texture then AVVehMaker.Mats["vmaker_" .. vehInfos.class] = vehInfos.texture end
end