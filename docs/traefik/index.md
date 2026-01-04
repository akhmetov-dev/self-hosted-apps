# Traefik

## Конфигурация
```yml
services:
  traefik:
    image: traefik:latest
    restart: always
    command:
      - --providers.docker=true
      - --providers.docker.exposedbydefault=false
      - --entrypoints.web.address=:80
      - --entrypoints.websecure.address=:443
      - --api.dashboard=true
      - --api.insecure=true
      - --log.level=INFO
      - --certificatesresolvers.le.acme.tlschallenge=true
      - --certificatesresolvers.le.acme.email=<type-value>
      - --certificatesresolvers.le.acme.storage=/letsencrypt/acme.json
    ports:
      - 80:80
      - 443:443
      - 8889:8080
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock:ro
      - ./traefik/letsencrypt:/letsencrypt
    networks:
      - proxy-tier
```

## Полезные ссылки
- [git](https://github.com/traefik/traefik)
- [настройка](https://unixhost.pro/blog/ru/2022/07/traefik-2-ustanovka-nastrojka-primery/)

## Описание
TODO описать.

{% include mermaid.html %}
