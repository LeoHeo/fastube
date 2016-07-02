from django.conf.urls import url

from posts.api import *

urlpatterns = [
    url(r'^$', PostListAPIView.as_view(), name="api"),
    url(r'^post/(?P<slug>\w+)/$', PostCommentListCreateAPIView.as_view(), name="api"),
]
