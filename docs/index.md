# Self-Hosted Apps

Документация для развертывания и управления набором self-hosted приложений.

## Архитектура системы

```mermaid
graph TB
    WAN[WAN]
    Traefik[Traefik]
    V2raya[V2raya]
    Dozzle[Dozzle]
    Kuma[Uptime Kuma]
    Vaultwarden[Vaultwarden]
    Vikunja[Vikunja]
    Filebrowser[Filebrowser]
    DB[(PostgreSQL)]

    WAN -->|HTTPS:443| Traefik
    Traefik --> Vaultwarden
    Traefik --> Vikunja
    Traefik --> Filebrowser
    Vikunja --> DB
```

## Компоненты

- [v2raya](v2raya/) - VPN/прокси клиент с веб-интерфейсом
- [Vaultwarden](vaultwarden/) - Менеджер паролей
- [Vikunja](vikunja/) - Менеджер задач
- [Filebrowser](filebrowser/) - Веб-файловый менеджер
- [Dozzle](dozzle/) - Просмотрщик логов
- [Traefik](traefik/) - Обратный прокси
- [Uptime Kuma](uptime-kuma/) - Мониторинг

<!-- Client-side Mermaid renderer -->
<script src="https://cdn.jsdelivr.net/npm/mermaid@10/dist/mermaid.min.js"></script>
<script>
document.addEventListener('DOMContentLoaded', function(){
    document.querySelectorAll('pre > code.language-mermaid, code.language-mermaid').forEach(function(el){
        var pre = el.parentElement;
        var wrapper = document.createElement('div');
        wrapper.className = 'mermaid';
        wrapper.textContent = el.textContent;
        pre.parentNode.replaceChild(wrapper, pre);
    });
    if (typeof mermaid !== 'undefined') {
        mermaid.initialize({ startOnLoad: true });
    }
});
</script>
