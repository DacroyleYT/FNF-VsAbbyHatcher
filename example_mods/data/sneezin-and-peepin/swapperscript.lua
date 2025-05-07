--if not getPropertyFromClass('ClientPrefs', 'middleScroll') then
--    setPropertyFromGroup('playerStrums', 0, 'x', defaultOpponentStrumX0)
--    setPropertyFromGroup('playerStrums', 1, 'x', defaultOpponentStrumX1)
--    setPropertyFromGroup('playerStrums', 2, 'x', defaultOpponentStrumX2)
--    setPropertyFromGroup('playerStrums', 3, 'x', defaultOpponentStrumX3)
--
--    setPropertyFromGroup('opponentStrums', 0, 'x', defaultPlayerStrumX0)
--    setPropertyFromGroup('opponentStrums', 1, 'x', defaultPlayerStrumX1)
--    setPropertyFromGroup('opponentStrums', 2, 'x', defaultPlayerStrumX2)
--    setPropertyFromGroup('opponentStrums', 3, 'x', defaultPlayerStrumX3)
--  end

function onCreatePost()
    if songName == "Sneezin and Peepin" then
        noteTweenX("NoteMove1", 0, defaultPlayerStrumX0, 0.1, cubeInOut)
        noteTweenX("NoteMove2", 1, defaultPlayerStrumX1, 0.1, cubeInOut)
        noteTweenX("NoteMove3", 2, defaultPlayerStrumX2, 0.1, cubeInOut)
        noteTweenX("NoteMove4", 3, defaultPlayerStrumX3, 0.1, cubeInOut)
        noteTweenX("NoteMove5", 4, defaultOpponentStrumX0, 0.1, cubeInOut)
        noteTweenX("NoteMove6", 5, defaultOpponentStrumX1, 0.1, cubeInOut)
        noteTweenX("NoteMove7", 6, defaultOpponentStrumX2, 0.1, cubeInOut)
        noteTweenX("NoteMove8", 7, defaultOpponentStrumX3, 0.1, cubeInOut)
    end
end