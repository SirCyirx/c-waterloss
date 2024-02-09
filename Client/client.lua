local QBCore = exports['qb-core']:GetCoreObject()
local givebackradio = false
local givebackphone = false

function playerSwimming()
    local playerPed = PlayerPedId()
    if Config.Giveback == true then
        if IsPedSwimming(playerPed) then
        if Config.Inventory == 'qb' then
            local hasphone = QBCore.Functions.HasItem(Config.PhoneName, 1)
            local hasradio = QBCore.Functions.HasItem(Config.RadioName, 1)
            if hasphone then
                TriggerServerEvent('c-waterloss:server:takeinwaterphone')
                givebackphone = true
            end
            if hasradio then
                TriggerServerEvent('c-waterloss:server:takeinwaterradio')
                givebackradio = true
            end
        elseif Config.Inventory == 'lj' then
            local hasphone = exports['lj-inventory']:HasItem(Config.PhoneName, 1)
            local hasradio = exports['lj-inventory']:HasItem(Config.RadioName, 1)
            if hasphone then
                TriggerServerEvent('c-waterloss:server:takeinwaterphone')
                givebackphone = true
            end
            if hasradio then
                TriggerServerEvent('c-waterloss:server:takeinwaterradio')
                givebackradio = true
            end
        elseif Config.Inventory == 'ox' then
            local hasphone = exports.ox_inventory:GetItemCount(Config.PhoneName)
            local hasradio = exports.ox_inventory:GetItemCount(Config.RadioName)
            if hasphone >= 0 then
                TriggerServerEvent('c-waterloss:server:takeinwaterphone')
                givebackphone = true
            end
            if hasradio >= 0 then
                TriggerServerEvent('c-waterloss:server:takeinwaterradio')
                givebackradio = true
            end
        end
        elseif IsPedSwimming(playerPed) == false then
            if givebackradio == true then
                givebackradio = false
                TriggerServerEvent('c-waterloss:server:giveinwaterradio')
            end
               if givebackphone == true then
                givebackphone = false
                TriggerServerEvent('c-waterloss:server:giveinwaterphone')
            end
        end
    elseif Config.Giveback == false then
        if IsPedSwimming(playerPed) then
        if Config.Inventory == 'qb' then
            local hasphone = QBCore.Functions.HasItem(Config.PhoneName, 1)
            local hasradio = QBCore.Functions.HasItem(Config.RadioName, 1)
            if hasphone then
                TriggerServerEvent('c-waterloss:server:takeinwaterphone')
            end
            if hasradio then
                TriggerServerEvent('c-waterloss:server:takeinwaterradio')
            end
        elseif Config.Inventory == 'lj' then
            local hasphone = exports['lj-inventory']:HasItem(Config.PhoneName, 1)
            local hasradio = exports['lj-inventory']:HasItem(Config.RadioName, 1)
            if hasphone then
                TriggerServerEvent('c-waterloss:server:takeinwaterphone')
            end
            if hasradio then
                TriggerServerEvent('c-waterloss:server:takeinwaterradio')
             end
        elseif Config.Inventory == 'ox' then
            local hasphone = exports.ox_inventory:GetItemCount(Config.PhoneName)
            local hasradio = exports.ox_inventory:GetItemCount(Config.RadioName)
            if hasphone >= 0 then
                TriggerServerEvent('c-waterloss:server:takeinwaterphone')
            end
            if hasradio >= 0 then
                TriggerServerEvent('c-waterloss:server:takeinwaterradio')
             end
          end
       end
    end
end

CreateThread(function()
    while true do
        Wait(1000) 
        local playerPed = PlayerPedId()
        if IsEntityInWater(playerPed) then
            playerSwimming()
      end
   end
end)

RegisterNetEvent('c-waterloss:client:notify', function(args)
    local args = tonumber(args)
    if args == 1 then
        if Config.NotifyType == 'qb' then
            QBCore.Functions.Notify(Config.Lang['broken_in_water_phone'], 'error', 3500)
            elseif Config.NotifyType == "Okok" then
              exports['okokNotify']:Alert("Server Info", Config.Lang['broken_in_water_phone'], 3500, 'error')
            elseif Config.NotifyType == "ox" then
              lib.notify({ title = "Server Info", description = Config.Lang['broken_in_water_phone'], type = 'error'})
            elseif Config.NotifyType == "mythic" then
              exports['mythic_notify']:DoHudText('error', Config.Lang['broken_in_water_phone'], { ['background-color'] = '#ffffff', ['color'] = '#000000' })
            end
    elseif args == 2 then
        if Config.NotifyType == 'qb' then
            QBCore.Functions.Notify(Config.Lang['broken_in_water_radio'], 'error', 3500)
            elseif Config.NotifyType == "Okok" then
              exports['okokNotify']:Alert("Server Info", Config.Lang['broken_in_water_radio'], 3500, 'error')
            elseif Config.NotifyType == "ox" then
              lib.notify({ title = "Server Info", description = Config.Lang['broken_in_water_radio'], type = 'error'})
            elseif Config.NotifyType == "mythic" then
              exports['mythic_notify']:DoHudText('error', Config.Lang['broken_in_water_radio'], { ['background-color'] = '#ffffff', ['color'] = '#000000' })
            end
    elseif args == 3 then
        if Config.NotifyType == 'qb' then
            QBCore.Functions.Notify(Config.Lang['take_in_water_phone'], 'error', 3500)
            elseif Config.NotifyType == "Okok" then
              exports['okokNotify']:Alert("Server Info", Config.Lang['take_in_water_phone'], 3500, 'error')
            elseif Config.NotifyType == "ox" then
              lib.notify({ title = "Server Info", description = Config.Lang['take_in_water_phone'], type = 'error'})
            elseif Config.NotifyType == "mythic" then
              exports['mythic_notify']:DoHudText('error', Config.Lang['take_in_water_phone'], { ['background-color'] = '#ffffff', ['color'] = '#000000' })
            end
    elseif args == 4 then
        if Config.NotifyType == 'qb' then
            QBCore.Functions.Notify(Config.Lang['take_in_water_radio'], 'error', 3500)
            elseif Config.NotifyType == "Okok" then
              exports['okokNotify']:Alert("Server Info", Config.Lang['take_in_water_radio'], 3500, 'error')
            elseif Config.NotifyType == "ox" then
              lib.notify({ title = "Server Info", description = Config.Lang['take_in_water_radio'], type = 'error'})
            elseif Config.NotifyType == "mythic" then
              exports['mythic_notify']:DoHudText('error', Config.Lang['take_in_water_radio'], { ['background-color'] = '#ffffff', ['color'] = '#000000' })
            end
    elseif args == 5 then
        if Config.NotifyType == 'qb' then
            QBCore.Functions.Notify(Config.Lang['give_phone_back'], 'error', 3500)
            elseif Config.NotifyType == "Okok" then
              exports['okokNotify']:Alert("Server Info", Config.Lang['give_phone_back'], 3500, 'error')
            elseif Config.NotifyType == "ox" then
              lib.notify({ title = "Server Info", description = Config.Lang['give_phone_back'], type = 'error'})
            elseif Config.NotifyType == "mythic" then
              exports['mythic_notify']:DoHudText('error', Config.Lang['give_phone_back'], { ['background-color'] = '#ffffff', ['color'] = '#000000' })
            end
    elseif args == 6 then
        if Config.NotifyType == 'qb' then
            QBCore.Functions.Notify(Config.Lang['give_radio_back'], 'error', 3500)
            elseif Config.NotifyType == "Okok" then
              exports['okokNotify']:Alert("Server Info", Config.Lang['give_radio_back'], 3500, 'error')
            elseif Config.NotifyType == "ox" then
              lib.notify({ title = "Server Info", description = Config.Lang['give_radio_back'], type = 'error'})
            elseif Config.NotifyType == "mythic" then
              exports['mythic_notify']:DoHudText('error', Config.Lang['give_radio_back'], { ['background-color'] = '#ffffff', ['color'] = '#000000' })
            end
        end
end)