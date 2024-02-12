--[[ui made by latter

this shit is ONLY, for Cartoon Corruption

you are not allowed to use this for your shitty pibby low effort mod
]]

function rgbToHex(array)
return string.format('%.2x%.2x%.2x', array[1], array[2], array[3])
end--hex to rgb for health bar color shit

scale = 0.9

function onCreatePost()
setPropertyFromClass('ClientPrefs', 'timeBarType', 'Time Left')-- nothing but Time left option
setPropertyFromClass('ClientPrefs', 'hideHud', false);--no hide hud for you
setPropertyFromClass('ClientPrefs', 'middleScroll', true)
setTextString('botplayTxt', 'THE BOT IS DOING ALL THE WORK')
if downscroll then-- when downscroll is active
makeLuaSprite('barW', nil, 50,30)
makeLuaSprite('barWbf', nil, 1000,30)
makeLuaSprite('logo', 'hudstuff/showlogo', 45,630)
else --when downscroll is NOT active
 makeLuaSprite('barW', nil, 50,570)
makeLuaSprite('barWbf', nil, 1000,570)
makeLuaSprite('logo', 'hudstuff/showlogo', 45,35)
end
setObjectCamera('logo', 'other')
scaleObject('logo', 0.1, 0.1)
addLuaSprite('logo', true)

makeGraphic('barW', 200, 110, 'ffffff')
setObjectCamera('barW', 'hud')
scaleObject('barW', scale, scale)
addLuaSprite('barW', false)

makeGraphic('barWbf', 200, 110, 'ffffff')
setObjectCamera('barWbf', 'hud')
scaleObject('barWbf', scale, scale)
addLuaSprite('barWbf', false)


makeLuaSprite('barB', nil, 0,0)
makeGraphic('barB', 200, 40, '000000')
setObjectCamera('barB', 'hud')
scaleObject('barB', scale, scale)
addLuaSprite('barB', false)

makeLuaSprite('barBbf', nil, 0,0)
makeGraphic('barBbf', 200, 40, '000000')
scaleObject('barBbf', scale, scale)
setObjectCamera('barBbf', 'hud')
addLuaSprite('barBbf', false)


makeLuaSprite('barl1', nil, 0,0)
makeGraphic('barl1', 363, 5, '000000')
setObjectCamera('barl1', 'hud')
scaleObject('barl1', scale, scale)
addLuaSprite('barl1', false)

makeLuaSprite('barl1bf', nil, 0,0)
makeGraphic('barl1bf', 362, 5, '000000')
setObjectCamera('barl1bf', 'hud')
scaleObject('barl1bf', scale, scale)
addLuaSprite('barl1bf', false)


makeLuaSprite('barl15', nil, 0,0)
makeGraphic('barl15', 363, 5, '000000')
setObjectCamera('barl15', 'hud')
scaleObject('barl15', scale, scale)
addLuaSprite('barl15', false)

makeLuaSprite('barl15bf', nil, 0,0)
makeGraphic('barl15bf', 362, 5, '000000')
setObjectCamera('barl15bf', 'hud')
scaleObject('barl15bf', scale, scale)
addLuaSprite('barl15bf', false)


makeLuaSprite('barl2', nil, 0,0)
makeGraphic('barl2', 5, 140, '000000')
setObjectCamera('barl2', 'hud')
scaleObject('barl2', scale, scale)
addLuaSprite('barl2', false)

makeLuaSprite('barl2bf', nil, 0,0)
makeGraphic('barl2bf', 5, 140, '000000')
setObjectCamera('barl2bf', 'hud')
scaleObject('barl2bf', scale, scale)
addLuaSprite('barl2bf', false)


makeLuaSprite('barl3', nil, 0,0)
makeGraphic('barl3', 5, 149, '000000')
setObjectCamera('barl3', 'hud')
scaleObject('barl3', scale, scale)
addLuaSprite('barl3', false)

makeLuaSprite('barl3bf', nil, 0,0)
makeGraphic('barl3bf', 5, 154, '000000')
setObjectCamera('barl3bf', 'hud')
scaleObject('barl3bf', scale, scale)
addLuaSprite('barl3bf', false)


makeLuaSprite('barl5', nil, 0,0)
makeGraphic('barl5', 5, 154, '000000')
setObjectCamera('barl5', 'hud')
scaleObject('barl5', scale, scale)
addLuaSprite('barl5', false)

makeLuaSprite('barl5bf', nil, 0,0)
makeGraphic('barl5bf', 5, 154, '000000')
setObjectCamera('barl5bf', 'hud')
scaleObject('barl5bf', scale, scale)
addLuaSprite('barl5bf', false)

makeLuaSprite('helthbarcopy', nil, 0,0)
makeGraphic('helthbarcopy', getProperty('healthBar.width'), getProperty('healthBar.height'), 'ffffff')
setProperty('helthbarcopy.scale.x', 0.24)
setProperty('helthbarcopy.scale.y', 12)
setProperty('helthbarcopy.color', getColorFromHex(rgbToHex(getProperty('dad.healthColorArray'))))
setObjectCamera('helthbarcopy', 'hud')
addLuaSprite('helthbarcopy', false)--healthbar for opponent color

makeLuaSprite('helthbarcopy2', nil, 0,0)
makeGraphic('helthbarcopy2', getProperty('healthBar.width'), getProperty('healthBar.height'), 'ffffff')
setProperty('helthbarcopy2.scale.y', 12)
setProperty('helthbarcopy2.color', getColorFromHex(rgbToHex(getProperty('boyfriend.healthColorArray'))))
setObjectCamera('helthbarcopy2', 'hud')
addLuaSprite('helthbarcopy2', false)--healthbar for player color
------------------------------------------------
makeLuaText('songname', songName, 1000,0,0)
setTextSize('songname', 20)
scaleObject('songname', scale, scale + 0.3)
setObjectCamera('songname', 'hud')
addLuaText('songname', true)

makeLuaText('nowp', 'Now Playing:', 0,0,0)
setTextSize('nowp', 25)
scaleObject('nowp', scale, scale)
setObjectCamera('nowp', 'hud')
addLuaText('nowp', true)

makeLuaText('nowr', 'Time Remaining:', 0,0,0)
setTextSize('nowr', 15)
scaleObject('nowr', scale, scale)
setObjectCamera('nowr', 'hud')
addLuaText('nowr', true)


makeLuaText('score', '', 0,0,0)
setTextSize('score', 23)
scaleObject('score', scale, scale)
setObjectCamera('score', 'hud')
addLuaText('score', true)

makeLuaText('misses', '', 0,0,0)
setTextSize('misses', 23)
scaleObject('misses', scale, scale)
setObjectCamera('misses', 'hud')
addLuaText('misses', true)

makeLuaText('combo', '', 0,0,0)
setTextSize('combo', 23)
scaleObject('combo', scale, scale)
setObjectCamera('combo', 'hud')
addLuaText('combo', true)

makeLuaText('ratingname', '', 0,0,0)
setTextSize('ratingname', 23)
scaleObject('ratingname', scale, scale)
setObjectCamera('ratingname', 'hud')
addLuaText('ratingname', true)

makeLuaText('remainingH', '', 0,0,0)
setTextSize('remainingH', 15)
scaleObject('remainingH', scale, scale)
setObjectCamera('remainingH', 'hud')
addLuaText('remainingH', true)
------------------------------------------------
setProperty('timeBar.visible', false)--fuck you timeBar lol
setProperty('scoreTxt.visible', false)--fuck you old scoreTxt lol
setProperty('timeBarBG.visible', false)--fuck you timeBarBG lol
setProperty('healthBarBG.visible', false)--fuck you healthBarBG lol
setProperty('timeBar.x', 100000000000)
setProperty('scoreTxt.x', 100000000000)
setProperty('timeBarBG.x', 100000000000)

scaleObject('timeTxt', scale - 0.4, scale - 0.4)


setProperty('healthBar.scale.x', 0.24)
setProperty('healthBar.scale.y', 12)

setObjectOrder('healthBar', 1)--set up the order of all of these objects
setObjectOrder('barW', 2)
setObjectOrder('barB', 3)
setObjectOrder('barl1', 4)
setObjectOrder('barl15', 5)
setObjectOrder('barl2', 6)
setObjectOrder('barl3', 7)
setObjectOrder('barl5', 8)
setObjectOrder('timeTxt', 9)

setObjectOrder('helthbarcopy', 10)
setObjectOrder('helthbarcopy2', 11)
setObjectOrder('barWbf', 12)
setObjectOrder('barBbf', 13)
setObjectOrder('barl1bf', 14)
setObjectOrder('barl15bf', 15)
setObjectOrder('barl2bf', 16)
setObjectOrder('barl3bf', 17)
setObjectOrder('barl5bf', 18)

doTweenX('beatsmallrbf', 'iconP1.scale', 0.6, 1, 'circOut')
doTweenX('beatsmallropp', 'iconP2.scale', 0.6, 1, 'circOut')


setPropertyFromGroup('strumLineNotes', 0, 'x', 80000002)
setPropertyFromGroup('strumLineNotes', 1, 'x', 19000004)
setPropertyFromGroup('strumLineNotes', 2, 'x', 90000071)
setPropertyFromGroup('strumLineNotes', 3, 'x',10800003)
setPropertyFromGroup('strumLineNotes', 4, 'x',412)
setPropertyFromGroup('strumLineNotes', 5, 'x',524)
setPropertyFromGroup('strumLineNotes', 6, 'x',636)
setPropertyFromGroup('strumLineNotes', 7, 'x',748)

setProperty('barB.x', getProperty('barW.x'))
setProperty('barB.y', getProperty('barW.y') + 98)

setProperty('barl1.x', getProperty('barW.x'))
setProperty('barl1.y', getProperty('barW.y'))

setProperty('barl15.x', getProperty('barW.x'))
setProperty('barl15.y', getProperty('barW.y') + 134)

setProperty('barl2.x', getProperty('barW.x'))
setProperty('barl2.y', getProperty('barW.y'))

setProperty('barl3.x', getProperty('barW.x') + 180)
setProperty('barl3.y', getProperty('barW.y'))

setProperty('healthBar.x', getProperty('barW.x') - 41)
setProperty('healthBar.y', getProperty('barW.y') + 64)

setProperty('barl5.x', getProperty('barW.x') + 326)
setProperty('barl5.y', getProperty('barW.y'))

setProperty('timeTxt.x', getProperty('barW.x') + 55)
setProperty('timeTxt.y', getProperty('barW.y') + 109)

setProperty('songname.x', getProperty('barW.x') - 358.5)
setProperty('songname.y', getProperty('barW.y') + 45)

setProperty('nowp.x', getProperty('barW.x') + 10)
setProperty('nowp.y', getProperty('barW.y') + 10)

setProperty('nowr.x', getProperty('barW.x') + 10)
setProperty('nowr.y', getProperty('barW.y') + 109)


setProperty('iconP2.y', getProperty('barW.y'))


setProperty('barBbf.x', getProperty('barWbf.x'))
setProperty('barBbf.y', getProperty('barWbf.y') + 99)

setProperty('barl1bf.x', getProperty('barWbf.x') - 145)
setProperty('barl1bf.y', getProperty('barWbf.y'))

setProperty('barl15bf.x', getProperty('barWbf.x') - 145)
setProperty('barl15bf.y', getProperty('barWbf.y') + 134)

setProperty('barl2bf.x', getProperty('barWbf.x'))
setProperty('barl2bf.y', getProperty('barWbf.y'))

setProperty('barl3bf.x', getProperty('barWbf.x') + 180)
setProperty('barl3bf.y', getProperty('barWbf.y'))

setProperty('barl5bf.x', getProperty('barWbf.x') - 145)
setProperty('barl5bf.y', getProperty('barWbf.y'))

setProperty('helthbarcopy.x', getProperty('barWbf.x') - 366.5)
setProperty('helthbarcopy.y', getProperty('barWbf.y') + 64)

setProperty('helthbarcopy2.y', getProperty('barWbf.y') + 64)


setProperty('iconP1.y', getProperty('barWbf.y'))


setProperty('score.x', getProperty('barWbf.x') + 3)
setProperty('score.y', getProperty('barWbf.y') + 2)

setProperty('misses.x', getProperty('barWbf.x') + 3)
setProperty('misses.y', getProperty('barWbf.y') + 26)


setProperty('combo.x', getProperty('barWbf.x') + 1)
setProperty('combo.y', getProperty('barWbf.y') + 51)


setProperty('ratingname.x', getProperty('barWbf.x') + 3)
setProperty('ratingname.y', getProperty('barWbf.y') + 74)


setProperty('remainingH.x', getProperty('barWbf.x') + 1)
setProperty('remainingH.y', getProperty('barWbf.y') + 109)

end

function onEvent(n)
if n == 'Change Character' then-- when the characters are changed, the color of the fake healthbar
setProperty('helthbarcopy2.color', getColorFromHex(rgbToHex(getProperty('boyfriend.healthColorArray'))))
setProperty('helthbarcopy.color', getColorFromHex(rgbToHex(getProperty('dad.healthColorArray'))))
end
end

function onCountdownTick(counter)--fuckyou icons
doTweenX('beatsmallrbf', 'iconP1.scale', 0.6, 1, 'circOut')
doTweenX('beatsmallropp', 'iconP2.scale', 0.6, 1, 'circOut')
noteTweenAlpha('1cc',0,0.5,1)
noteTweenAlpha('2cc',1,0.5,1)
noteTweenAlpha('3cc',2,0.5,1)
noteTweenAlpha('4cc',3,0.5,1)
end

combo = 0
function onUpdatePost()-- follow one object to make my life easier and other stuff

----to hide all of this when i ever i want----
setProperty('helthbarcopy2.alpha', getProperty('healthBar.alpha'))
setProperty('helthbarcopy2.visible', getProperty('healthBar.visible'))

setProperty('helthbarcopy.alpha', getProperty('healthBar.alpha'))
setProperty('helthbarcopy.visible', getProperty('healthBar.visible'))

setProperty('barW.alpha', getProperty('healthBar.alpha'))
setProperty('barW.visible', getProperty('healthBar.visible'))
setProperty('barB.alpha', getProperty('healthBar.alpha'))
setProperty('barB.visible', getProperty('healthBar.visible'))

setProperty('barl1.alpha', getProperty('healthBar.alpha'))
setProperty('barl1.visible', getProperty('healthBar.visible'))

setProperty('barl15.alpha', getProperty('healthBar.alpha'))
setProperty('barl15.visible', getProperty('healthBar.visible'))

setProperty('barl2.alpha', getProperty('healthBar.alpha'))
setProperty('barl2.visible', getProperty('healthBar.visible'))
setProperty('barl3.alpha', getProperty('healthBar.alpha'))
setProperty('barl3.visible', getProperty('healthBar.visible'))

setProperty('barl5.alpha', getProperty('healthBar.alpha'))
setProperty('barl5.visible', getProperty('healthBar.visible'))

setProperty('barWbf.alpha', getProperty('healthBar.alpha'))
setProperty('barWbf.visible', getProperty('healthBar.visible'))
setProperty('barBbf.alpha', getProperty('healthBar.alpha'))
setProperty('barBbf.visible', getProperty('healthBar.visible'))

setProperty('barl1bf.alpha', getProperty('healthBar.alpha'))
setProperty('barl1bf.visible', getProperty('healthBar.visible'))

setProperty('barl15bf.alpha', getProperty('healthBar.alpha'))
setProperty('barl15bf.visible', getProperty('healthBar.visible'))

setProperty('barl2bf.alpha', getProperty('healthBar.alpha'))
setProperty('barl2bf.visible', getProperty('healthBar.visible'))
setProperty('barl3bf.alpha', getProperty('healthBar.alpha'))
setProperty('barl3bf.visible', getProperty('healthBar.visible'))

setProperty('barl5bf.alpha', getProperty('healthBar.alpha'))
setProperty('barl5bf.visible', getProperty('healthBar.visible'))

setProperty('remainingH.alpha', getProperty('healthBar.alpha'))
setProperty('remainingH.visible', getProperty('healthBar.visible'))

setProperty('songname.visible', getProperty('healthBar.visible'))
setProperty('songname.alpha', getProperty('healthBar.alpha'))

setProperty('nowp.alpha', getProperty('healthBar.alpha'))
setProperty('nowp.visible', getProperty('healthBar.visible'))

setProperty('nowr.visible', getProperty('timeTxt.visible'))
setProperty('nowr.alpha', getProperty('timeTxt.alpha'))

setProperty('ratingname.alpha', getProperty('healthBar.alpha'))
setProperty('ratingname.visible', getProperty('healthBar.visible'))

setProperty('combo.visible', getProperty('healthBar.visible'))
setProperty('combo.alpha', getProperty('healthBar.alpha'))

setProperty('misses.alpha', getProperty('healthBar.alpha'))
setProperty('misses.visible', getProperty('healthBar.visible'))

setProperty('score.visible', getProperty('healthBar.visible'))
setProperty('score.alpha', getProperty('healthBar.alpha'))
----------------------------------------------
setProperty('helthbarcopy2.scale.x', getProperty('healthBar.percent') / 417)
setProperty('helthbarcopy2.x', getProperty('barWbf.x') - getProperty('healthBar.percent') * 0.75 - 291)

setTextString('remainingH', 'Remaining Health:'..getProperty('healthBar.percent'))
setTextString('ratingname', 'Rating:'..ratingFC)
setTextString('misses', 'Misses:'..misses)
setTextString('score', 'Score:'..score)
setTextString('combo', 'MaxCombo:'..combo)


if getProperty('iconP1.flipX') == false then
setProperty('iconP1.x', getProperty('barWbf.x') - 145)
setProperty('iconP2.x', getProperty('barW.x') + 180)
end

end


Can = 0
function goodNoteHit(id, direction, noteType, isSustainNote)--combo shit
if not isSustainNote then
Can = Can + 1
if Can >= combo then
combo = combo + 1
end
end
end

function noteMiss(id, direction, noteType, isSustainNote)
Can = 0
end

function onBeatHit()--new icon beat thing
setProperty('iconP2.scale.x', 0.9)
setProperty('iconP2.scale.y', 0.9)
setProperty('iconP1.scale.x', 0.9)
setProperty('iconP1.scale.y', 0.9)
doTweenX('beatsmallrbf', 'iconP1.scale', 0.6, 1, 'circOut')
doTweenX('beatsmallropp', 'iconP2.scale', 0.6, 1, 'circOut')
end