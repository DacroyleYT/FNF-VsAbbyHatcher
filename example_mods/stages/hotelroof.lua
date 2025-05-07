function onCreate()
	-- Fun fact: Sunny has nothing to do with Abby Hatcher, she comes from Sunny Day! I only added her for fun
	makeLuaSprite('hotelroofbg', 'hotelroofbg', -600, -400);
	setScrollFactor('hotelroofbg', 0.8, 0.8);

--	makeLuaSprite('salonroofbuildings', 'salonroofbuildings', -1320, -400);
--	setScrollFactor('salonroofbuildings', 0.9, 0.9);
--	scaleObject('salonroofbuildings', -1.0, 1.0);

--	if not lowQuality then
--		makeAnimatedLuaSprite('salonroofbuildingwindows','salonroofbuildingwindows',-1960,-400) -- These are all disabled for now, for some reason they disappear :/
--		addAnimationByPrefix('salonroofbuildingwindows','dance','windows flashin',12,true)
--		objectPlayAnimation('salonroofbuildingwindows','dance',false)
--		setScrollFactor('salonroofbuildingwindows', 0.9, 0.9);
--		scaleObject('salonroofbuildingwindows', -1.0, 1.0);
--		end

	makeLuaSprite('hotelrooffg', 'hotelrooffg', -600, 500);
	setScrollFactor('hotelrooffg', 1.0, 1.0);
	scaleObject('hotelrooffg', 1.1, 1.1);

	addLuaSprite('hotelroofbg', false);
	addLuaSprite('salonroofbuildings', false);
	addLuaSprite('salonroofbuildingwindows', false);
	addLuaSprite('hotelrooffg', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end