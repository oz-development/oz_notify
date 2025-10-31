exports('ShowNotify', function(type, message, duration)
    TriggerEvent('oz_notify:client:show', {
        type = type,
        message = message,
        duration = duration or Config.DefaultDuration
    })
end)