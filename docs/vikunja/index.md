# Vikunja

## Конфигурация
```yml
services:
  vikunja:
    image: vikunja/vikunja:latest
    environment:
      VIKUNJA_SERVICE_PUBLICURL: <type-value>
      VIKUNJA_DATABASE_HOST: db
      VIKUNJA_DATABASE_TYPE: postgres
      VIKUNJA_DATABASE_DATABASE: vikunja
      VIKUNJA_SERVICE_ENABLEREGISTRATION: false
    env_file:
      - vikunja.env
    volumes:
      - ./vikunja/files:/app/vikunja/files
    networks:
      - proxy-tier
    depends_on:
      db:
        condition: service_healthy
    restart: unless-stopped
    labels:
      - "traefik.enable=true"
      - "traefik.http.routers.vikunja.rule=Host(`<type-value>`)"
      - "traefik.http.routers.vikunja.entrypoints=websecure"
      - "traefik.http.routers.vikunja.tls.certresolver=le"
```

## Полезные ссылки
- [git](https://github.com/go-vikunja/vikunja)
- [пример docker compose](https://vikunja.io/docs/full-docker-example/#example-with-traefik-2)
- защита от brute force
  - [через ratelimit](https://vikunja.io/docs/config-options/#0--ratelimit)
  - [через fail2ban](https://vikunja.io/docs/fail2ban/)

## Описание
TODO описать.

{% include mermaid.html %}
