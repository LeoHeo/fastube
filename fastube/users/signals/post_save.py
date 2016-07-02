from django.db.models.signals import post_save
from django.contrib.auth import get_user_model
from django.dispatch import receiver

import requests
from time import sleep


@receiver(post_save, sender=get_user_model())
def post_save_user(sender, instance, created, **kwargs):
    if created:
        sleep(3)

        base_url = "http://api.openapi.io/ppurio/1/message/sms/dobestan"
        headers = {
            'x-waple-authorization': 'MTkyMC0xNDEzODU0NTAwMzU3LTllM2VkOTM3LTYwMTEtNGU2Zi1iZWQ5LTM3NjAxMTNlNmYyMg==',
        }

        data = {
            "send_phone": "01099795385",
            "dest_phone": "01099795385",
            "msg_body": "New Joiner",
        }

        response = requests.post(
            base_url,
            headers=headers,
            data=data,
        )
