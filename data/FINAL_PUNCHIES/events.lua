function onCreate()
setProperty('camGame.alpha', 0)
setProperty('camHUD.alpha', 0)
doTweenZoom('1', 'camGame', 10, 0.01)


makeLuaSprite('ready', 'ready', 300,190)
setObjectCamera('ready', 'hud')
setProperty('ready.alpha', 0)
addLuaSprite('ready')

makeLuaSprite('set', 'set', 300,190)
setObjectCamera('set', 'hud')
setProperty('set.alpha', 0)
addLuaSprite('set')

makeLuaSprite('go', 'go', 330,150)
setObjectCamera('go', 'hud')
setProperty('go.alpha', 0)
addLuaSprite('go')


makeLuaSprite('ready2', 'ready', 300,190)
setObjectCamera('ready2', 'hud')
setProperty('ready2.alpha', 0)
addLuaSprite('ready2')

makeLuaSprite('set2', 'set', 300,190)
setObjectCamera('set2', 'hud')
setProperty('set2.alpha', 0)
addLuaSprite('set2')

makeLuaSprite('go2', 'go', 330,150)
setObjectCamera('go2', 'hud')
setProperty('go2.alpha', 0)
addLuaSprite('go2')

makeLuaText('txt1', 'ILL KILL YOU!!', 1000,150,400)
setObjectCamera('txt1', 'other')
setTextSize('txt1', 100)
setProperty('txt1.visible', false)
setTextFont('txt1', 'Walk-Around-the-Block.ttf')
if shadersEnabled then
setSpriteShader("txt1", "glitchy")
setShaderFloat('txt1', 'AMT', 0.1)
setShaderFloat('txt1', 'SPEED', 0.5)
end
setTextColor('txt1', '6E9FFC')
addLuaText('txt1', false)
end

function onSongStart()
doTweenAlpha('1', 'camGame', 1, 15)
doTweenZoom('2', 'camGame', 0.7, 15)
end


function onEvent(n,v1,v2)
if n == 'camera_target' then
if v1 == 'all' then

folowcam = true
else
 folowcam = false
end
end

if n == 'WBG' then
if v1 == 'Bon' or v1 == 'Won' then
setProperty('bg1.alpha', 0)
setProperty('bg2.alpha', 0)
setProperty('bg3.alpha', 0)
setProperty('bg4.alpha', 0)
setProperty('pibby.alpha', 0)
else
 setProperty('bg1.alpha', 1)
setProperty('bg2.alpha', 1)
setProperty('bg3.alpha', 1)
setProperty('bg4.alpha', 1)
setProperty('pibby.alpha', 1)
end
end
end

folowcam = false
camX = -1200
camY = 700
function onUpdate()
if folowcam then
setProperty('camFollow.x', camX)
setProperty('camFollow.y', camY)
end
if shadersEnabled then
if getProperty('txt1.visible') == true then
setShaderFloat('txt1', 'iTime', os.clock())
end
end
end

i = 0
function onStepHit()
if curStep == 256 then
beat = 1
elseif curStep == 384 then
beat = 0
playSound('intro1-Mor', 0.5)
playSound('intro1-rig', 0.5)

setProperty('iconP1.visible', false)
setProperty('healthBar.visible', false)
setProperty('iconP2.visible', false)
setProperty('scoreTxt.visible', false)
setProperty('timeTxt.visible', false)

for i = 0,7 do
noteTweenAlpha('odn'..i, i, 0, 0.01)
end

elseif curStep == 392 then
setProperty('ready2.alpha', 1)
setProperty('ready.alpha', 1)
doTweenAlpha('1', 'ready', 0, 0.6)
doTweenX('4', 'ready.scale', 1.7, 0.4)
doTweenY('7', 'ready.scale', 1.7, 0.4)
playSound('intro2-Mor', 0.5)
playSound('intro2-rig', 0.5)
elseif curStep == 400 then
doTweenX('4', 'ready.scale', 1.7, 0.01)
doTweenY('7', 'ready.scale', 1.7, 0.01)
doTweenAlpha('1', 'ready', 0, 0.01)

removeLuaSprite('ready', true)
removeLuaSprite('ready2', true)
setProperty('set2.alpha', 1)
setProperty('set.alpha', 1)
doTweenAlpha('2', 'set', 0, 0.6)
doTweenX('5', 'set.scale', 1.7, 0.4)
doTweenY('8', 'set.scale', 1.7, 0.4)
playSound('intro3-Mor', 0.5)
playSound('intro3-rig', 0.5)
elseif curStep == 408 then
doTweenAlpha('2', 'set', 0, 0.01)
doTweenX('5', 'set.scale', 1.7, 0.01)
doTweenY('8', 'set.scale', 1.7, 0.01)
removeLuaSprite('set', true)
removeLuaSprite('set2', true)

setProperty('go2.alpha', 1)
setProperty('go.alpha', 1)
doTweenAlpha('3', 'go', 0, 0.6)
doTweenX('6', 'go.scale', 1.7, 0.4)
doTweenY('9', 'go.scale', 1.7, 0.4)
playSound('introGo-Mor', 0.5)
playSound('introGo-rig', 0.5)
elseif curStep == 416 then
doTweenAlpha('3', 'go', 0, 0.01)
doTweenX('6', 'go.scale', 1.7, 0.01)
doTweenY('9', 'go.scale', 1.7, 0.01)
removeLuaSprite('go', true)
removeLuaSprite('go2', true)


setProperty('iconP1.visible', true)
setProperty('healthBar.visible', true)
setProperty('iconP2.visible', true)
setProperty('scoreTxt.visible', true)
setProperty('timeTxt.visible', true)

for i = 0,7 do
noteTweenAlpha('odn'..i, i, 1, 0.01)
end
beat = 2
elseif curStep == 496 then
beat = 3
elseif curStep == 543 or curStep == 904 or curStep == 1600 or curStep == 1872 then
beat = 0
elseif curStep == 560 then
setProperty('txt1.visible', true)
elseif curStep == 576 then
beat = 1
setProperty('txt1.visible', false)
elseif curStep == 832 or curStep == 1488 or curStep == 1616 then
beat = 2
elseif curStep == 976 then
doTweenAlpha('1', 'camGame', 0,0.5, 'expoOut')
doTweenAlpha('2', 'camHUD', 0,0.5, 'expoOut')
elseif curStep == 1072 then
doTweenAlpha('2', 'camHUD', 1,1)
setProperty('dad.visible', false)
setProperty('gf.visible', false)
elseif curStep == 1088 or curStep == 1128 or curStep == 1184 or curStep == 1216 then
setProperty('camGame.alpha', 1)
doTweenAlpha('1', 'camGame', 0,1.5)
elseif curStep == 1214 then
setProperty('gf.visible', true)
elseif curStep == 1248 then
setProperty('camGame.alpha', 1)
doTweenAlpha('1', 'camGame', 0,1)
elseif curStep == 1264 then
setProperty('gf.x', defaultGirlfriendX + 100)
setProperty('boyfriend.x', defaultBoyfriendX - 300)
doTweenAlpha('1', 'camGame', 1,0.01)
elseif curStep == 1336 then
doTweenAlpha('9e', 'camGame', 0,1.5,'expoOut')
elseif curStep == 1344 then
doTweenAlpha('9e', 'camGame', 0,0.01)
setProperty('dad.visible', true)
setProperty('gf.x', defaultGirlfriendX)
setProperty('boyfriend.x', defaultBoyfriendX)
doTweenAlpha('9e', 'camGame', 1,0.01)
setTextColor('txt1', '91744F')
setProperty('txt1.visible', true)
setTextString('txt1', 'AAAAAAAAA!!')
elseif curStep == 1360 then
setProperty('txt1.visible', false)
elseif curStep == 2896 then
doTweenAlpha('odn', 'camGame', 0, 1)
doTweenAlpha('ofdn', 'camHUD', 0, 1)
elseif curStep == 2912 then
doTweenAlpha('odn', 'camGame', 1, 0.01)
doTweenAlpha('ofdn', 'camHUD', 1, 0.01)
setProperty('dad.visible', false)
setProperty('pibby.visible', false)
setProperty('boyfriend.visible', false)
elseif curStep == 2928 then
setProperty('dad.visible', true)
setProperty('pibby.visible', true)
setProperty('boyfriend.visible', true)
elseif curStep == 3056 then
doTweenAlpha('odn', 'camGame', 0, 1)
doTweenAlpha('oddn', 'camHUD', 0, 1)
elseif curStep == 3072 then
setTextString('txt1', 'STOP TALKING!!')
setProperty('txt1.visible', true)
doTweenAlpha('odn', 'camGame', 1, 0.01)
doTweenAlpha('ofdn', 'camHUD', 1, 0.01)
setProperty('dad.visible', false)
setProperty('pibby.visible', false)
setProperty('boyfriend.visible', false)
elseif curStep == 3088 then
setProperty('dad.visible', true)
setProperty('pibby.visible', true)
setProperty('boyfriend.visible', true)
setProperty('txt1.visible', false)
elseif curStep == 3216 then
doTweenAlpha('1', 'camGame', 0,0.5, 'expoOut')
doTweenAlpha('2', 'camHUD', 0,0.5, 'expoOut')
elseif curStep == 3261 then
setProperty('bg1.alpha', 0)
setProperty('bg2.alpha', 0)
setProperty('bg3.alpha', 0)
setProperty('bg4.alpha', 0)
setProperty('gf.alpha', 0)
elseif curStep == 3272 then
setTextString('txt1', 'SHHHH')
setTextColor('txt1', '6E9FFC')
setProperty('txt1.visible', true)
setProperty('camGame.alpha', 1)
elseif curStep == 3276 then
setTextString('txt1', 'SHUT UP!!')
elseif curStep == 3280 then
doTweenAlpha('2', 'camHUD', 1,0.01)
setProperty('bg1.alpha', 1)
setProperty('bg2.alpha', 1)
setProperty('bg3.alpha', 1)
setProperty('bg4.alpha', 1)
setProperty('gf.alpha', 1)
removeLuaText('txt1', true)
beat = 2
elseif curStep == 3408 then
beat = 0
elseif curStep == 3552 then
doTweenAlpha('isj', 'camHUD', 1, 1)
elseif curStep == 3568 then
setProperty('gf.visible', false)
elseif curStep == 3600 then
doTweenAlpha('isdj', 'camGame', 0, 1.3)
elseif curStep == 3636 then
setProperty('gf.visible', true)
elseif curStep == 3616 then
doTweenAlpha('isjd', 'camHUD', 0, 0.5, 'expoOut')


end
end
beat = 0


function onBeatHit()
if curBeat %4 == 2 and beat == 1 then
triggerEvent('Add Camera Zoom', 0.2)
elseif curBeat %2 == 1 and beat == 2 then
triggerEvent('Add Camera Zoom', 0.2)
elseif curBeat %1 == 0 and beat == 3 then
triggerEvent('Add Camera Zoom', 0.2)
end
end