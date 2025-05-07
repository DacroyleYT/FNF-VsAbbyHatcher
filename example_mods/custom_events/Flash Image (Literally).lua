function onEvent(name, value1)
	if name == "Flash Image (Literally)" then
		makeLuaSprite('pic', value1, 450, 190);
		addLuaSprite('pic', false);
		doTweenColor('hello', 'pic', 'FFFFFFFF', 0.05, 'quartIn');
		setObjectCamera('pic', 'other');
		runTimer('wait', 0.15);
	end
end

function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'wait' then
		doTweenAlpha('byebye', 'pic', 0, 0.1, 'linear');
	end
end

function onTweenCompleted(tag)
	if tag == 'byebye' then
		removeLuaSprite('pic', true);
	end
end