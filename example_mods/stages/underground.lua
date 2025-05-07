function onCreate()
	-- Look at that, Abby just went underground and Bf and Gf followed her for some strange reason
	--makeLuaSprite('underground-bg', 'underground-bg', -600, -400);
	--setScrollFactor('underground-bg', 0.9, 0.9);

	makeLuaSprite('underground-bg', 'underground-bg-rayo-edited', -575, 0);
	scaleObject('underground-bg', 0.8, 0.8)

	--makeLuaSprite('underground-fg', 'underground-fg', -600, 640);
	--setScrollFactor('underground-fg', 1.0, 1.0);
	--scaleObject('underground-fg', 1.1, 1.1);

	addLuaSprite('underground-bg', false);
	--addLuaSprite('underground-fg', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end