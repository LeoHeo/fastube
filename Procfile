web: gunicorn --pythonpath fastube/ --bind :5736 --workers=1 fastube.wsgi
worker: celery --workdir=fastube/ --app=fastube.celery:app --concurrency=3 worker
flower: celery --workdir=fastube/ --app=fastube.celery:app flower
