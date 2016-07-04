pip freeze

cd /home/ubuntu/fastube
pyenv activate fastube

python fastube/manage.py makemigrations users posts tags
python fastube/manage.py migrate

python fastube/manage.py collectstatic --no-input

sudo service start

honcho start web
