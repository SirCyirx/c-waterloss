Config = Config or {}

Config.Notify = {
    ['Out_of_Water_Text'] = 'All your electronics items are no longer getting damaged and now are fixed and ready to use again',
    ['Going_Into_Water_Text'] = 'All your electronics items haven been damaged by water and are now broken'
}
Config.NotifyType = 'qb' -- [qb] or [Okok] or [ox] or [mythic]

Config.Inventory = 'qb' -- [qb] or [lj]
--
Config.BrokenItems = false -- If set true you will be given broken items for when you enter water
Config.Giveback = true -- If set true when you come out of the water you get your phone and radio back 
-- you can have these both as false but cant have them both as true only 1 can be true at a time