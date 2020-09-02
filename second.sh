#!/bin/bash
cp ./config /etc/selinux/config
cp ./redhat-release /etc/redhat-release
cp ./sysctl.conf /etc/sysctl.conf
cp ./limits.conf /etc/security/limits.conf
cp ./path /home/oracle/.bash_profile
source /home/oracle/.bash_profile
unzip linux.x64_11gR2_database_1of2.zip -d /data/database/
unzip linux.x64_11gR2_database_2of2.zip -d /data/database/
chown -R oracle:oinstall /data/database/database
cd /data/database
./runInstaller
