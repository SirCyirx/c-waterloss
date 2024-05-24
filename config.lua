Config = Config or {}

Config.Core = "qb-core" -- ["qb-core"] or ["esx] or ["ox"] If you are using esx or ox this will only work if you have ox_inventory

Config.NotifyType = "ox" -- ["qb"] or ["Okok"] or ["ox"] or ["mythic"]
Config.Inventory = "ox" -- ["qb"] or ["lj"] or ["ox"]

Config.PhoneName = "phone" -- Put the item name of your phone default item name is ("phone")
Config.RadioName = "radio" -- Put the item name of your radio default item name is ("radio")
Config.BrokenPhoneName = "brokenphone"
Config.BrokenRadioName = "brokenradio"
-- you can only have 1 true at the time
Config.BrokenItems = false -- If set true you will be given broken items for when you enter water
Config.Giveback = false -- If set true when you come out of the water you get your phone and radio back 

Config.Lang = {
    ['broken_in_water_phone'] = "Your phone is now damaged and you need to repair before you can use it again",
    ['broken_in_water_radio'] = "Your radio is now damaged and you need to repair before you can use it again",
    ['take_in_water_phone'] = "You have just lost your phone in the water",
    ['take_in_water_radio'] = "You have just lost your radio in the water",
    ['give_phone_back'] = "You have found your phone and it's still in good condition",
    ['give_radio_back'] = "You have found your radio and it's still in good condition",
    ['notie'] = "Notification"
}

function NotifyServerAlert(src, titletext, msgtext, type, time)
  if Config.NotifyType == "qb" then
  if type == 'inform' then
    local info = 'primary'
       TriggerClientEvent('QBCore:Notify', src, msgtext, info)
   else
       TriggerClientEvent('QBCore:Notify', src, msgtext, type)
    end
  elseif Config.NotifyType == "ox" then
       TriggerClientEvent('ox_lib:notify', src, { title = titletext, description = msgtext, duration = time,  type = type })
  elseif Config.NotifyType == "okok" then
  if type == 'inform' then
    local info = 'info'
       TriggerClientEvent('okokNotify:Alert', src, titletext, msgtext, time, info)
   else
       TriggerClientEvent('okokNotify:Alert', src, titletext, msgtext, time, type)
    end
  elseif Config.NotifyType == "mythic" then
        TriggerClientEvent('mythic_notify:client:SendAlert', src, { type = type, text = msgtext, style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
  elseif Config.NotifyType == "custom" then
   end
end