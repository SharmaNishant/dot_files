backup_nextcloud_on_sheru () {
    sudo rsync -rlthvP --info=progress2  --delete-after --exclude '*appdata_ocx404u2sj5p/preview*' /home/ubuntu/nextcloud/ /home/ubuntu/backups/nextcloud/
}

backup_external_nextcloud () {
    rsync -e 'ssh' -ah --info=progress2  --no-inc-recursive --delete-after cloudroot:/media/data/nextcloud_backups .
}

backup_plex () {
    rsync -avh --info=progress2 --no-inc-recursive --delete-after ~/plex/ /media/data/plex/
}

backup_external_plex () {
    rsync -e 'ssh' -ahv --info=progress2 --no-inc-recursive --delete-after cloud:plex/ plex/
}

