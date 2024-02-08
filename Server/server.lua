local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('c-waterloss:server:takeinwaterphone', function ()
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
    if Config.BrokenItems == true then
        Player.Functions.RemoveItem(Config.PhoneName, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.PhoneName], "remove")
        Player.Functions.AddItem(Config.BrokenPhoneName, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.BrokenPhoneName], "add")
        if Config.NotifyType == 'qb' then
            TriggerClientEvent('QBCore:Notify', src, Config.Lang['broken_in_water_phone'], 'error')
            elseif Config.NotifyType == "Okok" then
                TriggerClientEvent('okokNotify:Alert', src, 'Server Info', Config.Lang['broken_in_water_phone'], 5000, 'type')
            elseif Config.NotifyType == "ox" then
                TriggerClientEvent('ox_lib:notify', src, { title = 'Server Info', description = Config.Lang['broken_in_water_phone'], })
            elseif Config.NotifyType == "mythic" then
                TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = Config.Lang['broken_in_water_phone'], style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
            end
        elseif Config.Giveback == true then
            Player.Functions.RemoveItem(Config.PhoneName, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.PhoneName], "remove")
            if Config.NotifyType == 'qb' then
                TriggerClientEvent('QBCore:Notify', src, Config.Lang['take_in_water_phone'], 'error')
                elseif Config.NotifyType == "Okok" then
                    TriggerClientEvent('okokNotify:Alert', src, 'Server Info', Config.Lang['take_in_water_phone'], 5000, 'type')
                elseif Config.NotifyType == "ox" then
                    TriggerClientEvent('ox_lib:notify', src, { title = 'Server Info', description = Config.Lang['take_in_water_phone'], })
                elseif Config.NotifyType == "mythic" then
                    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = Config.Lang['take_in_water_phone'], style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
                end
            elseif Config.Giveback == false and Config.BrokenItems == false then
                Player.Functions.RemoveItem(Config.PhoneName, 1)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.PhoneName], "remove")
                if Config.NotifyType == 'qb' then
                    TriggerClientEvent('QBCore:Notify', src, Config.Lang['take_in_water_phone'], 'error')
                    elseif Config.NotifyType == "Okok" then
                        TriggerClientEvent('okokNotify:Alert', src, 'Server Info', Config.Lang['take_in_water_phone'], 5000, 'type')
                    elseif Config.NotifyType == "ox" then
                        TriggerClientEvent('ox_lib:notify', src, { title = 'Server Info', description = Config.Lang['take_in_water_phone'], })
                    elseif Config.NotifyType == "mythic" then
                        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = Config.Lang['take_in_water_phone'], style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
                    end
         end
end)

RegisterServerEvent('c-waterloss:server:takeinwaterradio', function ()
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
    if Config.BrokenItems == true then
    Player.Functions.RemoveItem(Config.RadioName, 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.RadioName], "remove")
    Player.Functions.AddItem(Config.BrokenRadioName, 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.BrokenRadioName], "add")
    if Config.NotifyType == 'qb' then
        TriggerClientEvent('QBCore:Notify', src, Config.Lang['broken_in_water_radio'], 'error')
        elseif Config.NotifyType == "Okok" then
            TriggerClientEvent('okokNotify:Alert', src, 'Server Info', Config.Lang['broken_in_water_radio'], 5000, 'type')
        elseif Config.NotifyType == "ox" then
            TriggerClientEvent('ox_lib:notify', src, { title = 'Server Info', description = Config.Lang['broken_in_water_radio'], })
        elseif Config.NotifyType == "mythic" then
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = Config.Lang['broken_in_water_radio'], style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
        end
    elseif Config.Giveback == true then
        Player.Functions.RemoveItem(Config.RadioName, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.RadioName], "remove")
        if Config.NotifyType == 'qb' then
            TriggerClientEvent('QBCore:Notify', src, Config.Lang['take_in_water_radio'], 'error')
            elseif Config.NotifyType == "Okok" then
                TriggerClientEvent('okokNotify:Alert', src, 'Server Info', Config.Lang['take_in_water_radio'], 5000, 'type')
            elseif Config.NotifyType == "ox" then
                TriggerClientEvent('ox_lib:notify', src, { title = 'Server Info', description = Config.Lang['take_in_water_radio'], })
            elseif Config.NotifyType == "mythic" then
                TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = Config.Lang['take_in_water_radio'], style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
            end
    elseif Config.Giveback == false and Config.BrokenItems == false then
        Player.Functions.RemoveItem(Config.RadioName, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.RadioName], "remove")
        if Config.NotifyType == 'qb' then
            TriggerClientEvent('QBCore:Notify', src, Config.Lang['take_in_water_radio'], 'error')
            elseif Config.NotifyType == "Okok" then
                TriggerClientEvent('okokNotify:Alert', src, 'Server Info', Config.Lang['take_in_water_radio'], 5000, 'type')
            elseif Config.NotifyType == "ox" then
                TriggerClientEvent('ox_lib:notify', src, { title = 'Server Info', description = Config.Lang['take_in_water_radio'], })
            elseif Config.NotifyType == "mythic" then
                TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = Config.Lang['take_in_water_radio'], style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
            end
     end
end)

RegisterServerEvent('c-waterloss:server:giveinwaterradio', function ()
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
        if Config.Giveback == true then
            Player.Functions.AddItem(Config.RadioName, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.RadioName], "add")
            if Config.NotifyType == 'qb' then
                TriggerClientEvent('QBCore:Notify', src, Config.Lang['give_radio_back'], 'error')
                elseif Config.NotifyType == "Okok" then
                    TriggerClientEvent('okokNotify:Alert', src, 'Server Info', Config.Lang['give_radio_back'], 5000, 'type')
                elseif Config.NotifyType == "ox" then
                    TriggerClientEvent('ox_lib:notify', src, { title = 'Server Info', description = Config.Lang['give_radio_back'], })
                elseif Config.NotifyType == "mythic" then
                    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = Config.Lang['give_radio_back'], style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
                end
         end
end)

RegisterServerEvent('c-waterloss:server:giveinwaterphone', function ()
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
        if Config.Giveback == true then
            Player.Functions.AddItem(Config.PhoneName, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.PhoneName], "add")
            if Config.NotifyType == 'qb' then
                TriggerClientEvent('QBCore:Notify', src, Config.Lang['give_phone_back'], 'error')
                elseif Config.NotifyType == "Okok" then
                    TriggerClientEvent('okokNotify:Alert', src, 'Server Info', Config.Lang['give_phone_back'], 5000, 'type')
                elseif Config.NotifyType == "ox" then
                    TriggerClientEvent('ox_lib:notify', src, { title = 'Server Info', description = Config.Lang['give_phone_back'], })
                elseif Config.NotifyType == "mythic" then
                    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = Config.Lang['give_phone_back'], style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
                end
         end
end)