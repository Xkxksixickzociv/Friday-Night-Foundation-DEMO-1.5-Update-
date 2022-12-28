function onCreate()

    --variables

	Dodged = false;
    canDodge = false;
    DodgeTime = 1.5;
    precacheImage('dodge');
end

function onEvent(name, value1, value2)
    if name == "dodgemechanic" then
    --Get Dodge time
	
    --Make Dodge Sprite
    makeAnimatedLuaSprite('dodge','dodge',0,0)
    addAnimationByPrefix('dodge','idle','',24,true)
    setObjectCamera('dodge','hud')
    addLuaSprite('dodge',true)
    setProperty('dodge.visible',true)
	
	--Set values so you can dodge
	canDodge = true;
	runTimer('Died', DodgeTime);
	
	end
end

function onUpdate()
   if canDodge == true and (getMouseX('camHUD') > 1150 and getMouseX('camHUD') < 1280) and (getMouseY('camHUD') > 582.5 and getMouseY('camHUD') < 720 and mousePressed('left')) or keyJustPressed('space') then
   
   Dodged = true;
   setProperty('dodge.visible',false)
   characterPlayAnim('boyfriend', 'dodge', true);
   characterPlayAnim('dad','shoot');
   setProperty('dad.specialAnim',true);
   setProperty('boyfriend.specialAnim', true);
   canDodge = false
   
   end
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'Died' and Dodged == false then
    doTweenAlpha('byebye', 'dodge', 0, 0.01, 'linear');
   playSound('heartbear')
   setProperty('health', 0);

   elseif tag == 'Died' and Dodged == true then
   Dodged = false
 end
end
