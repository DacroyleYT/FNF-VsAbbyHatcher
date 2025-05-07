function onCreate()
    makeLuaSprite('BG1', 'discordlavvie/lavvie_bg', -1060, -370)
    doTweenX('aeah', 'BG1.scale', 0.14, 0.001, linear)
    doTweenY('beah', 'BG1.scale', 0.14, 0.001, linear)
    addLuaSprite('BG1', false)
    makeLuaSprite('BG2', 'discordlavvie/dacro_bg', -465, 75)
    doTweenX('ceah', 'BG2.scale', 0.3, 0.001, linear)
    doTweenY('deah', 'BG2.scale', 0.3, 0.001, linear)
    addLuaSprite('BG2', false)
    makeLuaSprite('FG', 'discordlavvie/chat_fg', 0, -50)
    doTweenX('yeah', 'FG.scale', 1.4, 0.001, linear)
    doTweenY('neah', 'FG.scale', 1.4, 0.001, linear)
    addLuaSprite('FG', true)
    makeLuaSprite('FG2', 'discordlavvie/lavvie_bg', -1180, -200)
    makeGraphic('FG2', 1000, 1280, '313338')
    addLuaSprite('FG2', false)
    --doTweenAlpha('eee', 'FG', 0.5, 0.8, linear) -- for debug purposes only
    setPropertyFromClass('GameOverSubstate', 'characterName', 'dacro-cord-crap'); --Character json file for the death animation
    setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'discordmessage'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'one second of silence'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'discordmessage'); --put in mods/music/
end

function onCreatePost()
    triggerEvent('Camera Follow Pos', 300, 280)
    doTweenX('movedsx', 'dad.scale', 0.3, 0.001, linear)
    doTweenY('movedsy', 'dad.scale', 0.3, 0.001, linear)
    doTweenX('movedx', 'dad', -460, 0.001, linear)
    doTweenY('movedy', 'dad', -160, 0.001, linear)
    doTweenX('movebsx', 'boyfriend.scale', 0.4, 0.001, linear)
    doTweenY('movebsy', 'boyfriend.scale', 0.4, 0.001, linear)
    doTweenX('movebx', 'boyfriend', -465, 0.001, linear)
    doTweenY('moveby', 'boyfriend', 130, 0.001, linear)
end