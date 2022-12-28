function onCreate()
    end

function onEvent(name, value1, value2)
    if name == "D-Boy fucking dies" then
    makeAnimatedLuaSprite('D-boy', 'dboy1',-275,200);
	addAnimationByPrefix('D-boy', 'idle', 'dboydeath', 24, true);
	addLuaSprite('D-boy', true);
	objectPlayAnimation('D-boy', 'dboydeath', true);
  doTweenX("dad", "dad", 35, 0.1, "linear")	
	end
end
