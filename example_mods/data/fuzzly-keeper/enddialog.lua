dialogstarts = false
--If the above boolean is true, dialogue will play. Note: Sorry for the curse word, I can't take that out without the game breaking.
local allowEndShit = false

function onEndSong()
 if not allowEndShit and not seenCutscene and dialogstarts and misses == 0 then
  setProperty('inCutscene', true);
  startDialogue('enddialogue-nomisses', 'breakfast'); 
  allowEndShit = true;
  return Function_Stop;
 end
 if not allowEndShit and not seenCutscene and dialogstarts and misses > 0 then
    setProperty('inCutscene', true);
    startDialogue('enddialogue-yesmisses', 'breakfast'); 
    allowEndShit = true;
    return Function_Stop;
   end
 return Function_Continue;
end