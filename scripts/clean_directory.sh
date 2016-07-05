pyenv install 3.5.1
pyenv virtualenv 3.5.1 fastube
rm -rf /home/ubuntu/fastube
mkdir /home/ubuntu/fastube
sudo cp ~/.fastubeenv /home/ubuntu/fastube/.env
pyenv activate fastube
