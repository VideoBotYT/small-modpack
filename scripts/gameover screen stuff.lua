function onCreate()
setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-dead'); --Character json file for the death animation
setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver'); --put in mods/music/
setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --put in mods/music/
end

function onGameOverStart()
runTimer('gli', 2.5)
makeLuaText('txtthing', 'YOU LOST', 0,300,80)
setTextSize('txtthing', 150)
setObjectCamera('txtthing', 'other')
setObjectCamera('boyfriend', 'other')-- i hate the game camera
setProperty('boyfriend.x', 430)
setProperty('boyfriend.y', 250)
setProperty('txtthing.alpha', 0)
setTextColor('txtthing', 'ff2525')
addLuaText('txtthing', true)

initLuaShader("glitch2")
setSpriteShader("txtthing", "glitch2")
end

startgli = false
dooddead = false
function onTimerCompleted(tag)
if tag == 'gli' then
initLuaShader("glitch2")
setSpriteShader("boyfriend", "glitch2")
doTweenAlpha('jd', 'txtthing', 1, 1, 'quadInOut')
setProperty('boyfriend.useFramePixels', true)
startgli = true
end
end

function onUpdatePost()
if startgli then
setShaderFloat("boyfriend", "iTime", os.clock())
setShaderFloat("txtthing", "iTime", os.clock())

end
end

function onGameOverConfirm(retry)
removeSpriteShader('boyfriend')
removeSpriteShader('txtthing')

startgli = false
doTweenAlpha('cnjz', 'boyfriend', 0, 1.5, 'backIn')
doTweenX('hs', 'boyfriend.scale', 0, 1.5, 'backIn')
doTweenY('wws', 'boyfriend.scale', 0, 1.5, 'backIn')

doTweenAlpha('cnjcz', 'txtthing', 0, 1.5, 'backIn')
doTweenX('hws', 'txtthing.scale', 0, 1.5, 'backIn')
doTweenY('wwws', 'txtthing.scale', 0, 1.5, 'backIn')
end