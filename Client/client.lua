local QBCore = exports['qb-core']:GetCoreObject()
local givebackradio = false
local givebackphone = false

RegisterNetEvent('playerSwimming')
AddEventHandler('playerSwimming', function()
    local playerPed = GetPlayerPed(-1)
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
           end
         end
        end
end)

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(1000) 
            local playerPed = GetPlayerPed(-1)
            if IsEntityInWater(playerPed) then
                TriggerEvent('playerSwimming')
          end
       end
    end)