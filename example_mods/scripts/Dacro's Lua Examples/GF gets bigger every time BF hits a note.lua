--If you came here looking for Fat GF, sorry, that's not here. Just search Google Images instead.
--This script uses Tweens (smooth transitions from one number to another) to grow GF in size every time the player hits a note.

local gfscale = 1

function goodNoteHit()
    gfscale = gfscale * 1.01
    doTweenX('makegfbigx', 'gf.scale', gfscale, 1, 'linear');
    doTweenY('makegfbigy', 'gf.scale', gfscale, 1, 'linear');
end