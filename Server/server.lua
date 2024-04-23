if Config.Core == "qb-core" then
local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('c-waterloss:server:takephone', function(source)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
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
       NotifyServerAlert(src, {Config.Lang['notie']}, Config.Lang['broken_in_water_phone'], 'error')
    end
  elseif Config.BrokenItems == false then
       NotifyServerAlert(src, {Config.Lang['notie']}, Config.Lang['take_in_water_phone'], 'error')
    end
end)

RegisterServerEvent('c-waterloss:server:takeradio', function(source)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
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
       NotifyServerAlert(src, {Config.Lang['notie']}, Config.Lang['broken_in_water_radio'], 'error')
  elseif Config.BrokenItems == false then
       NotifyServerAlert(src, {Config.Lang['notie']}, Config.Lang['take_in_water_radio'], 'error')
    end
end)

RegisterServerEvent('c-waterloss:server:givebackphone', function(source)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
  if Config.Inventory == "qb" or Config.Inventory == "lj" then
       Player.Functions.AddItem(Config.PhoneName, 1)
       TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.PhoneName], "add")
       NotifyServerAlert(src, {Config.Lang['notie']}, Config.Lang['give_phone_back'], 'error')
  elseif Config.Inventory == "ox" then
       exports.ox_inventory:AddItem(src, Config.PhoneName, 1)
       NotifyServerAlert(src, {Config.Lang['notie']}, Config.Lang['give_phone_back'], 'error')
    end
end)

RegisterServerEvent('c-waterloss:server:givebackradio', function(source)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
  if Config.Inventory == "qb" or Config.Inventory == "lj" then
       Player.Functions.AddItem(Config.RadioName, 1)
       TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.RadioName], "add")
       NotifyServerAlert(src, {Config.Lang['notie']}, Config.Lang['give_radio_back'], 'error')
  elseif Config.Inventory == "ox" then
       exports.ox_inventory:AddItem(src, Config.RadioName, 1)
       NotifyServerAlert(src, {Config.Lang['notie']}, Config.Lang['give_radio_back'], 'error')
    end
end) end



if Config.Core == "esx" or Config.Core == "ox" then
RegisterServerEvent('c-waterloss:server:takephone', function(source)
    local src = source
       exports.ox_inventory:RemoveItem(src, Config.PhoneName, 1)
  if Config.BrokenItems == true then
       exports.ox_inventory:AddItem(src, Config.BrokenPhoneName, 1)
       NotifyServerAlert(src, {Config.Lang['notie']}, Config.Lang['broken_in_water_phone'], 'error')
  elseif Config.BrokenItems == false then
       NotifyServerAlert(src, {Config.Lang['notie']}, Config.Lang['take_in_water_phone'], 'error')
    end
end)

RegisterServerEvent('c-waterloss:server:takeradio', function(source)
    local src = source
       exports.ox_inventory:RemoveItem(src, Config.RadioName, 1)
  if Config.BrokenItems == true then
       exports.ox_inventory:AddItem(src, Config.BrokenRadioName, 1)
       NotifyServerAlert(src, {Config.Lang['notie']}, Config.Lang['broken_in_water_radio'], 'error')
  elseif Config.BrokenItems == false then
       NotifyServerAlert(src, {Config.Lang['notie']}, Config.Lang['take_in_water_radio'], 'error')
    end
end)

RegisterServerEvent('c-waterloss:server:givebackphone', function(source)
    local src = source
       exports.ox_inventory:AddItem(src, Config.PhoneName, 1)
       NotifyServerAlert(src, {Config.Lang['notie']}, Config.Lang['give_phone_back'], 'error')
end)

RegisterServerEvent('c-waterloss:server:givebackradio', function(source)
    local src = source
       exports.ox_inventory:AddItem(src, Config.RadioName, 1)
       NotifyServerAlert(src, {Config.Lang['notie']}, Config.Lang['give_radio_back'], 'error')
end) end