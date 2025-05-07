--Fun Fact: Virtual Plane was inspired by the Food Court song from Parappa The Rapper 2.

local noteScale = 1

function onCreate()
    makeLuaSprite('bg', 'virtualPlaneAssets/bg', 0, 0)
    setProperty('bg.antialiasing', false)
    addLuaSprite('bg', false)
end

function onUpdatePost()
--    setPropertyFromGroup('playerStrums', 0, 'scale.x', noteScale)
--    setPropertyFromGroup('playerStrums', 1, 'scale.x', noteScale)
--    setPropertyFromGroup('playerStrums', 2, 'scale.x', noteScale)
--    setPropertyFromGroup('playerStrums', 3, 'scale.x', noteScale)
--    setPropertyFromGroup('playerStrums', 0, 'scale.y', noteScale)
--    setPropertyFromGroup('playerStrums', 1, 'scale.y', noteScale)
--    setPropertyFromGroup('playerStrums', 2, 'scale.y', noteScale)
--    setPropertyFromGroup('playerStrums', 3, 'scale.y', noteScale)
--    setPropertyFromGroup('playerStrums', 0, 'antialiasing', false)
--    setPropertyFromGroup('playerStrums', 1, 'antialiasing', false)
--    setPropertyFromGroup('playerStrums', 2, 'antialiasing', false)
--    setPropertyFromGroup('playerStrums', 3, 'antialiasing', false)
--    setPropertyFromGroup('opponentStrums', 0, 'scale.x', noteScale)
--    setPropertyFromGroup('opponentStrums', 1, 'scale.x', noteScale)
--    setPropertyFromGroup('opponentStrums', 2, 'scale.x', noteScale)
--    setPropertyFromGroup('opponentStrums', 3, 'scale.x', noteScale)
--    setPropertyFromGroup('opponentStrums', 0, 'scale.y', noteScale)
--    setPropertyFromGroup('opponentStrums', 1, 'scale.y', noteScale)
--    setPropertyFromGroup('opponentStrums', 2, 'scale.y', noteScale)
--    setPropertyFromGroup('opponentStrums', 3, 'scale.y', noteScale)
--    setPropertyFromGroup('opponentStrums', 0, 'antialiasing', false)
--    setPropertyFromGroup('opponentStrums', 1, 'antialiasing', false)
--    setPropertyFromGroup('opponentStrums', 2, 'antialiasing', false)
--    setPropertyFromGroup('opponentStrums', 3, 'antialiasing', false)
    setPropertyFromGroup('strumLineNotes', 0, 'scale.x', noteScale)
    setPropertyFromGroup('strumLineNotes', 1, 'scale.x', noteScale)
    setPropertyFromGroup('strumLineNotes', 2, 'scale.x', noteScale)
    setPropertyFromGroup('strumLineNotes', 3, 'scale.x', noteScale)
    setPropertyFromGroup('strumLineNotes', 4, 'scale.x', noteScale)
    setPropertyFromGroup('strumLineNotes', 5, 'scale.x', noteScale)
    setPropertyFromGroup('strumLineNotes', 6, 'scale.x', noteScale)
    setPropertyFromGroup('strumLineNotes', 7, 'scale.x', noteScale)
    setPropertyFromGroup('strumLineNotes', 0, 'scale.y', noteScale)
    setPropertyFromGroup('strumLineNotes', 1, 'scale.y', noteScale)
    setPropertyFromGroup('strumLineNotes', 2, 'scale.y', noteScale)
    setPropertyFromGroup('strumLineNotes', 3, 'scale.y', noteScale)
    setPropertyFromGroup('strumLineNotes', 4, 'scale.y', noteScale)
    setPropertyFromGroup('strumLineNotes', 5, 'scale.y', noteScale)
    setPropertyFromGroup('strumLineNotes', 6, 'scale.y', noteScale)
    setPropertyFromGroup('strumLineNotes', 7, 'scale.y', noteScale)
    setPropertyFromGroup('strumLineNotes', 0, 'antialiasing', false)
    setPropertyFromGroup('strumLineNotes', 1, 'antialiasing', false)
    setPropertyFromGroup('strumLineNotes', 2, 'antialiasing', false)
    setPropertyFromGroup('strumLineNotes', 3, 'antialiasing', false)
    setPropertyFromGroup('strumLineNotes', 4, 'antialiasing', false)
    setPropertyFromGroup('strumLineNotes', 5, 'antialiasing', false)
    setPropertyFromGroup('strumLineNotes', 6, 'antialiasing', false)
    setPropertyFromGroup('strumLineNotes', 7, 'antialiasing', false)
    for i = 0,getProperty('notes.length')-1 do
        setPropertyFromGroup('notes', i, 'scale.x', noteScale)
        setPropertyFromGroup('notes', i, 'scale.y', noteScale)
        setPropertyFromGroup('notes', i, 'antialiasing', false)
    end
    for i = 0,getProperty('unspawnNotes.length')-1 do
        setPropertyFromGroup('unspawnNotes', i, 'scale.x', noteScale)
        setPropertyFromGroup('unspawnNotes', i, 'scale.y', noteScale)
        setPropertyFromGroup('unspawnNotes', i, 'antialiasing', false) -- huge W for KriHay on GameBanana for helping solve this problem
    end
    triggerEvent('Camera Follow Pos', 127.9999999999999999999999, 71.999999999999999999999999)
end

function goodNoteHit()
    anyNoteCountsForThis()
end

function noteMiss()
    anyNoteCountsForThis()
end

function anyNoteCountsForThis()
    if health >= 0.85 then
        loadGraphic('bg', 'virtualPlaneAssets/bg')
    end
    if health < 0.85 and health > 0.27 then
        loadGraphic('bg', 'virtualPlaneAssets/bg-bad')
    end
    if health <= 0.3 then
        loadGraphic('bg', 'virtualPlaneAssets/bg-awful')
    end
end