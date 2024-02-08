fx_version 'bodacious'
game 'gta5'
author 'SirCyrix'
description 'C-WaterLoss'
version '1.0.1'


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