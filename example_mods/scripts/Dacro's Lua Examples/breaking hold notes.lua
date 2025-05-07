--By DacroyleYT
--what have i done

--local colArray = {'purple', 'blue', 'green', 'red'} -- ignore this

function onCreatePost()
    for i = 0, getProperty('unspawnNotes.length')-1 do
        if getPropertyFromGroup('unspawnNotes', i, 'isSustainNote') then
            setPropertyFromGroup('unspawnNotes', i, 'isSustainNote', false)
        end
    end
end