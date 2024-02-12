function onCreatePost()
makeLuaSprite('intro', 'hudstuff/RS_intro', 0,0)
setObjectCamera('intro', 'other')
scaleObject('intro', 1, 1)
addLuaSprite('intro', true)

makeLuaText('introtxt', 'NOT SO REGULAR', 0,280,300)
setTextSize('introtxt', 80)
setTextFont('introtxt', 'Walk-Around-the-Block.ttf')
setObjectCamera('introtxt', 'other')
addLuaText('introtxt', true)



makeLuaText('introtxt2', 'CREATED BY', 0,250,250)
setTextSize('introtxt2', 40)
setTextFont('introtxt2', 'Walk-Around-the-Block.ttf')
setObjectCamera('introtxt2', 'other')
addLuaText('introtxt2', true)

setProperty('introtxt2.visible', false)
setProperty('camOther.alpha',0)
setProperty('camHUD.alpha',0)
setProperty('camGame.alpha',0)


makeLuaText('txt1', 'ILL KILL YOU', 0,240,400)
setObjectCamera('txt1', 'other')
setTextSize('txt1', 100)
setProperty('txt1.alpha',0)
setTextFont('txt1', 'Walk-Around-the-Block.ttf')
setTextColor('txt1', '6E9FFC')
addLuaText('txt1', true)

if shadersEnabled then
setSpriteShader("txt1", "glitchy")
setShaderFloat('txt1', 'AMT', 0.2)
setShaderFloat('txt1', 'SPEED', 0.5)
end
setProperty('gf.visible', false)--kill the bitch
end

function onUpdatePost()
if shadersEnabled then
if luaTextExists('txt1') then
setShaderFloat('txt1', 'iTime', os.clock())
end
end
end

function onSongStart()
runTimer('chang', 0.7)
doTweenAlpha('sh', 'camOther', 1, 0.5, 'quadInOut')
end

function onTimerCompleted(t)
if t == 'chang' then
doTweenColor('ch', 'intro', '2410c2', 1.5, 'quadInOut')
runTimer('hide', 0.5)
elseif t == 'hide' then
setTextString('introtxt', ' ')
setProperty('camHUD.alpha',1)
setProperty('camGame.alpha',1)
runTimer('show', 0.3)
elseif t == 'show' then
setProperty('introtxt2.visible', true)
setProperty('introtxt.x', 280)
setProperty('introtxt.y', 310)
setProperty('introtxt2.y', 260)
setTextString('introtxt', 'LIQUID PLASTIC')

end
end

beat = 0
function onStepHit()
if curStep == 32 then
removeLuaSprite('intro', true)
removeLuaText('introtxt', true)
removeLuaText('introtxt2', true)
elseif curStep == 160 then
beat = 1
elseif curStep == 276 then
setProperty('txt1.alpha',1)
elseif curStep == 288 then
removeLuaText('txt1', true)
if shadersEnabled then
removeSpriteShader('txt1')
end
elseif curStep == 668 then
doTweenAlpha('is', 'camGame', 0, 0.5, 'quadInOut')
elseif curStep == 672 then
doTweenAlpha('is', 'camGame', 1, 0.01)
beat = 0
elseif curStep == 864 then
beat = 1
elseif curStep == 911--[[:troll:]] then
beat = 0
elseif curStep == 912 then
doTweenAlpha('kdb', 'camGame', 0, 2, 'sineInOut')
doTweenAlpha('kdbf', 'camHUD', 0, 2.5, 'sineInOut')
elseif curStep == 928 then
doTweenAlpha('kdb', 'camGame', 1, 0.01)
doTweenAlpha('kdbf', 'camHUD', 1, 0.01)
beat = 1
elseif curStep == 1183 then
beat = 0
elseif curStep == 1184 then
doTweenAlpha('jdn', 'camGame', 0, 3, 'sineInOut')
doTweenAlpha('jdcn', 'camHUD', 0, 3, 'sineInOut')
end
end

function onEvent(n,v1,v2)
if n == 'camera_target' then
if v1 == 'all' then
folowcam = true

else
 folowcam = false
end
end
end

folowcam = false
camX = -1250
camY = 700
function onUpdate()

if folowcam then
setProperty('camFollow.x', camX)
setProperty('camFollow.y', camY)
end
end

function onBeatHit()
if beat == 1 then
if curBeat %4 == 2 then
triggerEvent('Add Camera Zoom', 0.5, 0.5)
elseif curBeat %4 == 0 then
triggerEvent('Add Camera Zoom', 0.2, 0.2)

end
end
end