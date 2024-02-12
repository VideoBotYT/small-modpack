function onCreatePost()
makeLuaSprite("temporaryShader1")
setSpriteShader("temporaryShader1", "Glitchy")

runHaxeCode([[
trace(ShaderFilter);
game.camGame.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader1").shader)]);
game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader1").shader)]);
		]])

addHaxeLibrary("ShaderFilter1", "openfl.filters")

setShaderFloat("temporaryShader1", "AMT", 0)
setShaderFloat("temporaryShader1", "SPEED", 0)
end

function onUpdatePost()
setShaderFloat("temporaryShader1", "iTime", os.clock())
end

function onEvent(n,v1,v2)
if n == 'glitchy' then
setShaderFloat("temporaryShader1", "AMT", v1)
setShaderFloat("temporaryShader1", "SPEED", v2)
end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
if noteType == 'glitch_note' then
setShaderFloat("temporaryShader1", "AMT", 0.5)
setShaderFloat("temporaryShader1", "SPEED", 0.5)
runTimer('remove', 0.1)
end
end

function onTimerCompleted(t)
if t == 'remove' then
setShaderFloat("temporaryShader1", "AMT", 0)
setShaderFloat("temporaryShader1", "SPEED", 0)
end
end