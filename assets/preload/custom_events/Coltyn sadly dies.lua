function onCreate()
    end

function onEvent(name, value1, value2)
    if name == "Coltyn sadly dies" then
  makeLuaSprite('scp173', '173_coltyn',700,500);
  addLuaSprite('scp173', true);
  makeAnimatedLuaSprite('coltyn', 'coltyn',1100,500);
	addAnimationByPrefix('coltyn', 'idle', 'coltyndie', 24, true);
	addLuaSprite('coltyn', true);
	objectPlayAnimation('coltyn', 'coltyndie', true);
  setProperty('dad.visible', false);
	end
end
