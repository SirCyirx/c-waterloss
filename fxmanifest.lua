fx_version 'cerulean'
game 'gta5'
author 'Cyrix'
description 'C-WaterLoss, Waterloss script for when you enter the water you lose your phone and radio items'
version '1.5'

client_scripts {
    'client/*.lua'
}

server_scripts {
    'server/*.lua'

}

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}

lua54 'yes'