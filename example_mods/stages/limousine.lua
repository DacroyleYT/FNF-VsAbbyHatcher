function onCreate()

	makeAnimatedLuaSprite('limousineRoad','limousineRoad', -1820, 880)
	addAnimationByPrefix('limousineRoad','beat','moving road',30,true)
	setScrollFactor('limousineRoad', 1.0, 1.0);
	scaleObject('limousineRoad', -1.0, 1.0)

	makeAnimatedLuaSprite('limousineRoad2','limousineRoad', 100, 880)
	addAnimationByPrefix('limousineRoad2','beat','moving road',30,true)
	setScrollFactor('limousineRoad2', 1.0, 1.0);
	scaleObject('limousineRoad2', -1.0, 1.0)

	makeLuaSprite('limousineSky', 'limousineSky', -300, -95);
	setScrollFactor('limousineSky', 0, 0);

	makeAnimatedLuaSprite('limoDrive','limoDrive', 0, 500)
	addAnimationByPrefix('limoDrive','beat','Limo stage',12,true)
	setScrollFactor('limoDrive', 1.0, 1.0);

	makeLuaSprite('car-bottom','car-bottom', -2050, 100)
	makeLuaSprite('car-top','car-top', -2050, 100)

	addLuaSprite('limousineSky', false);
	addLuaSprite('limousineRoad', false);
	addLuaSprite('limousineRoad2', false);
	addLuaSprite('limoDrive', false);
	addLuaSprite('car-bottom', true);
	addLuaSprite('car-top', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end