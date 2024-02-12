function onCreate()
addCharacterToList('Corr_rigby', 'dad')
setProperty('camGame.alpha', 0)
setProperty('camHUD.alpha', 0)
setProperty('defaultCamZoom', 2)
doTweenZoom('3', 'camGame', 2, 0.01)
makeLuaText('txt1', 'IN YOUR FACE', 0,240,400)
setObjectCamera('txt1', 'other')
setTextSize('txt1', 100)
setProperty('txt1.alpha', 0)
setTextFont('txt1', 'Walk-Around-the-Block.ttf')
setTextColor('txt1', '91744F')
addLuaText('txt1', true)

if shadersEnabled then
setSpriteShader("txt1", "glitchy")
setShaderFloat('txt1', 'AMT', 0.1)
setShaderFloat('txt1', 'SPEED', 0.5)
end
setProperty('gf.visible', false)--kill the bitch

setProperty('gf.alpha', 0)
setProperty('gf.visible', false)
end

function onUpdatePost()
if shadersEnabled then
if getProperty('txt1.alpha') == 0 then
setShaderFloat('txt1', 'iTime', os.clock())
end
end
end

function onSongStart()
doTweenAlpha('1','camGame', 1, 10, 'sineInOut')
doTweenAlpha('2','camHUD', 1, 10, 'sineInOut')
doTweenZoom('3', 'camGame', 0.7, 10, 'sineInOut')
setProperty('defaultCamZoom', 0.7)
end

function onStepHit()
if curStep == 498 then
setProperty('txt1.alpha', 1)
elseif curStep == 508 then
if shadersEnabled then
setShaderFloat('txt1', 'AMT', 0)
removeSpriteShader('txt1')
end
removeLuaText('txt1', true)
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

if n == 'WBG' then
if v1 == 'Bon' or v1 == 'Won' then
setProperty('Fortnite_battle_pass.visible', false)
elseif v1 == 'off' then
setProperty('Fortnite_battle_pass.visible', true)
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