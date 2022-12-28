function onCreate()
    end

function onEvent(name, value1, value2)
    if name == "Return Opponent on its position" then
    makeAnimatedLuaSprite('D-boy', 'no',0,200);
	addAnimationByPrefix('D-boy', 'idle', 'GF Cheer', 24, true);
	addLuaSprite('D-boy', true);
	objectPlayAnimation('D-boy', 'GF Cheer', true);
  doTweenX("dad", "dad", -375, 0.1, "linear")	
	end
end
