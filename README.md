# About
Repository contains docker-environment for deploy and manage self-hosted instance
# First installation
1) type params in config files **db.env** and **docker-compose.yml** (search by ```<type-value>``` string)
2) start self-hosted instance

# Useful commands
## Start self-hosted instance
```docker compose start```
## Stop self-hosted instance (with no remove containers)
```docker compose stop```
## Stop self-hosted instance (with remove containers)
```docker compose down```
## Remove unused volumes
```docker volume prune --all```

# Maintence
## Backup
1) stop self-hosted instance
2) create backup with utils/backup.sh
3) start self-hosted instance
## Restore
1) stop and remove self-hosted instance containers
2) remove unused volumes
3) start self-hosted instance (it creates containers with clear volumes)
4) stop self-hosted instance
5) restore backup with utils/restore.sh
6) start self-hosted instance
