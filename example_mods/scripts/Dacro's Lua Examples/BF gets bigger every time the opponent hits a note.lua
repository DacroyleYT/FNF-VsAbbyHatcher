--Again, this is a tween example.

local bfscale = 1

function opponentNoteHit()
    bfscale = bfscale * 1.01
    doTweenX('makeBfbigx', 'boyfriend.scale', bfscale, 1, 'linear');
    doTweenY('makeBfbigy', 'boyfriend.scale', bfscale, 1, 'linear');
end