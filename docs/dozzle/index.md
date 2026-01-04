# Dozzle

## Конфигурация
```yml
services:
  dozzle:
    image: amir20/dozzle:latest
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
    ports:
      - 8888:8080
    restart: unless-stopped
```

## Полезные ссылки
- [git](https://github.com/amir20/dozzle)

## Описание
TODO описать.

{% include mermaid.html %}
