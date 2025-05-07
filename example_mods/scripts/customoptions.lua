--Normal Options

local freeplayDialog = true
--If enabled, dialogs for freeplay songs will play.

--Experimental Options (Options here are experimental and may not function as intended)

local rayoIcons = false
--If enabled, icons RayoMC95 drew will show up instead of icons DacroyleYT drew. Or at least that's what's supposed to happen.




--Do not mess with the stuff below unless you know what you're doing

function onCreatePost()
    if rayoIcons then
        makeLuaSprite('newiconP1', 'credits/abby', getProperty('iconP1.x'), getProperty('iconP1.y'))
        setObjectCamera('newiconP1', 'hud')
        addLuaSprite('newiconP1', true)
        setProperty('iconP1.visible', false)
    end
end

function onUpdatePost()
    if rayoIcons then
        setProperty('newiconP1.x', getProperty('iconP1.x'))
        setProperty('newiconP1.y', getProperty('iconP1.y'))
        setProperty('newiconP1.scalex', getProperty('iconP1.scalex'))
        setProperty('newiconP1.scaley', getProperty('iconP1.scaley'))
    end
end