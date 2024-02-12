local anim = {'singRIGHT', 'singUP', 'singDOWN', 'singLEFT'}
function opponentNoteHit(id, direction, noteType, isSustainNote)
if noteType == 'bothchr' then
playAnim('gf', anim[direction + 1], true)
end
end