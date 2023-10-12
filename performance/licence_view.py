# -*- coding: utf-8 -*-
from locust import HttpUser, between, task


class WebsiteUser(HttpUser):
    wait_time = between(5, 15)

    def on_start(self):
        self.client.auth = ("mpeeters", "mpeeters")

    @task
    def licence_view(self):
        self.client.get(
            "/codt_uniquelicences/codt_uniquelicence.2024-04-30.9340541316"
        )
