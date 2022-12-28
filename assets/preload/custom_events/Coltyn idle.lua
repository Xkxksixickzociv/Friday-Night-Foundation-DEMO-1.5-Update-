function onCreate()
    end

function onEvent(name, value1, value2)
    if name == "Coltyn idle" then
    makeAnimatedLuaSprite('coltyn', 'coltyn',1100,500);
	addAnimationByPrefix('coltyn', 'idle', 'coltynidle', 24, true);
	addLuaSprite('coltyn', true);
	objectPlayAnimation('coltyn', 'coltynidle', true);
	end
end
