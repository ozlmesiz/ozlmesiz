#!/bin/sh

#backup_copy_to_volume
#jenkins backup dosyalari /var/backups/jenkinsbackup dizini altinda son 3 gün seklinde tutulmaktadir.
#Bu script ile jenkins sunucusuna mount edilen disk'e backup'larin yedekleri alinir.
#disk'de ise son 7 günün backup dosyalari tutulur.

DATE=$( date "+%Y_%m_%d" )
echo $DATE

backup=/var/backups/jenkinsbackup/backup_$(date "+%Y_%m_%d")*.tar.gz
pbobj=/var/backups/jenkinsbackup/backup_$(date "+%Y_%m_%d")*.pbobj

echo $backup
echo $pbobj


if [ -f $backup ]; then
        echo $backup "file exist" >> /var/log/jenkinsbackupscript.log
        cp $backup /home/ubuntu/cicd-volume
        cp $pbobj /home/ubuntu/cicd-volume
        find /home/ubuntu/cicd-volume -mtime +7 -exec rm -f {} \;
else
        echo $backup "file is not exists" >> /var/log/jenkinsbackupscript.log
fi

