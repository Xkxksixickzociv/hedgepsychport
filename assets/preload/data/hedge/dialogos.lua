function onCreate()

makeLuaText('subs', 'Letra', 1000, 160, 143)
setTextString('subs',  '')
--setTextFont('subs', 'who asks satan.ttf')
setTextColor('FFFFFF', FFFFFF)
setTextSize('subs', 55);
addLuaText('subs')
setObjectCamera('subs', 'other');
setTextAlignment('subs', 'center')
		
makeLuaSprite('black', '', -450, 0)
makeGraphic('black', 1280, 720, '000000')
setObjectCamera('black', 'game');
scaleObject('black', 200, 150);
setProperty('black.alpha', 0)
addLuaSprite('black', true)
end

function onStepHit()
if curStep == 1263 then --lyrics
setTextString('subs',  'Mira')
end
if curStep == 1268 then --lyrics
setTextString('subs',  'Mira Esto!')
end
if curStep == 1276 then --lyrics
doTweenAlpha('o', 'subs', 0, 0.5, 'linear');
end
if curStep == 1380 then --lyrics
setTextString('subs',  '')
end
if curStep == 1392 then --lyrics
doTweenAlpha('o', 'subs', 1, 0.5, 'linear');
end
if curStep == 1394 then --lyrics
setTextString('subs',  'Bien')
end
if curStep == 1396 then --lyrics
setTextString('subs',  'Bien Hecho')
end
if curStep == 1401 then --lyrics
setTextString('subs',  'Bien Hecho, Mi')
end
if curStep == 1403 then --lyrics
setTextString('subs',  'Bien Hecho, Mi Turno!')
end
if curStep == 1407 then --lyrics
doTweenAlpha('o', 'subs', 0, 0.5, 'linear');
end
if curStep == 1450 then --lyrics
setTextString('subs',  '')
end
if curStep == 1809 then --lyrics
doTweenAlpha('o', 'subs', 1, 0.5, 'linear');
setTextString('subs',  'Je')
end
if curStep == 1811 then --lyrics
setTextString('subs',  'Je Je')
end
if curStep == 1812 then --lyrics
setTextString('subs',  'Je Je Je')
end
if curStep == 1814 then --lyrics
setTextString('subs',  'Je Je Je Je')
end
if curStep == 1816 then --lyrics
setTextString('subs',  'Je Je Je Je Je')
end
if curStep == 1818 then --lyrics
setTextString('subs',  'Je Je Je Je Je Je')
end
if curStep == 1820 then --lyrics
setTextString('subs',  'Je Je Je Je Je Je Je')
end
if curStep == 1823 then --lyrics
doTweenAlpha('o', 'subs', 0, 0.2, 'linear');
end
end