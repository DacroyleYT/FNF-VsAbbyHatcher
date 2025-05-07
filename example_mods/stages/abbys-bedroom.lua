function onCreate()
	-- Melvin has a cat. The cat goes mewo
	makeLuaSprite('BG-under', 'bedroom/day', -675, -300);
	scaleObject('BG-under', 1.5, 1.5)
	setScrollFactor('BG-under', 0.9, 1)
	makeLuaSprite('BG', 'bedroom/bedroom', -700, -300);
	scaleObject('BG', 1.5, 1.5)
	addLuaSprite('BG-under', false);
	addLuaSprite('BG', false);
	if songName == "Melvin" then
		loadGraphic('BG-under', 'bedroom/night')
		makeLuaSprite('FG', 'bedroom/night-overlay', -700, -300);
		scaleObject('FG', 1.5, 1.5)
		addLuaSprite('FG', true);
	end
end