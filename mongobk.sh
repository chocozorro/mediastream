#!/bin/bash

BKP_WORKSPACE=/mediastream/mongodb
BKP_USER=ubuntu
BKP_PWD=ubuntu
BKP_DB=admin
BKP_NAME=$BKP_DB\_`date +%Y%m%d_%H%M`.tar.gz

cd $BKP_WORKSPACE
mongodump --db $BKP_DB --username $BKP_USER --password $BKP_PWD --authenticationDatabase $BKP_DB
tar -zcvf $BKP_NAME dump/$BKP_DB
rm -rf ./dump
