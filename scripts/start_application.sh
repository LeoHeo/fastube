pip freeze

cd /home/ubuntu/fastube

python3 fastube/manage.py makemigrations users posts tags
python3 fastube/manage.py migrate

python3 fastube/manage.py collectstatic --no-input

sudo service start

honcho start web
