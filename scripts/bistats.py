from __future__ import print_function

from datetime import date

from Products.urban.config import URBAN_TYPES
from liege.urban.browser.activity_report import do_export
from plone import api


def export_bi_stats():
    query = {
        'date_index': 'created',
        'start_date': date(2000, 1, 1),
        'end_date': date(date.today().year, date.today().month, date.today().day),
        'licence_type': set(
            URBAN_TYPES
        ),
    }
    do_export(obj, query, 'monthly_activity_report')


with api.env.adopt_user(username='admin'):
    export_bi_stats()
