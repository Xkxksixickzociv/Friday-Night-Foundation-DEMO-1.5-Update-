
state = true;
shouldAdd = true;

function onUpdate(elapsed)
	if (getMouseX('camHUD') > 1150 and getMouseX('camHUD') < 1280) and (getMouseY('camHUD') > 582.5 and getMouseY('camHUD') < 720 and mousePressed('left')) or keyPressed('space') then
		objectPlayAnimation('button', 'Pressed', false);
	else
		objectPlayAnimation('button', 'nonPress', false);
	end
end

function onCreate()  --random shit lol
	makeAnimatedLuaSprite('button', 'button', 1150, 582.5);
	addAnimationByPrefix('button', 'nonPress', 'nonPress', 24, false);
	addAnimationByPrefix('button', 'Pressed', 'Pressed', 12, false);
	addLuaSprite('button', false);
	setObjectCamera('button', 'other');
end
