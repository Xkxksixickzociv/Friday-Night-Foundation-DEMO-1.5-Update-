function onCreate()
    end

function onEvent(name, value1, value2)
    if name == "Coltyn walking in" then
    makeAnimatedLuaSprite('coltyn', 'coltyn',1100,500);
	addAnimationByPrefix('coltyn', 'walk', 'coltynwalk', 24, true);
	addLuaSprite('coltyn', true);
	objectPlayAnimation('coltyn', 'coltynwalk', true);
	end
end
