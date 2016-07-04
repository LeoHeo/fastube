curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash
pyenv update
sudo echo 'export PATH="~/.pyenv/bin:$PATH"' >> .bash_profile
sudo echo 'eval "$(pyenv init -)"' >> .bash_profile
sudo echo 'eval "$(pyenv virtualenv-init -)"' >> .bash_profile

sudo pyenv install 3.5.1
sudo pyenv uninstall fastube
pyenv virtualenv 3.5.1 fastube
rm -rf /home/ubuntu/fastube
mkdir /home/ubuntu/fastube
sudo cp ~/.env /home/ubuntu/fastube/.env
pyenv activate fastube
