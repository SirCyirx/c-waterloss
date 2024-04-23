local QBCore = exports['qb-core']:GetCoreObject()

local GivePhoneBack = false
local GiveRadioBack = false

function PlayerSwimming()
    local playerPed = PlayerPedId()
  if Config.Giveback == true then
  if IsPedSwimming(playerPed) then
  if Config.Inventory == "qb" then
    local HasPhone = QBCore.Functions.HasItem(Config.PhoneName, 1)
    local HasRadio = QBCore.Functions.HasItem(Config.RadioName, 1)
  if HasPhone then
       TriggerServerEvent('c-waterloss:server:takephone')
       GivePhoneBack = true
    end
  if HasRadio then
       TriggerServerEvent('c-waterloss:server:takeradio')
       GiveRadioBack = true
    end
  elseif Config.Inventory == "lj" then
    local HasPhone = exports['lj-inventory']:HasItem(Config.PhoneName, 1)
    local HasRadio = exports['lj-inventory']:HasItem(Config.RadioName, 1)
  if HasPhone then
       TriggerServerEvent('c-waterloss:server:takephone')
       GivePhoneBack = true
    end
  if HasRadio then
       TriggerServerEvent('c-waterloss:server:takeradio')
       GiveRadioBack = true
    end
  elseif Config.Inventory == "ox" then
    local HasPhone = exports.ox_inventory:GetItemCount(Config.PhoneName)
    local HasRadio = exports.ox_inventory:GetItemCount(Config.RadioName)
  if HasPhone then
       TriggerServerEvent('c-waterloss:server:takephone')
       GivePhoneBack = true
    end
  if HasRadio then
       TriggerServerEvent('c-waterloss:server:takeradio')
       GiveRadioBack = true
 end end
  elseif IsPedSwimming(playerPed) == false then
  if GivePhoneBack == true then
       GivePhoneBack = false
       TriggerServerEvent('c-waterloss:server:givebackphone')
    end
  if GiveRadioBack == true then
       GiveRadioBack = false
       TriggerServerEvent('c-waterloss:server:givebackradio')
 end end
  elseif Config.Giveback == false then
  if IsPedSwimming(playerPed) then
  if Config.Inventory == "qb" then
    local HasPhone = QBCore.Functions.HasItem(Config.PhoneName, 1)
    local HasRadio = QBCore.Functions.HasItem(Config.RadioName, 1)
  if HasPhone then
       TriggerServerEvent('c-waterloss:server:takephone')
    end
  if HasRadio then
       TriggerServerEvent('c-waterloss:server:takeradio')
    end
  elseif Config.Inventory == "lj" then
    local HasPhone = exports['lj-inventory']:HasItem(Config.PhoneName, 1)
    local HasRadio = exports['lj-inventory']:HasItem(Config.RadioName, 1)
  if HasPhone then
       TriggerServerEvent('c-waterloss:server:takephone')
    end
  if HasRadio then
       TriggerServerEvent('c-waterloss:server:takeradio')
    end
  elseif Config.Inventory == "ox" then
    local HasPhone = exports.ox_inventory:GetItemCount(Config.PhoneName)
    local HasRadio = exports.ox_inventory:GetItemCount(Config.RadioName)
  if HasPhone then
       TriggerServerEvent('c-waterloss:server:takephone')
    end
  if HasRadio then
       TriggerServerEvent('c-waterloss:server:takeradio')
   end end
      end
   end
end

CreateThread(function()
    while true do
        Wait(1000)
        local playerPed = PlayerPedId()
        if IsEntityInWater(playerPed) then
            PlayerSwimming()
      end
   end
end)