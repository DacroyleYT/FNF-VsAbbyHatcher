--PLAY AUDIO EVENT BY DACROYLEYT
--I made this for VAH song "Guess", where at the first part Abby whispers "It's peeled grapes" (Reference to the YT vid "What's squishy in the box?").
--It seems to fit more for VAH song "Virtual Plane" where the Narrator says "OK. Are you ready to play?" and so on.

function onEvent(event, value1, value2)
	if event == 'Play Audio' then
		playSound(value1, value2, 'sound') -- SOUND SHOULD BE IN MODS/SOUNDS (Or assets/preload/sounds if you're making a source mod lol)
		setSoundPlaybackRate('sound', playbackRate)
	end
end

function onPause()
	pauseSound('sound') -- Prevent sound from continuing to play when pausing the game
end

function onResume()
	resumeSound('sound') -- Make sound play again once resumed
end