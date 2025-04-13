###### database
docker run --rm --volumes-from prod-nextcloud-db-1 -v $PWD/backups:/backup-dir bash -c "cd /var/lib && tar xvfz /backup-dir/backup-prod-nextcloud-db-1.tar.gz"

###### nextcloud
docker run --rm --volumes-from prod-nextcloud-app-1 -v $PWD/backups:/backup-dir bash -c "cd /var/www && tar xvfz /backup-dir/backup-prod-nextcloud-app-1.tar.gz"
