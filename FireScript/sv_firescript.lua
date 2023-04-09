RegisterServerEvent("FireScript:FirePutOut")
AddEventHandler("FireScript:FirePutOut", function(x, y, z)
	TriggerClientEvent('FireScript:StopFireAtPosition', -1, x, y, z)
end)

RegisterCommand('startfire', function(source, args, rawCommand)
	TriggerClientEvent('FireScript:StartFireAtPlayer', -1, source, tonumber(args[1]), tonumber(args[2]), args[3] == "true")
	print("Début d'incendie")
end, false)

RegisterCommand('stopfire', function(source, args, rawCommand)
	TriggerClientEvent('FireScript:StopFiresAtPlayer', -1, source)
	print("Arrêt de l'incendie")
end, false)

RegisterCommand('stopallfires', function(source, args, rawCommand)
	TriggerClientEvent('FireScript:StopAllFires', -1)
	print("Arrêt de tout les incendies")
end, false)

RegisterCommand('startsmoke', function(source, args, rawCommand)
	TriggerClientEvent('FireScript:StartSmokeAtPlayer', -1, source, tonumber(args[1]))
	print("Début de la fumée")
end, false)

RegisterCommand('stopsmoke', function(source, args, rawCommand)
	TriggerClientEvent('FireScript:StopSmokeAtPlayer', -1, source)
	print("Arrêt de la fumée")
end, false)

RegisterCommand('stopallsmoke', function(source, args, rawCommand)
	TriggerClientEvent('FireScript:StopAllSmoke', -1)
	print("Arrêt de toutes les fumées")
end, false)

print('FireScript by Albo1125 (LUA, C#. FiveM) Traduit en FR par Ettyg99#2308')