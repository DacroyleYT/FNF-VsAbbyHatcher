--The very script that makes Virtual Plane Virtual Plane

function onBeatHit()
    if curBeat == 97 then
        characterPlayAnim('dad', 'fall', true)
        doTweenX('abbymovex', 'dad', getProperty('dad.x') - 24, 0.48, 'linear')
        doTweenY('abbymovey', 'dad', getProperty('dad.y') - 5, 0.2, 'cubeOut')
        runTimer('jump', 0.27)
    end
    if curBeat == 161 then
        objectPlayAnimation('melvinVP', 'fall', true)
        doTweenX('abbymovex', 'melvinVP', getProperty('dad.x') + 5, 0.48, 'linear')
        doTweenY('abbymovey', 'melvinVP', getProperty('dad.y') - 5, 0.2, 'cubeOut')
        runTimer('jmump', 0.27)
    end
end

function onTimerCompleted(timer)
    if timer == 'jump' then
        doTweenY('abbymovey', 'dad', getProperty('dad.y') + 45, 0.27, 'cubeIn')
    elseif timer == 'jmump' then  -- very important advice: do not put "else if", instead use "elseif" or your script won't work
        doTweenY('abbymovey', 'melvinVP', getProperty('dad.y') + 45, 0.27, 'cubeIn')
    end
end