--Script made by ADA_Funni, fixed by DacroyleYT

function onEvent(name, value1, value2)
    if name == 'Set Cam Zoom' then
        setProperty('defaultCamZoom', value1)
        debugPrint(value2)
    end
end