function onCreate()
	-- Fuzzly trouble? Can't delay!
--	makeLuaSprite('hotelbg', 'hotelbg', -610, -500);
	makeLuaSprite('hotelbg', 'hotelbg-rayo', -310, -500); -- Enable to use RayoMC95's BG
	setScrollFactor('hotelbg', 1, 1);

-- makeLuaSprite('hotelfg', 'hotelfg', -600, 640);
-- setScrollFactor('hotelfg', 1.0, 1.0);
-- scaleObject('hotelfg', 1.1, 1.1);

	addLuaSprite('hotelbg', false);
-- addLuaSprite('hotelfg', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end