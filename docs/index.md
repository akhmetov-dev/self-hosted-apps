# Self-Hosted Apps

Документация для развертывания и управления набором self-hosted приложений.

## Архитектура системы

```mermaid
graph TB
    Internet[Интернет]
    Traefik[Traefik]
    
    Internet -->|HTTPS:443| Traefik
    
    Traefik --> Vaultwarden[Vaultwarden]
    Traefik --> Vikunja[Vikunja]
    Traefik --> Filebrowser[Filebrowser]
    
    Vikunja --> DB[(PostgreSQL)]
    
    V2raya[V2raya]
    Dozzle[Dozzle]
    Kuma[Uptime Kuma]
    
    style Traefik fill:#0066cc,color:#fff
    style DB fill:#336791,color:#fff
```

## Компоненты

- [v2raya](v2raya/) - VPN/прокси клиент с веб-интерфейсом
- [Vaultwarden](vaultwarden/) - Менеджер паролей
- [Vikunja](vikunja/) - Менеджер задач
- [Filebrowser](filebrowser/) - Веб-файловый менеджер
- [Dozzle](dozzle/) - Просмотрщик логов
- [Traefik](traefik/) - Обратный прокси
- [Uptime Kuma](uptime-kuma/) - Мониторинг
