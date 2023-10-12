# -*- coding: utf-8 -*-
from locust import HttpUser, between, task


class WebsiteUser(HttpUser):
    wait_time = between(5, 15)

    def on_start(self):
        self.client.auth = ("admin", "admin")

    @task
    def licence_edit(self):
        self.client.get(
            "/codt_article127s/pa-2023-2-demande-de-permis-durbanisme-regularisation-dune-piscine-m-jaumoulle-jean/edit"
        )
