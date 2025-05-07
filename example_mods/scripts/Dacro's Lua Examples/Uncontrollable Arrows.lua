--This is a 'triggerEvent' example that triggers Change Scroll Speed every beat hit so you don't know when the arrows are coming!

function onBeatHit()
    triggerEvent('Change Scroll Speed', math.random(0.5,3), ((60/bpm)/playbackRate)*0.9)
end