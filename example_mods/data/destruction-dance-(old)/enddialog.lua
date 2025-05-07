dialogstarts = true
--If the above boolean is true, dialogue will play. Note: Sorry for the curse word, I can't take that out without the game breaking.
local allowEndShit = false

function onEndSong()
 if not allowEndShit and not seenCutscene and dialogstarts then
  setProperty('inCutscene', true);
  startDialogue('dialogue', 'breakfast'); 
  allowEndShit = true;
  return Function_Stop;
 end
 return Function_Continue;
end