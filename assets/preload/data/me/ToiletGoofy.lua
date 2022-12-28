function onStepHit()
  if curStep==1 then
	makeLuaSprite('gtgtoToilet', 'toiletvignette', 0, 0)
	scaleObject('gtgtoToilet', 1, 1)
    setObjectCamera('gtgtoToilet', 'hud')
	setLuaSpriteScrollFactor('gtgtoToilet', 0.0, 0.0);

	addLuaSprite('gtgtoToilet', false)
	precacheImage('gtgtoToilet')
	  runTimer('ADD NOW',0.0)
	end
end


function onTimerCompleted(tag, loops, loopsLeft)
  if tag == 'ADD NOW' then
    doTweenColor('gtgtoToilet', 'gtgtoToilet', 'FFFFFFFF', 0.1,'quartIn');
	  runTimer('Get out',0.5)
end
  if tag == 'Get out' then
  doTweenAlpha('gtgtoToilet','gtgtoToilet',0,1)
	  runTimer('ADD NOW',4)
	end
end
function opponentNoteHit()
  setProperty('defaultCamZoom',0.5)
end
function goodNoteHit()
  setProperty('defaultCamZoom',0.6)
  end