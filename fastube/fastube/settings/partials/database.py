# dj_datbase_url
# https://github.com/kennethreitz/dj-database-url

import dj_database_url
import os


DATABASES = {}
DATABASES['default'] = dj_database_url.config(
    default=os.environ.get("DATABASE_URL")
)
