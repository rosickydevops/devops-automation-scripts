#!/bin/bash

BACKUP_DIR="/backup/etcd"
DATE=$(date +%F)

mkdir -p $BACKUP_DIR

ETCDCTL_API=3 etcdctl snapshot save \
$BACKUP_DIR/etcd-$DATE.db \
--endpoints=https://127.0.0.1:2379

echo "Backup completed: $BACKUP_DIR/etcd-$DATE.db"
