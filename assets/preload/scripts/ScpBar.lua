function onCreate()

	makeLuaSprite('ScpBar', 'healthBar', 0, 0)
	setObjectCamera('ScpBar', 'hud')
	
	addLuaSprite('ScpBar', true)
end

function onCreatePost()
    setProperty('ScpBar.alpha',  getPropertyFromClass('ClientPrefs', 'healthBarAlpha'))

    setProperty('ScpBar.angle', getProperty('healthBar.angle'))
    setProperty('ScpBar.y', getProperty('healthBar.y') - 6)
    setProperty('ScpBar.x', getProperty('healthBar.x') - -13)
    setObjectOrder('ScpBar', 4)
	setProperty('healthBarBG.visible', false)
	setProperty('healthBar.scale.y', 1)
	setObjectOrder('ScpBar', 4)
	setObjectOrder('healthBar', 3)
	setObjectOrder('healthBarBG', 2)
	setProperty('healthBar.x', getProperty('healthBar.x') + 20)
	setProperty('health.y', getProperty('healthBar.y') + 10)

end
