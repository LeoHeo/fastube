source /home/ubuntu/.bash_profile
cd /home/ubuntu/fastube
echo y | command 

make migrate
make collectstatic

sudo service start
