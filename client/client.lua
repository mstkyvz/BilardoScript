ESX = nil 
Citizen.CreateThread(function() 
	while ESX == nil do 
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end) 
		Citizen.Wait(50) 
	end 
end)
AddEventHandler("rcore_pool:openMenu", function()
    local elements = {}
	table.insert(elements, {label = "8 bolas", value = "eightballs"})
	table.insert(elements, {label = "14 bolas", value = "fourteenballs"})
	ESX.UI.Menu.Open('default',GetCurrentResourceName(),"rcore_pool_openMenu",
	{ 
		title = "Menú del billar", 
		align = "bottom-right", 
		elements = elements 
	}, function(data, menu)
		if data.current.value == "eightballs" then
			TriggerEvent('rcore_pool:setupTable', 'BALL_SETUP_8_BALL')
		elseif data.current.value == "fourteenballs" then
			TriggerEvent('rcore_pool:setupTable', 'BALL_SETUP_STRAIGHT_POOL')
		end
	end, function(data, menu) 
		menu.close() 
	end)
end)

AddEventHandler('rcore_pool:closeMenu', function()
	if ESX.UI.Menu.IsOpen("default","rcore_pool","rcore_pool_openMenu") then
		ESX.UI.Menu.CloseAll()
	end
end)