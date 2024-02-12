function onCreate()
addLuaScript('custom_events/WBG')
end

function onCreatePost()
triggerEvent('WBG', 'Won')
end