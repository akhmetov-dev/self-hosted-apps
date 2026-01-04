# Filebrowser

## Конфигурация
```yml
services:
  filebrowser:
    image: filebrowser/filebrowser:latest
    restart: unless-stopped
    volumes:
      - ./filebrowser/data:/srv
      - ./filebrowser/database:/database
      - ./filebrowser/config:/config
    networks:
      - proxy-tier
    labels:
      - "traefik.enable=true"
      - "traefik.http.routers.filebrowser.rule=Host(`<type-value>`)"
      - "traefik.http.routers.filebrowser.entrypoints=websecure"
      - "traefik.http.routers.filebrowser.tls.certresolver=le"
```

## Полезные ссылки
- [git](https://github.com/filebrowser/filebrowser)

## Описание
TODO описать.

{% include mermaid.html %}
