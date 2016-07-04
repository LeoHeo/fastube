source /home/ubuntu/.bash_profile
cp /home/ubuntu/fastube/.env ~/.env
pyenv virtualenv 3.5.1 fastube
rm -rf /home/ubuntu/fastube
mkdir /home/ubuntu/fastube
mv ~/.env /home/ubuntu/fastube/.env
echo y | command 
