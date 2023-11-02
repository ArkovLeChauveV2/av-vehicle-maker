// don't search docs i didn't do them yet (i will not do them later)

AVVehMaker = AVVehMaker || {}

if SERVER then
    AddCSLuaFile("av-vehicle-maker/sh_meta.lua")
    AddCSLuaFile("av-vehicle-maker/sh_vehicle.lua")

    include("av-vehicle-maker/sh_meta.lua")
    include("av-vehicle-maker/sh_vehicle.lua")

    include("av-vehicle-maker/sv_hooks.lua")
else
    include("av-vehicle-maker/sh_meta.lua")
    include("av-vehicle-maker/sh_vehicle.lua")
end