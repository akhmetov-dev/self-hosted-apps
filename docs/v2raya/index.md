# v2raya

## Конфигурация
```yml
services:
  v2raya:
    image: mzz2017/v2raya:latest
    restart: always
    privileged: true
    network_mode: host
    volumes:
      - /lib/modules:/lib/modules:ro
      - /etc/v2raya:/etc/v2raya
      - ./v2raya/geo:/usr/local/share/xray
```

## Полезные ссылки
- [xray](https://github.com/XTLS/Xray-core)
- [v2rayA](https://github.com/v2rayA/v2rayA)

## Описание
TODO описать.

{% include mermaid.html %}
