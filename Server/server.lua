RegisterServerEvent('c-waterloss:server:takeitems', function(args)
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
    if args == 1 then
    if Config.Inventory == "qb" or Config.Inventory == "lj" then
    Player.Functions.RemoveItem(Config.RadioName, 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.RadioName], "remove")
    elseif Config.Inventory == "ox" then
        exports.ox_inventory:RemoveItem(src, Config.RadioName, 1)
    end
    if Config.BrokenItems == true then
        if Config.Inventory == "qb" or Config.Inventory == "lj" then
            Player.Functions.AddItem(Config.BrokenRadioName, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.BrokenRadioName], "add")
        elseif Config.Inventory == "ox" then
            exports.ox_inventory:AddItem(src, Config.BrokenRadioName, 1)
        end
        Notificationsv(src, {Config.Lang['notie']}, Config.Lang['broken_in_water_radio'], 'error')
  elseif Config.BrokenItems == false then
       Notificationsv(src, {Config.Lang['notie']}, Config.Lang['take_in_water_radio'], 'error')
   end
end
    if args == 2 then
        if Config.Inventory == "qb" or Config.Inventory == "lj" then
            Player.Functions.RemoveItem(Config.PhoneName, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.PhoneName], "remove")
            elseif Config.Inventory == "ox" then
           exports.ox_inventory:RemoveItem(src, Config.PhoneName, 1)
            end
            if Config.BrokenItems == true then
                if Config.Inventory == "qb" or Config.Inventory == "lj" then
                    Player.Functions.AddItem(Config.BrokenPhoneName, 1)
                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.BrokenPhoneName], "add")
                elseif Config.Inventory == "ox" then
                    exports.ox_inventory:AddItem(src, Config.BrokenPhoneName, 1)
            Notificationsv(src, {Config.Lang['notie']}, Config.Lang['broken_in_water_phone'], 'error')
                end
        elseif Config.BrokenItems == false then
          Notificationsv(src, {Config.Lang['notie']}, Config.Lang['take_in_water_phone'], 'error')
       end
    end
end)

RegisterServerEvent('c-waterloss:server:givebackitems', function(args)
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
    if args == 1 then
            if Config.Inventory == "qb" or Config.Inventory == "lj" then
            Player.Functions.AddItem(Config.RadioName, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.RadioName], "add")
            Notificationsv(src, {Config.Lang['notie']}, Config.Lang['give_radio_back'], 'error')
        elseif Config.Inventory == "ox" then
           if exports.ox_inventory:AddItem(src, Config.RadioName, 1) then
            Notificationsv(src, {Config.Lang['notie']}, Config.Lang['give_radio_back'], 'error')
          end
       end
    end
if args == 2 then
        if Config.Inventory == "qb" or Config.Inventory == "lj" then
        Player.Functions.AddItem(Config.PhoneName, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.PhoneName], "add")
        Notificationsv(src, {Config.Lang['notie']}, Config.Lang['give_phone_back'], 'error')
    elseif Config.Inventory == "ox" then
        if exports.ox_inventory:AddItem(src, Config.PhoneName, 1) then
        Notificationsv(src, {Config.Lang['notie']}, Config.Lang['give_phone_back'], 'error')
          end
       end
    end
end)