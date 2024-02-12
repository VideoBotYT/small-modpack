function onCreate()
initLuaShader('thegayeffect')
makeLuaSprite('bg1', 'bgs/regular show/bg', -3075,-360)
scaleObject('bg1', 1.3,1.3)
setProperty('bg1.visible', true)
addLuaSprite('bg1', false)


makeLuaSprite('bg2', 'bgs/regular show/bg2', -3575,-560)
scaleObject('bg2', 1.5,1.5)
setProperty('bg2.visible', false)
addLuaSprite('bg2', false)

makeLuaSprite('bg3', 'bgs/regular show/bg3', -3280,-400)
scaleObject('bg3', 1.3,1.3)
setProperty('bg3.visible', false)
addLuaSprite('bg3', false)

makeLuaSprite('bg4', 'bgs/regular show/bg4', -3600,-670)
scaleObject('bg4', 1.5,1.5)
setProperty('bg4.visible', false)
addLuaSprite('bg4', false)
end

haveShader = true
function onUpdatePost()
if shadersEnabled then
if getProperty('bg2.visible') == true then

if haveShader then
setSpriteShader('bg2', 'thegayeffect')
setSpriteShader('dad', 'thegayeffect')
setSpriteShader('gf', 'thegayeffect')
setSpriteShader('boyfriend', 'thegayeffect')
setSpriteShader('pibby', 'thegayeffect')
haveShader = false
end

setShaderFloat('bg2', 'iTime', os.clock())
setShaderFloat('dad', 'iTime', os.clock())
setShaderFloat('gf', 'iTime', os.clock())
setShaderFloat('boyfriend', 'iTime', os.clock())
setShaderFloat('pibby', 'iTime', os.clock())

else
 if not haveShader then
removeSpriteShader('bg2')
removeSpriteShader('dad')
removeSpriteShader('boyfriend')
removeSpriteShader('gf')
removeSpriteShader('pibby')
haveShader = true
end
end
end
end


function onEvent(n,v1)
if n == 'ChangeBG' then
if shadersEnabled then
triggerEvent('glitchy', 0.5, 1)
runTimer('remove', 0.1)
end
if v1 == '1' then
setProperty('bg1.visible', true)
setProperty('bg2.visible', false)
setProperty('bg3.visible', false)
setProperty('bg4.visible', false)
elseif v1 == '2' then
setProperty('bg1.visible', false)
setProperty('bg2.visible', true)
setProperty('bg3.visible', false)
setProperty('bg4.visible', false)
elseif v1 == '3' then
setProperty('bg1.visible', false)
setProperty('bg2.visible', false)
setProperty('bg3.visible', true)
setProperty('bg4.visible', false)
elseif v1 == '4' then
setProperty('bg1.visible', false)
setProperty('bg2.visible', false)
setProperty('bg3.visible', false)
setProperty('bg4.visible', true)
elseif v1 == '5' then
runTimer('ChangeBGrep', 0.05, 5)
if shadersEnabled then
triggerEvent('glitchy', 0.3, 1)
end

end
end
end


function onTimerCompleted(t)
if shadersEnabled then
if t == 'remove' then
setShaderFloat("temporaryShader1", "AMT", 0)
setShaderFloat("temporaryShader1", "SPEED", 0)
end
end
if t == 'ChangeBGrep' then
triggerEvent('ChangeBG', ''..getRandomInt(1,4))
end
end


--[[
chr = 'bg4'
x = 910
y = 935
function onUpdate()
if keyPressed ('left') then
x = x - 5
debugPrint('X',x)
elseif keyPressed ('down') then
y = y + 5
debugPrint('Y',y)
elseif keyPressed ('up') then
y = y - 5
debugPrint('Y',y)
elseif keyPressed ('right') then
x = x + 5
debugPrint('X',x)
end

setProperty(chr..'.x', x)
setProperty(chr..'.y', y)
end]]