# Uptime Kuma

## Конфигурация
```yml
services:
  uptime-kuma:
    image: louislam/uptime-kuma:beta
    volumes:
      - ./uptime-kuma/data:/app/data
    ports:
      - 8890:3001
    restart: always
```

## Полезные ссылки
- [git](https://github.com/louislam/uptime-kuma)

## Описание
TODO описать.

{% include mermaid.html %}
