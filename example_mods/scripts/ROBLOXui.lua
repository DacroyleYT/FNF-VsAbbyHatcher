local RobloxUIenabled = false
local playerListEnabled = true
local tweenIsPlaying = false
local key_pressed
local bfhealthlol
local opponenthealthlol
local pausedprob = false
local saveRate
local saveHealth

local songsToPutThisUIon = {'Bean Blox'} -- put songs you want to use this UI for here, example: {'Bean Blox', 'Sunny', 'Cant-Delay', 'Canoe'}

function onCreate()
    for i = 1, #songsToPutThisUIon do -- look at every song listed in songsToPutThisUIon
        if songName == songsToPutThisUIon[i] then -- if song name matches song listed
            RobloxUIenabled = true -- then enable Roblox UI
        end
    end
    if RobloxUIenabled then -- if Roblox UI is enabled
        setProperty('introSoundsSuffix','-roblox') -- then RANDOM BULLCRAP GO!!!
        makeLuaSprite('bloodbutnotblood', 'roblox/healthLoss', 0, 0)
        makeLuaSprite('uithing', 'roblox/RobloxUI', 0, 0)
        makeLuaSprite('tabthing', 'roblox/RobloxPlayerList', 956, 40)
        makeLuaSprite('pauseScreen', 'roblox/pauseMenu', 218, -670)
        makeLuaSprite('leaveScreen', 'roblox/pauseLeave', 218, 66)
        makeLuaSprite('resetScreen', 'roblox/pauseReset', 218, 66)
        setObjectCamera('uithing', 'other')
        setObjectCamera('tabthing', 'other')
        setObjectCamera('bloodbutnotblood', 'other')
        addLuaSprite('bloodbutnotblood', true)
        addLuaSprite('uithing', true)
        addLuaSprite('tabthing', true)
        makeLuaText('bababooey', 'N/A', 30, 1214, 72)
        setObjectCamera('bababooey', 'other')
        setTextBorder('bababooey', 0, 0)
        setTextFont('bababooey', 'sourcesans.ttf')
        setTextAlignment('bababooey', 'center')
        addLuaText('bababooey')
        makeLuaText('bababooey2', 'N/A', 30, 1214, 112)
        setObjectCamera('bababooey2', 'other')
        setTextBorder('bababooey2', 0, 0)
        setTextFont('bababooey2', 'sourcesans.ttf')
        setTextAlignment('bababooey2', 'center')
        addLuaText('bababooey2')
        makeLuaText('scoreTextNew', 'Score: 0\nMisses: 0\nRating: ?', 400, 10, 630)
        setObjectCamera('scoreTextNew', 'other')
        setTextAlignment('scoreTextNew', 'left')
        setTextFont('scoreTextNew', 'sourcesans.ttf')
        setTextSize('scoreTextNew', 20)
        addLuaText('scoreTextNew')
        setProperty('leaveScreen.visible', false)
        setProperty('resetScreen.visible', false)
        setObjectCamera('pauseScreen', 'other')
        setObjectCamera('leaveScreen', 'other')
        setObjectCamera('resetScreen', 'other')
        addLuaSprite('pauseScreen', true)
        addLuaSprite('leaveScreen', true)
        addLuaSprite('resetScreen', true)
    end
end

function onPause() -- replace fnf pause screen with this cool roblox pause screen lol
    if RobloxUIenabled then
        if pausedprob then
            pausedprob = false
            doTweenY('ok', 'pauseScreen', -670, 0.4, 'cubeInOut')
            setProperty('playbackRate', saveRate)
        else
            pausedprob = true
            saveHealth = health
            setProperty('pauseScreen.visible', true)
            doTweenY('ok', 'pauseScreen', 66, 0.4, 'cubeInOut')
            setProperty('playbackRate', 0)
        end
        return Function_Stop
    end
end

function checkTheThing()
    if pausedprob then
        setProperty('reset', false)
        setProperty('health', saveHealth)
        debugPrint('RESET = false!!!!')
    else
        return Function_Continue
    end
end

function onGameOver() -- prevent game over if R is pressed on the pause screen (at least that's what's supposed to happen)
    if RobloxUIenabled then
        checkTheThing()
        return Function_Stop
    end
    return Function_Continue
end

function onCreatePost()
    saveRate = playbackRate
    if RobloxUIenabled then
        --doTweenAlpha('yesyesyes', 'bloodbutnotblood', 0, 0.001, 'linear')
        setProperty('bloodbutnotblood.alpha', 0)
        setProperty('healthBar.visible', false)
        setProperty('healthBarBG.visible', false)
        setProperty('iconP1.visible', false)
        setProperty('iconP2.visible', false)
        setProperty('scoreTxt.visible', false)
    end
end
function onUpdatePost()
    if RobloxUIenabled then
        tabPressed = getPropertyFromClass('flixel.FlxG', 'keys.justPressed.TAB')
        leavePressed = getPropertyFromClass('flixel.FlxG', 'keys.justPressed.L')
        resetPressed = getPropertyFromClass('flixel.FlxG', 'keys.justPressed.R')
        if tabPressed then
            --playSound('intro3-roblox', 1, 'yes')
            keyHasBeenPressed(playerListEnabled)
        end
    end
end

function onUpdate()
    if RobloxUIenabled then
        bfhealthlol = math.floor(getProperty('health') * 50 + 0.5)
        opponenthealthlol = math.floor((100 - getProperty('health') * 50) + 0.5)
        setTextString('bababooey', bfhealthlol)
        setTextString('bababooey2', opponenthealthlol)
        setTextString('scoreTextNew', 'Score: ' .. score .. '\nMisses: ' .. misses .. '\nRating: ' .. ratingName .. ' (' .. roundToDp(rating * 100, 2) .. '%)')
    end
end

function roundToDp(number, decimals) -- copilot gave me this info so I put it to use
    local power = 10^decimals
    return math.floor(number * power) / power
end

function onTimerCompleted(thetimer)
    if thetimer == 'ohyes' then
        if tweenIsPlaying == true then
            tweenIsPlaying = false
        end
    end
end

function keyHasBeenPressed(bool)
    if not tweenIsPlaying then
        if bool then
            tweenIsPlaying = true
            doTweenX('ohyea', 'tabthing', 1280, 0.2, 'cubeOut')
            doTweenX('ohyea2', 'bababooey', 1538, 0.2, 'cubeOut')
            doTweenX('ohyea3', 'bababooey2', 1538, 0.2, 'cubeOut')
            playerListEnabled = false
            runTimer('ohyes', 0.2)
        else
            tweenIsPlaying = true
            doTweenX('ohyea', 'tabthing', 956, 0.2, 'cubeOut')
            doTweenX('ohyea2', 'bababooey', 1214, 0.2, 'cubeOut')
            doTweenX('ohyea3', 'bababooey2', 1214, 0.2, 'cubeOut')
            playerListEnabled = true
            runTimer('ohyes', 0.2)
        end
    end
end

function noteMiss()
    if RobloxUIenabled then
        setProperty('bloodbutnotblood.alpha', 0.85)
        doTweenAlpha('tomakethiswork', 'bloodbutnotblood', 0, 0.2, 'linear')
    end
end