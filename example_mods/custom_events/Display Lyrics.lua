--LYRICS EVENT by DacroyleYT (not fully by me tho)
--Inspired by the Twinsomnia Boy & Girl mod and Scratchin' Melodii
--youtube.com/@DacroyleYT
--If you steal this and don't give credit then you're dumb :P

local lyric_color = 'ffffff'
local sing_color = 'ffffff'
local bfsingcolor = 'ffffff'
local dadsingcolor = 'ffffff'

--make texts before they even start existing
function onCreate()
    makeLuaText('lyricthing', '', 1280, screenWidth/2, 500)
    setTextSize('lyricthing', 36)
    setTextAlignment('lyricthing', 'left')
    setTextColor('lyricthing', 'ffffff')
    setObjectCamera('lyricthing', 'other')
    addLuaText('lyricthing')
    makeLuaText('singthing', '', 1280, screenWidth/2, 500)
    makeLuaText('singthing', '', 1280, screenWidth/2, 500)
    setTextSize('singthing', 36)
    setTextAlignment('singthing', 'left')
    setTextColor('singthing', 'ffffff')
    setObjectCamera('singthing', 'other')
    addLuaText('singthing')
end

function onUpdatePost()
    setProperty('singthing.x', getProperty('lyricthing.x'))
    setTextColor('singthing', sing_color)
end

--the main stuff right here
function onEvent(event, value1, value2)
    if event == 'Display Lyrics' then
        setProperty('lyricthing.x', screenWidth/2-(#value1*10.25))
        setTextString('lyricthing', value1)
        setTextString('singthing', value2)
    end
end

--set text color for who sings
function goodNoteHit(id, noteData, noteType, isSustainNote)
    if noteType == '' then
        sing_color = bfsingcolor
    end
end

function noteMiss()
    sing_color = 'ffffff'
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
    if noteType == '' then
        sing_color = dadsingcolor
    end
end

--other stuff
function onBeatHit()
    if songName == 'Grease Poppin' and curBeat == 144 then
        makeLuaText('breather', 'Take a breather...', 1280, 0, screenHeight/2)
        setTextSize('breather', 72)
        setTextAlignment('breather', 'center')
        setObjectCamera('breather', 'other')
        addLuaText('breather')
        setProperty('breather.alpha', 0)
        doTweenAlpha('bth', 'breather', 1, 1, linear)
        doTweenAlpha('hud_disappear1', 'camHUD', 0, 0.5, linear)
    end
    if songName == 'Grease Poppin' and curBeat == 174 then
        doTweenAlpha('bth', 'breather', 0, 1, linear)
        doTweenAlpha('hud_disappear', 'camHUD', 1, 0.5, linear)
    end
    if songName == 'Nami-WAV' and curBeat == 52 then
        doTweenAlpha('hud_disappear1', 'camHUD', 0, 0.5, linear)
    end
    if songName == 'Nami-WAV' and curBeat == 66 then
        doTweenAlpha('hud_disappear', 'camHUD', 1, 0.5, linear)
    end
end