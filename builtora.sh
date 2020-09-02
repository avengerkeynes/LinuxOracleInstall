#!/bin/bash
wget -O /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-7.repo
groupadd oinstall
groupadd dba
useradd -g oinstall -g dba -m oracle
mkdir -p /data/oracle
mkdir -p /data/oraInventory
mkdir -p /data/database
chown -R oracle:oinstall /data/oracle
chown -R oracle:oinstall /data/oraInventory
chown -R oracle:oinstall /data/database
systemctl disable firewalld.service

