#!/bin/bash
cp .env ~/.env
pyenv virtualenv 3.5.1 fastube
pyenv activate fastube
rm -rf /home/ubuntu/fastube
mkdir /home/ubuntu/fastube
mv .env /home/ubuntu/fastube/.env
echo y | command 
