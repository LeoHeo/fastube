import os

from .base import BASE_DIR, PROJECT_ROOT_DIR

# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/1.9/howto/static-files/

STATICFILES_DIRS = [
    os.path.join(BASE_DIR, "fastube", "static"),
]

STATIC_URL = '/static/'

STATIC_ROOT = os.path.join(PROJECT_ROOT_DIR, "dist", "static")

STATICFILES_STORAGE = 'pipeline.storage.PipelineCachedStorage'

STATICFILES_FINDERS = (
    'django.contrib.staticfiles.finders.FileSystemFinder',
    'django.contrib.staticfiles.finders.AppDirectoriesFinder',
    'pipeline.finders.PipelineFinder',
)

PIPELINE = {
    'JAVASCRIPT': {
        'posts': {
            'source_filenames': (
              'js/posts.js',
            ),
            'output_filename': 'js/posts.css',
        }
    },
    'STYLESHEETS': {
        'fastube': {
            'source_filenames': (
              'css/application.css',
              'css/partials/*.css',
            ),
            'output_filename': 'css/fastube.css',
        }
    }
}

# Media
MEDIA_URL = "/media/"
MEDIA_ROOT = os.path.join(PROJECT_ROOT_DIR, "dist", "media")
