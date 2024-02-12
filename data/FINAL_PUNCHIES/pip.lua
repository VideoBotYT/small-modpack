local Character_tag = 'pibby'

local x = -850 --this is the characterX
local y = 480 --this is the characterY


offsetI = {
 '0', '0'
}-- idle

offsetL = {
 '118', '1'
}-- left

offsetD = {
 '10', '0'
}-- down

offsetU = {
 '10', '38'
}-- up

offsetR = {
 '-40', '20'
}-- right

offsetS = {
 '166', '93'
}-- shoot


function onCreate()
makeAnimatedLuaSprite(Character_tag, 'characters/pibby', x, y);

addAnimationByPrefix(Character_tag, 'IDLE', 'PibbyIdle', 24, true);
addAnimationByPrefix(Character_tag, 'LEFT', 'PibbyLeft', 24, false);
addAnimationByPrefix(Character_tag, 'DOWN', 'PibbyDown', 24, false);
addAnimationByPrefix(Character_tag, 'UP', 'PibbyUp', 24, false);
addAnimationByPrefix(Character_tag, 'RIGHT', 'PibbyRight', 24, false);
addAnimationByPrefix(Character_tag, 'SHOOT', 'PibbyShoot', 24, false);

playAnim(Character_tag, 'IDLE', false)

addLuaSprite(Character_tag, false);
end

function onBeatHit()
if Beat %2 == 0 then
playAnim('boyfriend', 'idle', false)
end
end

function onUpdatePost()
if getProperty(Character_tag..'.animation.curAnim.name') == 'IDLE' then
setProperty(Character_tag.. '.offset.x', offsetI[1]);
setProperty(Character_tag.. '.offset.y', offsetI[2]);

elseif getProperty(Character_tag..'.animation.curAnim.name') == 'LEFT' then
setProperty(Character_tag.. '.offset.x', offsetL[1]);
setProperty(Character_tag.. '.offset.y', offsetL[2]);
if mustHitSection then

setProperty('camFollow.x', getMidpointX('pibby') - 110)

setProperty('camFollow.y', getMidpointY('pibby') - 40)
end

elseif getProperty(Character_tag..'.animation.curAnim.name') == 'UP' then
setProperty(Character_tag.. '.offset.x', offsetU[1]);
setProperty(Character_tag.. '.offset.y', offsetU[2]);
if mustHitSection then
setProperty('camFollow.x', getMidpointX('pibby') - 60)
setProperty('camFollow.y', getMidpointY('pibby') - 90)
end

elseif getProperty(Character_tag..'.animation.curAnim.name') == 'DOWN' then
setProperty(Character_tag.. '.offset.x', offsetD[1]);
setProperty(Character_tag.. '.offset.y', offsetD[2]);
if mustHitSection then
setProperty('camFollow.x', getMidpointX('pibby') - 60)
setProperty('camFollow.y', getMidpointY('pibby') + 10)
end

elseif getProperty(Character_tag..'.animation.curAnim.name') == 'RIGHT' then
setProperty(Character_tag.. '.offset.x', offsetR[1]);
setProperty(Character_tag.. '.offset.y', offsetR[2]);
if mustHitSection then
setProperty('camFollow.x', getMidpointX('pibby') - 10)
setProperty('camFollow.y', getMidpointY('pibby') - 40)
end

elseif getProperty(Character_tag..'.animation.curAnim.name') == 'SHOOT' then
setProperty(Character_tag.. '.offset.x', offsetS[1]);
setProperty(Character_tag.. '.offset.y', offsetS[2]);

end
end

local singing = {
 "LEFT", "DOWN", "UP", "RIGHT"
}

function goodNoteHit(id, direction, noteType, isSustainNote)
if noteType == 'pibby' then
runTimer('idle back', 0.5)
playAnim(Character_tag, singing[direction + 1], true);
end

if noteType == 'pibbyShoot' then
runTimer('idle back', 0.5)
end

end

function opponentNoteHit(id, direction, noteType, isSustainNote)


if noteType == 'pibby' then
runTimer('idle back', 0.5)
playAnim(Character_tag, singing[direction + 1], true);
end
end

function onTimerCompleted(tag)
if tag == 'idle back' then
playAnim(Character_tag, 'IDLE', true);
end
end