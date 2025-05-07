function onCreate()
	-- Fuzzly trouble? Can't delay!
	makeLuaSprite('hotelbg', 'hotelbg-glittergooed', -610, -500);
	setScrollFactor('hotelbg', 1, 1);

-- makeLuaSprite('hotelfg', 'hotelfg', -600, 640);
-- setScrollFactor('hotelfg', 1.0, 1.0);
-- scaleObject('hotelfg', 1.1, 1.1);

	addLuaSprite('hotelbg', false);
-- addLuaSprite('hotelfg', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end