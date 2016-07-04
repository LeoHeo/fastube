#!/bin/bash
cd /home/ubuntu/fastube

make migrate

sudo service start
