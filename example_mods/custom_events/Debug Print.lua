--DEBUG PRINT EVENT BY DACROYLEYT
--This is a really simple event, but can be used for error-like mods or something.

function onEvent(event, value1)
	if event == 'Debug Print' then
		debugPrint(value1)
	end
end