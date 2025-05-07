local YTmode = false --If you hate my watermark for some reason set this to false ;)

function onCreate()
	if YTmode then
		makeLuaSprite('YThandle', 'DACROSTUFFDONTTOUCH/YThandle', 772, 604);
		addLuaSprite('YThandle', true)
		setObjectCamera('YThandle', 'other')
		if botPlay then
			setProperty('camHUD.visible', false)
		end
	end
end