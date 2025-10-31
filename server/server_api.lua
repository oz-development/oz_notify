exports('ShowNotify', function(source, type, message, duration)
    TriggerClientEvent('oz_notify:client:show', source, {
        type = type,
        message = message,
        duration = duration or Config.DefaultDuration
    })
end)