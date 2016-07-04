source /home/ubuntu/.bash_profile
cd /home/ubuntu/fastube
pyenv activate fastube

make migrate
make collectstatic

sudo service start
