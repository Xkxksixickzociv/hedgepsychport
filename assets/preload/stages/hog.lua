function onCreate()
Dodged = false;
canDodge = false;

addCharacterToList('hog-glitch')
addCharacterToList('gf-glitch')

makeLuaSprite('hogBg', 'hog/bg', -1800, -600);
setScrollFactor('hogBg', 1.1, 0.9);
scaleObject('hogBg', 2, 2);
addLuaSprite('hogBg')

makeLuaSprite('hogMotain', 'hog/motains', 0, -50);
setScrollFactor('hogMotain', 1.1, 0.9);
scaleObject('hogMotain', 1.5, 1.5);
addLuaSprite('hogMotain')

makeAnimatedLuaSprite('hogWaterFalls', 'hog/Waterfalls', -1100, 200);
addAnimationByPrefix('hogWaterFalls', 'water', 'British', 12, true);
objectPlayAnimation('hogWaterFalls', 'water', true)
setScrollFactor('hogWaterFalls', 1.1, 1.1);
addLuaSprite('hogWaterFalls')

makeAnimatedLuaSprite('hogLoops', 'hog/HillsandHills', -200, 170);
addAnimationByPrefix('hogLoops', 'loops', 'DumbassMF', 12, true);
objectPlayAnimation('hogLoops', 'loops', true)
setScrollFactor('hogLoops', 1, 0.9);
addLuaSprite('hogLoops')

makeLuaSprite('hogTrees', 'hog/trees', -600, -120);
setScrollFactor('hogLoops', 1, 0.9);
addLuaSprite('hogTrees')

makeLuaSprite('hogFloor', 'hog/floor', -600, 700);
setScrollFactor('hogFloor', 1, 1);
scaleObject('hogFloor', 1.25, 1.25);
addLuaSprite('hogFloor')

makeLuaSprite('hogRocks', 'hog/rocks', -800, 550);
setScrollFactor('hogRocks', 1.1, 0.9);
scaleObject('hogRocks', 1.25, 1.25);
addLuaSprite('hogRocks', true)

makeLuaSprite('hogOverlay', 'hog/overlay', -1200, -800); -- menos 500
setScrollFactor('hogOverlay', 1.1, 0.9);
scaleObject('hogOverlay', 1.25, 1.25);
addLuaSprite('hogOverlay', true)

makeAnimatedLuaSprite('targetlock', 'hog/TargetLock', getCharacterX('boyfriend') - 150, getCharacterY('boyfriend') + 170);
setProperty('targetlock.visible', false);
scaleObject('targetlock', 1.5, 1.5);
addLuaSprite('targetlock', true)

-- ahora el stage glitch

makeLuaSprite('hogBg-glitch', 'hog/glitch/bg', -1800, -600);
setScrollFactor('hogBg-glitch', 1.1, 0.9);
scaleObject('hogBg-glitch', 2, 2);
setProperty('hogBg-glitch.visible', false);
addLuaSprite('hogBg-glitch')

makeAnimatedLuaSprite('hogWaterFalls-glitch', 'hog/glitch/Waterfalls', -1100, 200);
addAnimationByPrefix('hogWaterFalls-glitch', 'water', 'British', 12, true);
objectPlayAnimation('hogWaterFalls-glitch', 'water', true)
setScrollFactor('hogWaterFalls-glitch', 1.1, 1.1);
setProperty('hogWaterFalls-glitch.visible', false);
addLuaSprite('hogWaterFalls-glitch')

makeAnimatedLuaSprite('hogLoops-glitch', 'hog/glitch/HillsandHills', -200, 170);
addAnimationByPrefix('hogLoops-glitch', 'loops', 'DumbassMF', 12, true);
scaleObject('hogLoops-glitch', 1.6632, 1.6632);
objectPlayAnimation('hogLoops-glitch', 'loops', true)
setScrollFactor('hogLoops-glitch', 1, 0.9);
setProperty('hogLoops-glitch.visible', false);
addLuaSprite('hogLoops-glitch')

makeLuaSprite('hogTrees-glitch', 'hog/glitch/trees', -600, -120);
setScrollFactor('hogTrees-glitch', 1, 0.9);
scaleObject('hogTrees-glitch', 1.6597077244, 1.6597077244);
setProperty('hogTrees-glitch.visible', false);
addLuaSprite('hogTrees-glitch')

makeLuaSprite('hogFloor-glitch', 'hog/glitch/floor', -600, 700);
setScrollFactor('hogFloor-glitch', 1, 1);
scaleObject('hogFloor-glitch', 1.25, 1.25);
setProperty('hogFloor-glitch.visible', false);
addLuaSprite('hogFloor-glitch')

end

function onSongStart()
doTweenY('bg', 'hogOverlay', -350, 132)
end

function opponentNoteHit()
if dadName == 'hog-glitch' then
triggerEvent('Screen Shake','0.2,0.010','0.2,0.010')
end
end

function onBeatHit()
	if curStep > 1280 and curStep < 1791 then
		triggerEvent('Add Camera Zoom','0.03','0.06')
	end
end



function onEvent(name, value1, value2)
   if name == 'xd' then
   
doTweenZoom('screenZoom', 'camGame', 1, 0.5, 'elasticInOut');
triggerEvent('Change Character','1','hog-glitch')
triggerEvent('Change Character','2','gf-glitch')


setProperty('hogBg.visible', false);
setProperty('hogMotain.visible', false);
setProperty('hogWaterFalls.visible', false);
setProperty('hogLoops.visible', false);
setProperty('hogTrees.visible', false);
setProperty('hogFloor.visible', false);

setProperty('hogBg-glitch.visible', true);
setProperty('hogWaterFalls-glitch.visible', true);
setProperty('hogLoops-glitch.visible', true);
setProperty('hogTrees-glitch.visible', true);
setProperty('hogFloor-glitch.visible', true);
--hola yuta <3
 
for i = 0,4,1 do
				setPropertyFromGroup('playerStrums', i, 'texture', 'NOTA_GLITCH');
			end
end

  if name == 'dx' then
  
doTweenZoom('screenZoom', 'camGame', 0.68, 0.5, 'elasticInOut');
triggerEvent('Change Character','1','hog')
triggerEvent('Change Character','2','gf-hog')

setProperty('hogBg.visible', true);
setProperty('hogMotain.visible', true);
setProperty('hogWaterFalls.visible', true);
setProperty('hogLoops.visible', true);
setProperty('hogTrees.visible', true);
setProperty('hogFloor.visible', true);

setProperty('hogBg-glitch.visible', false);
setProperty('hogWaterFalls-glitch.visible', false);
setProperty('hogLoops-glitch.visible', false);
setProperty('hogTrees-glitch.visible', false);
setProperty('hogFloor-glitch.visible', false);
--popo
for i = 0,4,1 do
				setPropertyFromGroup('playerStrums', i, 'texture', 'NOTE_assets');
			end
end
  if name == 'lol' then
noteTweenX("ok1", 4, defaultPlayerStrumX0, 0.1, cubeInOut)
noteTweenX("ok2", 5, defaultPlayerStrumX1, 0.1, cubeInOut)
noteTweenX("ok3", 6, defaultPlayerStrumX2, 0.1, cubeInOut)
noteTweenX("ok4", 7, defaultPlayerStrumX3, 0.1, cubeInOut)
noteTweenY("ok5", 4, defaultPlayerStrumY0, 0.1, cubeInOut)
noteTweenY("ok6", 5, defaultPlayerStrumY1, 0.1, cubeInOut)
noteTweenY("ok7", 6, defaultPlayerStrumY2, 0.1, cubeInOut)
noteTweenY("ok8", 7, defaultPlayerStrumY3, 0.1, cubeInOut)


if not middlescroll then
noteTweenAlpha('op0a', 0, 1, 0.5)
noteTweenAlpha('op1a', 1, 1, 0.5)
noteTweenAlpha('op2a', 2, 1, 0.5)
noteTweenAlpha('op3a', 3, 1, 0.5)
else
noteTweenAlpha('op0a', 0, 0.5, 0.5)
noteTweenAlpha('op1a', 1, 0.5, 0.5)
noteTweenAlpha('op2a', 2, 0.5, 0.5)
noteTweenAlpha('op3a', 3, 0.5, 0.5)
end
end
  if name == 'waa' then
  noteTweenX("ok1", 4, getRandomFloat(50, 250), 0.01, cubeInOut)
  noteTweenX("ok2", 5, getRandomFloat(300, 500), 0.01, cubeInOut)
  noteTweenX("ok3", 6, getRandomFloat(550, 750), 0.01, cubeInOut)
  noteTweenX("ok4", 7, getRandomFloat(800, 1000), 0.01, cubeInOut)
  
  
  if not downscroll then
  noteTweenY("ok5", 4, getRandomFloat(25, 225), 0.01, cubeInOut)
  noteTweenY("ok6", 5, getRandomFloat(25, 225), 0.01, cubeInOut)
  noteTweenY("ok7", 6, getRandomFloat(25, 225), 0.01, cubeInOut)
  noteTweenY("ok8", 7, getRandomFloat(25, 225), 0.01, cubeInOut)
  else
  noteTweenY("ok5", 4, getRandomFloat(325, 525), 0.01, cubeInOut)
  noteTweenY("ok6", 5, getRandomFloat(325, 525), 0.01, cubeInOut)
  noteTweenY("ok7", 6, getRandomFloat(325, 525), 0.01, cubeInOut)
  noteTweenY("ok8", 7, getRandomFloat(325, 525), 0.01, cubeInOut)
  end
  
  noteTweenAlpha('op0a', 0, 0, 0.5)
  noteTweenAlpha('op1a', 1, 0, 0.5)
  noteTweenAlpha('op2a', 2, 0, 0.5)
  noteTweenAlpha('op3a', 3, 0, 0.5)
  end
  
   if name == 'target' then
   addAnimationByPrefix('targetlock', 'lock', 'TargetLock', 24, false);
   objectPlayAnimation('targetlock', 'lock', false)
   setProperty('targetlock.visible', true);
   canDodge = true;
   end
   
end

function onUpdate()
if getProperty("targetlock.animation.curAnim.finished") == true and Dodged == false then
      removeLuaSprite('targetlock', true)
	  triggerEvent('Play Animation', 'hurt', 'bf')
	  setProperty('health', 0);
end

if getProperty("targetlock.animation.curAnim.finished") == true and Dodged == true then
      removeLuaSprite('targetlock', true)
      triggerEvent('Play Animation', 'dodge', 'bf')
end

if canDodge == true and keyJustPressed('space') or canDodge == true and mousePressed('left') then
   
   Dodged = true;
  
   canDodge = false
   
   end
end