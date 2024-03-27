local givebackradio = false
local givebackphone = false

function playerSwimming()
    local playerPed = PlayerPedId()
    if Config.Giveback == true then
        if IsPedSwimming(playerPed) then
        if Config.Inventory == "qb" then
            local hasphone = QBCore.Functions.HasItem(Config.PhoneName, 1)
            local hasradio = QBCore.Functions.HasItem(Config.RadioName, 1)
            if hasphone then
                args = 2 TriggerServerEvent('c-waterloss:server:takeitems', args)
                givebackphone = true
            end
            if hasradio then
                args = 1 TriggerServerEvent('c-waterloss:server:takeitems', args)
                givebackradio = true
            end
        elseif Config.Inventory == "lj" then
            local hasphone = exports['lj-inventory']:HasItem(Config.PhoneName, 1)
            local hasradio = exports['lj-inventory']:HasItem(Config.RadioName, 1)
            if hasphone then
                args = 2 TriggerServerEvent('c-waterloss:server:takeitems', args)
                givebackphone = true
            end
            if hasradio then
                args = 1 TriggerServerEvent('c-waterloss:server:takeitems', args)
                givebackradio = true
            end
        elseif Config.Inventory == "ox" then
            local hasphone = exports.ox_inventory:GetItemCount(Config.PhoneName)
            local hasradio = exports.ox_inventory:GetItemCount(Config.RadioName)
            if hasphone == 1 then
                args = 2 TriggerServerEvent('c-waterloss:server:takeitems', args)
                givebackphone = true
            end
            if hasradio == 1 then
                args = 1 TriggerServerEvent('c-waterloss:server:takeitems', args)
                givebackradio = true
            end
        end
        elseif IsPedSwimming(playerPed) == false then
            if givebackradio == true then
                givebackradio = false
                args = 2 TriggerServerEvent('c-waterloss:server:givebackitems', args)
            end
               if givebackphone == true then
                givebackphone = false
                args = 1 TriggerServerEvent('c-waterloss:server:givebackitems', args)
            end
        end
    elseif Config.Giveback == false then
        if IsPedSwimming(playerPed) then
        if Config.Inventory == "qb" then
            local hasphone = QBCore.Functions.HasItem(Config.PhoneName, 1)
            local hasradio = QBCore.Functions.HasItem(Config.RadioName, 1)
            if hasphone then
               args = 2 TriggerServerEvent('c-waterloss:server:takeitems', args)
            end
            if hasradio then
              args = 1 TriggerServerEvent('c-waterloss:server:takeitems', args)
            end
        elseif Config.Inventory == "lj" then
            local hasphone = exports['lj-inventory']:HasItem(Config.PhoneName, 1)
            local hasradio = exports['lj-inventory']:HasItem(Config.RadioName, 1)
            if hasphone then
                args = 2 TriggerServerEvent('c-waterloss:server:takeitems', args)
            end
            if hasradio then
              args = 1 TriggerServerEvent('c-waterloss:server:takeitems', args)
             end
        elseif Config.Inventory == "ox" then
            local hasphone = exports.ox_inventory:GetItemCount(Config.PhoneName)
            local hasradio = exports.ox_inventory:GetItemCount(Config.RadioName)
            if hasphone == 1 then
                args = 2 TriggerServerEvent('c-waterloss:server:takeitems', args)
            end
            if hasradio == 1 then
                args = 1 TriggerServerEvent('c-waterloss:server:takeitems', args)
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