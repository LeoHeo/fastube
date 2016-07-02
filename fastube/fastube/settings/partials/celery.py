# using redis
# http://docs.celeryproject.org/en/latest/getting-started/brokers/redis.html

CELERY_ACCEPT_CONTENT = ['pickle', 'json']

BROKER_URL = 'redis://localhost:6379/0'
