local allowCountdown = false
local colorList = {'FF2700', 'FF9000', 'FFDD00', '00FF00', '00DDFF', '0027FF', '800080', 'FF27FF'}
local ColorIndex = 1

function onCreate()
    math.randomseed(os.time())
    ColorIndex = math.random(1, 8)
    --debugPrint(getProperty('boyfriend.y'))
end

function onStartCountdown()
    if not allowCountdown and not inChartEditor and not seenCutscene then
        runTimer('yes', 0.1)
        return Function_Stop
    end
    return Function_Continue
end

function onTimerCompleted(dfg)
    if dfg == 'yes' then
        allowCountdown = true
        runTimer('yes2', 1.5/playbackRate)
    end
    if dfg == 'yes2' then
        startCountdown()
    end
end

function onBeatHit()
    if curBeat >= 48 and curBeat < 80 then
        doTweenColor('colorthing', 'BG', colorList[ColorIndex], 0.001, 'linear')
        --doTweenColor('boyfriend', 'boyfriend', colorList[ColorIndex], 0.001, linear) -- for debug puropses
        ColorIndex = math.random(1, 8)
        doTweenY('yesssareyouready', 'boyfriend', 50, 0.15/playbackRate, 'cubeOut')
    end
    if curBeat == 80 then
        doTweenColor('colorthing', 'BG', 'FFFFFF', 0.001, 'linear')
    end
end

function onTweenCompleted(E)
    if E == 'yesssareyouready' then
        doTweenY('yesssareyouready2', 'boyfriend', 100, 0.15/playbackRate, 'cubeIn')
    end
end

function onEvent(event, value1, value2)
    if event == 'Play Audio' and value1 == 'scatman_endsound' then
        makeLuaSprite('foregroundthing', 'scatman_bg', -100, -200)
        setProperty('foregroundthing.color', '000000')
        setProperty('foregroundthing.alpha', 0)
        addLuaSprite('foregroundthing', true)
        doTweenAlpha('FADE', 'foregroundthing', 1, 0.2, 'linear')
    end
end