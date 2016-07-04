migrate:
	- python3 fastube/manage.py makemigrations users posts tags
	- python3 fastube/manage.py migrate

collectstatic:
	- python3 fastube/manage.py collectstatic --no-input

test:
	- pep8 .
	- python3 fastube/manage.py test users posts tags -v2
