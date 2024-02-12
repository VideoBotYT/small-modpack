function onCreate()
setObjectOrder('WBG', 4)
setObjectOrder('dadGroup', 5)
setObjectOrder('gfGroup', 6)
setObjectOrder('boyfriendGroup', 7)
end

function onCreatePost()
makeLuaSprite('iconP3', 'icons/icon-Corr-rigby', getProperty('iconP2.x') + 160,getProperty('barWbf.y') + 30)
addLuaSprite('iconP3', true)
setObjectCamera('iconP3', 'hud')

setProperty("iconP3._frame.frame.y", 0)
setProperty("iconP3._frame.frame.width", 174)
setProperty("iconP3._frame.frame.height", 150)

setProperty('iconP3.scale.x', 0.5)
setProperty('iconP3.scale.y', 0.5)


makeLuaSprite('iconP4', 'icons/icon-pibby', getProperty('iconP1.x') + 770,getProperty('barWbf.y') + 25)
setProperty('iconP4.flipX', true)
addLuaSprite('iconP4', true)
setObjectCamera('iconP4', 'hud')

setProperty("iconP4._frame.frame.y", 0)
setProperty("iconP4._frame.frame.width", 150)
setProperty("iconP4._frame.frame.height", 150)

setProperty('iconP4.scale.x', 0.5)
setProperty('iconP4.scale.y', 0.5)
end

function onBeatHit()
setProperty('iconP3.scale.x', 0.7)
setProperty('iconP3.scale.y', 0.7)
doTweenX('beatsmallrmorx', 'iconP3.scale', 0.5, 1, 'circOut')
doTweenY('beatsmallrmory', 'iconP3.scale', 0.5, 1, 'circOut')

setProperty('iconP4.scale.x', 0.7)
setProperty('iconP4.scale.y', 0.7)
doTweenX('beatsmallrmorx2', 'iconP4.scale', 0.5, 1, 'circOut')
doTweenY('beatsmallrmory2', 'iconP4.scale', 0.5, 1, 'circOut')
end

function onUpdatePost()
setProperty('iconP3.alpha', getProperty('iconP2.alpha'))
setProperty('iconP3.visible', getProperty('iconP2.visible'))

setProperty('iconP4.alpha', getProperty('iconP2.alpha'))
setProperty('iconP4.visible', getProperty('iconP2.visible'))

if getProperty('gf.animation.curAnim.name') == 'hit' and getProperty('gf.flipX') == false then
setProperty('gf.flipX', true)
elseif not (getProperty('gf.animation.curAnim.name') == 'hit') and getProperty('gf.flipX') == true then
setProperty('gf.flipX', false)
end

if getProperty('healthBar.percent') >= 81 then
setProperty("iconP3._frame.frame.x", 155)
else
 setProperty("iconP3._frame.frame.x", 0)
end


if getProperty('healthBar.percent') <= 19 then
setProperty("iconP4._frame.frame.x", 150)
else
 setProperty("iconP4._frame.frame.x", 0)
end

end