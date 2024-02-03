fx_version 'bodacious'
game 'gta5'
author 'SirCyrix'
description 'C-WaterLoss'
version '1.0.0'


client_scripts{
    'Client/*client.lua',
}

server_scripts{
    'Server/*server.lua',
}

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}

lua54 'yes'