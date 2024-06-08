#! /bin/bash

mysqldump -u "$DB_USER" -p"$DB_PASSWORD" --databases ShopDB --no-create-db --result-file=full_backup.sql
mysql -u "$DB_USER" -p"$DB_PASSWORD" ShopDBReserve < full_backup.sql

mysqldump -u "$DB_USER" -p"$DB_PASSWORD" --databases ShopDB --no-create-info --result-file=data_backup.sql
mysql -u "$DB_USER" -p"$DB_PASSWORD" ShopDBDevelopment < data_backup.sql
