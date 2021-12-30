backup_nextcloud () {

    sudo nextcloud.export -abcd

}


backup_external_nextcloud () {

    rsync -e 'ssh' -ah --info=progress2  --no-inc-recursive --delete-after cloudroot:/media/data/nextcloud_backups .

}

backup_lillis () {


}

backup_cloud_lillis () {

}


backup_external_lillis () {



}

backup_plex () {

    rsync -avh --info=progress2 --no-inc-recursive --delete-after ~/plex/ /media/data/plex/

}

backup_external_plex () {

    rsync -e 'ssh' -ahv --info=progress2 --no-inc-recursive --delete-after cloud:plex/ plex/

}

