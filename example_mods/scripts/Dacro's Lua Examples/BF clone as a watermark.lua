--Here is an example of how you can use 'setObjectCamera' and 'makeAnimatedLuaSprite' to make more cool stuff!
--Camera list: game, hud, other

function onCreate()
    makeAnimatedLuaSprite('watermark', 'characters/BOYFRIEND', 0, 0)
    addAnimationByPrefix('watermark','idlebeat','BF idle dance',24,false)
    setObjectCamera('watermark', 'other') -- I'm using the 'other' camera because the 'hud' camera is the Game UI, where the arrows are. It zooms on a beat hit.
    addLuaSprite('watermark', true) --Make it overlap everything else.
    objectPlayAnimation('watermark', 'idlebeat', true)
end

function onCountdownTick(t)
    if t == 2 or t == 0 then
        objectPlayAnimation('watermark', 'idlebeat', true) -- onCountdownTick is required because countdown ticks are not counted as beat hits.
    end
end

function onBeatHit()
    objectPlayAnimation('watermark', 'idlebeat', false)
end

function onSongStart()
    objectPlayAnimation('watermark', 'idlebeat', true)
end