#variable
SOURCE_DIR="/root/backup"
LOG_FILE="backup.log"
REMOTE_HOST="root@10.168.151.54"
REMOTE_DIR="/root/"

#function to perform the backup
perform_backup(){

    rsync -avz "$SOURCE_DIR" " $REMOTE_HOST" : " $SOURCE_DIR" > "$LOG_FILE " 2>&1
     if [ $? -eq  0 ]
     then   
             echo "Backup succesful : $(date)" >> "$LOG_FILE"
     else
            echo " Backup failed $(date)" >> "$LOG_FILE"
     fi

}

#Run the backup 


perform_backup