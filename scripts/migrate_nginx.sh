#!/bin/bash
cd /home/ubuntu/fastube
pyenv activate fastube

make migrate

sudo service start
