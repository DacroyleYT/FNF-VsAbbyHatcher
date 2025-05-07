--This script removes BF. That's all it does.
function onCreatePost()
    setProperty('boyfriend.visible', false)
end

function goodNoteHit()
    setSoundVolume('songs/SONG.name/SONG.name.._Voices', -999)
end