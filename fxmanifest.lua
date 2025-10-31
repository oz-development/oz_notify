fx_version 'cerulean'
game 'gta5'
author 'OZ Development'
description 'OZ Notify - Custom Notification System'

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/script.js'
}

client_scripts {
    'config.lua',
    'client/client_api.lua',
    'client/client.lua'
}

server_scripts {
    'config.lua',
    'server/server_api.lua'
}

export 'ShowNotify'
server_export 'ShowNotify'