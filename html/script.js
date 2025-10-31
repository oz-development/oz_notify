window.addEventListener('message', function(event) {
    const data = event.data;

    if (data.action === 'show') {
        showNotification(data);
    }
});

function showNotification(data) {
    const container = document.getElementById('container');
    const notifyElement = document.createElement('div');
    
    notifyElement.classList.add('notification', data.type);
    notifyElement.id = data.id;

    let iconClass = '';
    if (data.type === 'success') {
        iconClass = 'fas fa-check-circle';
    } else if (data.type === 'error') {
        iconClass = 'fas fa-times-circle';
    } else { // 'info'
        iconClass = 'fas fa-info-circle';
    }

    notifyElement.innerHTML = `
        <i class="${iconClass}"></i>
        <span class="message">${data.message}</span>
    `;

    container.appendChild(notifyElement);

    setTimeout(() => {
        notifyElement.classList.add('exit');
        
        setTimeout(() => {
            if (notifyElement) {
                notifyElement.remove();
            }
        }, 400);

    }, data.duration);
}