#!/bin/bash

# Путь к каталогу, где будет храниться резервная копия
BACKUP_DIR="/Users/egorageev/Desktop/DB_HUESOSY/"

# Имя файла резервной копии
BACKUP_FILE="backup_$(date +%Y%m%d%H%M%S).sql"

# Имя вашей базы данных PostgreSQL
DATABASE_NAME="petrsu"

# Пароль для пользователя PostgreSQL
PGPASSWORD="qweQWE123!"

# Выполнение резервного копирования с использованием pg_dump
pg_dump -U postgres -d "$DATABASE_NAME" > "$BACKUP_DIR/$BACKUP_FILE"

# Опционально: удаление старых резервных копий (например, если их слишком много)
# find "$BACKUP_DIR" -name "backup_*" -mtime +7 -exec rm {} \;
