function onCreate()

for i = 0, getProperty('unspawnNotes.length')-1 do
if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'pibbyShoot' then
setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true);
setPropertyFromGroup('unspawnNotes', i, 'noMissAnimation', true);
end
end
end


function goodNoteHit(id, direction, noteType, isSustainNote)
if noteType == 'pibbyShoot' then
playAnim('pibby', 'SHOOT', true);
playAnim('dad', 'Dodge', true);
playAnim('gf', 'hit', true);
end
end