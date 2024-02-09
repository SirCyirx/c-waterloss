local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('c-waterloss:server:takeinwaterphone', function()
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
    if Config.BrokenItems == true then
        if Config.Inventory == 'qb' or Config.Inventory == 'lj' then
        Player.Functions.RemoveItem(Config.PhoneName, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.PhoneName], "remove")
        Player.Functions.AddItem(Config.BrokenPhoneName, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.BrokenPhoneName], "add")
        args = 1
        TriggerClientEvent('c-waterloss:client:notify', src, args)
        elseif Config.Inventory == 'ox' then
             if exports.ox_inventory:RemoveItem(src, Config.PhoneName, 1) then
             if exports.ox_inventory:AddItem(src, Config.BrokenPhoneName, 1) then
            args = 1
            TriggerClientEvent('c-waterloss:client:notify', src, args)
        end
    end
    end
    elseif Config.Giveback == true or Config.Giveback == false and Config.BrokenItems == false then
        if Config.Inventory == 'qb' or Config.Inventory == 'lj' then
            Player.Functions.RemoveItem(Config.PhoneName, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.PhoneName], "remove")
            args = 3
            TriggerClientEvent('c-waterloss:client:notify', src, args)
        elseif Config.Inventory == 'ox' then
            if exports.ox_inventory:RemoveItem(src, Config.PhoneName, 1) then
            args = 3
            TriggerClientEvent('c-waterloss:client:notify', src, args)
            end
        end
    end
end)

RegisterServerEvent('c-waterloss:server:takeinwaterradio', function()
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
    if Config.BrokenItems == true then
    if Config.Inventory == 'qb' or Config.Inventory == 'lj' then
    Player.Functions.RemoveItem(Config.RadioName, 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.RadioName], "remove")
    Player.Functions.AddItem(Config.BrokenRadioName, 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.BrokenRadioName], "add")
        args = 2 
        TriggerClientEvent('c-waterloss:client:notify', src, args)
    elseif Config.Inventory == 'ox' then
        if exports.ox_inventory:RemoveItem(src, Config.RadioName, 1) then
        if exports.ox_inventory:AddItem(src, Config.BrokenRadioName, 1) then
        args = 2
        TriggerClientEvent('c-waterloss:client:notify', src, args)
        end
    end
    end
    elseif Config.Giveback == true or Config.Giveback == false and Config.BrokenItems == false then
        if Config.Inventory == 'qb' or Config.Inventory == 'lj' then
        Player.Functions.RemoveItem(Config.RadioName, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.RadioName], "remove")
        args = 4 
        TriggerClientEvent('c-waterloss:client:notify', src, args)
    elseif Config.Inventory == 'ox' then
         if exports.ox_inventory:RemoveItem(src, Config.RadioName, 1) then
        args = 4
        TriggerClientEvent('c-waterloss:client:notify', src, args)
         end
       end
    end
end)

RegisterServerEvent('c-waterloss:server:giveinwaterphone', function()
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
        if Config.Giveback == true then
            if Config.Inventory == 'qb' or Config.Inventory == 'lj' then
            Player.Functions.AddItem(Config.PhoneName, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.PhoneName], "add")
            args = 5
            TriggerClientEvent('c-waterloss:client:notify', src, args)
        elseif Config.Inventory == 'ox' then
            if exports.ox_inventory:AddItem(src, Config.PhoneName, 1) then
            args = 5
            TriggerClientEvent('c-waterloss:client:notify', src, args)
            end
       end
    end
end)

RegisterServerEvent('c-waterloss:server:giveinwaterradio', function()
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
        if Config.Giveback == true then
            if Config.Inventory == 'qb' or Config.Inventory == 'lj' then
            Player.Functions.AddItem(Config.RadioName, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.RadioName], "add")
            args = 6
            TriggerClientEvent('c-waterloss:client:notify', src, args)
        elseif Config.Inventory == 'ox' then
           if exports.ox_inventory:AddItem(src, Config.RadioName, 1) then
            args = 6
            TriggerClientEvent('c-waterloss:client:notify', src, args)
           end
       end
    end
end)