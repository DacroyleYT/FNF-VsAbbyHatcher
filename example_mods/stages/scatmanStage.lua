function onCreate()
    makeLuaSprite('BG', 'scatman_bg', -100, -200)
    addLuaSprite('BG', false)
end

function onCreatePost()
    setProperty('gf.visible', false)
    setProperty('dad.visible', false)
    setProperty('iconP2.visible', false)
end

function onUpdatePost()
    noteTweenX('yep', 0, -200, 0.001, linear)
    noteTweenX('yep2', 1, -200, 0.001, linear)
    noteTweenX('yep3', 2, -200, 0.001, linear)
    noteTweenX('yep4', 3, -200, 0.001, linear)
end