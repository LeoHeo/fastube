pip freeze

python /home/ubuntu/fastube/manage.py makemigrations users posts tags
python /home/ubuntu/fastube/manage.py migrate

python /home/ubuntu/fastube/manage.py collectstatic --no-input

sudo service start

foreman start
honcho start web
