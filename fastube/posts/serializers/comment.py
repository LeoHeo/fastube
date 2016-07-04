from rest_framework import serializers

from posts.models import Comment


class CommentModelSerializer(serializers.ModelSerializer):

    username = serializers.CharField(source="user.username", )
    post_title = serializers.CharField(source="post.title", )

    class Meta:
        model = Comment
        fields = [
            "username",
            "post_title",
            "content",
        ]
