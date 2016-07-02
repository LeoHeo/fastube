from django.db import models


class Follow(models.Model):
    follower = models.OneToOneField(
        "User",
        related_name="+",
    )

    followee = models.OneToOneField(
        "User",
        related_name="+",
    )

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
