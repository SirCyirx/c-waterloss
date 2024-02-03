local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('c-waterloss:server:takeinwaterphone', function ()
    local QBCore = exports['qb-core']:GetCoreObject()
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
    notfiygoingintowater = Config.Notify['Going_Into_Water_Text']
    notfiyoutofwater = Config.Notify['Out_of_Water_Text']

if Config.Inventory == 'qb' then
    Player.Functions.RemoveItem("phone", 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["phone"], "remove")
     if Config.BrokenItems == 'true' then
        Player.Functions.AddItem("brokenphone", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["brokenphone"], "add")
     end
     elseif  Config.Inventory == 'lj' then
        Player.Functions.RemoveItem("phone", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["phone"], "remove")
         if Config.BrokenItems == 'true' then
            Player.Functions.AddItem("brokenphone", 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["brokenphone"], "add")
         end
    end
    if Config.NotifyType == 'qb' then
    TriggerClientEvent('QBCore:Notify', src, notfiygoingintowater, 'error')


    elseif Config.NotifyType == "Okok" then
        TriggerClientEvent('okokNotify:Alert', src, "Server Info", notfiygoingintowater, 5000, 'type')


    elseif Config.NotifyType == "ox" then
        TriggerClientEvent('ox_lib:notify', src, { title = 'Server Info', description = notfiygoingintowater, })

    elseif Config.NotifyType == "mythic" then
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = notfiygoingintowater, style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
    end
end)

RegisterServerEvent('c-waterloss:server:takeinwaterradio', function ()
    local QBCore = exports['qb-core']:GetCoreObject()
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)

if Config.Inventory == 'qb' then
    Player.Functions.RemoveItem("radio", 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["radio"], "remove")
     if Config.BrokenItems == 'true' then
        Player.Functions.AddItem("brokenradio", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["brokenradio"], "add")
     end
    elseif Config.Inventory == 'lj' then
        Player.Functions.RemoveItem("radio", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["radio"], "remove")
         if Config.BrokenItems == 'true' then
            Player.Functions.AddItem("brokenradio", 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["brokenradio"], "add")
         end
    end
    if Config.NotifyType == 'qb' then
    TriggerClientEvent('QBCore:Notify', src, notfiygoingintowater, 'error')


    elseif Config.NotifyType == "Okok" then
        TriggerClientEvent('okokNotify:Alert', src, "Server Info", notfiygoingintowater, 5000, 'type')


    elseif Config.NotifyType == "ox" then
        TriggerClientEvent('ox_lib:notify', src, { title = 'Server Info', description = notfiygoingintowater, })

    elseif Config.NotifyType == "mythic" then
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = notfiygoingintowater, style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
    end
end)

RegisterServerEvent('c-waterloss:server:giveinwaterradio', function ()
    local QBCore = exports['qb-core']:GetCoreObject()
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)

if Config.Inventory == 'qb' then
        Player.Functions.AddItem("radio", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["radio"], "add")

    elseif Config.Inventory == 'lj' then
            Player.Functions.AddItem("radio", 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["radio"], "add")
    end
end)

RegisterServerEvent('c-waterloss:server:giveinwaterphone', function ()
    local QBCore = exports['qb-core']:GetCoreObject()
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)

if Config.Inventory == 'qb' then
        Player.Functions.AddItem("phone", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["phone"], "add")

    elseif Config.Inventory == 'lj' then
            Player.Functions.AddItem("phone", 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["phone"], "add")
    end
if Config.NotifyType == 'qb' then
        TriggerClientEvent('QBCore:Notify', src, notfiyoutofwater, 'error')
    
    
        elseif Config.NotifyType == "Okok" then
            TriggerClientEvent('okokNotify:Alert', src, 'Server Info', notfiyoutofwater, 5000, 'type')
    
    
        elseif Config.NotifyType == "ox" then
            TriggerClientEvent('ox_lib:notify', src, { title = 'Server Info', description = notfiyoutofwater, })
    
        elseif Config.NotifyType == "mythic" then
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = notfiyoutofwater, style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
        end
end)