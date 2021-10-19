AddEventHandler('rcore_pool:notification', function(serverId, message)
	TriggerClientEvent("esx:showNotification", serverId, message)
end)