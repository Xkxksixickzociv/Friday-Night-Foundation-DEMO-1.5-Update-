function onCreate()
    end

function onEvent(name, value1, value2)
    if name == "Return Opponent on its position1" then
  makeLuaSprite('scp173', 'no',700,0);
  addLuaSprite('scp173', true);
  makeAnimatedLuaSprite('coltyn', 'no',900,500);
	addAnimationByPrefix('coltyn', 'idle', 'GF Cheer', 24, true);
	addLuaSprite('coltyn', true);
	objectPlayAnimation('coltyn', 'GF Cheer', true);
  setProperty('dad.visible', true);
	end
end
