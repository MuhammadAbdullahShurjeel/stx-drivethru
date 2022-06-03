local inDriveThru = false
local inDriveThruu = false
local chhh = 9990


local dth = PolyZone:Create({
    vector2(-1205.5720, -895.9471),
    vector2(-1203.2925, -899.7048),
    vector2(-1207.1743, -902.5035),
    vector2(-1209.8108, -898.5045),
  }, {
    name="dth",
    minZ = 08.0,
    maxZ = 20.0,
    debugPoly = false
})

local dthh = PolyZone:Create({
    vector2(-1193.3513, -906.4144),
    vector2(-1194.9451, -906.0608),
    vector2(-1196.1532, -903.8282),
    vector2(-1193.0947, -901.8079),
    vector2(-1190.3026, -905.6726),
  }, {
    name="dthh",
    minZ = 08.0,
    maxZ = 20.0,
    debugPoly = true
})

dth:onPlayerInOut(function(isPointInside)
    if isPointInside then
        inDriveThru = true
        --if inDriveThru == true then
            exports["pma-voice"]:setRadioChannel(chhh)
            --ExecuteCommand("e box")
            exports["pma-voice"]:setVoiceProperty("radioEnabled", true)
        --end
    else
        inDriveThru = false
        exports["pma-voice"]:setRadioChannel(0)
        --ExecuteCommand("e c")
        exports["pma-voice"]:setVoiceProperty("radioEnabled", false)
    end
end)

dthh:onPlayerInOut(function(isPointInside)
    if isPointInside then
        inDriveThruu = true
        --if inDriveThru == true then
            exports["pma-voice"]:setRadioChannel(chhh)
            --ExecuteCommand("e box")
            exports["pma-voice"]:setVoiceProperty("radioEnabled", true)
        --end
    else
        inDriveThruu = false
        exports["pma-voice"]:setRadioChannel(0)
        --ExecuteCommand("e c")
        exports["pma-voice"]:setVoiceProperty("radioEnabled", false)
    end
end)


