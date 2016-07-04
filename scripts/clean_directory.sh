curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash
pyenv update
echo 'export PATH="~/.pyenv/bin:$PATH"' > .bash_profile
echo 'eval "$(pyenv init -)"' > .bash_profile
echo 'eval "$(pyenv virtualenv-init -)"'> .bash_profile

pyenv install 3.5.1
pyenv virtualenv 3.5.1 fastube
rm -rf /home/ubuntu/fastube
mkdir /home/ubuntu/fastube
sudo cp ~/.env /home/ubuntu/fastube/.env
