local enableoldscale = true

function onCreate()
	-- Abby has glasses. They go Į̸͈̦͈͍̞̟̠̪͒̓̔̅̈́̾̿̄͝ͅ_̸̖̤͚͓͓̦̙̘͌̓̋̐̇̇̃́̅̇͆͆̊͌͋Ẅ̷̡̱͙̘̙͖̱̗̼̯͚̤́̓̽̋̑̌̌̾̚I̵̗̮͇̙̩̣͈̫̦̍̓̋Ĺ̴̬̗̭͖̭͈̦̜̭͊̾͌͊̀͆̈́̊̆͝Ļ̶̧̨̟̹͈̈̀̓̀͊̆̓͠͝͠_̵̛̬͕̎̿̊͂̕͝F̵̫̫̠̤̳̜̗̳̋̋̈́͌̉͘͜Ĩ̸̢̨̡̢̥̮̰͉͎̹͙̦͂́̐̾̀N̴̙̯̹̞͔̦̟̪̩͖͊̈́̏̃͊̓͛́̃̓̽͆̒͘͝D̷̢̧͕͉͕̹̰̹͚͓̫̃̆̂͗̂͊͗̒̾͆̐͗̈́͜͠ͅ_̵̼͍̩̥̭̖̐̃̍͐̓̓̈̃̅̄̈́̔̏̌Y̴̧͉͍͓̫̤̎̑̾͗̄͂̚Ơ̸̬̦͎͂͂̾̎̎̈́̋́̃͑̚͘̚Û̸͎̾̎̀̄_̷͚̗͐̂̕Ą̴̢̏͗͆͛̅̓̓̓̐̈́̉Ṋ̸̢̤̦̳̦͚͔̳̘̫̦͔̤̂̃̈́̀̋̈́͛̄͋̈́̐̚͝D̷͍̗̤͖͇͙̭͎̓̄̈̐̒͘͠_̶̙̙̥̦̯͙͛̄̆́̕B̶̛̘̜̙͓̈̆͐́̇͋͂̆͛̇͗Ļ̴͓͈̒͑̐̌̊̔̈̌͊͌͝͝͝Ư̷̠̻̮̙̓̈́͌̊́͒̈́͗͠Ę̴̡̖͕̪̘̞̰͓̖̜̯͙́̉̀̓̑̊B̶̝̞͔̄̽͝Ã̸̛̘̗͇̥̻͇̻̯̗͠L̵̛͈͕̩͕̈̌̊͆̒͜L̶̞̗͕̫̥̼̭̼̓̀͌̓͆ͅ_̷͚̜̫̖͖̝͍̱̭̓̇̏̆̌̉̎͐́ͅY̴̢̢̫̲̤͋̀́̉̐̂̔̔̈́͆̐Õ̴̡̨̤̠̹͍͓̳͉͙̯͙͑̋Ư̷̼͙̆͝
	makeLuaSprite('BG-under', 'bedroom/day', -675, -300);
	scaleObject('BG-under', 1.5, 1.5)
	setScrollFactor('BG-under', 0.9, 1)
	makeLuaSprite('BG', 'bedroom/bedroom', -700, -300);
	scaleObject('BG', 1.5, 1.5)
	makeLuaSprite('TV', 'funkyTV', 0, 0)
	setObjectCamera('TV', 'other')
	addLuaSprite('TV', false)
	addLuaSprite('BG-under', false);
	addLuaSprite('BG', false);
end

--function onCountdownTick(t)
--	if t == 3 then
--		debugPrint(defaultPlayerStrumX0)
--		debugPrint(defaultPlayerStrumX1)
--		debugPrint(defaultPlayerStrumX2)
--		debugPrint(defaultPlayerStrumX3)
--	end
--end

function onCreatePost()
	if enableoldscale then
		-- Scale the UI so it fits lol
		noteTweenX('oleftX', 0, 142, 0.01, 'linear')
		noteTweenX('odownX', 1, 254, 0.01, 'linear')
		noteTweenX('oupX', 2, 366, 0.01, 'linear')
		noteTweenX('orightX', 3, 478, 0.01, 'linear')
		noteTweenY('oleftY', 0, 100, 0.01, 'linear')
		noteTweenY('odownY', 1, 100, 0.01, 'linear')
		noteTweenY('oupY', 2, 100, 0.01, 'linear')
		noteTweenY('orightY', 3, 100, 0.01, 'linear')
		noteTweenX('pleftX', 4, 682, 0.01, 'linear')
		noteTweenX('pdownX', 5, 794, 0.01, 'linear')
		noteTweenX('pupX', 6, 906, 0.01, 'linear')
		noteTweenX('prightX', 7, 1018, 0.01, 'linear')
		noteTweenY('pleftY', 4, 100, 0.01, 'linear')
		noteTweenY('pdownY', 5, 100, 0.01, 'linear')
		noteTweenY('pupY', 6, 100, 0.01, 'linear')
		noteTweenY('prightY', 7, 100, 0.01, 'linear')
		setProperty('healthBar.y', 525)
		setProperty('iconP1.y', 450)
		setProperty('iconP2.y', 450)
		setProperty('scoreTxt.y', 590)
		--doTweenZoom('uizoom', 'camHUD', '0.8', '0.1', 'linear')
		setPropertyFromGroup('cameraScale', 'hud', 0.5)
	end
end

function onUpdatePost()
	if not enableoldscale then
		setProperty('camHUD.zoom', 0.78)
	end
end