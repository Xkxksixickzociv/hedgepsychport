function onCreate()
    makeLuaSprite('arriba', '', -110, -350)
	makeGraphic('arriba', 1500, 350, '000000')
	setObjectCamera('arriba', 'hud')
	addLuaSprite('arriba', false)
	
	makeLuaSprite('abajo', '', -110, 720)
	makeGraphic('abajo', 1500, 350, '000000')
	setObjectCamera('abajo', 'hud')
	addLuaSprite('abajo', false)
end

function onEvent(name, value1, value2)
   if name == 'barranegra' then
   if value1 == '1' then
   doTweenY('barra1', 'arriba', -170, 1, 'QuadOut')
   doTweenY('barra2', 'abajo', 540, 1, 'QuadOut')
   end
   if value1 == '0' then
   doTweenY('barra1', 'arriba', -350, 1, 'QuadOut')
   doTweenY('barra2', 'abajo', 720, 1, 'QuadOut')
   end
end
end