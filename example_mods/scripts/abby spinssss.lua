function onUpdatePost()
    if songName == 'Master Piece' then
        doTweenAngle('YEAH', 'dad', getProperty('dad.angle') + 10, 0.01, linear)
        noteTweenAngle('NEAH1', 0, getProperty('dad.angle'), 0.01, linear)
        noteTweenAngle('NEAH2', 1, getProperty('dad.angle'), 0.01, linear)
        noteTweenAngle('NEAH3', 2, getProperty('dad.angle'), 0.01, linear)
        noteTweenAngle('NEAH4', 3, getProperty('dad.angle'), 0.01, linear)
        doTweenAngle('IEAH', 'iconP2', getProperty('dad.angle'), 0.01, linear)
        --doTweenAngle('YEAH2', 'boyfriend', getProperty('boyfriend.angle') + 10, 0.01, linear)
        --noteTweenAngle('NEAH5', 4, getProperty('boyfriend.angle'), 0.01, linear)
        --noteTweenAngle('NEAH6', 5, getProperty('boyfriend.angle'), 0.01, linear)
        --noteTweenAngle('NEAH7', 6, getProperty('boyfriend.angle'), 0.01, linear)
        --noteTweenAngle('NEAH8', 7, getProperty('boyfriend.angle'), 0.01, linear)
    end
end