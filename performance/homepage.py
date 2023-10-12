# -*- coding: utf-8 -*-
from locust import HttpUser, between, task


class WebsiteUser(HttpUser):
    wait_time = between(5, 15)

    def on_start(self):
        self.client.auth = ("admin", "admin")

    @task
    def homepage(self):
        self.client.get("/")
