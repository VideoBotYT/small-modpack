function onCreate()
setProperty('introSoundsSuffix', '-rig')
setProperty('countdownSprite.camera', 'camOther')
precacheSound('intro1-Mor')
precacheSound('intro2-Mor')
precacheSound('intro3-Mor')
precacheSound('introGo-Mor')
end

local sounds = {
 'intro1-Mor', 'intro2-Mor', 'intro3-Mor', 'introGo-Mor'
}
function onCountdownTick(counter)
playSound(sounds[counter + 1], 0.5)
end