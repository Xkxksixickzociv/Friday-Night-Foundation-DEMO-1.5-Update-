function onCreate()
	makeAnimatedLuaSprite('bg1','blinkBar',350,365);
  addAnimationByPrefix('bg1', 'idle', 'time bar', 3, true);
  setObjectCamera('bg1', 'other');
  addLuaSprite('bg1', false);
end

function onUpdate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Blink Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'blinkNOTE_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'BLINKNOTE_splashes');
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Blink Note' then
		makeLuaSprite('image', 'Black', -375, -10);
   scaleObject('image',5.7,5.7)
		addLuaSprite('image', true);
		doTweenColor('hello', 'image', 'FFFFFFFF', 0.01, 'quartIn');
   setObjectCamera('image', 'true');
   	runTimer('wait', 0.2);
	makeAnimatedLuaSprite('bg1','blinkBar',350,365);
  addAnimationByPrefix('bg1', 'idle', 'time bar', 3, true);
  setObjectCamera('bg1', 'other');
  addLuaSprite('bg1', false);

	end
end

-- Called after the note miss calculations
-- Player missed a note by letting it go offscreen
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Blink Note' then
		setProperty('health', -500);
	end
end

function onTimerCompleted(tag, loops, loopsleft)
    if tag == 'wait' then
    doTweenAlpha('byebye', 'image', 0, 0.01, 'linear');
end
    if tag == 'bg1' then
    removeLuaSprite('bg1', true);
 end
end

function onTweenCompleted(tag)
    if tag == 'byebye' then
    removeLuaSprite('image', true);
  end
end
