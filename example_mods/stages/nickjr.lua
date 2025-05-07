function onCreate()
	-- Coming up next... Stick around!
	makeAnimatedLuaSprite('nickjrbg', 'nickjrbg-new', -610, -200);
	addAnimationByPrefix('nickjrbg','idle','bg idle',1,true)
	addAnimationByPrefix('nickjrbg','fade','bg fade to blue',24,false)
	setScrollFactor('nickjrbg', 1.1, 1.1);

	makeAnimatedLuaSprite('nickjrfg', 'nickjrfg-new', -600, 640);
	addAnimationByPrefix('nickjrfg','idle','fg idle',1,true)
	addAnimationByPrefix('nickjrfg','fade','fg fade to blue',24,false)
	setScrollFactor('nickjrfg', 1.0, 1.0);
	scaleObject('nickjrfg', 1.1, 1.1);

	if not lowQuality then
		makeAnimatedLuaSprite('fgBoppers','fgBoppers',-850,-350)
		addAnimationByPrefix('fgBoppers','beat','fg guys boppin',12,false)
		setScrollFactor('fgBoppers', 1.3, 1.0);
		scaleObject('fgBoppers', 1.35, 1.35);
		end
	addLuaSprite('nickjrbg', false);
	addLuaSprite('nickjrfg', false);
	addLuaSprite('fgBoppers', true);
end

function onBeatHit()
	objectPlayAnimation('fgBoppers','beat',true)
end