--This stage was inspired by a YouTube video that can be seen here: https://www.youtube.com/watch?v=-0aXyJ2Xn-E&list=WL
--The Bandicam watermark used here was ripped by JonahCampbellRocks04 on DeviantArt. Huge W to him

local strumOffset = 41

function onCreate()
    makeLuaSprite('white', '', 0, 0)
    makeGraphic('white', 1280, 720, 'FFFFFF')
    makeAnimatedLuaSprite('bfInRecording', 'characters/bfChristmas', 800, 120)
    addAnimationByPrefix('bfInRecording', 'idleDance', 'BF idle dance', 24, false)
    makeLuaSprite('bg', 'week5mod/bg', 0, 0)
    setScrollFactor('bg', 0)
    setScrollFactor('white', 0)
    setScrollFactor('bfInRecording', 1)
    setObjectCamera('bg', 'hud')
    addLuaSprite('white', false)
    addLuaSprite('bfInRecording', false)
    addLuaSprite('bg', false)
    makeLuaText('notepad', 'Score: 0\nMisses: 0\nRating: ?', 300, 983, 463)
    setTextAlignment('notepad', 'left')
    setTextBorder('notepad', 0, 'FFFFFF')
    setTextColor('notepad', '000000')
    setTextFont('notepad', 'consola.ttf')
    addLuaText('notepad')
    setPropertyFromClass('GameOverSubstate', 'characterName', 'abby-dead'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOverAbby'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEndAbby'); --put in mods/music/
    setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'week5modLose'); --put in mods/sounds/
end

function onSongStart()
    objectPlayAnimation('bfInRecording', 'idleDance', false)
end

function onCreatePost()
    --triggerEvent('Camera Follow Pos', 640, 360)
    setObjectCamera('boyfriend', 'hud')
    setObjectCamera('dad', 'hud')
    setProperty('boyfriend.visible', false)
    setProperty('dad.visible', false)
    setProperty('scoreTxt.visible', false)
    setProperty('healthBarBG.y', 530)
    setProperty('healthBar.y', 530)
    setProperty('iconP1.y', 455)
    setProperty('iconP2.y', 455)
    setObjectOrder('iconP1', 0)
    setObjectOrder('iconP2', 0)
    setObjectOrder('healthBar', 0)
    setObjectOrder('healthBarBG', 0)
    setPropertyFromGroup('strumLineNotes', 0, 'x', 159 + strumOffset)
    setPropertyFromGroup('strumLineNotes', 0, 'y', 87 + strumOffset)
    setPropertyFromGroup('strumLineNotes', 1, 'x', 265 + strumOffset)
    setPropertyFromGroup('strumLineNotes', 1, 'y', 87 + strumOffset)
    setPropertyFromGroup('strumLineNotes', 2, 'x', 371 + strumOffset)
    setPropertyFromGroup('strumLineNotes', 2, 'y', 87 + strumOffset)
    setPropertyFromGroup('strumLineNotes', 3, 'x', 477 + strumOffset)
    setPropertyFromGroup('strumLineNotes', 3, 'y', 87 + strumOffset)
    setPropertyFromGroup('strumLineNotes', 4, 'x', 688 + strumOffset)
    setPropertyFromGroup('strumLineNotes', 4, 'y', 86 + strumOffset)
    setPropertyFromGroup('strumLineNotes', 5, 'x', 794 + strumOffset)
    setPropertyFromGroup('strumLineNotes', 5, 'y', 86 + strumOffset)
    setPropertyFromGroup('strumLineNotes', 6, 'x', 900 + strumOffset)
    setPropertyFromGroup('strumLineNotes', 6, 'y', 86 + strumOffset)
    setPropertyFromGroup('strumLineNotes', 7, 'x', 1006 + strumOffset)
    setPropertyFromGroup('strumLineNotes', 7, 'y', 86 + strumOffset)
    setPropertyFromGroup('strumLineNotes', 0, 'scale.x', 1)
    setPropertyFromGroup('strumLineNotes', 1, 'scale.x', 1)
    setPropertyFromGroup('strumLineNotes', 2, 'scale.x', 1)
    setPropertyFromGroup('strumLineNotes', 3, 'scale.x', 1)
    setPropertyFromGroup('strumLineNotes', 4, 'scale.x', 1)
    setPropertyFromGroup('strumLineNotes', 5, 'scale.x', 1)
    setPropertyFromGroup('strumLineNotes', 6, 'scale.x', 1)
    setPropertyFromGroup('strumLineNotes', 7, 'scale.x', 1)
    setPropertyFromGroup('strumLineNotes', 0, 'scale.y', 1)
    setPropertyFromGroup('strumLineNotes', 1, 'scale.y', 1)
    setPropertyFromGroup('strumLineNotes', 2, 'scale.y', 1)
    setPropertyFromGroup('strumLineNotes', 3, 'scale.y', 1)
    setPropertyFromGroup('strumLineNotes', 4, 'scale.y', 1)
    setPropertyFromGroup('strumLineNotes', 5, 'scale.y', 1)
    setPropertyFromGroup('strumLineNotes', 6, 'scale.y', 1)
    setPropertyFromGroup('strumLineNotes', 7, 'scale.y', 1)
    setPropertyFromGroup('strumLineNotes', 0, 'antialiasing', false)
    setPropertyFromGroup('strumLineNotes', 1, 'antialiasing', false)
    setPropertyFromGroup('strumLineNotes', 2, 'antialiasing', false)
    setPropertyFromGroup('strumLineNotes', 3, 'antialiasing', false)
    setPropertyFromGroup('strumLineNotes', 4, 'antialiasing', false)
    setPropertyFromGroup('strumLineNotes', 5, 'antialiasing', false)
    setPropertyFromGroup('strumLineNotes', 6, 'antialiasing', false)
    setPropertyFromGroup('strumLineNotes', 7, 'antialiasing', false)
    for i = 0,getProperty('notes.length')-1 do
        setPropertyFromGroup('notes', i, 'scale.x', 1)
        setPropertyFromGroup('notes', i, 'scale.y', 1)
        setPropertyFromGroup('notes', i, 'antialiasing', false)
    end
    for i = 0,getProperty('unspawnNotes.length')-1 do
        setPropertyFromGroup('unspawnNotes', i, 'scale.x', 1)
        setPropertyFromGroup('unspawnNotes', i, 'scale.y', 1)
        setPropertyFromGroup('unspawnNotes', i, 'antialiasing', false) -- again, huge W for KriHay on GameBanana for helping solve this problem
    end
end

function onBeatHit()
    objectPlayAnimation('bfInRecording', 'idleDance', false)
end

function onUpdate()
    if botPlay then
        setProperty('botplayTxt.visible', false)
        setTextString('notepad', 'Botplay está habilitado.')
    else
        if not (ratingName == '?') then
            setTextString('notepad', 'Score: ' .. score .. '\nMisses: ' .. misses .. '\nRating: ' .. ratingName .. ' (' .. roundToDp(rating * 100, 2) .. '%)')
        end
    end
end

function roundToDp(number, decimals)
    local power = 10^decimals
    return math.floor(number * power) / power
end

function onGameOverStart()
    makeLuaSprite('lossScreen', 'week5mod/preCrash', 0, 0)
    setObjectCamera('lossScreen', 'hud')
    addLuaSprite('lossScreen', true)
    setProperty('boyfriend.visible', false)
    triggerEvent('Camera Follow Pos', 640, 360)
    runTimer('bsod', 0.7)
end

function onTimerCompleted(t)
    if t == 'bsod' then
        removeLuaSprite('lossScreen', true)
        runTimer('pointone', 0.1)
    end
    if t == 'pointone' then
        makeLuaSprite('bsod', 'week5mod/bsod', 322, 110)
        makeLuaSprite('bluebg', '', -300, -300)
        makeGraphic('bluebg', 1920, 1080, '1070AA')
        setScrollFactor('bluebg', 0)
        setScrollFactor('bsod', 0)
        addLuaSprite('bluebg', true)
        addLuaSprite('bsod', true)
    end
end