Config = Config or {}

Config.NotifyType = 'qb' -- [qb] or [Okok] or [ox] or [mythic]
Config.Inventory = 'qb' -- [qb] or [lj]

Config.PhoneName = "phone"
Config.RadioName = "radio"

Config.BrokenPhoneName = "brokenphone"
Config.BrokenRadioName = "brokenradio"

Config.BrokenItems = true -- If set true you will be given broken items for when you enter water
Config.Giveback = false -- If set true when you come out of the water you get your phone and radio back 
-- you can only have 1 true at the time

Config.Lang = {
    ['broken_in_water_phone'] = "Your phone is now damaged and you need to repair before you can use it again",
    ['broken_in_water_radio'] = "Your radio is now damaged and you need to repair before you can use it again",
    ['take_in_water_phone'] = "You have just lost your phone in the water",
    ['take_in_water_radio'] = "You have just lost your radio in the water",
    ['give_phone_back'] = "You have found your phone and it's still in good condition",
    ['give_radio_back'] = "You have found your radio and it's still in good condition"
}