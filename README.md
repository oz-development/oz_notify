# CLIENT EXPORT

exports['oz_notify']:ShowNotify('success', 'Success Message')

exports['oz_notify']:ShowNotify('error', 'Error Message', 3000) -- 3-second duration

exports['oz_notify']:ShowNotify('info', 'Info Message')

# SERVER EXPORT

local src = source

exports['oz_notify']:ShowNotify(src, 'success', 'Success Massage')


exports['oz_notify']:ShowNotify(src, 'error', 'Error Message')

## Preview:

[img]https://i.imgur.com/ntcJDKQ.png[/img]
