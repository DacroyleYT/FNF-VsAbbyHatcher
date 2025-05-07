local thecolorofwins = 'ff1010'
local colornum = 0
local lastColor = -1
local doColorChanging = true

function onCreate()
	-- Fun fact: Sunny has nothing to do with Abby Hatcher, she comes from Sunny Day! I only added her for fun (edit: this added more lore to the mod yay)
	math.random(0,5)
	makeLuaSprite('bg', 'sunny_salon/bg', -75, -75);
	scaleObject('bg', 0.7, 0.7);
	setScrollFactor('bg', 0, 0);
	makeLuaSprite('moon', 'sunny_salon/moon', -75, -75);
	scaleObject('moon', 0.6, 0.6);
	setScrollFactor('moon', 0, 0);
	makeLuaSprite('bg2', 'sunny_salon/buildings-back', -600, -200);
	setScrollFactor('bg2', 0.3, 0.3);
	makeLuaSprite('bg3', 'sunny_salon/buildings', -600, -200);
	setScrollFactor('bg3', 0.6, 0.6);
	makeLuaSprite('wg', 'sunny_salon/windows', -600, -200);
	setScrollFactor('wg', 0.6, 0.6);

	makeLuaSprite('salonrooffg', 'salonrooffg-better', -600, 560);
	setScrollFactor('salonrooffg', 1.0, 1.0);
	scaleObject('salonrooffg', 1.1, 1.1);

	addLuaSprite('bg', false);
	addLuaSprite('moon', false);
	addLuaSprite('bg2', false);
	addLuaSprite('bg3', false);
	addLuaSprite('wg', false);
	--doTweenAlpha('invis', 'wg', 0, 0.001, linear)
	addLuaSprite('salonrooffg', false)
	if not flashingLights then
		loadGraphic('wg', 'sunny_salon/windows-rainbow')
		doColorChanging = false
	end
	if lowQuality then
		removeLuaSprite('wg', true)
		removeLuaSprite('bg', true)
		removeLuaSprite('bg2', true)
		removeLuaSprite('moon', true)
		loadGraphic('bg3', 'sunny_salon/bg-flat')
		doColorChanging = false
	end
	if doColorChanging then
		setProperty('wg.alpha', 0)
	else
		setProperty('wg.alpha', 1)
	end
end

function onSectionHit()
	if doColorChanging then
		dowindowthing(0)
	end
end

function dowindowthing(color)
	if color == 0 then

	else
		thecolorofwins = color
	end
	if flashingLights or not lowQuality then
		doTweenColor('windowthing', 'wg', thecolorofwins, 0.00000001, linear)
		doTweenAlpha('idkwhatimdoing', 'wg', 0, 2, linear)
		shufflecolor()
		--debugPrint('test color red lol')
	end
end

function onSongStart()
	if doColorChanging then
		shufflecolor()
		dowindowthing(0)
	end
end

function shufflecolor()
	colornum = getRandomInt(1,6)
	if colornum == 1 then
		thecolorofwins = 'ff5050'
	end
	if colornum == 2 then
		thecolorofwins = 'ff9010'
	end
	if colornum == 3 then
		thecolorofwins = 'fff080'
	end
	if colornum == 4 then
		thecolorofwins = '20ff20'
	end
	if colornum == 5 then
		thecolorofwins = '2023ff'
	end
	if colornum == 6 then
		thecolorofwins = 'ff80ff'
	end
end