// don't search docs i didn't do them yet (i will not do them later)

if SERVER then
    AVVehMaker.Bodygroups = {}
    AVVehMaker.Submats = {}
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

    if vehInfos.bodygroups then AVVehMaker.Bodygroups["vmaker_" .. vehInfos.class] = vehInfos.bodygroups end
    if vehInfos.submaterials then AVVehMaker.Submats["vmaker_" .. vehInfos.class] = vehInfos.submaterials end
    if vehInfos.texture then AVVehMaker.Mats["vmaker_" .. vehInfos.class] = vehInfos.texture end
end