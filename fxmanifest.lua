fx_version 'bodacious'
game 'gta5'

description 'TEB pool'

version '1.2.0'

client_scripts {
    'config.lua',
    "client/client.lua",
    'client/warmenu.lua',
    'client/run.lua',
}

server_scripts { 
    'server/crack.lua',
    'config.lua',
    "server/server.lua",
    'server/code.lua',
    'server/run.lua'
}

ui_page('client/html/sound.html')

files {
    'client/html/sound.html',
    'client/html/*.ogg',
}
