-- SKIP START
-- By DacroyleYT
-- Use this to fast forward through the boring start of any song!
-- DON'T STEAL! (stealing this is a very dumb idea, if you want to use this in your mod please give credit)

-- Put your songs here! This won't work if the song being played is not in the list.
-- Song Name, Section number to stop fast forwarding at
allowedSongs = {{'Other Hatcher', 7}, {'Splizzacular', 3}, {'Other Hatcher (Legacy Mix)', 7}, {'Splizzacular (Old)', 3}, {'Cant-Delay (Old)', 7}}

-- Don't mess with anything below unless you know what you're doing

local allowedToSkip = false
local songNamesMatch = false
local saveRate
local saveSpeed
local songHighScoreLol
local songHasBeenPlayed = false

--function onCreate()
--    debugPrint('THIS IS WORKING HEY') -- debug stuff
--    for i = 1, #allowedSongs do
--        debugPrint(allowedSongs[i][1] .. ' is an allowed song')
--    end
--end

function onCreatePost()
    saveRate = playbackRate
    saveSpeed = scrollSpeed
    --songHighScoreLol = runHaxeCode('Highscore.getScore("' .. songName .. '", 0)') -- ignore this
    --debugPrint(songHighScoreLol)
    --if songHighScoreLol > 0 then
    --    songHasBeenPlayed = true
    --end
end

function onSongStart()
    for i = 1, #allowedSongs do
        if songName == allowedSongs[i][1] then -- check if the song name is in allowedSongs, and if it is, make this song start skippable
            allowedToSkip = true
            songNamesMatch = true
            --debugPrint('THIS SONG IS SKIPPABLE')
        end
    end
end

function uJustPressedSpace()
    if allowedToSkip then
        allowedToSkip = false
        --debugPrint("Placeholder text lolz")
        setProperty('playbackRate', 4 * saveRate) -- This uses the song playback rate to make it feel like you're fast forwarding a cassette or something
        for i = 0, getProperty('unspawnNotes.length')-1 do
            setPropertyFromGroup('unspawnNotes', i, 'visible', false)
        end
        makeLuaSprite('ff', 'vhs/fastForward', 4, 4) -- sprite stuff
        setObjectCamera('ff', 'other')
        --callMethod('ff.set_camera', {instanceArg('camOther')})
        addLuaSprite('ff', true)
    end
end

function onUpdatePost() -- I kindly stole this code snippet from my previous mod by the name of "Vs Abby Hatcher" (it's used in song Bean Blox)
    if songNamesMatch then
        key_pressed = getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SPACE')
        if key_pressed == true then
            uJustPressedSpace()
        end
    end
end

function onSectionHit()
    for i = 1, #allowedSongs do
        --debugPrint(allowedSongs[i][2])
        if songName == allowedSongs[i][1] then
            if curSection == allowedSongs[i][2] then -- detect when it's the right time to stop or prevent fast forwarding
                allowedToSkip = false
                setProperty('playbackRate', saveRate)
                postFastForward()
            end
        end
    end
end

--below is extra stuff you don't need to worry about

function postFastForward()
    if songNamesMatch then
        loadGraphic('ff', 'vhs/play')
        runTimer('sdsd', 0.8)
    end
    for i = 0, getProperty('unspawnNotes.length')-1 do
        setPropertyFromGroup('unspawnNotes', i, 'visible', true)
    end
    for i = 0, getProperty('notes.length')-1 do
        setPropertyFromGroup('notes', i, 'visible', true)
    end
end

function onTimerCompleted(t)
    if t == 'sdsd' then
        removeLuaSprite('ff', true)
    end
end