#!/bin/bash
serverFolder=./updater/
backupFolder=~/backups
backup_dir=$(date +'%m_%d_%Y':%R)
mkdir $backupFolder
zip $backupFolder/$backup_dir.zip $serverFolder