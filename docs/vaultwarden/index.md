# Vaultwarden

## Конфигурация
```yml
services:
  vaultwarden:
    image: vaultwarden/server:latest
    restart: always
    environment:
      DOMAIN: "<type-value>"
      SIGNUPS_ALLOWED: false
      WEB_VAULT_ENABLED: true
      LOGIN_RATELIMIT_MAX_BURST: <type-value>
      LOGIN_RATELIMIT_SECONDS: <type-value>
    volumes:
      - ./vaultwarden/data:/data/
    networks:
      - proxy-tier
    labels:
      - "traefik.enable=true"
      - "traefik.http.routers.vaultwarden.rule=Host(`<type-value>`)"
      - "traefik.http.routers.vaultwarden.entrypoints=websecure"
      - "traefik.http.routers.vaultwarden.tls.certresolver=le"
```

## Полезные ссылки
- [git](https://github.com/dani-garcia/vaultwarden)
- защита от brute force
  - [через ratelimit](https://vaultwarden.discourse.group/t/how-can-i-protect-my-vaultwarden-account-from-brute-force-attacks/3067)
  - [через fail2ban](https://community.bitwarden.com/t/how-to-install-and-configure-fail2ban-with-bitwarden-standard-docker-install/48156)

## Описание
TODO описать.

{% include mermaid.html %}
