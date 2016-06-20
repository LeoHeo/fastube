from django.conf.urls import url, include
from django.contrib import admin

from fastube.views import *

urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^$', HomeView.as_view(), name="home"),
    url(r'^auth/', include("fastube.urls.auth", namespace="auth")),
]