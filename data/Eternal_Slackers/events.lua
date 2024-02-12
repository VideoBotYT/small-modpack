function onCreate()
addCharacterToList('Corr_rigby','dad')
addCharacterToList('Corr_mordecai','gf')
addCharacterToList('Corr_rigby_fliped','dad')--i hate myself for doing this in this way
end

function rgbToHex(array)
return string.format('%.2x%.2x%.2x', array[1], array[2], array[3])
end

function onCreatePost()
setProperty('gf.alpha', 0)
setProperty('camGame.alpha', 0)
setProperty('camHUD.alpha', 0)
doTweenZoom('si', 'camGame', 0.2, 0.01)

makeLuaText('txt1', 'SHUT UP!!', 0,350,400)
setObjectCamera('txt1', 'other')
setTextSize('txt1', 100)
setProperty('txt1.alpha', 0)
setTextFont('txt1', 'Walk-Around-the-Block.ttf')
setTextColor('txt1', '91744F')
addLuaText('txt1', false)

makeLuaText('txt2', 'NO RIGBY!!!', 0,50,400)
setObjectCamera('txt2', 'other')
setTextSize('txt2', 100)
setProperty('txt2.alpha',0)
setTextFont('txt2', 'Walk-Around-the-Block.ttf')
setTextColor('txt2', '6E9FFC')
addLuaText('txt2', true)
if shadersEnabled then
initLuaShader("glitchy")
setSpriteShader("txt1", "glitchy")
setShaderFloat('txt1', 'AMT', 0.1)
setShaderFloat('txt1', 'SPEED', 0.5)

setSpriteShader("txt2", "glitchy")
setShaderFloat('txt2', 'AMT', 0.1)
setShaderFloat('txt2', 'SPEED', 0.5)
end

makeLuaSprite('vig', 'vig', 0,0)
setProperty('vig.alpha', 0)
setObjectCamera('vig', 'hud')
addLuaSprite('vig', false)

makeLuaSprite('iconP3', 'icons/icon-Corr-mordecai', 0,getProperty('barWbf.y') + 10)
setProperty('iconP3.visible', false)
addLuaSprite('iconP3', true)
setProperty('iconP3.x', getProperty('iconP2.x') + 180)
setObjectCamera('iconP3', 'hud')

setProperty("iconP3._frame.frame.y", 0)
setProperty("iconP3._frame.frame.width", 150)
setProperty("iconP3._frame.frame.height", 150)
end

function onBeatHit()
setProperty('iconP3.scale.x', 0.8)
setProperty('iconP3.scale.y', 0.8)
doTweenX('beatsmallrmorx', 'iconP3.scale', 0.6, 1, 'circOut')
doTweenY('beatsmallrmory', 'iconP3.scale', 0.6, 1, 'circOut')
end

function onUpdatePost()
if getProperty('iconP1.flipX') == true then
setProperty('iconP2.x', getProperty('barWbf.x') - 142)
setProperty('iconP1.x', getProperty('barW.x') + 175)
end
if shadersEnabled then
if getProperty('txt1.visible') == true then
setShaderFloat('txt1', 'iTime', os.clock())
end
if gfName == 'Mordecai' then
setShaderFloat('gf', 'iTime', os.clock())
end
end

if gfName == 'Corr_mordecai' then
setProperty('iconP3.alpha', getProperty('iconP2.alpha'))
setProperty('iconP3.visible', getProperty('iconP2.visible'))
end

if getProperty('healthBar.percent') >= 80 then
setProperty("iconP3._frame.frame.x", 150)
else
 setProperty("iconP3._frame.frame.x", 0)
end
end

function onSongStart()
doTweenAlpha('ei', 'camGame', 1, 22, 'sineInOut')
setProperty('songLength', 125000)

end

function onStepHit()

if curStep == 120 then
for i = 0,7 do
noteTweenAlpha('sj'..i, i, 0, 0.01)
end

elseif curStep == 128 then
setProperty('camHUD.alpha', 1)
elseif curStep == 248 then
for i = 4,7 do
noteTweenAlpha('sj'..i, i, 1, 0.8, 'quadInOut')
end

for i2 = 0,3 do
noteTweenAlpha('sfj'..i2, i2, 0.5, 0.8, 'quadInOut')
end

elseif curStep == 256 then
setProperty('camGame.alpha', 0)
elseif curStep == 374 then
dodocool = false
elseif curStep == 376 then
setProperty('camGame.alpha', 1)
setProperty('camHUD.alpha', 0)
setProperty('txt1.alpha', 1)
elseif curStep == 384 then
setProperty('txt1.visible', false)
setProperty('camHUD.alpha', 1)
elseif curStep == 764 then
doTweenAlpha('camGameout', 'camGame', 0, 1, 'expoOut')
doTweenAlpha('camHUD', 'camHUD', 0, 1.3, 'expoOut')
elseif curStep == 768 then
doTweenAlpha('camGameout', 'camGame', 1, 0.7, 'quadInOut')
doTweenAlpha('camHUD', 'camHUD', 1, 1, 'quadInOut')
elseif curStep == 1152 then
doTweenAlpha('camGameout', 'camGame', 0, 1, 'quadOut')
doTweenAlpha('camHUD', 'camHUD', 0, 1, 'quadOut')
elseif curStep == 1218 or curStep == 1266 or curStep == 1275 then
setProperty('camGame.alpha', 1)
doTweenAlpha('os', 'camGame', 0, 0.7, 'quadInOut')

elseif curStep == 1178 then
for i = 0,7 do
noteTweenAlpha('sj'..i, i, 0, 0.01)
end
setTextString('botplayTxt', ' ')

elseif curStep == 1240 then
setTextSize('nowr', 80)
setTextSize('timeTxt', 130)
setProperty('nowr.x', 170)
setProperty('nowr.y', 730)
setProperty('timeTxt.x', 805)
setProperty('timeTxt.y', 715)

doTweenY('timeTxty', 'timeTxt', 315, 2, 'elasticOut')
doTweenY('nowry', 'nowr', 330, 2, 'elasticOut')

setProperty('timeTxt.visible', true)
setProperty('timeTxt.alpha', 1)
setProperty('camHUD.alpha', 1)
runTimer('run', 0.005, 0)

elseif curStep == 1272 then
setProperty('gf.alpha', 1)
setProperty('dad.alpha', 0)

elseif curStep == 1280 then
triggerEvent('Change Character', 'dad', 'Corr_rigby_fliped')
setProperty('dad.x', -1200)
setTextString('botplayTxt', 'THE BOT IS DOING ALL THE WORK')
setProperty('dad.alpha', 1)
cancelTimer('run')
doTweenAlpha('os', 'camGame', 1, 0.01)
doTweenAlpha('camHUD', 'camHUD', 1, 0.01)

runHaxeCode([[
 game.iconP1.changeIcon('mordecai');
 ]])
setHealthBarColors(rgbToHex(getProperty('dad.healthColorArray')),'6082F7')

setProperty('iconP1.flipX', true)
setProperty('iconP2.flipX', true)

setProperty('helthbarcopy2.color', getColorFromHex('6082F7'))
setTextSize('nowr', 15)
setTextSize('timeTxt', 32)
setProperty('nowr.x', getProperty('barW.x') + 10)
setProperty('nowr.y', getProperty('barW.y') + 109)

setProperty('timeTxt.x', getProperty('barW.x') + 55)
setProperty('timeTxt.y', getProperty('barW.y') + 109)

for i = 4,7 do
noteTweenAlpha('sj'..i, i, 1, 0.01)
end

for i2 = 0,3 do
noteTweenAlpha('sfj'..i2, i2, 0.5, 0.01)
end

elseif curStep == 1532 then
doTweenAlpha('camGameout', 'camGame', 0, 1, 'expoOut')
doTweenAlpha('camHUD', 'camHUD', 0, 1.5, 'expoOut')
elseif curStep == 1536 then
doTweenAlpha('camGameout', 'camGame', 1, 0.7, 'quadInOut')
doTweenAlpha('camHUD', 'camHUD', 1, 1, 'quadInOut')
setProperty('boyfriend.alpha', 0)

elseif curStep == 1786 then
doTweenAlpha('camGameout', 'camGame', 0, 0.7, 'sineInOut')

elseif curStep == 1791 then
setProperty('Fortnite_battle_pass.alpha', 0)--had to use an alpha, because if i don't it will clash with the 'WBG' event
setProperty('iconP1.alpha', 0)
setProperty('healthBar.alpha', 0)
setProperty('iconP2.alpha', 0)
setProperty('scoreTxt.alpha', 0)
setProperty('timeTxt.alpha', 0)

elseif curStep == 1792 then
doTweenAlpha('camGameout', 'camGame', 0.5, 1, 'sineInOut')
setProperty('vig.alpha', 1)

elseif curStep == 1818 or curStep == 1850 or curStep == 1882 or curStep == 1914 then
doTweenAlpha('camGameout', 'camGame', 0, 0.7, 'sineInOut')
elseif curStep == 1824 or curStep == 1856 or curStep == 1888 then
doTweenAlpha('camGameout', 'camGame', 0.5, 1, 'sineInOut')
elseif curStep == 1920 then
setProperty('dad.alpha', 0)
doTweenAlpha('camGameout', 'camGame', 1, 1, 'sineInOut')
elseif curStep == 1978 then
doTweenAlpha('camGameout', 'camGame', 0, 1, 'sineInOut')
elseif curStep == 1984 then
setProperty('dad.alpha', 1)
doTweenAlpha('camGameout', 'camGame', 1, 1, 'sineInOut')
elseif curStep == 2048 then
setProperty('Fortnite_battle_pass.alpha', 1)
setProperty('boyfriend.alpha', 1)
removeLuaSprite('vig', true)
if shadersEnabled then
setSpriteShader("gf", "glitchy")
setShaderFloat('gf', 'AMT', 0.03)
setShaderFloat('gf', 'SPEED', 0.3)
end
elseif curStep == 2298 then
removeSpriteShader('gf')
setProperty('txt1.visible', true)
setTextString('txt1', 'AHHHHHH')
elseif curStep == 2306 then
setProperty('txt2.alpha',1)
setProperty('txt1.x', 700)
elseif curStep == 2320 then
setShaderFloat('txt2', 'AMT', 0.2)
doTweenAlpha('txtgone', 'txt1', 0,1,'quadInOut')
doTweenAlpha('txtgone2', 'txt2', 0,1,'quadInOut')
doTweenAlpha('hudgone', 'camHUD', 0,1,'quadInOut')

elseif curStep == 2338 then
setProperty('txt1.visible', false)
setProperty('txt2.visible', false)

runHaxeCode([[
 game.iconP1.changeIcon('bf');
 ]])
setProperty('iconP3.visible', true)
setProperty('iconP1.flipX', false)
setProperty('iconP2.flipX', false)

setHealthBarColors(rgbToHex(getProperty('dad.healthColorArray')),rgbToHex(getProperty('boyfriend.healthColorArray')))

setProperty('helthbarcopy2.color', getColorFromHex(rgbToHex(getProperty('boyfriend.healthColorArray'))))
triggerEvent('Change Character', 'dad', 'Corr_rigby')
triggerEvent('Change Character', 'gf', 'Corr_mordecai')

setProperty('dad.x' ,-2200)
setProperty('gf.x', -1900)
setProperty('gf.y', 450)

elseif curStep == 2348 then
setProperty('txt1.visible', true)
doTweenAlpha('txtgone', 'txt1', 1,0.01)
setTextString('txt1', 'WHOS')
setProperty('txt1.x', 500)
elseif curStep == 2353 then
setTextString('txt1', 'PLAYER ONE')
setProperty('txt1.x', 300)
elseif curStep == 2363 then
setTextString('txt1', 'NOW')
setProperty('txt1.x', 530)
elseif curStep == 2368 then
doTweenAlpha('1', 'camGame', 1, 1, 'sineInOut')
doTweenAlpha('2', 'camHUD', 1, 1, 'sineInOut')
doTweenAlpha('3', 'txt1', 0, 1, 'sineInOut')
elseif curStep == 2384 then
setProperty('txt1.visible', false)
elseif curStep == 2748 then
doTweenAlpha('camGameout', 'camGame', 0, 1, 'expoOut')
doTweenAlpha('camHUD', 'camHUD', 0, 1.5, 'expoOut')
elseif curStep == 2752 then
doTweenAlpha('camGameout', 'camGame', 1, 0.7, 'quadInOut')
doTweenAlpha('camHUD', 'camHUD', 1, 1, 'quadInOut')

elseif curStep == 2875 then
doTweenAlpha('os', 'camGame', 0, 1, 'expoOut')
elseif curStep == 2880 then
dodocool = true
setProperty('gf.alpha', 0)
elseif curStep == 2914 or curStep == 2978 then
setProperty('gf.alpha', 1)
setProperty('dad.alpha', 0)
elseif curStep == 2946 then
setProperty('gf.alpha', 0)
setProperty('dad.alpha', 1)
elseif curStep == 3006 then
dodocool = false
elseif curStep == 3008 then
doTweenAlpha('os', 'camGame', 1, 0.01)
setProperty('dad.alpha', 1)
elseif curStep == 3132 then
doTweenAlpha('camGameout', 'camGame', 0, 0.7, 'expoOut')
elseif curStep == 3136 then
doTweenAlpha('camGameout', 'camGame', 1, 0.01)
setProperty('txt2.visible', true)
setProperty('txt1.visible', true)
setProperty('txt2.alpha', 1)
setProperty('txt1.alpha', 1)
setTextString('txt1', 'WOOOOOOOOOOW!!')
setTextString('txt2', 'WOOOOOOOOOOW!!')
setProperty('txt1.x', 200)
setProperty('txt2.x', 200)
setProperty('txt1.y', 400)
setProperty('txt2.y', 300)
elseif curStep == 3152 then
doTweenAlpha('camGameout', 'camGame', 0, 1.7, 'quadInOut')
doTweenAlpha('camhudout', 'camHUD', 0, 1.7, 'quadInOut')
doTweenAlpha('camhujc', 'txt1', 0, 1.7, 'quadInOut')
doTweenAlpha('camhuududout', 'txt2', 0, 1.7, 'quadInOut')--at this point i honestly don't care anymore
end
end

increase = false
function onTimerCompleted(tag)
if tag == 'run' then
if getProperty('songLength') < 340000 then
setProperty('songLength', getProperty('songLength') + 1000)

end
end
if tag == 'removeshadergf' then
if shadersEnabled then
setShaderFloat("gf", "binaryIntensity", 100)
setShaderFloat("iconP3", "binaryIntensity", 100)
setShaderFloat("gf", "negativity", 0)
setShaderFloat("iconP3", "negativity", 0)
end
end
end

dodocool = true
glitchn = true
function opponentNoteHit(id, direction, noteType, isSustainNote)
if dodocool and not isSustainNote then
setProperty('camGame.alpha', 1)
doTweenAlpha('os', 'camGame', 0, 0.7, 'quadInOut')
triggerEvent('Screen Shake', '0.3, 0.03')
end
end

function onEvent(n,v1,v2)
if n == 'camera_target' then
if v1 == 'all' then
folowcam = true
camX = -1250
camY = 700
elseif v1 == 'all2' then
folowcam = true
camX = -1650
camY = 700
else
 folowcam = false
end
end

if n == 'WBG' then
if v1 == 'Bon' or v1 == 'Won' then
setProperty('Fortnite_battle_pass.visible', false)
glitchn = false
elseif v1 == 'off' then
setProperty('Fortnite_battle_pass.visible', true)
glitchn = true
end
end
end

folowcam = true
camX = -1250
camY = 700
function onUpdate()
if folowcam then
setProperty('camFollow.x', camX)
setProperty('camFollow.y', camY)
end
end