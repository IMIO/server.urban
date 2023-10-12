# -*- coding: utf-8 -*-
from locust import HttpUser, between, task


class WebsiteUser(HttpUser):
    wait_time = between(5, 15)

    def on_start(self):
        self.client.auth = ("admin", "admin")

    @task
    def licence_masterselect_add(self):
        self.client.get(
            "/codt_buildlicences/portal_factory/CODT_BuildLicence/codt_buildlicence.2023-10-12.4635965368/@@masterselect-jsonvalue-toggle?field=inquiry_type&slave=derogation&action=hide&value=none"
        )
