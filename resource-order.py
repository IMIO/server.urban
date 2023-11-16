# -*- coding: utf-8 -*-

from Zope2.App import startup
from plone import api
from transaction import commit
from zope.component.hooks import setSite

import argparse
import json


class RessourcesOrder(object):

    def __init__(self, portal, config_file, set_config=False):
        self.portal = portal
        self.config_file = config_file
        self.set_config = set_config

    def process(self):
        portal_css = api.portal.get_tool("portal_css")
        if self.set_config != False:
            with open(self.config_file, "r") as f:
                data = json.load(f)
                for resource in data:
                    if not resource["after"]:
                        continue
                    portal_css.moveResourceAfter(resource["id"], resource["after"])
                commit()
        else:
            with open(self.config_file, "w") as f:
                data = []
                old_resource = None
                for resource in portal_css.getResourceIds():
                    new_resource = resource
                    data.append({"id": new_resource, "after": old_resource})
                    old_resource = resource
                json.dump(data, f)


def main(app):
    startup.startup()

    parser = argparse.ArgumentParser()
    parser.add_argument("-c", help="Path to the script that are given by instance")
    parser.add_argument("--config", help="Path to the json file",
                        default="resource_order.json")
    parser.add_argument("--name", help="Name of plone site", default="Plone")
    parser.add_argument("--set", help="Set from config", default=False)
    args = parser.parse_args()

    path = args.name.split("/")
    site = app
    for name in path:
        site = site[name]
    setSite(site)
    with api.env.adopt_user(username="admin"):
        RessourcesOrder(api.portal.get(), args.config, args.set).process()


# If this script lives in your source tree, then we need to use this trick so that
# five.grok, which scans all modules, does not try to execute the script while
# modules are being loaded on the start-up
if "app" in locals():
    main(app)  # NOQA
