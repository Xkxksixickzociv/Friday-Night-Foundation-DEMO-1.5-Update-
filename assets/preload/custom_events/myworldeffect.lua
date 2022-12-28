function onCreate()
    --variables
	Dodged = false;
    canDodge = false;
    DodgeTime = 1;
    precacheImage('Part2');
    precacheImage('CorrosionEffect');
end

function onEvent(name, value1, value2)
    if name == "myworldeffect" then
    --Get Dodge time
	
    --Make Dodge Sprite
    makeLuaSprite('effect','CorrosionEffect',-50,-50)
    makeLuaSprite('flash','CorrosionEffect',0,0)
    setObjectCamera('flash','hud')
    makeGraphic('flash',1280,720,'FFFFFF')
    makeLuaSprite('black','Part2',0,0)
    setObjectCamera('black','hud')
    makeGraphic('black',1280,720,'000000')
    addLuaSprite('black',false)
    setObjectCamera('effect','hud')
    addLuaSprite('effect',true)
    makeLuaSprite('bg','Part2',-800,-650)
    addLuaSprite('bg',false)
    setProperty('bg.alpha',0.4)
    setProperty('gf.visible',false)
    setProperty('black.alpha',0.4)
    doTweenAlpha('flash','flash',0,1)
    addLuaSprite('flash',true)
	--Set values so you can dodge
	
	end
end
local effect = true

function onUpdate()
    if effect then

        if curStep % 16 == 0 then
            doTweenAlpha('hello1', 'effect', 1, 1, 'linear');
        end
        
        if curStep % 16 == 4 then
            doTweenAlpha('hello1', 'effect', 0.5, 1, 'linear');
        end
    else
        doTweenAlpha('hello1', 'effect', 0, 0.01, 'linear');
    end
end