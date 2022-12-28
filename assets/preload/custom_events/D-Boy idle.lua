function onCreate()
    end

function onEvent(name, value1, value2)
    if name == "D-Boy idle" then
    makeAnimatedLuaSprite('D-boy', 'dboy1',-100,500);
	addAnimationByPrefix('D-boy', 'idle', 'didle', 24, true);
	addLuaSprite('D-boy', true);
	objectPlayAnimation('D-boy', 'didle', true);
	end
end
