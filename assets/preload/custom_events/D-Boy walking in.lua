function onCreate()
    end

function onEvent(name, value1, value2)
    if name == "D-Boy walking in" then
    makeAnimatedLuaSprite('D-boy', 'dboy1',500,500);
	addAnimationByPrefix('D-boy', 'walk', 'dboywalk', 24, true);
	addLuaSprite('D-boy', true);
	objectPlayAnimation('D-boy', 'dboywalk', true);
  doTweenX("D-boy", "D-boy", -100, 4.0, "linear")	
	end
end
