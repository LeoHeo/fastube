#!/bin/bash
cp .env ~/.env
rm -rf /home/ubuntu/fastube
mkdir /home/ubuntu/fastube
mv .env /home/ubuntu/fastube/.env
echo y | command 
