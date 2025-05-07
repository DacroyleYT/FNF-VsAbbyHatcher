function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'abby-dead'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOverAbby'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEndAbby'); --put in mods/music/
end