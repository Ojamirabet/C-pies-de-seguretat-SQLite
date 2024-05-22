#!/bin/bash

DB_USER="postgres"
DB_NAME="mercadillo"
BACKUP_DIR="/home/alumne/Desktop/C-pies-de-seguridad-SQLite"


FECHA_HORA=$(date +"%Y-%m-%d_%H-%M-%S")

NOMBRE_BACKUP="backup_${FECHA_HORA}.sql"

pg_dump -U "$DB_USER" -d "$DB_NAME" > "$BACKUP_DIR/$NOMBRE_BACKUP"

echo "Copia de seguridad creada: $NOMBRE_BACKUP"

