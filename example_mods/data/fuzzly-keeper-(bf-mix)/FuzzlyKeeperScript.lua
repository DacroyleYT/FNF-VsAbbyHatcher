--Original script by Washo789. It was sadly trashed :(
local opponentdrainshealth = false

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.4 and opponentdrainshealth then
        setProperty('health', health- 0.017);
    end
end

function onEvent(name, value1)
    if name == "Set Opponent Drains Health" then
        if value1 == "true" or value1 == "1" then
            opponentdrainshealth = true
        end
        if value1 == "false" or value1 == "0" then
            opponentdrainshealth = false
        end
    end
end