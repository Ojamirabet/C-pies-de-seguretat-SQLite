DBUSER="oriol"
DB_PASSWORD="123456"
BACKUP_DIR="/home/oriol/Desktop/Copia_seguridad_MariaDB/backup"

TIMESTAMP=$(date +"%Y-%m-%d%H:%M:%S")

mysqldump -u $DBUSER -p$DB_PASSWORD --all-databases > "$BACKUP_DIR/backup_total$TIMESTAMP.sql"

mysqldump -u $DBUSER -p$DB_PASSWORD mysql > "$BACKUP_DIR/backup_usuaris$TIMESTAMP.sql"

mysqldump -u $DBUSER -p$DB_PASSWORD --all-databases --no-data > "$BACKUP_DIR/backup_estructura$TIMESTAMP.sql"

mysqldump -u $DBUSER -p$DB_PASSWORD --all-databases --no-create-info > "$BACKUP_DIR/backup_dades$TIMESTAMP.sql"

echo "La copia de seguridad se a echo correctamente a las $TIMESTAMP"
