local notifyCounter = 0

RegisterNetEvent('oz_notify:client:show')
AddEventHandler('oz_notify:client:show', function(data)
    -- data = { type, message, duration }

    notifyCounter = notifyCounter + 1
    local notifyId = 'notify-' .. notifyCounter

    SendNUIMessage({
        action = 'show',
        id = notifyId,
        type = data.type,
        message = data.message,
        duration = data.duration
    })
end)