# Merge Urban Liège dans Urban classique

## Statistiques

* Les comparaisons sont faites entre les branches **urban2.7.x** et **liege-urban2.5.x**,
* en date du 09/12/2024,
* après application globale de **black** et **isort**.


### Changements totaux

```shell
git diff --shortstat urban2.7.x_merge20241209..liege-urban2.5.x_merge20241209
```

1218 files changed, 22787 insertions(+), 33360 deletions(-)


### Commits spécifiques à chaque branche

- 346 commits côté Liège (284 jugés utiles)
- 997 commits côté classique (836 jugés utiles)


### Répartition par dossier de la masse des différences

```shell
git diff --dirstat=files,1 urban2.7.x_merge20241209..liege-urban2.5.x_merge20241209
```

    1.3% src/Products/urban/Extensions/
    1.1% src/Products/urban/browser/exportimport/
    1.9% src/Products/urban/browser/licence/templates/
    2.5% src/Products/urban/browser/licence/
    1.6% src/Products/urban/browser/templates/
    3.2% src/Products/urban/browser/
    2.7% src/Products/urban/content/licence/
    2.7% src/Products/urban/dashboard/config/
    1.3% src/Products/urban/events/
    1.1% src/Products/urban/migration/
    39.2% src/Products/urban/profiles/extra/templates/
    4.0% src/Products/urban/profiles/preinstall/types/
    1.1% src/Products/urban/profiles/preinstall/
    1.1% src/Products/urban/profiles/testsWithConfig/
    1.9% src/Products/urban/profiles/
    2.8% src/Products/urban/schedule/config/
    1.7% src/Products/urban/schedule/
    13.5% src/Products/urban/skins/urban_images/
    1.1% src/Products/urban/skins/
    2.1% src/Products/urban/tests/
    9.7% src/Products/urban/


### Différences par fichier

```shell
git diff --stat=180 --compact-summary urban2.7.x_merge20241209..liege-urban2.5.x_merge20241209
```

    src/Products/urban/Applicant.py                                                                            |    35 +-
    src/Products/urban/Claimant.py                                                                             |     5 +-
    src/Products/urban/Contact.py                                                                              |    59 +-
    src/Products/urban/Corporation.py                                                                          |    88 +-
    src/Products/urban/Couple.py                                                                               |    44 +-
    src/Products/urban/EnvironmentRubricTerm.py                                                                |     3 -
    src/Products/urban/Extensions/add_deleted_items.py (gone)                                                  |   186 --
    src/Products/urban/Extensions/check_broken_streets.py (gone)                                               |    23 -
    src/Products/urban/Extensions/check_parcels.py (gone)                                                      |    80 -
    src/Products/urban/Extensions/close_licences.py (gone)                                                     |    31 -
    src/Products/urban/Extensions/export.py                                                                    |     2 +-
    src/Products/urban/Extensions/fix_corrupted_description.py (gone)                                          |    29 -
    src/Products/urban/Extensions/fix_double_streets.py                                                        |    24 +-
    src/Products/urban/Extensions/fix_moved_class.py (gone)                                                    |    64 -
    src/Products/urban/Extensions/fix_profile_version.py (gone)                                                |    12 -
    src/Products/urban/Extensions/fix_schedule_config.py (gone)                                                |    95 -
    src/Products/urban/Extensions/fixblobs.py                                                                  |     1 +
    src/Products/urban/Extensions/imports.py                                                                   |     4 +-
    src/Products/urban/Extensions/missing_events_config.py                                                     |    28 +-
    src/Products/urban/Extensions/reindex_object.py                                                            |     2 +-
    src/Products/urban/Extensions/update_task_configs.py                                                       |    21 -
    src/Products/urban/Extensions/update_tasks.py (gone)                                                       |     8 -
    src/Products/urban/FolderManager.py                                                                        |     5 +-
    src/Products/urban/LicenceConfig.py                                                                        |   117 +-
    src/Products/urban/Locality.py                                                                             |     2 +-
    src/Products/urban/MiscDemand.py (new)                                                                     |     5 +
    src/Products/urban/OOmacros/README.txt (new)                                                               |    14 +
    src/Products/urban/OOmacros/UrbanDocOO/Images/mailing_icon_16.png (new)                                    |   Bin 0 -> 235 bytes
    src/Products/urban/OOmacros/UrbanDocOO/Python/mailing.py (new)                                             |    66 +
    src/Products/urban/OOmacros/UrbanDocOO/UrbanDocOO-0.1.oxt (new)                                            |   Bin 0 -> 27598 bytes
    src/Products/urban/OOmacros/UrbanDocOO/UrbanDocOO.odt (new)                                                |   Bin 0 -> 222921 bytes
    src/Products/urban/OOmacros/UrbanTemplateOO/Images/appyTE_icon_16.png (new)                                |   Bin 0 -> 235 bytes
    src/Products/urban/OOmacros/UrbanTemplateOO/Python/appyTE.py (new)                                         |   253 ++
    src/Products/urban/OOmacros/UrbanTemplateOO/Python/config.xml (new)                                        |   648 ++++
    src/Products/urban/OOmacros/UrbanTemplateOO/UrbanTemplateOO-0.1.oxt (new)                                  |   Bin 0 -> 2507255 bytes
    src/Products/urban/OOmacros/UrbanTemplateOO/UrbanTemplateOO.odt (new)                                      |   Bin 0 -> 223259 bytes
    src/Products/urban/OOmacros/UrbanTemplateOO/appyTE-TEST.odt (new)                                          |   Bin 0 -> 14770 bytes
    src/Products/urban/OpinionRequestEventType.py                                                              |     3 +-
    src/Products/urban/OrganisationTerm.py                                                                     |     2 +-
    src/Products/urban/ParcellingTerm.py                                                                       |    49 +-
    src/Products/urban/PcaTerm.py                                                                              |    10 +-
    src/Products/urban/PortionOut.py                                                                           |    12 +-
    src/Products/urban/RecipientCadastre.py                                                                    |    20 +
    src/Products/urban/SpecificFeatureTerm.py                                                                  |    16 +-
    src/Products/urban/Street.py                                                                               |     5 -
    src/Products/urban/UrbanEvent.py                                                                           |   164 +-
    src/Products/urban/UrbanEventOpinionRequest.py                                                             |     4 +-
    src/Products/urban/UrbanEventType.py                                                                       |    27 +-
    src/Products/urban/UrbanTool.py                                                                            |   227 +-
    src/Products/urban/UrbanVocabularyTerm.py                                                                  |    20 +-
    src/Products/urban/__init__.py                                                                             |    26 +-
    src/Products/urban/browser/actionspanel/__init__.py                                                        |     2 -
    src/Products/urban/browser/actionspanel/actionspanel.py                                                    |   140 +-
    src/Products/urban/browser/actionspanel/configure.zcml                                                     |    36 -
    src/Products/urban/browser/actionspanel/confirm.pt                                                         |    10 +-
    src/Products/urban/browser/actionspanel/confirm.py                                                         |     8 +-
    src/Products/urban/browser/configtestview.py (new)                                                         |   252 ++
    src/Products/urban/browser/configure.zcml                                                                  |   179 +-
    src/Products/urban/browser/contactview.py                                                                  |    80 +-
    src/Products/urban/browser/cron/inquiry.py                                                                 |     8 +-
    src/Products/urban/browser/cron/tasks.py                                                                   |    67 +-
    src/Products/urban/browser/default_text.py                                                                 |     2 +-
    src/Products/urban/browser/exportimport/configure.zcml (gone)                                              |    64 -
    src/Products/urban/browser/exportimport/deserializer.py (gone)                                             |   178 -
    src/Products/urban/browser/exportimport/export_config.py (gone)                                            |    71 -
    src/Products/urban/browser/exportimport/export_content.py (gone)                                           |    91 -
    src/Products/urban/browser/exportimport/export_ordering.py (gone)                                          |    30 -
    src/Products/urban/browser/exportimport/import_config.py (gone)                                            |   325 --
    src/Products/urban/browser/exportimport/interfaces.py (gone)                                               |    10 -
    src/Products/urban/browser/exportimport/serializer.py (gone)                                               |    50 -
    src/Products/urban/browser/exportimport/templates/export_ordering.pt (gone)                                |    51 -
    src/Products/urban/browser/exportimport/templates/export_urban_config.pt (gone)                            |   120 -
    src/Products/urban/browser/exportimport/templates/import_ordering.pt (gone)                                |    54 -
    src/Products/urban/browser/exportimport/templates/import_urban_config.pt (gone)                            |   134 -
    src/Products/urban/browser/exportimport/templates/links.pt (gone)                                          |    31 -
    src/Products/urban/browser/gig_coring_settings.py (gone)                                                   |    81 -
    src/Products/urban/browser/gig_coring_view.py (gone)                                                       |    24 -
    src/Products/urban/browser/licence/article127view.py                                                       |     4 +
    src/Products/urban/browser/licence/buildlicenceview.py                                                     |     4 +
    src/Products/urban/browser/licence/codt_buildlicenceview.py                                                |     4 +
    src/Products/urban/browser/licence/codt_integratedlicenceview.py                                           |     4 +
    src/Products/urban/browser/licence/codt_parceloutlicenceview.py                                            |     4 +
    src/Products/urban/browser/licence/codt_uniquelicenceview.py                                               |     4 +
    src/Products/urban/browser/licence/codt_urbancertificatetwoview.py                                         |     4 +
    src/Products/urban/browser/licence/configure.zcml                                                          |    30 +-
    src/Products/urban/browser/licence/declarationview.py                                                      |     4 +
    src/Products/urban/browser/licence/divisionview.py                                                         |    10 +-
    src/Products/urban/browser/licence/duplicate_licence.py (gone)                                             |   158 -
    src/Products/urban/browser/licence/envclassborderingview.py                                                |     4 +
    src/Products/urban/browser/licence/envclassoneview.py                                                      |     4 +
    src/Products/urban/browser/licence/envclassthreeview.py                                                    |     4 +
    src/Products/urban/browser/licence/envclasstwoview.py                                                      |     4 +
    src/Products/urban/browser/licence/explosivespossessionview.py                                             |     4 +
    src/Products/urban/browser/licence/inspectionview.py                                                       |     5 +
    src/Products/urban/browser/licence/licenceview.py                                                          |   198 +-
    src/Products/urban/browser/licence/miscdemandview.py                                                       |     4 +
    src/Products/urban/browser/licence/notaryletterview.py                                                     |     4 +
    src/Products/urban/browser/licence/parceloutlicenceview.py                                                 |     4 +
    src/Products/urban/browser/licence/patrimonycertificateview.py                                             |    20 +-
    src/Products/urban/browser/licence/preliminarynoticeview.py                                                |     4 +
    src/Products/urban/browser/licence/projectmeetingview.py                                                   |     4 +
    src/Products/urban/browser/licence/roaddecreeview.py                                                       |     4 +
    src/Products/urban/browser/licence/templates/article127macros.pt                                           |     2 +-
    src/Products/urban/browser/licence/templates/buildlicencemacros.pt                                         |     2 +-
    src/Products/urban/browser/licence/templates/codt_buildlicencemacros.pt                                    |     2 +-
    src/Products/urban/browser/licence/templates/codt_integratedlicencemacros.pt                               |     2 +-
    src/Products/urban/browser/licence/templates/codt_parceloutlicencemacros.pt                                |     2 +-
    src/Products/urban/browser/licence/templates/codt_uniquelicencemacros.pt                                   |     4 +-
    src/Products/urban/browser/licence/templates/divisionmacros.pt                                             |     7 -
    src/Products/urban/browser/licence/templates/duplicate_licence.pt (gone)                                   |    24 -
    src/Products/urban/browser/licence/templates/envclassborderingmacros.pt                                    |     4 +-
    src/Products/urban/browser/licence/templates/envclassonemacros.pt                                          |     2 +-
    src/Products/urban/browser/licence/templates/envclasstwomacros.pt                                          |     2 +-
    src/Products/urban/browser/licence/templates/fieldscustomdisplay.pt                                        |    25 +-
    src/Products/urban/browser/licence/templates/licenceedit.pt                                                |     6 +-
    src/Products/urban/browser/licence/templates/licencemacros.pt                                              |    23 +-
    src/Products/urban/browser/licence/templates/licencetabsmacros.pt                                          |    30 +-
    src/Products/urban/browser/licence/templates/notarylettermacros.pt                                         |     3 -
    src/Products/urban/browser/licence/templates/parceloutlicencemacros.pt                                     |     2 +-
    src/Products/urban/browser/licence/templates/parcels_macro.pt                                              |    11 +-
    src/Products/urban/browser/licence/templates/patrimonycertificatemacros.pt                                 |     5 -
    src/Products/urban/browser/licence/templates/uniquelicencemacros.pt                                        |     2 +-
    src/Products/urban/browser/licence/templates/urbancertificateonemacros.pt                                  |     5 +-
    src/Products/urban/browser/licence/templates/urbancertificatetwomacros.pt                                  |     3 +-
    src/Products/urban/browser/licence/templates/worklocation_macro.pt                                         |    14 +-
    src/Products/urban/browser/licence/ticketview.py                                                           |     5 +
    src/Products/urban/browser/licence/uniquelicenceview.py                                                    |     4 +
    src/Products/urban/browser/licence/urbancertificatebaseedit.py                                             |     2 +-
    src/Products/urban/browser/licence/urbancertificateoneview.py                                              |     4 +
    src/Products/urban/browser/licence/urbancertificatetwoview.py                                              |     4 +
    src/Products/urban/browser/licenceconfigview.py                                                            |    26 +-
    src/Products/urban/browser/mapview.py                                                                      |     4 +-
    src/Products/urban/browser/offdays_settings.py (gone)                                                      |   117 -
    src/Products/urban/browser/parcellingtermview.py (new)                                                     |    24 +
    src/Products/urban/browser/parcelrecordsview.py                                                            |    23 +-
    src/Products/urban/browser/parcelsinfo.py                                                                  |     3 +-
    src/Products/urban/browser/referencebrowser_popup.py (gone)                                                |    36 -
    src/Products/urban/browser/schedule_settings.py (gone)                                                     |    40 -
    src/Products/urban/browser/searchparcelsview.py                                                            |    69 +-
    src/Products/urban/browser/table/column.py                                                                 |    66 +-
    src/Products/urban/browser/table/configure.zcml                                                            |    25 +-
    src/Products/urban/browser/table/interfaces.py                                                             |     6 -
    src/Products/urban/browser/table/tablevalue.py                                                             |     8 +
    src/Products/urban/browser/table/urbantable.py                                                             |    15 +-
    src/Products/urban/browser/templates/contact_popup.pt (gone)                                               |   282 --
    src/Products/urban/browser/templates/contactmacros.pt                                                      |     6 +-
    src/Products/urban/browser/templates/contactview.pt                                                        |     8 +-
    src/Products/urban/browser/templates/globalmacros.pt                                                       |    25 +-
    src/Products/urban/browser/templates/notary_popup.pt (gone)                                                |   277 --
    src/Products/urban/browser/templates/parcel_view.pt (gone)                                                 |    16 -
    src/Products/urban/browser/templates/parcellingtermview.pt (new)                                           |    34 +
    src/Products/urban/browser/templates/parcelsinfo.pt                                                        |    93 +-
    src/Products/urban/browser/templates/portionoutview.pt (new)                                               |    42 +
    src/Products/urban/browser/templates/searchparcels.pt                                                      |    46 +-
    src/Products/urban/browser/templates/urban_configfolderview.pt                                             |    23 +-
    src/Products/urban/browser/templates/urbanconfigmacros.pt                                                  |    34 +-
    src/Products/urban/browser/templates/urbanconfigtestview.pt (new)                                          |    21 +
    src/Products/urban/browser/templates/urbaneventannouncementview.pt                                         |     2 +-
    src/Products/urban/browser/templates/urbaneventinquiryedit.pt (gone)                                       |    36 -
    src/Products/urban/browser/templates/urbaneventinquiryview.pt                                              |     9 +-
    src/Products/urban/browser/templates/urbaneventmacros.pt                                                   |    61 +-
    src/Products/urban/browser/templates/urbaneventview.pt                                                     |     4 +-
    src/Products/urban/browser/templates/urbanstatsview.pt                                                     |     2 +-
    src/Products/urban/browser/unlock_docs.py (gone)                                                           |    14 -
    src/Products/urban/browser/urban_configfolderview.py                                                       |    89 +-
    src/Products/urban/browser/urban_redirects.py                                                              |     5 +-
    src/Products/urban/browser/urban_vocabularies.py                                                           |     5 +
    src/Products/urban/browser/urbanconfigview.py                                                              |    11 +-
    src/Products/urban/browser/urbandoc2pm.py (new)                                                            |    30 +
    src/Products/urban/browser/urbaneventedit.py                                                               |    73 +-
    src/Products/urban/browser/urbaneventviews.py                                                              |   165 +-
    src/Products/urban/browser/views.py                                                                        |     5 +-
    src/Products/urban/browser/warnings/conditions.py (gone)                                                   |    45 -
    src/Products/urban/browser/warnings/configure.zcml (gone)                                                  |    21 -
    src/Products/urban/config.py                                                                               |    55 +-
    src/Products/urban/configure.zcml                                                                          |    31 +-
    src/Products/urban/content/CODT_Inquiry.py                                                                 |    25 +-
    src/Products/urban/content/CODT_UniqueLicenceInquiry.py                                                    |    19 +-
    src/Products/urban/content/FollowUpEventType.py                                                            |     2 +-
    src/Products/urban/content/Inquiry.py                                                                      |   126 +-
    src/Products/urban/content/UrbanEventInquiry.py                                                            |    21 +-
    src/Products/urban/content/UrbanEventInspectionReport.py                                                   |    32 +-
    src/Products/urban/content/licence/BaseBuildLicence.py                                                     |   166 +-
    src/Products/urban/content/licence/BuildLicence.py                                                         |     4 +-
    src/Products/urban/content/licence/CODT_Article127.py                                                      |    26 +-
    src/Products/urban/content/licence/CODT_BaseBuildLicence.py                                                |    86 +-
    src/Products/urban/content/licence/CODT_BuildLicence.py                                                    |    16 +-
    src/Products/urban/content/licence/CODT_CommercialLicence.py                                               |    77 +-
    src/Products/urban/content/licence/CODT_IntegratedLicence.py                                               |    21 +-
    src/Products/urban/content/licence/CODT_ParcelOutLicence.py                                                |    25 +-
    src/Products/urban/content/licence/CODT_UniqueLicence.py                                                   |    46 +-
    src/Products/urban/content/licence/CODT_UrbanCertificateTwo.py                                             |    23 +-
    src/Products/urban/content/licence/Declaration.py                                                          |     5 +-
    src/Products/urban/content/licence/Division.py                                                             |   307 +-
    src/Products/urban/content/licence/EnvClassBordering.py                                                    |     4 +-
    src/Products/urban/content/licence/EnvClassOne.py                                                          |     2 -
    src/Products/urban/content/licence/EnvClassThree.py                                                        |     5 +-
    src/Products/urban/content/licence/EnvClassTwo.py                                                          |     2 -
    src/Products/urban/content/licence/EnvironmentBase.py                                                      |    78 +-
    src/Products/urban/content/licence/EnvironmentLicence.py                                                   |    89 +-
    src/Products/urban/content/licence/ExplosivesPossession.py                                                 |    11 +-
    src/Products/urban/content/licence/GenericLicence.py                                                       |   592 +---
    src/Products/urban/content/licence/Inspection.py                                                           |    47 +-
    src/Products/urban/content/licence/MiscDemand.py                                                           |    17 +-
    src/Products/urban/content/licence/ParcelOutLicence.py                                                     |    17 +-
    src/Products/urban/content/licence/PatrimonyCertificate.py                                                 |   295 +-
    src/Products/urban/content/licence/PreliminaryNotice.py                                                    |     1 -
    src/Products/urban/content/licence/RoadDecree.py                                                           |     5 +-
    src/Products/urban/content/licence/Ticket.py                                                               |   150 +-
    src/Products/urban/content/licence/UniqueLicence.py                                                        |    17 +-
    src/Products/urban/content/licence/UrbanCertificateBase.py                                                 |    87 +-
    src/Products/urban/content/licence/UrbanCertificateTwo.py                                                  |     9 +-
    src/Products/urban/content/licence/base.py                                                                 |   211 +-
    src/Products/urban/{browser/warnings => content/licence/tests}/__init__.py                                 |     0
    src/Products/urban/content/licence/tests/test_codt_buildlicence.py (new)                                   |    98 +
    src/Products/urban/contentrules/configure.zcml                                                             |     3 +
    src/Products/urban/contentrules/event_type.py                                                              |     4 +-
    src/Products/urban/contentrules/mail_with_attachment.py                                                    |     5 +-
    src/Products/urban/dashboard/autocomplete.py                                                               |    36 +-
    src/Products/urban/dashboard/columns.py                                                                    |    24 +-
    src/Products/urban/dashboard/columns.zcml                                                                  |     9 -
    src/Products/urban/dashboard/config/all.xml                                                                |    64 +-
    src/Products/urban/dashboard/config/article127s.xml                                                        |    70 +-
    src/Products/urban/dashboard/config/buildlicences.xml                                                      |    73 +-
    src/Products/urban/dashboard/config/codt_article127s.xml                                                   |    82 +-
    src/Products/urban/dashboard/config/codt_buildlicences.xml                                                 |    83 +-
    src/Products/urban/dashboard/config/codt_commerciallicences.xml                                            |    81 +-
    src/Products/urban/dashboard/config/codt_integratedlicences.xml                                            |    81 +-
    src/Products/urban/dashboard/config/codt_notaryletters.xml                                                 |    79 +-
    src/Products/urban/dashboard/config/codt_parceloutlicences.xml                                             |    81 +-
    src/Products/urban/dashboard/config/codt_uniquelicences.xml                                                |    81 +-
    src/Products/urban/dashboard/config/codt_urbancertificateones.xml                                          |    79 +-
    src/Products/urban/dashboard/config/codt_urbancertificatetwos.xml                                          |    81 +-
    src/Products/urban/dashboard/config/declarations.xml                                                       |    54 +-
    src/Products/urban/dashboard/config/divisions.xml                                                          |    79 +-
    src/Products/urban/dashboard/config/envclassborderings.xml                                                 |    81 +-
    src/Products/urban/dashboard/config/envclassones.xml                                                       |    81 +-
    src/Products/urban/dashboard/config/envclassthrees.xml                                                     |    75 +-
    src/Products/urban/dashboard/config/envclasstwos.xml                                                       |    81 +-
    src/Products/urban/dashboard/config/explosivespossessions.xml                                              |    77 +-
    src/Products/urban/dashboard/config/inspections.xml                                                        |    77 +-
    src/Products/urban/dashboard/config/integratedlicences.xml                                                 |    70 +-
    src/Products/urban/dashboard/config/miscdemands.xml                                                        |    79 +-
    src/Products/urban/dashboard/config/notaryletters.xml                                                      |    68 +-
    src/Products/urban/dashboard/config/parceloutlicences.xml                                                  |    59 +-
    src/Products/urban/dashboard/config/patrimonycertificates.xml                                              |    79 +-
    src/Products/urban/dashboard/config/preliminarynotices.xml                                                 |    79 +-
    src/Products/urban/dashboard/config/projectmeetings.xml                                                    |    79 +-
    src/Products/urban/dashboard/config/roaddecrees.xml                                                        |    66 +-
    src/Products/urban/dashboard/config/tickets.xml                                                            |    77 +-
    src/Products/urban/dashboard/config/uniquelicences.xml                                                     |    70 +-
    src/Products/urban/dashboard/config/urbancertificateones.xml                                               |    68 +-
    src/Products/urban/dashboard/config/urbancertificatetwos.xml                                               |    70 +-
    src/Products/urban/dashboard/faceted_catalog.py                                                            |    14 +-
    src/Products/urban/dashboard/overrides.py                                                                  |     2 +-
    src/Products/urban/dashboard/portlet.py                                                                    |    10 -
    src/Products/urban/dashboard/templates/portlet_categoryswitch.pt                                           |     6 +-
    src/Products/urban/dashboard/vocabularies.py                                                               |    39 +-
    src/Products/urban/dashboard/vocabularies.zcml                                                             |     6 +
    src/Products/urban/dashboard/widgets/configure.zcml                                                        |     5 +-
    src/Products/urban/dashboard/widgets/select_to_list.py                                                     |     5 -
    src/Products/urban/docgen/UrbanTemplate.py                                                                 |    16 +-
    src/Products/urban/docgen/configure.zcml                                                                   |    14 +
    src/Products/urban/docgen/generationview.py                                                                |     1 -
    src/Products/urban/docgen/helper_view.py                                                                   |   171 +-
    src/Products/urban/events/PcaTermEvents.py (gone)                                                          |     5 -
    src/Products/urban/events/configuration_events.py                                                          |    64 +-
    src/Products/urban/events/configure.zcml                                                                   |    86 +-
    src/Products/urban/events/dashboard_collection.py                                                          |     4 +-
    src/Products/urban/events/envclassEvents.py                                                                |     2 +-
    src/Products/urban/events/followupEvents.py                                                                |     4 -
    src/Products/urban/events/inquiryEvents.py                                                                 |    25 +-
    src/Products/urban/events/licenceEvents.py                                                                 |   107 +-
    src/Products/urban/events/parcelEvents.py (new)                                                            |    10 +
    src/Products/urban/events/parcellingtermEvents.py (new)                                                    |     5 +
    src/Products/urban/events/portionOutEvents.py (new)                                                        |    53 +
    src/Products/urban/events/tests/test_envclassEvents.py                                                     |     8 +-
    src/Products/urban/events/ticketEvents.py                                                                  |    30 +-
    src/Products/urban/events/urbanEventEvents.py                                                              |    16 +-
    src/Products/urban/events/urbanEventInquiryEvents.py                                                       |     5 +-
    src/Products/urban/events/urbanEventTypesEvents.py                                                         |    33 +-
    src/Products/urban/exportimport.py                                                                         |   179 +-
    src/Products/urban/factory.py                                                                              |    52 +-
    src/Products/urban/generatedsubscribers.zcml (new)                                                         |    23 +
    src/Products/urban/index.zcml                                                                              |     5 +-
    src/Products/urban/indexes.py                                                                              |    64 +-
    src/Products/urban/interfaces.py                                                                           |    29 +-
    src/Products/urban/locales/collective.eeafaceted.z3ctable.pot                                              |     3 -
    src/Products/urban/locales/fr/LC_MESSAGES/collective.eeafaceted.z3ctable.po                                |     3 -
    src/Products/urban/locales/fr/LC_MESSAGES/imio.actionspanel.po (gone)                                      |    18 -
    src/Products/urban/locales/fr/LC_MESSAGES/imio.schedule.po                                                 |    29 +-
    src/Products/urban/locales/fr/LC_MESSAGES/plone.po                                                         |   170 +-
    src/Products/urban/locales/fr/LC_MESSAGES/urban.po                                                         |  3009 +++++++++--------
    src/Products/urban/locales/imio.actionspanel.pot (gone)                                                    |    19 -
    src/Products/urban/locales/imio.schedule.pot                                                               |    21 +-
    src/Products/urban/locales/plone.pot                                                                       |   161 +-
    src/Products/urban/locales/urban-manual.pot                                                                |  1363 +++++++-
    src/Products/urban/locales/urban.pot                                                                       |  2633 ++++++++-------
    src/Products/urban/migration/check_corrupted_templates.py (gone)                                           |    22 -
    src/Products/urban/migration/configure.zcml                                                                |     7 -
    src/Products/urban/migration/fix_csv_replicata.py (gone)                                                   |    36 -
    src/Products/urban/migration/migrate_to_250.py                                                             |   425 +--
    src/Products/urban/migration/migrate_to_DX.py (gone)                                                       |   274 --
    src/Products/urban/migration/to_DX/migration_utils.py                                                      |   144 +-
    src/Products/urban/migration/update_240.py                                                                 |    74 +-
    src/Products/urban/migration/update_250.py (gone)                                                          |   858 -----
    src/Products/urban/migration/update_260.py                                                                 |   140 +-
    src/Products/urban/migration/update_270.py (gone)                                                          |   329 --
    src/Products/urban/migration/update_codt_2024.py                                                           |   175 +-
    src/Products/urban/migration/upgrades.zcml                                                                 |   571 +---
    src/Products/urban/migration/utils.py (gone)                                                               |    87 -
    src/Products/urban/overrides.zcml                                                                          |    22 +-
    src/Products/urban/permissions.zcml                                                                        |     5 -
    src/Products/urban/profiles.zcml                                                                           |    17 -
    src/Products/urban/profiles/default/actions.xml                                                            |    57 +-
    src/Products/urban/profiles/{urban_types => default}/catalog.xml                                           |    22 +-
    src/Products/urban/profiles/default/contentrules.xml                                                       |     2 +-
    src/Products/urban/profiles/default/cssregistry.xml                                                        |    16 +-
    src/Products/urban/profiles/default/import_steps.xml                                                       |     8 -
    src/Products/urban/profiles/default/metadata.xml                                                           |     2 +-
    src/Products/urban/profiles/default/portlets.xml                                                           |     4 +-
    src/Products/urban/profiles/default/registry.xml                                                           |     9 +-
    src/Products/urban/profiles/default/rolemap.xml                                                            |     4 -
    src/Products/urban/profiles/default/skins.xml                                                              |     7 +-
    src/Products/urban/profiles/default/viewlets.xml                                                           |    10 +-
    src/Products/urban/profiles/extra/config_default_values.py                                                 |   762 ++---
    src/Products/urban/profiles/extra/data.py                                                                  | 11433 ++++++++++++++++++++++++++++++++++++++++++++-------------------
    src/Products/urban/profiles/extra/default_objects.py                                                       |    32 +-
    src/Products/urban/profiles/extra/import_steps.xml                                                         |     8 -
    src/Products/urban/profiles/extra/metadata.xml                                                             |     2 +
    src/Products/urban/profiles/extra/refnis.py (gone)                                                         |  5746 --------------------------------
    src/Products/urban/profiles/extra/schedule_config.py                                                       |  1179 +------
    src/Products/urban/profiles/extra/templates/adresse-fd.odt (gone)                                          |   Bin 9358 -> 0 bytes
    src/Products/urban/profiles/extra/templates/adresse-ft.odt (gone)                                          |   Bin 9358 -> 0 bytes
    src/Products/urban/profiles/extra/templates/arne.odt (gone)                                                |   Bin 9424 -> 0 bytes
    src/Products/urban/profiles/extra/templates/avis-technique-peb.odt                                         |   Bin 20797 -> 27117 bytes
    src/Products/urban/profiles/extra/templates/base-courrier.odt                                              |   Bin 16049 -> 19257 bytes
    src/Products/urban/profiles/extra/templates/base-document.odt                                              |   Bin 13655 -> 15626 bytes
    src/Products/urban/profiles/extra/templates/blank.odt                                                      |   Bin 87100 -> 20729 bytes
    src/Products/urban/profiles/extra/templates/codt-accuse.odt (new)                                          |   Bin 0 -> 669113 bytes
    src/Products/urban/profiles/extra/templates/codt-avis.odt                                                  |   Bin 17769 -> 34666 bytes
    src/Products/urban/profiles/extra/templates/codt-dossier-incomplet-demandeur.odt (new)                     |   Bin 0 -> 642967 bytes
    src/Products/urban/profiles/extra/templates/codt-enq-affiche-verte.odt (new)                               |   Bin 0 -> 88147 bytes
    src/Products/urban/profiles/extra/templates/codt-enq-affiche.odt (new)                                     |   Bin 0 -> 85979 bytes
    src/Products/urban/profiles/extra/templates/codt-enq-avis-riverains.odt (new)                              |   Bin 0 -> 72824 bytes
    src/Products/urban/profiles/extra/templates/codt-envoi-premier-dossier-form-rw.odt (new)                   |   Bin 0 -> 90091 bytes
    src/Products/urban/profiles/extra/templates/codt-recepisse-complement.odt (new)                            |   Bin 0 -> 319227 bytes
    src/Products/urban/profiles/extra/templates/codt-recepisse-modification.odt (new)                          |   Bin 0 -> 322368 bytes
    src/Products/urban/profiles/extra/templates/codt_RP_convocation_FD.odt                                     |   Bin 18620 -> 18746 bytes
    src/Products/urban/profiles/extra/templates/codt_RP_convocation_architecte.odt                             |   Bin 114269 -> 20021 bytes
    src/Products/urban/profiles/extra/templates/codt_RP_convocation_autre.odt                                  |   Bin 114359 -> 19245 bytes
    src/Products/urban/profiles/extra/templates/codt_RP_convocation_demandeur.odt                              |   Bin 120932 -> 19321 bytes
    src/Products/urban/profiles/extra/templates/codt_cu1_annexe16.odt                                          |   Bin 35326 -> 35083 bytes
    src/Products/urban/profiles/extra/templates/codt_cu2_annexe_12_decision_octroi_refus.odt                   |   Bin 473158 -> 655984 bytes
    src/Products/urban/profiles/extra/templates/codt_cu2_annexe_17_dossier_incomplet_demandeur.odt             |   Bin 448279 -> 629653 bytes
    src/Products/urban/profiles/extra/templates/codt_cu2_annexe_18_accuse_reception.odt                        |   Bin 464345 -> 646295 bytes
    src/Products/urban/profiles/extra/templates/codt_cu2_annexe_25_affiche_verte.odt                           |   Bin 144998 -> 142971 bytes
    src/Products/urban/profiles/extra/templates/codt_cu2_annexe_26_affiche_jaune.odt                           |   Bin 143707 -> 143678 bytes
    src/Products/urban/profiles/extra/templates/codt_cu2_courrier_demande_avis_gen.odt                         |   Bin 17091 -> 22133 bytes
    src/Products/urban/profiles/extra/templates/codt_cu2_decision_octroi_refus_lettre_architecte.odt           |   Bin 18612 -> 18947 bytes
    src/Products/urban/profiles/extra/templates/codt_cu2_depot_de_la_demande.odt                               |   Bin 20696 -> 19694 bytes
    src/Products/urban/profiles/extra/templates/codt_cu2_dossier_incomplet_2eme_fois_irrecevable.odt           |   Bin 17903 -> 17631 bytes
    src/Products/urban/profiles/extra/templates/codt_cu2_dossier_incomplet_architecte.odt                      |   Bin 17291 -> 19013 bytes
    src/Products/urban/profiles/extra/templates/codt_cu2_dossier_incomplet_fd.odt                              |   Bin 17342 -> 18574 bytes
    src/Products/urban/profiles/extra/templates/codt_cu2_form_envoi_premier_dossier_rw.odt                     |   Bin 42188 -> 39632 bytes
    src/Products/urban/profiles/extra/templates/codt_cu2_recepisse_depot_complements.odt                       |   Bin 21014 -> 19932 bytes
    src/Products/urban/profiles/extra/templates/codt_ln_annexe16.odt                                           |   Bin 35145 -> 35737 bytes
    src/Products/urban/profiles/extra/templates/codt_ln_infos-notariales.odt (gone)                            |   Bin 51568 -> 0 bytes
    src/Products/urban/profiles/extra/templates/codt_pp_accuse_reception_reclamation.odt                       |   Bin 21037 -> 22018 bytes
    src/Products/urban/profiles/extra/templates/codt_pp_affichage_octroi_permis.odt                            |   Bin 22286 -> 22134 bytes
    src/Products/urban/profiles/extra/templates/codt_pp_affiche_annonce_de_projet_annexe_25.odt                |   Bin 456118 -> 640449 bytes
    src/Products/urban/profiles/extra/templates/codt_pp_affiche_enquete_publique_annexe_26.odt                 |   Bin 458507 -> 642882 bytes
    src/Products/urban/profiles/extra/templates/codt_pp_attestation_affichage_apres_enquete.odt                |   Bin 15724 -> 16119 bytes
    src/Products/urban/profiles/extra/templates/codt_pp_debut_fin_travaux.odt                                  |   Bin 15524 -> 15755 bytes
    src/Products/urban/profiles/extra/templates/codt_pp_deliberation_college_ecart_derogation.odt              |   Bin 22857 -> 23149 bytes
    src/Products/urban/profiles/extra/templates/codt_pp_deliberation_implantation.odt (new)                    |   Bin 0 -> 18609 bytes
    src/Products/urban/profiles/extra/templates/codt_pp_demande_avis.odt                                       |   Bin 17654 -> 19317 bytes
    src/Products/urban/profiles/extra/templates/codt_pp_en_tete_farde_enquete.odt                              |   Bin 68474 -> 15646 bytes
    src/Products/urban/profiles/extra/templates/codt_pp_entete_farde_annonce.odt                               |   Bin 291773 -> 14856 bytes
    src/Products/urban/profiles/extra/templates/codt_pp_entete_farde_dossier_permis.odt                        |   Bin 50592 -> 13448 bytes
    src/Products/urban/profiles/extra/templates/codt_pp_envoi_affiche_annonce_suite_dossier_fd_art_d_iv_22.odt |   Bin 22331 -> 23459 bytes
    src/Products/urban/profiles/extra/templates/codt_pp_fiche_recapitulative.odt                               |   Bin 34247 -> 34376 bytes
    src/Products/urban/profiles/extra/templates/codt_pp_implantation_cautionnement_lettre_demandeur.odt        |   Bin 25665 -> 26575 bytes
    src/Products/urban/profiles/extra/templates/codt_pp_mailing_riverains.odt                                  |   Bin 12487 -> 9787 bytes
    src/Products/urban/profiles/extra/templates/codt_pp_proces_verbal_cloture_enquete_publique.odt             |   Bin 18743 -> 19033 bytes
    src/Products/urban/profiles/extra/templates/codt_pp_proces_verbal_implantation.odt (new)                   |   Bin 0 -> 22082 bytes
    src/Products/urban/profiles/extra/templates/codt_pp_pv_reclamation_orale.odt                               |   Bin 19532 -> 19790 bytes
    src/Products/urban/profiles/extra/templates/codt_pp_recepisse_directeur_technique.odt                      |   Bin 17704 -> 17588 bytes
    src/Products/urban/profiles/extra/templates/codt_pp_talons_debut_fin_travaux.odt                           |   Bin 21271 -> 21458 bytes
    src/Products/urban/profiles/extra/templates/codt_pp_transmis_fd.odt                                        |   Bin 19065 -> 20546 bytes
    src/Products/urban/profiles/extra/templates/codt_pu_PV_cloture_enquete.odt (gone)                          |   Bin 23336 -> 0 bytes
    src/Products/urban/profiles/extra/templates/codt_pu_annexe_12_decision_octroi_refus.odt                    |   Bin 472221 -> 658379 bytes
    src/Products/urban/profiles/extra/templates/codt_pu_annexe_12_lien_delib.odt (gone)                        |   Bin 458866 -> 0 bytes
    src/Products/urban/profiles/extra/templates/codt_pu_annexe_17_dossier_incomplet_demandeur.odt              |   Bin 448311 -> 629644 bytes
    src/Products/urban/profiles/extra/templates/codt_pu_annexe_18_accuse_reception.odt                         |   Bin 462887 -> 646295 bytes
    src/Products/urban/profiles/extra/templates/codt_pu_annexe_25_affiche_verte.odt                            |   Bin 143602 -> 142971 bytes
    src/Products/urban/profiles/extra/templates/codt_pu_annexe_26_affiche_jaune.odt                            |   Bin 142568 -> 143678 bytes
    src/Products/urban/profiles/extra/templates/codt_pu_annexe_26_enq_pub_avis_riverains_mailing.odt           |   Bin 141607 -> 55190 bytes
    src/Products/urban/profiles/extra/templates/codt_pu_courrier_demande_avis_gen.odt                          |   Bin 16534 -> 18267 bytes
    src/Products/urban/profiles/extra/templates/codt_pu_decision_octroi_refus_lettre_architecte.odt            |   Bin 17951 -> 19094 bytes
    src/Products/urban/profiles/extra/templates/codt_pu_depot_de_la_demande.odt                                |   Bin 20296 -> 20037 bytes
    src/Products/urban/profiles/extra/templates/codt_pu_depot_de_la_demande_corporation.odt (gone)             |   Bin 105187 -> 0 bytes
    src/Products/urban/profiles/extra/templates/codt_pu_dossier_incomplet_2eme_fois_irrecevable.odt            |   Bin 17475 -> 19299 bytes
    src/Products/urban/profiles/extra/templates/codt_pu_dossier_incomplet_architecte.odt                       |   Bin 17130 -> 19107 bytes
    src/Products/urban/profiles/extra/templates/codt_pu_dossier_incomplet_fd.odt                               |   Bin 17303 -> 18365 bytes
    src/Products/urban/profiles/extra/templates/codt_pu_etiquettes_adresses_proprietaires.odt (gone)           |   Bin 13132 -> 0 bytes
    src/Products/urban/profiles/extra/templates/codt_pu_form_envoi_premier_dossier_rw.odt                      |   Bin 42703 -> 39632 bytes
    src/Products/urban/profiles/extra/templates/codt_pu_formulaire_envoi_prorogation_fd_grille.odt             |   Bin 41332 -> 41955 bytes
    src/Products/urban/profiles/extra/templates/codt_pu_prorogation_info_architecte.odt                        |   Bin 17382 -> 18680 bytes
    src/Products/urban/profiles/extra/templates/codt_pu_prorogation_info_demandeur.odt                         |   Bin 19800 -> 21144 bytes
    src/Products/urban/profiles/extra/templates/codt_pu_prorogation_si_non_automatique_deliberation.odt        |   Bin 32175 -> 35244 bytes
    src/Products/urban/profiles/extra/templates/codt_pu_recepisse_depot_complements.odt                        |   Bin 20746 -> 20391 bytes
    src/Products/urban/profiles/extra/templates/codt_pu_reclamations_reimport.ods (gone)                       |   Bin 18106 -> 0 bytes
    src/Products/urban/profiles/extra/templates/codt_punq_affichage_decision.odt                               |   Bin 21742 -> 21989 bytes
    src/Products/urban/profiles/extra/templates/codt_punq_annexe_26.odt                                        |   Bin 26049 -> 26121 bytes
    src/Products/urban/profiles/extra/templates/codt_punq_attestation_affichage_apres_enquete.odt              |   Bin 16408 -> 16804 bytes
    src/Products/urban/profiles/extra/templates/codt_punq_attestation_affichage_decision.odt                   |   Bin 15965 -> 16310 bytes
    src/Products/urban/profiles/extra/templates/codt_punq_attestation_affichage_decision_recours.odt           |   Bin 19138 -> 19031 bytes
    src/Products/urban/profiles/extra/templates/codt_punq_attestation_affichage_recours.odt                    |   Bin 16244 -> 16670 bytes
    src/Products/urban/profiles/extra/templates/codt_punq_complements_information_demandeur.odt                |   Bin 23470 -> 24923 bytes
    src/Products/urban/profiles/extra/templates/codt_punq_demande_avis_ccatm.odt                               |   Bin 100124 -> 18756 bytes
    src/Products/urban/profiles/extra/templates/codt_punq_demande_plans_modificatifs.odt                       |   Bin 24450 -> 25729 bytes
    src/Products/urban/profiles/extra/templates/codt_punq_entete_farde.odt                                     |   Bin 70642 -> 15159 bytes
    src/Products/urban/profiles/extra/templates/codt_punq_information_demandeur.odt                            |   Bin 24187 -> 25490 bytes
    src/Products/urban/profiles/extra/templates/codt_punq_pv_cloture_enquete.odt                               |   Bin 19053 -> 19127 bytes
    src/Products/urban/profiles/extra/templates/codt_punq_rapport_college.odt                                  |   Bin 47733 -> 46990 bytes
    src/Products/urban/profiles/extra/templates/codt_punq_recepisse_complements_demande.odt                    |   Bin 18681 -> 19501 bytes
    src/Products/urban/profiles/extra/templates/codt_punq_recepisse_depot_demande.odt                          |   Bin 18525 -> 19041 bytes
    src/Products/urban/profiles/extra/templates/codt_punq_recepisse_plans_modificatifs_demandeur.odt           |   Bin 18802 -> 19346 bytes
    src/Products/urban/profiles/extra/templates/codt_punq_transmis_affichage_dgo3.odt                          |   Bin 17227 -> 18293 bytes
    src/Products/urban/profiles/extra/templates/codt_punq_transmis_affichage_dgo4.odt                          |   Bin 17385 -> 18354 bytes
    src/Products/urban/profiles/extra/templates/codt_punq_transmis_avis_college_dgo3.odt                       |   Bin 17005 -> 17999 bytes
    src/Products/urban/profiles/extra/templates/codt_punq_transmis_avis_college_dgo4.odt                       |   Bin 16970 -> 18169 bytes
    src/Products/urban/profiles/extra/templates/codt_punq_transmis_complements_demande_dgo3.odt                |   Bin 17009 -> 17960 bytes
    src/Products/urban/profiles/extra/templates/codt_punq_transmis_complements_demande_dgo4.odt                |   Bin 17117 -> 18291 bytes
    src/Products/urban/profiles/extra/templates/codt_punq_transmis_decision_demandeur.odt                      |   Bin 17052 -> 18078 bytes
    src/Products/urban/profiles/extra/templates/codt_punq_transmis_decision_dgo3.odt                           |   Bin 16271 -> 17354 bytes
    src/Products/urban/profiles/extra/templates/codt_punq_transmis_decision_dgo4.odt                           |   Bin 16270 -> 17422 bytes
    src/Products/urban/profiles/extra/templates/codt_punq_transmis_demande_dgo3.odt                            |   Bin 17598 -> 18369 bytes
    src/Products/urban/profiles/extra/templates/codt_punq_transmis_demande_dgo4.odt                            |   Bin 17588 -> 18502 bytes
    src/Products/urban/profiles/extra/templates/codt_punq_transmis_demande_modificatifs_dgo3.odt               |   Bin 18870 -> 19619 bytes
    src/Products/urban/profiles/extra/templates/codt_punq_transmis_demande_modificatifs_dgo4.odt               |   Bin 18810 -> 19907 bytes
    src/Products/urban/profiles/extra/templates/codt_punq_transmis_elements_enquete_dgo3.odt                   |   Bin 17132 -> 18244 bytes
    src/Products/urban/profiles/extra/templates/codt_punq_transmis_elements_enquete_dgo4.odt                   |   Bin 17365 -> 18328 bytes
    src/Products/urban/profiles/extra/templates/codt_punq_transmis_pieces_recours_dgo3.odt                     |   Bin 20181 -> 20889 bytes
    src/Products/urban/profiles/extra/templates/codt_punq_transmis_pieces_recours_dgo4.odt                     |   Bin 20283 -> 21117 bytes
    src/Products/urban/profiles/extra/templates/codt_punq_transmis_plans_modificatifs_dgo3.odt                 |   Bin 17396 -> 18161 bytes
    src/Products/urban/profiles/extra/templates/codt_punq_transmis_plans_modificatifs_dgo4.odt                 |   Bin 17355 -> 18547 bytes
    src/Products/urban/profiles/extra/templates/codt_purb_accuse_reception_dossier_complet.odt                 |   Bin 91494 -> 34401 bytes
    src/Products/urban/profiles/extra/templates/codt_purb_accuse_reception_reclamation.odt                     |   Bin 21084 -> 22078 bytes
    src/Products/urban/profiles/extra/templates/codt_purb_annexe_12_decision_octroi_refus.odt                  |   Bin 472173 -> 659062 bytes
    src/Products/urban/profiles/extra/templates/codt_purb_annexe_17_dossier_incomplet_demandeur.odt            |   Bin 67438 -> 629559 bytes
    src/Products/urban/profiles/extra/templates/codt_purb_annexe_25.odt                                        |   Bin 458381 -> 642876 bytes
    src/Products/urban/profiles/extra/templates/codt_purb_annexe_26.odt                                        |   Bin 461727 -> 646059 bytes
    src/Products/urban/profiles/extra/templates/codt_purb_attestation_affiche.odt                              |   Bin 16591 -> 16843 bytes
    src/Products/urban/profiles/extra/templates/codt_purb_avis.odt                                             |   Bin 17416 -> 23064 bytes
    src/Products/urban/profiles/extra/templates/codt_purb_dossier_incomplet_dgo4.odt                           |   Bin 17574 -> 18463 bytes
    src/Products/urban/profiles/extra/templates/codt_purb_dossier_incomplet_geometre.odt                       |   Bin 18446 -> 19203 bytes
    src/Products/urban/profiles/extra/templates/codt_purb_dossier_irrecevable_courrier_demandeur.odt           |   Bin 444056 -> 625583 bytes
    src/Products/urban/profiles/extra/templates/codt_purb_dossier_irrecevable_courrier_dgo4.odt                |   Bin 20333 -> 21379 bytes
    src/Products/urban/profiles/extra/templates/codt_purb_dossier_irrecevable_courrier_geometre.odt            |   Bin 18344 -> 19034 bytes
    src/Products/urban/profiles/extra/templates/codt_purb_entete_farde_dossier.odt                             |   Bin 64089 -> 14783 bytes
    src/Products/urban/profiles/extra/templates/codt_purb_envoi_deuxieme_dossier_rw.odt                        |   Bin 40071 -> 40332 bytes
    src/Products/urban/profiles/extra/templates/codt_purb_envoi_deuxieme_dossier_rw_alternative.odt            |   Bin 43469 -> 45531 bytes
    src/Products/urban/profiles/extra/templates/codt_purb_envoi_premier_dossier_form_rw.odt                    |   Bin 39785 -> 37637 bytes
    src/Products/urban/profiles/extra/templates/codt_purb_envoi_premier_dossier_rw_alternative.odt             |   Bin 45262 -> 45495 bytes
    src/Products/urban/profiles/extra/templates/codt_purb_fiche_analyse.odt                                    |   Bin 32712 -> 32407 bytes
    src/Products/urban/profiles/extra/templates/codt_purb_formulaire_envoi_prorogation_fd_grille.odt           |   Bin 41340 -> 42152 bytes
    src/Products/urban/profiles/extra/templates/codt_purb_information_au_demandeur_de_la_prorogation.odt       |   Bin 21887 -> 23391 bytes
    src/Products/urban/profiles/extra/templates/codt_purb_information_au_geometre_de_la_prorogation.odt        |   Bin 19588 -> 21050 bytes
    src/Products/urban/profiles/extra/templates/codt_purb_pv_cloture_enquete.odt                               |   Bin 19573 -> 19795 bytes
    src/Products/urban/profiles/extra/templates/codt_purb_pv_observations.odt                                  |   Bin 23025 -> 23166 bytes
    src/Products/urban/profiles/extra/templates/codt_purb_rapport_college.odt                                  |   Bin 43855 -> 44032 bytes
    src/Products/urban/profiles/extra/templates/codt_purb_recepisse_complement_demande.odt                     |   Bin 19956 -> 17863 bytes
    src/Products/urban/profiles/extra/templates/codt_purb_recepisse_du_depot_de_demande.odt                    |   Bin 21834 -> 28480 bytes
    src/Products/urban/profiles/extra/templates/codt_purb_reunion_cloture_enquete.odt                          |   Bin 16715 -> 16954 bytes
    src/Products/urban/profiles/extra/templates/codt_purb_transmis_accuse_reception_architecte.odt             |   Bin 93124 -> 24407 bytes
    src/Products/urban/profiles/extra/templates/cu1-avis-technique-urbanisme.odt                               |   Bin 18834 -> 24065 bytes
    src/Products/urban/profiles/extra/templates/cu1-avis-technique-voirie.odt                                  |   Bin 20653 -> 27591 bytes
    src/Products/urban/profiles/extra/templates/cu1-certif.odt                                                 |   Bin 21965 -> 31164 bytes
    src/Products/urban/profiles/extra/templates/cu1-demande-paiement.odt                                       |   Bin 20012 -> 29915 bytes
    src/Products/urban/profiles/extra/templates/cu1-envoi-dossier-form-rw.odt                                  |   Bin 21848 -> 27902 bytes
    src/Products/urban/profiles/extra/templates/cu1-envoi-dossier-rw.odt                                       |   Bin 17612 -> 24678 bytes
    src/Products/urban/profiles/extra/templates/cu1-lettre-notaire.odt                                         |   Bin 20585 -> 31385 bytes
    src/Products/urban/profiles/extra/templates/cu1-rappel-demande-paiement.odt                                |   Bin 21696 -> 31231 bytes
    src/Products/urban/profiles/extra/templates/cu1-recepisse.odt                                              |   Bin 16311 -> 23802 bytes
    src/Products/urban/profiles/extra/templates/cu2-avis.odt                                                   |   Bin 17689 -> 24124 bytes
    src/Products/urban/profiles/extra/templates/cu2-certif.odt                                                 |   Bin 23467 -> 31636 bytes
    src/Products/urban/profiles/extra/templates/cu2-decision-deliberation-college.odt                          |   Bin 27251 -> 38300 bytes
    src/Products/urban/profiles/extra/templates/cu2-decision-frais.odt                                         |   Bin 15480 -> 13557 bytes
    src/Products/urban/profiles/extra/templates/cu2-decision-octroi-dem.odt                                    |   Bin 19327 -> 27160 bytes
    src/Products/urban/profiles/extra/templates/cu2-decision-octroi-rw.odt                                     |   Bin 18834 -> 16890 bytes
    src/Products/urban/profiles/extra/templates/cu2-decision-transmis-reclamants.odt                           |   Bin 17866 -> 25852 bytes
    src/Products/urban/profiles/extra/templates/cu2-dossier-incomplet-archi.odt                                |   Bin 110256 -> 28829 bytes
    src/Products/urban/profiles/extra/templates/cu2-dossier-incomplet-demandeur.odt                            |   Bin 19853 -> 28685 bytes
    src/Products/urban/profiles/extra/templates/cu2-enq-accuse-reclamation.odt                                 |   Bin 22962 -> 32144 bytes
    src/Products/urban/profiles/extra/templates/cu2-enq-annexe25-dem.odt                                       |   Bin 20133 -> 29780 bytes
    src/Products/urban/profiles/extra/templates/cu2-enq-annexe25.odt                                           |   Bin 19454 -> 23921 bytes
    src/Products/urban/profiles/extra/templates/cu2-enq-art341-invit.odt                                       |   Bin 20181 -> 17671 bytes
    src/Products/urban/profiles/extra/templates/cu2-enq-avis-riverains-annexe26.odt                            |   Bin 22529 -> 19308 bytes
    src/Products/urban/profiles/extra/templates/cu2-enq-certif-aff-annexe26.odt                                |   Bin 21477 -> 19174 bytes
    src/Products/urban/profiles/extra/templates/cu2-enq-copie-rw-annexe26.odt                                  |   Bin 16995 -> 16406 bytes
    src/Products/urban/profiles/extra/templates/cu2-enq-frais.odt                                              |   Bin 20159 -> 28654 bytes
    src/Products/urban/profiles/extra/templates/cu2-enq-ordre-mission.odt                                      |   Bin 18829 -> 17682 bytes
    src/Products/urban/profiles/extra/templates/cu2-enq-pv-clot.odt                                            |   Bin 14708 -> 15705 bytes
    src/Products/urban/profiles/extra/templates/cu2-enq-recommandes.odt                                        |   Bin 12538 -> 9961 bytes
    src/Products/urban/profiles/extra/templates/cu2-enq-reunion-clot.odt                                       |   Bin 13903 -> 14999 bytes
    src/Products/urban/profiles/extra/templates/cu2-envoi-dossier-form-rw.odt                                  |   Bin 22202 -> 28338 bytes
    src/Products/urban/profiles/extra/templates/cu2-envoi-dossier-rw.odt                                       |   Bin 17656 -> 16638 bytes
    src/Products/urban/profiles/extra/templates/cu2-rapp-college.odt                                           |   Bin 16284 -> 17347 bytes
    src/Products/urban/profiles/extra/templates/cu2-rapp-service.odt                                           |   Bin 13190 -> 14304 bytes
    src/Products/urban/profiles/extra/templates/cu2-recepisse.odt                                              |   Bin 17512 -> 22938 bytes
    src/Products/urban/profiles/extra/templates/dec3_demande_irrecevable.odt                                   |   Bin 18219 -> 18105 bytes
    src/Products/urban/profiles/extra/templates/dec3_demande_paiement.odt                                      |   Bin 19274 -> 19201 bytes
    src/Products/urban/profiles/extra/templates/dec3_recepisse_depot_demande.odt                               |   Bin 20912 -> 20937 bytes
    src/Products/urban/profiles/extra/templates/dec3_recevable_conditions_demandeur.odt                        |   Bin 21467 -> 21506 bytes
    src/Products/urban/profiles/extra/templates/dec3_recevable_conditions_dgo3dgo4.odt                         |   Bin 20127 -> 19647 bytes
    src/Products/urban/profiles/extra/templates/dec3_transmis_conditions_demandeur.odt                         |   Bin 19427 -> 20091 bytes
    src/Products/urban/profiles/extra/templates/dec3_transmis_conditions_dgo3dgo4.odt                          |   Bin 18098 -> 18236 bytes
    src/Products/urban/profiles/extra/templates/dec3_transmis_sans_conditions_demandeur.odt                    |   Bin 16985 -> 17588 bytes
    src/Products/urban/profiles/extra/templates/dec3_transmis_sans_conditions_dgo3dgo4.odt                     |   Bin 16612 -> 16691 bytes
    src/Products/urban/profiles/extra/templates/decl-avis-technique.odt                                        |   Bin 20718 -> 21740 bytes
    src/Products/urban/profiles/extra/templates/decl-delib-college.odt                                         |   Bin 20771 -> 28630 bytes
    src/Products/urban/profiles/extra/templates/decl-recepisse.odt                                             |   Bin 18659 -> 23841 bytes
    src/Products/urban/profiles/extra/templates/decl-transmis-decision-demandeur.odt                           |   Bin 21426 -> 33312 bytes
    src/Products/urban/profiles/extra/templates/decl-transmis-decision-fd.odt                                  |   Bin 18579 -> 25591 bytes
    src/Products/urban/profiles/extra/templates/div-decision-incomplet.odt                                     |   Bin 18133 -> 24014 bytes
    src/Products/urban/profiles/extra/templates/div-decision.odt                                               |   Bin 22740 -> 32357 bytes
    src/Products/urban/profiles/extra/templates/div-recepisse.odt                                              |   Bin 16531 -> 22350 bytes
    src/Products/urban/profiles/extra/templates/div-transmis-decision.odt                                      |   Bin 19006 -> 26278 bytes
    src/Products/urban/profiles/extra/templates/env1-affichage-mission.odt                                     |   Bin 17916 -> 21731 bytes
    src/Products/urban/profiles/extra/templates/env1-affiche-decision.odt                                      |   Bin 21236 -> 28238 bytes
    src/Products/urban/profiles/extra/templates/env1-certificat-decision.odt                                   |   Bin 15974 -> 17876 bytes
    src/Products/urban/profiles/extra/templates/env1-demande-plans-modificatifs.odt                            |   Bin 22006 -> 32590 bytes
    src/Products/urban/profiles/extra/templates/env1-dossier-irrecevable-ft.odt                                |   Bin 17299 -> 25634 bytes
    src/Products/urban/profiles/extra/templates/env1-enq-avis.odt                                              |   Bin 24094 -> 34594 bytes
    src/Products/urban/profiles/extra/templates/env1-enq-ordre-mission.odt                                     |   Bin 17650 -> 24622 bytes
    src/Products/urban/profiles/extra/templates/env1-enq-recommandes.odt                                       |   Bin 12452 -> 9436 bytes
    src/Products/urban/profiles/extra/templates/env1-enq-transmis-FT.odt                                       |   Bin 17387 -> 24833 bytes
    src/Products/urban/profiles/extra/templates/env1-enq-transmis-college.odt                                  |   Bin 16023 -> 22236 bytes
    src/Products/urban/profiles/extra/templates/env1-enq-transmis-voisinage.odt                                |   Bin 64900 -> 23397 bytes
    src/Products/urban/profiles/extra/templates/env1-recepisse-complement.odt                                  |   Bin 18495 -> 24448 bytes
    src/Products/urban/profiles/extra/templates/env1-recepisse.odt                                             |   Bin 19105 -> 25684 bytes
    src/Products/urban/profiles/extra/templates/env1-transmis-complement-ft.odt                                |   Bin 16857 -> 24786 bytes
    src/Products/urban/profiles/extra/templates/env1-transmis-decision-FT.odt                                  |   Bin 18011 -> 25048 bytes
    src/Products/urban/profiles/extra/templates/env1-transmis-decision-impetrants-ft.odt                       |   Bin 17808 -> 23888 bytes
    src/Products/urban/profiles/extra/templates/env1-transmis-decision.odt                                     |   Bin 17784 -> 25477 bytes
    src/Products/urban/profiles/extra/templates/env1-transmis-demande-ft.odt                                   |   Bin 17516 -> 24736 bytes
    src/Products/urban/profiles/extra/templates/env1-transmis-demande-plans-modificatifs-ft.odt                |   Bin 21326 -> 30232 bytes
    src/Products/urban/profiles/extra/templates/env1-transmis-plans-modificatifs-ft.odt                        |   Bin 19220 -> 26732 bytes
    src/Products/urban/profiles/extra/templates/env2-affichage-mission.odt                                     |   Bin 17950 -> 24122 bytes
    src/Products/urban/profiles/extra/templates/env2-affiche-decision.odt                                      |   Bin 21239 -> 31691 bytes
    src/Products/urban/profiles/extra/templates/env2-certificat-decision.odt                                   |   Bin 16079 -> 20661 bytes
    src/Products/urban/profiles/extra/templates/env2-demande-plans-modificatifs.odt                            |   Bin 22517 -> 22009 bytes
    src/Products/urban/profiles/extra/templates/env2-dossier-irrecevable-ft.odt                                |   Bin 18145 -> 25640 bytes
    src/Products/urban/profiles/extra/templates/env2-enq-avis.odt                                              |   Bin 372766 -> 34594 bytes
    src/Products/urban/profiles/extra/templates/env2-enq-ordre-mission.odt                                     |   Bin 92348 -> 24481 bytes
    src/Products/urban/profiles/extra/templates/env2-enq-recommandes.odt                                       |   Bin 12827 -> 10475 bytes
    src/Products/urban/profiles/extra/templates/env2-enq-transmis-FT.odt                                       |   Bin 17489 -> 24860 bytes
    src/Products/urban/profiles/extra/templates/env2-enq-transmis-college.odt                                  |   Bin 73896 -> 22153 bytes
    src/Products/urban/profiles/extra/templates/env2-enq-transmis-voisinage.odt                                |   Bin 74016 -> 23435 bytes
    src/Products/urban/profiles/extra/templates/env2-recepisse-complement.odt                                  |   Bin 19297 -> 24411 bytes
    src/Products/urban/profiles/extra/templates/env2-recepisse.odt                                             |   Bin 19813 -> 25684 bytes
    src/Products/urban/profiles/extra/templates/env2-transmis-complement-ft.odt                                |   Bin 17785 -> 24964 bytes
    src/Products/urban/profiles/extra/templates/env2-transmis-decision-FT.odt                                  |   Bin 18353 -> 25055 bytes
    src/Products/urban/profiles/extra/templates/env2-transmis-decision-impetrants-ft.odt                       |   Bin 17864 -> 23892 bytes
    src/Products/urban/profiles/extra/templates/env2-transmis-decision.odt                                     |   Bin 86035 -> 25480 bytes
    src/Products/urban/profiles/extra/templates/env2-transmis-demande-ft.odt                                   |   Bin 17742 -> 24773 bytes
    src/Products/urban/profiles/extra/templates/env2-transmis-demande-plans-modificatifs-ft.odt                |   Bin 21650 -> 30153 bytes
    src/Products/urban/profiles/extra/templates/env2-transmis-plans-modificatifs-ft.odt                        |   Bin 19583 -> 26680 bytes
    src/Products/urban/profiles/extra/templates/env3-avis.odt                                                  |   Bin 17927 -> 24016 bytes
    src/Products/urban/profiles/extra/templates/env3-courrier-ft.odt                                           |   Bin 17476 -> 24196 bytes
    src/Products/urban/profiles/extra/templates/env3-decision-college.odt                                      |   Bin 24178 -> 30863 bytes
    src/Products/urban/profiles/extra/templates/env3-demande-irrecevable.odt                                   |   Bin 18550 -> 24505 bytes
    src/Products/urban/profiles/extra/templates/env3-demande-paiement.odt                                      |   Bin 19653 -> 28159 bytes
    src/Products/urban/profiles/extra/templates/env3-demande-recevable-cond-fdft.odt                           |   Bin 20261 -> 27671 bytes
    src/Products/urban/profiles/extra/templates/env3-demande-recevable-cond.odt                                |   Bin 23035 -> 29645 bytes
    src/Products/urban/profiles/extra/templates/env3-demande-recevable-fdft.odt                                |   Bin 19483 -> 27769 bytes
    src/Products/urban/profiles/extra/templates/env3-demande-recevable.odt                                     |   Bin 22040 -> 28302 bytes
    src/Products/urban/profiles/extra/templates/env3-rapport-au-college.odt                                    |   Bin 20795 -> 27725 bytes
    src/Products/urban/profiles/extra/templates/env3-recepisse.odt                                             |   Bin 21789 -> 29519 bytes
    src/Products/urban/profiles/extra/templates/env3-transmis-conditions-fdft.odt                              |   Bin 20498 -> 27750 bytes
    src/Products/urban/profiles/extra/templates/env3-transmis-conditions.odt                                   |   Bin 110221 -> 30659 bytes
    src/Products/urban/profiles/extra/templates/env3-transmis-sans-conditions-fdft.odt                         |   Bin 18423 -> 24055 bytes
    src/Products/urban/profiles/extra/templates/env3-transmis-sans-conditions.odt                              |   Bin 111732 -> 27362 bytes
    src/Products/urban/profiles/extra/templates/fic.odt (gone)                                                 |   Bin 9358 -> 0 bytes
    src/Products/urban/profiles/extra/templates/folderlisting.odt                                              |   Bin 11484 -> 10810 bytes
    src/Products/urban/profiles/extra/templates/footer.odt                                                     |   Bin 8765 -> 9235 bytes
    src/Products/urban/profiles/extra/templates/header.odt                                                     |   Bin 26796 -> 25655 bytes
    src/Products/urban/profiles/extra/templates/inspection_rapport1.odt                                        |   Bin 17138 -> 17078 bytes
    src/Products/urban/profiles/extra/templates/listing-general.ods (gone)                                     |   Bin 12009 -> 0 bytes
    src/Products/urban/profiles/extra/templates/lot-accuse-demande-paiement.odt                                |   Bin 18400 -> 25201 bytes
    src/Products/urban/profiles/extra/templates/lot-accuse.odt                                                 |   Bin 25325 -> 34827 bytes
    src/Products/urban/profiles/extra/templates/lot-avis-etude-incidence.odt                                   |   Bin 15860 -> 21298 bytes
    src/Products/urban/profiles/extra/templates/lot-avis.odt                                                   |   Bin 18252 -> 23991 bytes
    src/Products/urban/profiles/extra/templates/lot-conseil-delib-college.odt                                  |   Bin 29631 -> 37960 bytes
    src/Products/urban/profiles/extra/templates/lot-conseil-delib-communale-creation.odt                       |   Bin 20872 -> 28039 bytes
    src/Products/urban/profiles/extra/templates/lot-conseil-delib-communale-modif.odt                          |   Bin 21208 -> 29442 bytes
    src/Products/urban/profiles/extra/templates/lot-decision-deliberation-college.odt                          |   Bin 34842 -> 44698 bytes
    src/Products/urban/profiles/extra/templates/lot-decision-formulaire-b.odt                                  |   Bin 26620 -> 36352 bytes
    src/Products/urban/profiles/extra/templates/lot-decision-frais.odt                                         |   Bin 16335 -> 20698 bytes
    src/Products/urban/profiles/extra/templates/lot-decision-octroi-dem.odt                                    |   Bin 18869 -> 27001 bytes
    src/Products/urban/profiles/extra/templates/lot-decision-octroi-rw.odt                                     |   Bin 18571 -> 26006 bytes
    src/Products/urban/profiles/extra/templates/lot-decision-transmis-reclamants.odt                           |   Bin 23426 -> 34759 bytes
    src/Products/urban/profiles/extra/templates/lot-dossier-incomplet-demandeur.odt                            |   Bin 20943 -> 26463 bytes
    src/Products/urban/profiles/extra/templates/lot-enq-accuse-reclamation.odt                                 |   Bin 23122 -> 32081 bytes
    src/Products/urban/profiles/extra/templates/lot-enq-annexe25-dem.odt                                       |   Bin 20119 -> 29749 bytes
    src/Products/urban/profiles/extra/templates/lot-enq-annexe25.odt                                           |   Bin 22366 -> 23474 bytes
    src/Products/urban/profiles/extra/templates/lot-enq-art341-invit.odt                                       |   Bin 20250 -> 17678 bytes
    src/Products/urban/profiles/extra/templates/lot-enq-avis-riverains-annexe26.odt                            |   Bin 22386 -> 33357 bytes
    src/Products/urban/profiles/extra/templates/lot-enq-certif-aff-annexe26.odt                                |   Bin 21381 -> 32443 bytes
    src/Products/urban/profiles/extra/templates/lot-enq-copie-rw-annexe26.odt                                  |   Bin 17918 -> 25176 bytes
    src/Products/urban/profiles/extra/templates/lot-enq-frais.odt                                              |   Bin 21055 -> 28512 bytes
    src/Products/urban/profiles/extra/templates/lot-enq-ordre-mission.odt                                      |   Bin 18140 -> 26110 bytes
    src/Products/urban/profiles/extra/templates/lot-enq-pv-clot.odt                                            |   Bin 19799 -> 30999 bytes
    src/Products/urban/profiles/extra/templates/lot-enq-recommandes.odt                                        |   Bin 12627 -> 9436 bytes
    src/Products/urban/profiles/extra/templates/lot-enq-reunion-clot.odt                                       |   Bin 17664 -> 21283 bytes
    src/Products/urban/profiles/extra/templates/lot-envoi-premier-dossier-art127-rw.odt                        |   Bin 18177 -> 23888 bytes
    src/Products/urban/profiles/extra/templates/lot-envoi-premier-dossier-form-rw.odt                          |   Bin 24538 -> 31001 bytes
    src/Products/urban/profiles/extra/templates/lot-envoi-premier-dossier-rw.odt                               |   Bin 18657 -> 24736 bytes
    src/Products/urban/profiles/extra/templates/lot-envoi-second-dossier-demandeur.odt                         |   Bin 21684 -> 29691 bytes
    src/Products/urban/profiles/extra/templates/lot-envoi-second-dossier-rw.odt                                |   Bin 20625 -> 29008 bytes
    src/Products/urban/profiles/extra/templates/lot-rapp-college .odt                                          |   Bin 116161 -> 17443 bytes
    src/Products/urban/profiles/extra/templates/lot-rapp-college.odt                                           |   Bin 21755 -> 30300 bytes
    src/Products/urban/profiles/extra/templates/lot-rapp-service.odt                                           |   Bin 17675 -> 24891 bytes
    src/Products/urban/profiles/extra/templates/lot-recepisse.odt                                              |   Bin 22970 -> 30259 bytes
    src/Products/urban/profiles/extra/templates/lot-recours-GW-demandeur-vs-FD.odt                             |   Bin 22541 -> 33328 bytes
    src/Products/urban/profiles/extra/templates/lot-recours-GW-transmis-decision-FD-art127.odt                 |   Bin 25813 -> 34529 bytes
    src/Products/urban/profiles/extra/templates/lot-recours-GW-transmis-decision-GW-PU.odt                     |   Bin 26063 -> 34333 bytes
    src/Products/urban/profiles/extra/templates/lot-recours-GW-ville-vs-FD.odt                                 |   Bin 22228 -> 31229 bytes
    src/Products/urban/profiles/extra/templates/lot-regularisation-delib-college-refus.odt                     |   Bin 23882 -> 35069 bytes
    src/Products/urban/profiles/extra/templates/lot-suspension-retrait-refus-dem.odt                           |   Bin 17636 -> 22576 bytes
    src/Products/urban/profiles/extra/templates/lot-suspension-retrait-refus-rw-recours.odt                    |   Bin 17709 -> 23189 bytes
    src/Products/urban/profiles/extra/templates/lot-suspension-retrait-refus-rw.odt                            |   Bin 17694 -> 23567 bytes
    src/Products/urban/profiles/extra/templates/miscdemand-delib-college.odt                                   |   Bin 13658 -> 14615 bytes
    src/Products/urban/profiles/extra/templates/miscdemand-recepisse.odt                                       |   Bin 16798 -> 22697 bytes
    src/Products/urban/profiles/extra/templates/miscdemand-transmis-decision-demandeur.odt                     |   Bin 15007 -> 19051 bytes
    src/Products/urban/profiles/extra/templates/not-lettre-information-notariale.odt                           |   Bin 21315 -> 29508 bytes
    src/Products/urban/profiles/extra/templates/pe_affichage_decision.odt                                      |   Bin 27084 -> 27475 bytes
    src/Products/urban/profiles/extra/templates/pe_affichage_decision_recours.odt                              |   Bin 25083 -> 25206 bytes
    src/Products/urban/profiles/extra/templates/pe_affiche_annexe_26.odt                                       |   Bin 25551 -> 25731 bytes
    src/Products/urban/profiles/extra/templates/pe_attestation_affichage.odt                                   |   Bin 17173 -> 17376 bytes
    src/Products/urban/profiles/extra/templates/pe_attestation_affichage_decision.odt                          |   Bin 17260 -> 17607 bytes
    src/Products/urban/profiles/extra/templates/pe_attestation_affichage_recours.odt                           |   Bin 16710 -> 17062 bytes
    src/Products/urban/profiles/extra/templates/pe_avis_enquete_riverains.odt                                  |   Bin 17539 -> 17374 bytes
    src/Products/urban/profiles/extra/templates/pe_complements_info_demandeur.odt                              |   Bin 24275 -> 25047 bytes
    src/Products/urban/profiles/extra/templates/pe_complements_recepisse_depot_demande.odt                     |   Bin 18209 -> 18167 bytes
    src/Products/urban/profiles/extra/templates/pe_complements_transmis_demande_dgo3.odt                       |   Bin 18008 -> 18311 bytes
    src/Products/urban/profiles/extra/templates/pe_demande_plans_modificatifs.odt                              |   Bin 22414 -> 23495 bytes
    src/Products/urban/profiles/extra/templates/pe_entete_farde_dossier.odt                                    |   Bin 70170 -> 15728 bytes
    src/Products/urban/profiles/extra/templates/pe_info_demandeur.odt                                          |   Bin 23995 -> 25090 bytes
    src/Products/urban/profiles/extra/templates/pe_irrecevabilite_hors_delai.odt                               |   Bin 17567 -> 18091 bytes
    src/Products/urban/profiles/extra/templates/pe_notification_decision_demandeur.odt                         |   Bin 16947 -> 17500 bytes
    src/Products/urban/profiles/extra/templates/pe_pv_cloture_enquete.odt                                      |   Bin 20011 -> 19977 bytes
    src/Products/urban/profiles/extra/templates/pe_recepisse_depot_demande.odt                                 |   Bin 18918 -> 17916 bytes
    src/Products/urban/profiles/extra/templates/pe_transmis_avis_dgo3.odt                                      |   Bin 17282 -> 18164 bytes
    src/Products/urban/profiles/extra/templates/pe_transmis_avis_prealable_dgo3.odt                            |   Bin 17867 -> 18342 bytes
    src/Products/urban/profiles/extra/templates/pe_transmis_decision_dgo3.odt                                  |   Bin 16222 -> 17051 bytes
    src/Products/urban/profiles/extra/templates/pe_transmis_decision_instances.odt                             |   Bin 16149 -> 16378 bytes
    src/Products/urban/profiles/extra/templates/pe_transmis_demande_dgo3.odt                                   |   Bin 17158 -> 17742 bytes
    src/Products/urban/profiles/extra/templates/pe_transmis_elements_dgo3.odt                                  |   Bin 17543 -> 18392 bytes
    src/Products/urban/profiles/extra/templates/pe_transmis_pieces_recours.odt                                 |   Bin 21651 -> 21909 bytes
    src/Products/urban/profiles/extra/templates/pe_transmis_plans_modificatifs_dgo3.odt                        |   Bin 19345 -> 20210 bytes
    src/Products/urban/profiles/extra/templates/pi_affichage_decision.odt                                      |   Bin 28883 -> 28995 bytes
    src/Products/urban/profiles/extra/templates/pi_annexe_26.odt                                               |   Bin 25483 -> 25651 bytes
    src/Products/urban/profiles/extra/templates/pi_attestation_affichage.odt                                   |   Bin 17423 -> 17772 bytes
    src/Products/urban/profiles/extra/templates/pi_attestation_affichage_decision_recours.odt                  |   Bin 19039 -> 19015 bytes
    src/Products/urban/profiles/extra/templates/pi_attestation_affichage_recours.odt                           |   Bin 18096 -> 18007 bytes
    src/Products/urban/profiles/extra/templates/pi_certificat_affichage_decision.odt                           |   Bin 16840 -> 17282 bytes
    src/Products/urban/profiles/extra/templates/pi_demande_avis_ccatm.odt                                      |   Bin 94758 -> 18801 bytes
    src/Products/urban/profiles/extra/templates/pi_demande_plans_modificatifs.odt                              |   Bin 27498 -> 28533 bytes
    src/Products/urban/profiles/extra/templates/pi_entete_farde_dossier.odt                                    |   Bin 75616 -> 16260 bytes
    src/Products/urban/profiles/extra/templates/pi_information_demandeur.odt                                   |   Bin 26174 -> 27928 bytes
    src/Products/urban/profiles/extra/templates/pi_pv_cloture_enquete.odt                                      |   Bin 21568 -> 21661 bytes
    src/Products/urban/profiles/extra/templates/pi_rapport_college.odt                                         |   Bin 46469 -> 46901 bytes
    src/Products/urban/profiles/extra/templates/pi_recepisse_depot_demande.odt                                 |   Bin 19696 -> 19910 bytes
    src/Products/urban/profiles/extra/templates/pi_transmis_affichage_dgo3.odt                                 |   Bin 17351 -> 18271 bytes
    src/Products/urban/profiles/extra/templates/pi_transmis_affichage_dgo4.odt                                 |   Bin 17429 -> 18365 bytes
    src/Products/urban/profiles/extra/templates/pi_transmis_affichage_dgo6.odt                                 |   Bin 17611 -> 18533 bytes
    src/Products/urban/profiles/extra/templates/pi_transmis_decision_demandeur.odt                             |   Bin 17192 -> 18322 bytes
    src/Products/urban/profiles/extra/templates/pi_transmis_decision_dgo3.odt                                  |   Bin 16669 -> 17705 bytes
    src/Products/urban/profiles/extra/templates/pi_transmis_decision_dgo4.odt                                  |   Bin 16719 -> 17811 bytes
    src/Products/urban/profiles/extra/templates/pi_transmis_decision_dgo6.odt                                  |   Bin 17022 -> 18005 bytes
    src/Products/urban/profiles/extra/templates/pi_transmis_demande_dgo3.odt                                   |   Bin 17046 -> 18027 bytes
    src/Products/urban/profiles/extra/templates/pi_transmis_demande_dgo4.odt                                   |   Bin 17066 -> 18081 bytes
    src/Products/urban/profiles/extra/templates/pi_transmis_demande_dgo6.odt                                   |   Bin 17271 -> 18297 bytes
    src/Products/urban/profiles/extra/templates/pi_transmis_elements_enquete_dgo3.odt                          |   Bin 17262 -> 18213 bytes
    src/Products/urban/profiles/extra/templates/pi_transmis_elements_enquete_dgo4.odt                          |   Bin 17314 -> 18320 bytes
    src/Products/urban/profiles/extra/templates/pi_transmis_elements_enquete_dgo6.odt                          |   Bin 17527 -> 18501 bytes
    src/Products/urban/profiles/extra/templates/pi_transmis_pieces_cellule_recours.odt                         |   Bin 20136 -> 20665 bytes
    src/Products/urban/profiles/extra/templates/pi_transmis_plans_modificatifs_dgo3.odt                        |   Bin 18877 -> 19635 bytes
    src/Products/urban/profiles/extra/templates/pi_transmis_plans_modificatifs_dgo4.odt                        |   Bin 18833 -> 19730 bytes
    src/Products/urban/profiles/extra/templates/pi_transmis_plans_modificatifs_dgo6.odt                        |   Bin 18992 -> 19918 bytes
    src/Products/urban/profiles/extra/templates/pi_transmis_rapport_college_dgo3.odt                           |   Bin 17291 -> 18065 bytes
    src/Products/urban/profiles/extra/templates/pi_transmis_rapport_college_dgo4.odt                           |   Bin 17189 -> 18116 bytes
    src/Products/urban/profiles/extra/templates/pi_transmis_rapport_college_dgo6.odt                           |   Bin 17612 -> 18340 bytes
    src/Products/urban/profiles/extra/templates/pic-avis.odt (gone)                                            |   Bin 17535 -> 0 bytes
    src/Products/urban/profiles/extra/templates/pic-demande-irrecevable.odt (gone)                             |   Bin 17932 -> 0 bytes
    src/Products/urban/profiles/extra/templates/pic-dossier-incomplet-demandeur.odt (gone)                     |   Bin 19473 -> 0 bytes
    src/Products/urban/profiles/extra/templates/pic-enq-avis.odt (gone)                                        |   Bin 459103 -> 0 bytes
    src/Products/urban/profiles/extra/templates/pic-enq-ordre-mission.odt (gone)                               |   Bin 17650 -> 0 bytes
    src/Products/urban/profiles/extra/templates/pic-enq-recommandes.odt (gone)                                 |   Bin 12452 -> 0 bytes
    src/Products/urban/profiles/extra/templates/pic-enq-transmis-FIC.odt (gone)                                |   Bin 18009 -> 0 bytes
    src/Products/urban/profiles/extra/templates/pic-enq-transmis-proprietaires.odt (gone)                      |   Bin 16911 -> 0 bytes
    src/Products/urban/profiles/extra/templates/pic_affichage_decision.odt (gone)                              |   Bin 58282 -> 0 bytes
    src/Products/urban/profiles/extra/templates/pic_attestation_affichage_recours.odt (gone)                   |   Bin 29137 -> 0 bytes
    src/Products/urban/profiles/extra/templates/pic_demande_plans_modificatifs.odt (gone)                      |   Bin 24796 -> 0 bytes
    src/Products/urban/profiles/extra/templates/pic_information_demandeur.odt (gone)                           |   Bin 23630 -> 0 bytes
    src/Products/urban/profiles/extra/templates/pic_recepisse_complements_demande.odt (gone)                   |   Bin 18667 -> 0 bytes
    src/Products/urban/profiles/extra/templates/pic_recepisse_depot_demande-plans-modificatifs.odt (gone)      |   Bin 17519 -> 0 bytes
    src/Products/urban/profiles/extra/templates/pic_recepisse_depot_demande.odt (gone)                         |   Bin 21166 -> 0 bytes
    src/Products/urban/profiles/extra/templates/pic_transmis_decision_communes_limitrophes.odt (gone)          |   Bin 16446 -> 0 bytes
    src/Products/urban/profiles/extra/templates/pic_transmis_decision_demandeur.odt (gone)                     |   Bin 17192 -> 0 bytes
    src/Products/urban/profiles/extra/templates/pic_transmis_decision_fic.odt (gone)                           |   Bin 16829 -> 0 bytes
    src/Products/urban/profiles/extra/templates/pic_transmis_decision_observatoire_commerce.odt (gone)         |   Bin 16528 -> 0 bytes
    src/Products/urban/profiles/extra/templates/pic_transmis_demande_fic.odt (gone)                            |   Bin 16551 -> 0 bytes
    src/Products/urban/profiles/extra/templates/rapport-final-peb.odt                                          |   Bin 21249 -> 27593 bytes
    src/Products/urban/profiles/extra/templates/reference.odt                                                  |   Bin 9266 -> 9813 bytes
    src/Products/urban/profiles/extra/templates/signatures.odt                                                 |   Bin 9881 -> 10570 bytes
    src/Products/urban/profiles/extra/templates/statsins.odt                                                   |   Bin 70528 -> 92037 bytes
    src/Products/urban/profiles/extra/templates/styles.odt                                                     |   Bin 95108 -> 106099 bytes
    src/Products/urban/profiles/extra/templates/tlpe.odt (gone)                                                |   Bin 9408 -> 0 bytes
    src/Products/urban/profiles/extra/templates/urb-accuse-demande-paiement.odt                                |   Bin 19546 -> 27326 bytes
    src/Products/urban/profiles/extra/templates/urb-accuse.odt (mode +x)                                       |   Bin 24408 -> 34540 bytes
    src/Products/urban/profiles/extra/templates/urb-avis-etude-incidence.odt                                   |   Bin 15933 -> 21298 bytes
    src/Products/urban/profiles/extra/templates/urb-avis-technique-energie.odt                                 |   Bin 19858 -> 26565 bytes
    src/Products/urban/profiles/extra/templates/urb-avis-technique-urbanisme.odt                               |   Bin 22864 -> 29778 bytes
    src/Products/urban/profiles/extra/templates/urb-avis.odt                                                   |   Bin 17354 -> 24290 bytes
    src/Products/urban/profiles/extra/templates/urb-conseil-delib-college.odt                                  |   Bin 29322 -> 37957 bytes
    src/Products/urban/profiles/extra/templates/urb-conseil-delib-communale-creation.odt                       |   Bin 20212 -> 28037 bytes
    src/Products/urban/profiles/extra/templates/urb-conseil-delib-communale-modif.odt                          |   Bin 20799 -> 29440 bytes
    src/Products/urban/profiles/extra/templates/urb-debut-travaux.odt                                          |   Bin 16011 -> 20295 bytes
    src/Products/urban/profiles/extra/templates/urb-decision-deliberation-college.odt                          |   Bin 34694 -> 44695 bytes
    src/Products/urban/profiles/extra/templates/urb-decision-egout-travaux.odt                                 |   Bin 18014 -> 26085 bytes
    src/Products/urban/profiles/extra/templates/urb-decision-formulaire-a.odt (mode +x)                        |   Bin 26677 -> 36184 bytes
    src/Products/urban/profiles/extra/templates/urb-decision-frais.odt                                         |   Bin 16337 -> 20838 bytes
    src/Products/urban/profiles/extra/templates/urb-decision-octroi-avis.odt                                   |   Bin 18929 -> 26792 bytes
    src/Products/urban/profiles/extra/templates/urb-decision-octroi-dem.odt (mode +x)                          |   Bin 31861 -> 26969 bytes
    src/Products/urban/profiles/extra/templates/urb-decision-octroi-rw.odt                                     |   Bin 17840 -> 16882 bytes
    src/Products/urban/profiles/extra/templates/urb-decision-transmis-reclamants.odt                           |   Bin 24435 -> 34724 bytes
    src/Products/urban/profiles/extra/templates/urb-demande-complements-art116-6.odt                           |   Bin 18353 -> 24617 bytes
    src/Products/urban/profiles/extra/templates/urb-demande-irrecevable-art159.odt                             |   Bin 22455 -> 31867 bytes
    src/Products/urban/profiles/extra/templates/urb-dossier-incomplet-archi.odt                                |   Bin 20229 -> 29776 bytes
    src/Products/urban/profiles/extra/templates/urb-dossier-incomplet-demandeur.odt (mode +x)                  |   Bin 20064 -> 29615 bytes
    src/Products/urban/profiles/extra/templates/urb-dossier-incomplet-refuse-archi.odt                         |   Bin 115393 -> 29776 bytes
    src/Products/urban/profiles/extra/templates/urb-dossier-incomplet-refuse-demandeur.odt (mode +x)           |   Bin 118370 -> 29615 bytes
    src/Products/urban/profiles/extra/templates/urb-enq-accuse-reclamation.odt                                 |   Bin 23784 -> 31703 bytes
    src/Products/urban/profiles/extra/templates/urb-enq-annexe25-dem.odt                                       |   Bin 20247 -> 29749 bytes
    src/Products/urban/profiles/extra/templates/urb-enq-annexe25.odt                                           |   Bin 22366 -> 23474 bytes
    src/Products/urban/profiles/extra/templates/urb-enq-art341-invit.odt                                       |   Bin 20431 -> 17678 bytes
    src/Products/urban/profiles/extra/templates/urb-enq-avis-riverains-annexe26.odt                            |   Bin 22618 -> 33357 bytes
    src/Products/urban/profiles/extra/templates/urb-enq-certif-aff-annexe26.odt (mode +x)                      |   Bin 31660 -> 32443 bytes
    src/Products/urban/profiles/extra/templates/urb-enq-copie-rw-annexe26.odt                                  |   Bin 18099 -> 25176 bytes
    src/Products/urban/profiles/extra/templates/urb-enq-frais.odt (mode +x)                                    |   Bin 21121 -> 28512 bytes
    src/Products/urban/profiles/extra/templates/urb-enq-ordre-mission.odt                                      |   Bin 24988 -> 26110 bytes
    src/Products/urban/profiles/extra/templates/urb-enq-pv-clot.odt (mode +x)                                  |   Bin 30218 -> 30999 bytes
    src/Products/urban/profiles/extra/templates/urb-enq-recommandes.odt                                        |   Bin 12600 -> 9436 bytes
    src/Products/urban/profiles/extra/templates/urb-enq-reunion-clot.odt                                       |   Bin 19894 -> 21283 bytes
    src/Products/urban/profiles/extra/templates/urb-enveloppes-archi.odt                                       |   Bin 12981 -> 20038 bytes
    src/Products/urban/profiles/extra/templates/urb-enveloppes-dem.odt                                         |   Bin 12570 -> 19598 bytes
    src/Products/urban/profiles/extra/templates/urb-envoi-premier-dossier-art127-rw.odt                        |   Bin 18146 -> 23437 bytes
    src/Products/urban/profiles/extra/templates/urb-envoi-premier-dossier-form-rw.odt                          |   Bin 34428 -> 46570 bytes
    src/Products/urban/profiles/extra/templates/urb-envoi-premier-dossier-rw.odt                               |   Bin 18764 -> 24127 bytes
    src/Products/urban/profiles/extra/templates/urb-envoi-second-dossier-demandeur.odt                         |   Bin 21961 -> 29727 bytes
    src/Products/urban/profiles/extra/templates/urb-envoi-second-dossier-rw.odt                                |   Bin 20533 -> 17822 bytes
    src/Products/urban/profiles/extra/templates/urb-fiche-recap.odt                                            |   Bin 19973 -> 21186 bytes
    src/Products/urban/profiles/extra/templates/urb-procedure-erronee-art127-rw.odt                            |   Bin 16791 -> 23449 bytes
    src/Products/urban/profiles/extra/templates/urb-procedure-erronee-art127.odt                               |   Bin 18990 -> 27068 bytes
    src/Products/urban/profiles/extra/templates/urb-prorogation-transmis-accept-fd.odt                         |   Bin 16197 -> 20405 bytes
    src/Products/urban/profiles/extra/templates/urb-prorogation-transmis-accept.odt                            |   Bin 96654 -> 27965 bytes
    src/Products/urban/profiles/extra/templates/urb-prorogation-transmis-refus.odt                             |   Bin 21262 -> 33674 bytes
    src/Products/urban/profiles/extra/templates/urb-prorogation.odt                                            |   Bin 19636 -> 28455 bytes
    src/Products/urban/profiles/extra/templates/urb-racc-egout-delib-college-avec-traversee-voirie.odt         |   Bin 23943 -> 36101 bytes
    src/Products/urban/profiles/extra/templates/urb-racc-egout-delib-college-lotissement.odt                   |   Bin 24418 -> 37142 bytes
    src/Products/urban/profiles/extra/templates/urb-racc-egout-delib-college-sans-traversee-voirie.odt         |   Bin 24607 -> 36746 bytes
    src/Products/urban/profiles/extra/templates/urb-racc-egout-devis-egouttage.odt                             |   Bin 18414 -> 24810 bytes
    src/Products/urban/profiles/extra/templates/urb-rapp-college.odt (mode +x)                                 |   Bin 21908 -> 17443 bytes
    src/Products/urban/profiles/extra/templates/urb-rapp-service.odt                                           |   Bin 17452 -> 14679 bytes
    src/Products/urban/profiles/extra/templates/urb-rappel-decl-init-peb.odt                                   |   Bin 18914 -> 26770 bytes
    src/Products/urban/profiles/extra/templates/urb-rappel-implantation-peb.odt                                |   Bin 24160 -> 32842 bytes
    src/Products/urban/profiles/extra/templates/urb-rappel-implantation.odt                                    |   Bin 24141 -> 34068 bytes
    src/Products/urban/profiles/extra/templates/urb-recepisse-art115-complement.odt                            |   Bin 23651 -> 32625 bytes
    src/Products/urban/profiles/extra/templates/urb-recepisse-art116.odt                                       |   Bin 23074 -> 32106 bytes
    src/Products/urban/profiles/extra/templates/urb-recepisse.odt (mode +x)                                    |   Bin 23544 -> 30433 bytes
    src/Products/urban/profiles/extra/templates/urb-recours-GW-demandeur-vs-FD.odt                             |   Bin 22576 -> 19583 bytes
    src/Products/urban/profiles/extra/templates/urb-recours-GW-transmis-decision-FD-art127.odt                 |   Bin 24172 -> 20254 bytes
    src/Products/urban/profiles/extra/templates/urb-recours-GW-transmis-decision-GW-PU.odt                     |   Bin 23819 -> 20150 bytes
    src/Products/urban/profiles/extra/templates/urb-recours-GW-ville-vs-FD.odt                                 |   Bin 22357 -> 19778 bytes
    src/Products/urban/profiles/extra/templates/urb-regularisation-delib-college-refus.odt                     |   Bin 23060 -> 34756 bytes
    src/Products/urban/profiles/extra/templates/urb-suspension-retrait-refus-dem.odt                           |   Bin 17225 -> 22574 bytes
    src/Products/urban/profiles/extra/templates/urb-suspension-retrait-refus-rw-recours.odt                    |   Bin 16987 -> 23094 bytes
    src/Products/urban/profiles/extra/templates/urb-suspension-retrait-refus-rw.odt                            |   Bin 17440 -> 23316 bytes
    src/Products/urban/profiles/fixes/__init__.py (gone)                                                       |     1 -
    src/Products/urban/profiles/fixes/fixes_marker.txt (gone)                                                  |     1 -
    src/Products/urban/profiles/fixes/import_steps.xml (gone)                                                  |    12 -
    src/Products/urban/profiles/{urban_types => preinstall}/factorytool.xml                                    |     5 +
    src/Products/urban/profiles/preinstall/metadata.xml                                                        |     7 +-
    src/Products/urban/profiles/{urban_types => preinstall}/toolset.xml                                        |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types.xml                                          |     2 +
    src/Products/urban/profiles/{urban_types => preinstall}/types/Applicant.xml                                |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/Architect.xml                                |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/Article127.xml                               |     2 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/BuildLicence.xml                             |     2 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/CODT_Article127.xml                          |     2 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/CODT_BuildLicence.xml                        |     3 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/CODT_CommercialLicence.xml                   |     2 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/CODT_Inquiry.xml                             |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/CODT_IntegratedLicence.xml                   |     2 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/CODT_NotaryLetter.xml                        |     4 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/CODT_ParcelOutLicence.xml                    |     2 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/CODT_UniqueLicence.xml                       |     2 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/CODT_UniqueLicenceInquiry.xml                |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/CODT_UrbanCertificateBase.xml                |     4 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/CODT_UrbanCertificateOne.xml                 |    22 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/CODT_UrbanCertificateTwo.xml                 |     2 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/City.xml                                     |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/Claimant.xml                                 |     0
    src/Products/urban/profiles/preinstall/types/ConfigTest.xml (new)                                          |    78 +
    src/Products/urban/profiles/{urban_types => preinstall}/types/Contact.xml                                  |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/Corporation.xml                              |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/CorporationPlaintiff.xml                     |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/CorporationProprietary.xml                   |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/CorporationTenant.xml                        |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/Couple.xml                                   |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/Declaration.xml                              |     3 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/Division.xml                                 |     3 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/EnvClassBordering.xml                        |     2 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/EnvClassOne.xml                              |     2 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/EnvClassThree.xml                            |     2 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/EnvClassTwo.xml                              |     2 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/EnvironmentBase.xml                          |     2 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/EnvironmentLicence.xml                       |     2 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/EnvironmentRubricTerm.xml                    |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/ExplosivesPossession.xml                     |     2 +-
    src/Products/urban/profiles/preinstall/types/File.xml (new)                                                |    51 +
    src/Products/urban/profiles/{urban_types => preinstall}/types/FolderManager.xml                            |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/FollowUpEventType.xml                        |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/GenericLicence.xml                           |     2 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/Geometrician.xml                             |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/Inquiry.xml                                  |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/Inspection.xml                               |     4 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/IntegratedLicence.xml                        |     2 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/LicenceConfig.xml                            |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/Locality.xml                                 |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/Lot.xml                                      |     2 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/MiscDemand.xml                               |     3 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/Notary.xml                                   |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/NotaryLetter.xml                             |     2 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/OpinionRequestEventType.xml                  |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/OrganisationTerm.xml                         |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/ParcelOutLicence.xml                         |     2 +-
    src/Products/urban/profiles/preinstall/types/ParcellingTerm.xml (new)                                      |    51 +
    src/Products/urban/profiles/{urban_types => preinstall}/types/PatrimonyCertificate.xml                     |     7 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/PcaTerm.xml                                  |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/PersonTitleTerm.xml                          |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/Plaintiff.xml                                |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/PortionOut.xml                               |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/PreliminaryNotice.xml                        |     4 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/ProjectMeeting.xml                           |     4 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/Proprietary.xml                              |    14 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/ProprietaryCouple.xml                        |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/Recipient.xml                                |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/RecipientCadastre.xml                        |     2 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/RequestedOrganisation.xml                    |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/RoadDecree.xml                               |     3 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/SpecificFeatureTerm.xml                      |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/Street.xml                                   |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/Tenant.xml                                   |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/Ticket.xml                                   |     4 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/UniqueLicence.xml                            |     3 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/UrbanCertificateBase.xml                     |     6 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/UrbanCertificateOne.xml                      |     3 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/UrbanCertificateTwo.xml                      |     3 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/UrbanConfigurationValue.xml                  |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/UrbanDelay.xml                               |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/UrbanDoc.xml                                 |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/UrbanEvent.xml                               |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/UrbanEventAnnouncement.xml                   |     1 +
    src/Products/urban/profiles/{urban_types => preinstall}/types/UrbanEventCollege.xml                        |     1 +
    src/Products/urban/profiles/{urban_types => preinstall}/types/UrbanEventFollowUp.xml                       |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/UrbanEventInquiry.xml                        |     1 +
    src/Products/urban/profiles/{urban_types => preinstall}/types/UrbanEventInspectionReport.xml               |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/UrbanEventMayor.xml                          |     1 +
    src/Products/urban/profiles/{urban_types => preinstall}/types/UrbanEventNotificationCollege.xml            |     1 +
    src/Products/urban/profiles/{urban_types => preinstall}/types/UrbanEventOpinionRequest.xml                 |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/UrbanEventType.xml                           |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/UrbanTemplate.xml                            |     2 +-
    src/Products/urban/profiles/{urban_types => preinstall}/types/UrbanTool.xml                                |     0
    src/Products/urban/profiles/{urban_types => preinstall}/types/UrbanVocabularyTerm.xml                      |     0
    src/Products/urban/profiles/preinstall/workflows.xml                                                       |    30 +-
    src/Products/urban/profiles/preinstall/workflows/codt_buildlicence_workflow/definition.xml                 |   512 +--
    src/Products/urban/profiles/preinstall/workflows/college_event_workflow/definition.xml                     |    66 +-
    src/Products/urban/profiles/preinstall/workflows/env_licence_workflow/definition.xml (gone)                |   858 -----
    src/Products/urban/profiles/preinstall/workflows/inspection_workflow/definition.xml                        |    16 -
    src/Products/urban/profiles/preinstall/workflows/opinion_request_workflow/definition.xml                   |    91 +-
    src/Products/urban/profiles/preinstall/workflows/ticket_workflow/definition.xml                            |   117 +-
    src/Products/urban/profiles/preinstall/workflows/urban_licence_workflow/definition.xml                     |    36 +-
    src/Products/urban/profiles/preinstall/workflows/urbandivision_workflow/definition.xml                     |    36 +-
    src/Products/urban/profiles/preinstall/workflows/urbanevent_workflow/definition.xml                        |     8 +
    src/Products/urban/profiles/testsWithConfig/config_default_values.py                                       |    18 -
    src/Products/urban/profiles/testsWithConfig/data.py                                                        |   304 +-
    src/Products/urban/profiles/testsWithConfig/default_objects.py                                             |    20 +-
    src/Products/urban/profiles/testsWithConfig/import_steps.xml                                               |    33 +-
    src/Products/urban/profiles/testsWithConfig/refnis.py (gone)                                               |     6 -
    src/Products/urban/profiles/testsWithConfig/templates/avis-technique-peb.odt                               |   Bin 136699 -> 27117 bytes
    src/Products/urban/profiles/testsWithConfig/templates/blank.odt                                            |   Bin 84273 -> 20729 bytes
    src/Products/urban/profiles/testsWithConfig/templates/inspection_rapport1.odt (gone)                       |   Bin 17344 -> 0 bytes
    src/Products/urban/profiles/testsWithConfig/templates/listing-general.ods (gone)                           |   Bin 12009 -> 0 bytes
    src/Products/urban/profiles/testsWithConfig/templates/statsins.odt                                         |   Bin 103603 -> 79441 bytes
    src/Products/urban/profiles/testsWithConfig/templates/urb-accuse.odt                                       |   Bin 117016 -> 23835 bytes
    src/Products/urban/profiles/testsWithConfig/templates/urb-avis.odt                                         |   Bin 82077 -> 23984 bytes
    src/Products/urban/profiles/testsWithConfig/templates/urb-rapp-college.odt                                 |   Bin 111131 -> 17443 bytes
    src/Products/urban/profiles/testsWithConfig/templates/urb-rapp-service.odt                                 |   Bin 61586 -> 14679 bytes
    src/Products/urban/profiles/testsWithLicences/licences_data.py                                             |    47 -
    src/Products/urban/profiles/urban_types/metadata.xml (gone)                                                |     5 -
    src/Products/urban/schedule/browser/__init__.py (new)                                                      |     0
    src/Products/urban/schedule/browser/configure.zcml (new)                                                   |    15 +
    src/Products/urban/schedule/browser/debug.py (new)                                                         |    89 +
    src/Products/urban/schedule/browser/templates/debug.pt (new)                                               |    22 +
    src/Products/urban/schedule/conditions/creation.py                                                         |   263 +-
    src/Products/urban/schedule/conditions/creation.zcml                                                       |   117 +-
    src/Products/urban/schedule/conditions/end.zcml                                                            |   122 +-
    src/Products/urban/schedule/conditions/generic.py                                                          |   297 +-
    src/Products/urban/schedule/conditions/start.zcml                                                          |     9 -
    src/Products/urban/schedule/config/article127.xml                                                          |    39 +-
    src/Products/urban/schedule/config/buildlicence.xml                                                        |    47 +-
    src/Products/urban/schedule/config/codt_article127.xml                                                     |    39 +-
    src/Products/urban/schedule/config/codt_buildlicence.xml                                                   |    47 +-
    src/Products/urban/schedule/config/codt_commerciallicence.xml                                              |    39 +-
    src/Products/urban/schedule/config/codt_commerciallicencelicence.xml                                       |    39 +-
    src/Products/urban/schedule/config/codt_integratedlicence.xml                                              |    39 +-
    src/Products/urban/schedule/config/codt_notaryletter.xml                                                   |   103 +-
    src/Products/urban/schedule/config/codt_parceloutlicence.xml                                               |    39 +-
    src/Products/urban/schedule/config/codt_uniquelicence.xml                                                  |    39 +-
    src/Products/urban/schedule/config/codt_urbancertificateone.xml                                            |    39 +-
    src/Products/urban/schedule/config/codt_urbancertificatetwo.xml                                            |    39 +-
    src/Products/urban/schedule/config/declaration.xml                                                         |    39 +-
    src/Products/urban/schedule/config/division.xml                                                            |   103 +-
    src/Products/urban/schedule/config/envclassbordering.xml                                                   |    39 +-
    src/Products/urban/schedule/config/envclassone.xml                                                         |    39 +-
    src/Products/urban/schedule/config/envclassthree.xml                                                       |    39 +-
    src/Products/urban/schedule/config/envclasstwo.xml                                                         |    39 +-
    src/Products/urban/schedule/config/explosivespossession.xml                                                |    39 +-
    src/Products/urban/schedule/config/inspection.xml                                                          |    54 +-
    src/Products/urban/schedule/config/integratedlicence.xml                                                   |    39 +-
    src/Products/urban/schedule/config/miscdemand.xml                                                          |    39 +-
    src/Products/urban/schedule/config/notaryletter.xml                                                        |    39 +-
    src/Products/urban/schedule/config/opinions_schedule.xml                                                   |    24 +-
    src/Products/urban/schedule/config/parceloutlicence.xml                                                    |    39 +-
    src/Products/urban/schedule/config/patrimonycertificate.xml                                                |    39 +-
    src/Products/urban/schedule/config/preliminarynotice.xml                                                   |    39 +-
    src/Products/urban/schedule/config/projectmeeting.xml                                                      |    39 +-
    src/Products/urban/schedule/config/roaddecree.xml                                                          |    39 +-
    src/Products/urban/schedule/config/ticket.xml                                                              |    39 +-
    src/Products/urban/schedule/config/uniquelicence.xml                                                       |    39 +-
    src/Products/urban/schedule/config/urbancertificateone.xml                                                 |    39 +-
    src/Products/urban/schedule/config/urbancertificatetwo.xml                                                 |    39 +-
    src/Products/urban/schedule/configure.zcml                                                                 |     1 +
    src/Products/urban/schedule/faceted_view.py                                                                |     2 +-
    src/Products/urban/schedule/interfaces.py                                                                  |     4 +
    src/Products/urban/schedule/marker_interfaces.zcml                                                         |     4 +
    src/Products/urban/schedule/start_date.py                                                                  |    54 +-
    src/Products/urban/schedule/start_date.zcml                                                                |    30 +-
    src/Products/urban/schedule/task_completion.py                                                             |    14 +-
    src/Products/urban/schedule/tests/test_amended_plans.py                                                    |   115 +-
    src/Products/urban/schedule/tests/test_buildlicence_schedule.py (gone)                                     |   124 -
    src/Products/urban/schedule/tests/test_cu2_schedule.py (gone)                                              |   124 -
    src/Products/urban/schedule/tests/test_limit_date_opinion_fd.py (new)                                      |    97 +
    src/Products/urban/schedule/tests/test_modified_blueprint.py (new)                                         |    76 +
    src/Products/urban/scripts/odtsearch.py                                                                    |   724 ++--
    src/Products/urban/send_mail_action/forms.py                                                               |     5 +-
    src/Products/urban/services/__init__.py                                                                    |     4 -
    src/Products/urban/services/base.py                                                                        |    23 +-
    src/Products/urban/services/cadastral.py                                                                   |    66 +-
    src/Products/urban/services/configure.zcml                                                                 |     8 -
    src/Products/urban/services/deserializer.py (gone)                                                         |    62 -
    src/Products/urban/services/gig.py (gone)                                                                  |    59 -
    src/Products/urban/services/mysqlbase.py (gone)                                                            |   129 -
    src/Products/urban/services/serializer.py (gone)                                                           |    51 -
    src/Products/urban/setuphandlers.py                                                                        |   364 +-
    src/Products/urban/skins/urban_images/Applicant.png (new)                                                  |   Bin 0 -> 3494 bytes
    src/Products/urban/skins/urban_images/Architect.png (new)                                                  |   Bin 0 -> 3494 bytes
    src/Products/urban/skins/urban_images/Article127.png (new)                                                 |   Bin 0 -> 859 bytes
    src/Products/urban/skins/urban_images/Article127.png.metadata (new)                                        |     2 +
    src/Products/urban/skins/urban_images/AskOpinionEventType.gif (new)                                        |   Bin 0 -> 915 bytes
    src/Products/urban/skins/urban_images/BuildLicence.png (new)                                               |   Bin 0 -> 913 bytes
    src/Products/urban/skins/urban_images/BuildLicence.png.metadata (new)                                      |     2 +
    src/Products/urban/skins/urban_images/CODT_Article127.png (new)                                            |   Bin 0 -> 859 bytes
    src/Products/urban/skins/urban_images/CODT_BuildLicence.png (new)                                          |   Bin 0 -> 913 bytes
    src/Products/urban/skins/urban_images/CODT_CommercialLicence.png (new)                                     |   Bin 0 -> 859 bytes
    src/Products/urban/skins/urban_images/CODT_Inquiry.png (new)                                               |   Bin 0 -> 982 bytes
    src/Products/urban/skins/urban_images/CODT_IntegratedLicence.png (new)                                     |   Bin 0 -> 859 bytes
    src/Products/urban/skins/urban_images/CODT_NotaryLetter.png (new)                                          |   Bin 0 -> 3061 bytes
    src/Products/urban/skins/urban_images/CODT_ParcelOutLicence.png (new)                                      |   Bin 0 -> 736 bytes
    src/Products/urban/skins/urban_images/CODT_UniqueLicence.png (new)                                         |   Bin 0 -> 859 bytes
    src/Products/urban/skins/urban_images/CODT_UniqueLicenceInquiry.png (new)                                  |   Bin 0 -> 982 bytes
    src/Products/urban/skins/urban_images/CODT_UrbanCertificateOne.png (new)                                   |   Bin 0 -> 3087 bytes
    src/Products/urban/skins/urban_images/CODT_UrbanCertificateTwo.png (new)                                   |   Bin 0 -> 3099 bytes
    src/Products/urban/skins/urban_images/City.png (new)                                                       |   Bin 0 -> 940 bytes
    src/Products/urban/skins/urban_images/City.png.metadata (new)                                              |     2 +
    src/Products/urban/skins/urban_images/Contact.png (new)                                                    |   Bin 0 -> 3494 bytes
    src/Products/urban/skins/urban_images/Contact.png.metadata (new)                                           |     2 +
    src/Products/urban/skins/urban_images/Corporation.png (new)                                                |   Bin 0 -> 249 bytes
    src/Products/urban/skins/urban_images/Corporation.png.metadata (new)                                       |     2 +
    src/Products/urban/skins/urban_images/Declaration.png (new)                                                |   Bin 0 -> 257 bytes
    src/Products/urban/skins/urban_images/Declaration.png.metadata (new)                                       |     2 +
    src/Products/urban/skins/urban_images/Division.png (new)                                                   |   Bin 0 -> 784 bytes
    src/Products/urban/skins/urban_images/Division.png.metadata (new)                                          |     2 +
    src/Products/urban/skins/urban_images/EnvClassBordering.png (new)                                          |   Bin 0 -> 3227 bytes
    src/Products/urban/skins/urban_images/EnvClassOne.png (new)                                                |   Bin 0 -> 3197 bytes
    src/Products/urban/skins/urban_images/EnvClassOne.png.metadata (new)                                       |     2 +
    src/Products/urban/skins/urban_images/EnvClassThree.png (new)                                              |   Bin 0 -> 3227 bytes
    src/Products/urban/skins/urban_images/EnvClassThree.png.metadata (new)                                     |     2 +
    src/Products/urban/skins/urban_images/EnvClassTwo.png (new)                                                |   Bin 0 -> 3209 bytes
    src/Products/urban/skins/urban_images/EnvClassTwo.png.metadata (new)                                       |     2 +
    src/Products/urban/skins/urban_images/EnvironmentBase.png (new)                                            |   Bin 0 -> 940 bytes
    src/Products/urban/skins/urban_images/EnvironmentBase.png.metadata (new)                                   |     2 +
    src/Products/urban/skins/urban_images/EnvironmentClassThree.png (new)                                      |   Bin 0 -> 323 bytes
    src/Products/urban/skins/urban_images/EnvironmentClassThree.png.metadata (new)                             |     2 +
    src/Products/urban/skins/urban_images/EnvironmentLicence.gif (new)                                         |   Bin 0 -> 915 bytes
    src/Products/urban/skins/urban_images/EnvironmentLicence.png (new)                                         |   Bin 0 -> 249 bytes
    src/Products/urban/skins/urban_images/EnvironmentLicence.png.metadata (new)                                |     2 +
    src/Products/urban/skins/urban_images/EnvironmentRubricTerm.png (new)                                      |   Bin 0 -> 915 bytes
    src/Products/urban/skins/urban_images/EnvironmentRubricTerm.png.metadata (new)                             |     2 +
    src/Products/urban/skins/urban_images/Equipment.png (new)                                                  |   Bin 0 -> 940 bytes
    src/Products/urban/skins/urban_images/ExplosivesPossession.png (new)                                       |   Bin 0 -> 611 bytes
    src/Products/urban/skins/urban_images/FolderManager.png (new)                                              |   Bin 0 -> 3494 bytes
    src/Products/urban/skins/urban_images/FolderManager.png.metadata (new)                                     |     2 +
    src/Products/urban/skins/urban_images/FollowUpEventType.png (new)                                          |   Bin 0 -> 940 bytes
    src/Products/urban/skins/urban_images/GenericLicence.png (new)                                             |   Bin 0 -> 940 bytes
    src/Products/urban/skins/urban_images/GenericLicence.png.metadata (new)                                    |     2 +
    src/Products/urban/skins/urban_images/Geometrician.png (new)                                               |   Bin 0 -> 3494 bytes
    src/Products/urban/skins/urban_images/Inquiry.png (new)                                                    |   Bin 0 -> 982 bytes
    src/Products/urban/skins/urban_images/Inquiry.png.metadata (new)                                           |     2 +
    src/Products/urban/skins/urban_images/Inspection.png (new)                                                 |   Bin 0 -> 696 bytes
    src/Products/urban/skins/urban_images/IntegratedLicence.png (new)                                          |   Bin 0 -> 859 bytes
    src/Products/urban/skins/urban_images/Layer.png (new)                                                      |   Bin 0 -> 915 bytes
    src/Products/urban/skins/urban_images/Layer.png.metadata (new)                                             |     2 +
    src/Products/urban/skins/urban_images/LicenceConfig.png (new)                                              |   Bin 0 -> 940 bytes
    src/Products/urban/skins/urban_images/LicenceConfig.png.metadata (new)                                     |     2 +
    src/Products/urban/skins/urban_images/Locality.png (new)                                                   |   Bin 0 -> 915 bytes
    src/Products/urban/skins/urban_images/Locality.png.metadata (new)                                          |     2 +
    src/Products/urban/skins/urban_images/Lot.png (new)                                                        |   Bin 0 -> 940 bytes
    src/Products/urban/skins/urban_images/MiscDemand.png (new)                                                 |   Bin 0 -> 977 bytes
    src/Products/urban/skins/urban_images/MiscDemand.png.metadata (new)                                        |     2 +
    src/Products/urban/skins/urban_images/Notary.png (new)                                                     |   Bin 0 -> 3494 bytes
    src/Products/urban/skins/urban_images/NotaryLetter.png (new)                                               |   Bin 0 -> 3061 bytes
    src/Products/urban/skins/urban_images/OpinionRequestEventType.gif (new)                                    |   Bin 0 -> 915 bytes
    src/Products/urban/skins/urban_images/OpinionRequestEventType.png (new)                                    |   Bin 0 -> 323 bytes
    src/Products/urban/skins/urban_images/OpinionRequestEventType.png.metadata (new)                           |     2 +
    src/Products/urban/skins/urban_images/OrganisationTerm.png (new)                                           |   Bin 0 -> 915 bytes
    src/Products/urban/skins/urban_images/OrganisationTerm.png.metadata (new)                                  |     2 +
    src/Products/urban/skins/urban_images/ParcelOutLicence.png (new)                                           |   Bin 0 -> 736 bytes
    src/Products/urban/skins/urban_images/ParcelOutLicence.png.metadata (new)                                  |     2 +
    src/Products/urban/skins/urban_images/ParcellingTerm.png (new)                                             |   Bin 0 -> 915 bytes
    src/Products/urban/skins/urban_images/ParcellingTerm.png.metadata (new)                                    |     2 +
    src/Products/urban/skins/urban_images/PatrimonyCertificate.png (new)                                       |   Bin 0 -> 240 bytes
    src/Products/urban/skins/urban_images/PcaTerm.png (new)                                                    |   Bin 0 -> 915 bytes
    src/Products/urban/skins/urban_images/PcaTerm.png.metadata (new)                                           |     2 +
    src/Products/urban/skins/urban_images/PersonTitleTerm.png (new)                                            |   Bin 0 -> 915 bytes
    src/Products/urban/skins/urban_images/PersonTitleTerm.png.metadata (new)                                   |     2 +
    src/Products/urban/skins/urban_images/PortionOut.png (new)                                                 |   Bin 0 -> 3051 bytes
    src/Products/urban/skins/urban_images/PortionOut.png.metadata (new)                                        |     2 +
    src/Products/urban/skins/urban_images/PreliminaryNotice.png (new)                                          |   Bin 0 -> 891 bytes
    src/Products/urban/skins/urban_images/ProjectMeeting.png (new)                                             |   Bin 0 -> 891 bytes
    src/Products/urban/skins/urban_images/Proprietary.png (new)                                                |   Bin 0 -> 3494 bytes
    src/Products/urban/skins/urban_images/Recipient.png (new)                                                  |   Bin 0 -> 915 bytes
    src/Products/urban/skins/urban_images/Recipient.png.metadata (new)                                         |     2 +
    src/Products/urban/skins/urban_images/RecipientCadastre.png (new)                                          |   Bin 0 -> 940 bytes
    src/Products/urban/skins/urban_images/RecipientCadastre.png.metadata (new)                                 |     2 +
    src/Products/urban/skins/urban_images/Report.png (new)                                                     |   Bin 0 -> 249 bytes
    src/Products/urban/skins/urban_images/RoadDecree.png (new)                                                 |   Bin 0 -> 233 bytes
    src/Products/urban/skins/urban_images/SpecificFeatureTerm.png (new)                                        |   Bin 0 -> 915 bytes
    src/Products/urban/skins/urban_images/SpecificFeatureTerm.png.metadata (new)                               |     2 +
    src/Products/urban/skins/urban_images/Street.png (new)                                                     |   Bin 0 -> 233 bytes
    src/Products/urban/skins/urban_images/Street.png.metadata (new)                                            |     2 +
    src/Products/urban/skins/urban_images/TextConfig.gif (new)                                                 |   Bin 0 -> 940 bytes
    src/Products/urban/skins/urban_images/Ticket.png (new)                                                     |   Bin 0 -> 457 bytes
    src/Products/urban/skins/urban_images/UniqueLicence.png (new)                                              |   Bin 0 -> 859 bytes
    src/Products/urban/skins/urban_images/UrbanCertificateBase.png (new)                                       |   Bin 0 -> 940 bytes
    src/Products/urban/skins/urban_images/UrbanCertificateBase.png.metadata (new)                              |     2 +
    src/Products/urban/skins/urban_images/UrbanCertificateOne.png (new)                                        |   Bin 0 -> 3087 bytes
    src/Products/urban/skins/urban_images/UrbanCertificateTwo.png (new)                                        |   Bin 0 -> 3099 bytes
    src/Products/urban/skins/urban_images/UrbanCertificateTwo.png.metadata (new)                               |     2 +
    src/Products/urban/skins/urban_images/UrbanConfigurationValue.gif (new)                                    |   Bin 0 -> 915 bytes
    src/Products/urban/skins/urban_images/UrbanConfigurationValue.png (new)                                    |   Bin 0 -> 249 bytes
    src/Products/urban/skins/urban_images/UrbanConfigurationValue.png.metadata (new)                           |     2 +
    src/Products/urban/skins/urban_images/UrbanDelay.png (new)                                                 |   Bin 0 -> 915 bytes
    src/Products/urban/skins/urban_images/UrbanDelay.png.metadata (new)                                        |     2 +
    src/Products/urban/skins/urban_images/UrbanDoc.gif (new)                                                   |   Bin 0 -> 915 bytes
    src/Products/urban/skins/urban_images/UrbanDoc.png (new)                                                   |   Bin 0 -> 249 bytes
    src/Products/urban/skins/urban_images/UrbanDoc.png.metadata (new)                                          |     2 +
    src/Products/urban/skins/urban_images/UrbanEvent.png (new)                                                 |   Bin 0 -> 750 bytes
    src/Products/urban/skins/urban_images/UrbanEvent.png.metadata (new)                                        |     2 +
    src/Products/urban/skins/urban_images/UrbanEventAcknowledgment.png (new)                                   |   Bin 0 -> 750 bytes
    src/Products/urban/skins/urban_images/UrbanEventAnnouncement.png (new)                                     |   Bin 0 -> 750 bytes
    src/Products/urban/skins/urban_images/UrbanEventCollege.png (new)                                          |   Bin 0 -> 750 bytes
    src/Products/urban/skins/urban_images/UrbanEventInquiry.png (new)                                          |   Bin 0 -> 750 bytes
    src/Products/urban/skins/urban_images/UrbanEventInquiry.png.metadata (new)                                 |     2 +
    src/Products/urban/skins/urban_images/UrbanEventMayor.png (new)                                            |   Bin 0 -> 750 bytes
    src/Products/urban/skins/urban_images/UrbanEventNotificationCollege.png (new)                              |   Bin 0 -> 750 bytes
    src/Products/urban/skins/urban_images/UrbanEventOpinionRequest.png (new)                                   |   Bin 0 -> 750 bytes
    src/Products/urban/skins/urban_images/UrbanEventOpinionRequest.png.metadata (new)                          |     2 +
    src/Products/urban/skins/urban_images/UrbanEventType.png (new)                                             |   Bin 0 -> 940 bytes
    src/Products/urban/skins/urban_images/UrbanEventType.png.metadata (new)                                    |     2 +
    src/Products/urban/skins/urban_images/UrbanEventWithEnvironmentValidation.png (new)                        |   Bin 0 -> 750 bytes
    src/Products/urban/skins/urban_images/UrbanTool.png (new)                                                  |   Bin 0 -> 940 bytes
    src/Products/urban/skins/urban_images/UrbanTool.png.metadata (new)                                         |     2 +
    src/Products/urban/skins/urban_images/UrbanVocabularyTerm.png (new)                                        |   Bin 0 -> 915 bytes
    src/Products/urban/skins/urban_images/UrbanVocabularyTerm.png.metadata (new)                               |     2 +
    src/Products/urban/skins/urban_images/WorkLocation.png (new)                                               |   Bin 0 -> 1025 bytes
    src/Products/urban/skins/urban_images/accept.png (new)                                                     |   Bin 0 -> 929 bytes
    src/Products/urban/skins/urban_images/assign.png (new)                                                     |   Bin 0 -> 599 bytes
    src/Products/urban/skins/urban_images/attachment.png (new)                                                 |   Bin 0 -> 951 bytes
    src/Products/urban/skins/urban_images/close.png (new)                                                      |   Bin 0 -> 3109 bytes
    src/Products/urban/skins/urban_images/coring.png (new)                                                     |   Bin 0 -> 651 bytes
    src/Products/urban/skins/urban_images/engrenage.png (new)                                                  |   Bin 0 -> 781 bytes
    src/Products/urban/skins/urban_images/getemails.png (new)                                                  |   Bin 0 -> 1043 bytes
    src/Products/urban/skins/urban_images/goback.png (new)                                                     |   Bin 0 -> 3379 bytes
    src/Products/urban/skins/urban_images/icon_add.gif (new)                                                   |   Bin 0 -> 510 bytes
    src/Products/urban/skins/urban_images/icon_add_big.png (new)                                               |   Bin 0 -> 482 bytes
    src/Products/urban/skins/urban_images/iscomplete.png (new)                                                 |   Bin 0 -> 915 bytes
    src/Products/urban/skins/urban_images/isincomplete.png (new)                                               |   Bin 0 -> 749 bytes
    src/Products/urban/skins/urban_images/linkedfolders.png (new)                                              |   Bin 0 -> 819 bytes
    src/Products/urban/skins/urban_images/linkedhistoricfolders.png (new)                                      |   Bin 0 -> 826 bytes
    src/Products/urban/skins/urban_images/lock.png (new)                                                       |   Bin 0 -> 644 bytes
    src/Products/urban/skins/urban_images/logo.png (new)                                                       |   Bin 0 -> 2461 bytes
    src/Products/urban/skins/urban_images/old.png (new)                                                        |   Bin 0 -> 635 bytes
    src/Products/urban/skins/urban_images/parcelhistoric.png (new)                                             |   Bin 0 -> 696 bytes
    src/Products/urban/skins/urban_images/question-mark.gif (new)                                              |   Bin 0 -> 1043 bytes
    src/Products/urban/skins/urban_images/refuse.png (new)                                                     |   Bin 0 -> 690 bytes
    src/Products/urban/skins/urban_images/reopen.png (new)                                                     |   Bin 0 -> 649 bytes
    src/Products/urban/skins/urban_images/retire.png (new)                                                     |   Bin 0 -> 399 bytes
    src/Products/urban/skins/urban_images/s.gif (new)                                                          |   Bin 0 -> 43 bytes
    src/Products/urban/skins/urban_images/schedule.png (new)                                                   |   Bin 0 -> 608 bytes
    src/Products/urban/skins/urban_images/urban-sprite.png (new)                                               |   Bin 0 -> 5900 bytes
    src/Products/urban/skins/urban_images/viewlet-firefox.png (new)                                            |   Bin 0 -> 9123 bytes
    src/Products/urban/skins/urban_images/warning.png (new)                                                    |   Bin 0 -> 457 bytes
    src/Products/urban/skins/urban_images/xml.png (new)                                                        |   Bin 0 -> 683 bytes
    src/Products/urban/skins/urban_styles/fieldeditoverlay.js                                                  |    18 +-
    src/Products/urban/skins/urban_styles/inquiry_dates.js (gone)                                              |    22 -
    src/Products/urban/skins/urban_styles/urban.css.dtml (new)                                                 |   473 +++
    src/Products/urban/skins/urban_styles/urbanedittabbing.js                                                  |     1 -
    src/Products/urban/skins/urban_styles/urbanpopups.js                                                       |     4 +-
    src/Products/urban/skins/urban_templates/codt_uniquelicenceinquiry_edit.pt (gone)                          |    27 -
    src/Products/urban/skins/urban_templates/lot_view.pt (new)                                                 |    35 +
    src/Products/urban/skins/urban_templates/querywidget.pt (gone)                                             |   255 --
    src/Products/urban/skins/urban_templates/referencebrowser_popup.pt                                         |     2 +-
    src/Products/urban/skins/urban_templates/street_referencedatagridwidget.pt                                 |     2 +-
    src/Products/urban/skins/urban_templates/urbaneventannouncement_edit.pt                                    |     2 +-
    src/Products/urban/skins/urban_templates/urbaneventinquiry_edit.pt                                         |     2 +-
    src/Products/urban/skins/urban_templates/urbaneventtype_edit.pt (new)                                      |    19 +
    src/Products/urban/testing.py                                                                              |    47 +-
    src/Products/urban/tests/test_Base.py                                                                      |     3 +-
    src/Products/urban/tests/test_BuildLicence.py                                                              |   163 +-
    src/Products/urban/tests/test_Contact.py                                                                   |    26 -
    src/Products/urban/tests/test_DefaultValues.py                                                             |    90 +-
    src/Products/urban/tests/test_EnvClassOne.py                                                               |    21 +-
    src/Products/urban/tests/test_EnvClassTwo.py                                                               |    21 +-
    src/Products/urban/tests/test_GenericLicence.py                                                            |    81 +-
    src/Products/urban/tests/test_Inquiries.py                                                                 |   123 +-
    src/Products/urban/tests/test_ParcellingTerm.py (new)                                                      |   121 +
    src/Products/urban/tests/test_StatsLicences.py                                                             |     3 +-
    src/Products/urban/tests/test_UrbanEvent.py                                                                |    27 +-
    src/Products/urban/tests/test_UrbanEventTypes.py (new)                                                     |   144 +
    src/Products/urban/tests/test_UrbanTemplate.py                                                             |    46 +-
    src/Products/urban/tests/test_UrbanVocabularyTerm.py                                                       |   124 +-
    src/Products/urban/tests/test_contactEmailExport.py                                                        |     6 +-
    src/Products/urban/tests/test_generatedDocuments.py                                                        |   319 +-
    src/Products/urban/tests/test_generation_view.py (gone)                                                    |    44 -
    src/Products/urban/tests/test_install.py                                                                   |    16 +-
    src/Products/urban/tests/test_interfaces.py (new)                                                          |    17 +
    src/Products/urban/tests/test_keyEvent.py                                                                  |    21 +-
    src/Products/urban/tests/test_migration.py (gone)                                                          |    42 -
    src/Products/urban/tests/test_odtsearch.py                                                                 |    41 +-
    src/Products/urban/tests/test_opinionRequests.py (new)                                                     |    87 +
    src/Products/urban/tests/test_streets.py (gone)                                                            |    40 -
    src/Products/urban/tests/test_urbanconfig.py                                                               |    23 -
    src/Products/urban/utils.py                                                                                |     7 +-
    src/Products/urban/validators/validator.py                                                                 |    70 +-
    src/Products/urban/viewlets/configure.zcml                                                                 |    22 -
    src/Products/urban/viewlets/licences_migration.py (gone)                                                   |   182 -
    src/Products/urban/viewlets/templates/to_inspections.pt (gone)                                             |    27 -
    src/Products/urban/viewlets/templates/urbain_220.pt                                                        |     4 +-
    src/Products/urban/viewlets/templates/urbanfavicon.pt (gone)                                               |     4 -
    src/Products/urban/viewlets/urbain_220.py                                                                  |    82 +-
    src/Products/urban/viewlets/urbanfavicon.py (gone)                                                         |     6 -
    src/Products/urban/vocabularies.py                                                                         |   266 +-
    src/Products/urban/vocabulary.zcml                                                                         |    56 +-
    src/Products/urban/wfsubscribers.py (new)                                                                  |    89 +
    src/Products/urban/widget/select2widget.py (gone)                                                          |   110 -
    src/Products/urban/workflows/adapter.py                                                                    |    10 +-
    src/Products/urban/workflows/codt_licence_workflow.py                                                      |    15 -
    src/Products/urban/workflows/configure.zcml                                                                |    21 -
    src/Products/urban/workflows/division_workflow.py (gone)                                                   |    26 -
    src/Products/urban/workflows/env_licence_workflow.py (gone)                                                |    93 -
    src/Products/urban/workflows/opinionsrequest_workflow.py                                                   |    20 +-
    src/Products/urban/workflows/suspension.py                                                                 |     7 +
    src/Products/urban/workflows/urbanevent_workflow.py                                                        |     7 +-


### Fichiers en conflit de merge par type d'extension

    196 py
    15 xml
    7 zcml
    6 pt
    4 png
    3 pot
    2 po
    1 odt
    1 dtml


### Fichiers en conflit de merge

```shell
git checkout liege-urban2.5.x_merge20241209
git merge --no-commit --no-ff urban2.7.x_merge20241209
```

    CONFLICT (content): Merge conflict in .gitignore
    CONFLICT (content): Merge conflict in MANIFEST.in
    CONFLICT (content): Merge conflict in bootstrap.py
    CONFLICT (content): Merge conflict in docs/CHANGES.rst
    CONFLICT (content): Merge conflict in setup.py
    CONFLICT (content): Merge conflict in src/Products/urban/Applicant.py
    CONFLICT (content): Merge conflict in src/Products/urban/Claimant.py
    CONFLICT (content): Merge conflict in src/Products/urban/Contact.py
    CONFLICT (content): Merge conflict in src/Products/urban/Corporation.py
    CONFLICT (add/add): Merge conflict in src/Products/urban/Couple.py
    CONFLICT (content): Merge conflict in src/Products/urban/EnvironmentRubricTerm.py
    CONFLICT (content): Merge conflict in src/Products/urban/Extensions/fix_double_streets.py
    CONFLICT (content): Merge conflict in src/Products/urban/Extensions/fixblobs.py
    CONFLICT (content): Merge conflict in src/Products/urban/Extensions/imports.py
    CONFLICT (content): Merge conflict in src/Products/urban/Extensions/missing_events_config.py
    CONFLICT (content): Merge conflict in src/Products/urban/Extensions/reindex_object.py
    CONFLICT (content): Merge conflict in src/Products/urban/FolderManager.py
    CONFLICT (content): Merge conflict in src/Products/urban/LicenceConfig.py
    CONFLICT (content): Merge conflict in src/Products/urban/Locality.py
    CONFLICT (modify/delete): src/Products/urban/OOmacros/UrbanDocOO/Python/mailing.py deleted in urban2.7.x_merge20241209 and modified in HEAD.  Version HEAD of src/Products/urban/OOmacros/UrbanDocOO/Python/mailing.py left in tree.
    CONFLICT (modify/delete): src/Products/urban/OOmacros/UrbanTemplateOO/Python/appyTE.py deleted in urban2.7.x_merge20241209 and modified in HEAD.  Version HEAD of src/Products/urban/OOmacros/UrbanTemplateOO/Python/appyTE.py left in tree.
    CONFLICT (content): Merge conflict in src/Products/urban/OpinionRequestEventType.py
    CONFLICT (content): Merge conflict in src/Products/urban/OrganisationTerm.py
    CONFLICT (content): Merge conflict in src/Products/urban/ParcellingTerm.py
    CONFLICT (content): Merge conflict in src/Products/urban/PcaTerm.py
    CONFLICT (content): Merge conflict in src/Products/urban/PortionOut.py
    CONFLICT (content): Merge conflict in src/Products/urban/SpecificFeatureTerm.py
    CONFLICT (content): Merge conflict in src/Products/urban/Street.py
    CONFLICT (content): Merge conflict in src/Products/urban/UrbanEvent.py
    CONFLICT (content): Merge conflict in src/Products/urban/UrbanEventOpinionRequest.py
    CONFLICT (content): Merge conflict in src/Products/urban/UrbanEventType.py
    CONFLICT (content): Merge conflict in src/Products/urban/UrbanTool.py
    CONFLICT (content): Merge conflict in src/Products/urban/UrbanVocabularyTerm.py
    CONFLICT (content): Merge conflict in src/Products/urban/__init__.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/actionspanel/actionspanel.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/actionspanel/confirm.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/contactview.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/cron/inquiry.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/cron/tasks.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/default_text.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/licence/article127view.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/licence/buildlicenceview.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/licence/codt_buildlicenceview.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/licence/codt_integratedlicenceview.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/licence/codt_parceloutlicenceview.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/licence/codt_uniquelicenceview.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/licence/codt_urbancertificatetwoview.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/licence/declarationview.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/licence/divisionview.py
    CONFLICT (modify/delete): src/Products/urban/browser/licence/duplicate_licence.py deleted in HEAD and modified in urban2.7.x_merge20241209.  Version urban2.7.x_merge20241209 of src/Products/urban/browser/licence/duplicate_licence.py left in tree.
    CONFLICT (content): Merge conflict in src/Products/urban/browser/licence/envclassborderingview.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/licence/envclassoneview.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/licence/envclassthreeview.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/licence/envclasstwoview.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/licence/explosivespossessionview.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/licence/inspectionview.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/licence/licenceview.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/licence/miscdemandview.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/licence/notaryletterview.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/licence/parceloutlicenceview.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/licence/patrimonycertificateview.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/licence/preliminarynoticeview.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/licence/projectmeetingview.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/licence/roaddecreeview.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/licence/templates/licencemacros.pt
    CONFLICT (content): Merge conflict in src/Products/urban/browser/licence/templates/licencetabsmacros.pt
    CONFLICT (content): Merge conflict in src/Products/urban/browser/licence/ticketview.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/licence/uniquelicenceview.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/licence/urbancertificatebaseedit.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/licence/urbancertificateoneview.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/licence/urbancertificatetwoview.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/licenceconfigview.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/mapview.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/parcelrecordsview.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/parcelsinfo.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/searchparcelsview.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/table/column.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/table/urbantable.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/templates/contactmacros.pt
    CONFLICT (content): Merge conflict in src/Products/urban/browser/templates/globalmacros.pt
    CONFLICT (content): Merge conflict in src/Products/urban/browser/templates/searchparcels.pt
    CONFLICT (content): Merge conflict in src/Products/urban/browser/templates/urbaneventinquiryview.pt
    CONFLICT (content): Merge conflict in src/Products/urban/browser/urban_configfolderview.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/urban_vocabularies.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/urbanconfigview.py
    CONFLICT (modify/delete): src/Products/urban/browser/urbandoc2pm.py deleted in urban2.7.x_merge20241209 and modified in HEAD.  Version HEAD of src/Products/urban/browser/urbandoc2pm.py left in tree.
    CONFLICT (content): Merge conflict in src/Products/urban/browser/urbaneventedit.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/urbaneventviews.py
    CONFLICT (content): Merge conflict in src/Products/urban/browser/views.py
    CONFLICT (content): Merge conflict in src/Products/urban/config.py
    CONFLICT (content): Merge conflict in src/Products/urban/configure.zcml
    CONFLICT (content): Merge conflict in src/Products/urban/content/CODT_Inquiry.py
    CONFLICT (content): Merge conflict in src/Products/urban/content/CODT_UniqueLicenceInquiry.py
    CONFLICT (content): Merge conflict in src/Products/urban/content/FollowUpEventType.py
    CONFLICT (content): Merge conflict in src/Products/urban/content/Inquiry.py
    CONFLICT (content): Merge conflict in src/Products/urban/content/UrbanEventInquiry.py
    CONFLICT (content): Merge conflict in src/Products/urban/content/UrbanEventInspectionReport.py
    CONFLICT (content): Merge conflict in src/Products/urban/content/licence/BaseBuildLicence.py
    CONFLICT (content): Merge conflict in src/Products/urban/content/licence/BuildLicence.py
    CONFLICT (content): Merge conflict in src/Products/urban/content/licence/CODT_Article127.py
    CONFLICT (content): Merge conflict in src/Products/urban/content/licence/CODT_BaseBuildLicence.py
    CONFLICT (content): Merge conflict in src/Products/urban/content/licence/CODT_BuildLicence.py
    CONFLICT (content): Merge conflict in src/Products/urban/content/licence/CODT_CommercialLicence.py
    CONFLICT (content): Merge conflict in src/Products/urban/content/licence/CODT_IntegratedLicence.py
    CONFLICT (content): Merge conflict in src/Products/urban/content/licence/CODT_ParcelOutLicence.py
    CONFLICT (content): Merge conflict in src/Products/urban/content/licence/CODT_UniqueLicence.py
    CONFLICT (content): Merge conflict in src/Products/urban/content/licence/CODT_UrbanCertificateTwo.py
    CONFLICT (content): Merge conflict in src/Products/urban/content/licence/Declaration.py
    CONFLICT (content): Merge conflict in src/Products/urban/content/licence/Division.py
    CONFLICT (content): Merge conflict in src/Products/urban/content/licence/EnvClassBordering.py
    CONFLICT (content): Merge conflict in src/Products/urban/content/licence/EnvClassOne.py
    CONFLICT (content): Merge conflict in src/Products/urban/content/licence/EnvClassThree.py
    CONFLICT (content): Merge conflict in src/Products/urban/content/licence/EnvClassTwo.py
    CONFLICT (content): Merge conflict in src/Products/urban/content/licence/EnvironmentBase.py
    CONFLICT (content): Merge conflict in src/Products/urban/content/licence/EnvironmentLicence.py
    CONFLICT (content): Merge conflict in src/Products/urban/content/licence/ExplosivesPossession.py
    CONFLICT (content): Merge conflict in src/Products/urban/content/licence/GenericLicence.py
    CONFLICT (content): Merge conflict in src/Products/urban/content/licence/Inspection.py
    CONFLICT (content): Merge conflict in src/Products/urban/content/licence/MiscDemand.py
    CONFLICT (content): Merge conflict in src/Products/urban/content/licence/ParcelOutLicence.py
    CONFLICT (content): Merge conflict in src/Products/urban/content/licence/PatrimonyCertificate.py
    CONFLICT (content): Merge conflict in src/Products/urban/content/licence/RoadDecree.py
    CONFLICT (content): Merge conflict in src/Products/urban/content/licence/Ticket.py
    CONFLICT (content): Merge conflict in src/Products/urban/content/licence/UniqueLicence.py
    CONFLICT (content): Merge conflict in src/Products/urban/content/licence/UrbanCertificateBase.py
    CONFLICT (content): Merge conflict in src/Products/urban/content/licence/UrbanCertificateTwo.py
    CONFLICT (content): Merge conflict in src/Products/urban/content/licence/base.py
    CONFLICT (add/add): Merge conflict in src/Products/urban/contentrules/configure.zcml
    CONFLICT (add/add): Merge conflict in src/Products/urban/contentrules/event_type.py
    CONFLICT (add/add): Merge conflict in src/Products/urban/contentrules/mail_with_attachment.py
    CONFLICT (content): Merge conflict in src/Products/urban/dashboard/autocomplete.py
    CONFLICT (content): Merge conflict in src/Products/urban/dashboard/columns.py
    CONFLICT (content): Merge conflict in src/Products/urban/dashboard/faceted_catalog.py
    CONFLICT (content): Merge conflict in src/Products/urban/dashboard/vocabularies.py
    CONFLICT (content): Merge conflict in src/Products/urban/dashboard/widgets/select_to_list.py
    CONFLICT (content): Merge conflict in src/Products/urban/docgen/UrbanTemplate.py
    CONFLICT (content): Merge conflict in src/Products/urban/docgen/configure.zcml
    CONFLICT (content): Merge conflict in src/Products/urban/docgen/generationview.py
    CONFLICT (content): Merge conflict in src/Products/urban/docgen/helper_view.py
    CONFLICT (content): Merge conflict in src/Products/urban/events/configuration_events.py
    CONFLICT (content): Merge conflict in src/Products/urban/events/configure.zcml
    CONFLICT (content): Merge conflict in src/Products/urban/events/dashboard_collection.py
    CONFLICT (content): Merge conflict in src/Products/urban/events/followupEvents.py
    CONFLICT (content): Merge conflict in src/Products/urban/events/inquiryEvents.py
    CONFLICT (content): Merge conflict in src/Products/urban/events/licenceEvents.py
    CONFLICT (content): Merge conflict in src/Products/urban/events/tests/test_envclassEvents.py
    CONFLICT (content): Merge conflict in src/Products/urban/events/ticketEvents.py
    CONFLICT (content): Merge conflict in src/Products/urban/events/urbanEventEvents.py
    CONFLICT (content): Merge conflict in src/Products/urban/events/urbanEventTypesEvents.py
    CONFLICT (content): Merge conflict in src/Products/urban/exportimport.py
    CONFLICT (content): Merge conflict in src/Products/urban/factory.py
    CONFLICT (content): Merge conflict in src/Products/urban/index.zcml
    CONFLICT (content): Merge conflict in src/Products/urban/indexes.py
    CONFLICT (content): Merge conflict in src/Products/urban/interfaces.py
    CONFLICT (content): Merge conflict in src/Products/urban/locales/fr/LC_MESSAGES/plone.po
    CONFLICT (content): Merge conflict in src/Products/urban/locales/fr/LC_MESSAGES/urban.po
    CONFLICT (content): Merge conflict in src/Products/urban/locales/plone.pot
    CONFLICT (content): Merge conflict in src/Products/urban/locales/urban-manual.pot
    CONFLICT (content): Merge conflict in src/Products/urban/locales/urban.pot
    CONFLICT (content): Merge conflict in src/Products/urban/migration/migrate_to_250.py
    CONFLICT (modify/delete): src/Products/urban/migration/migrate_to_DX.py deleted in HEAD and modified in urban2.7.x_merge20241209.  Version urban2.7.x_merge20241209 of src/Products/urban/migration/migrate_to_DX.py left in tree.
    CONFLICT (content): Merge conflict in src/Products/urban/migration/to_DX/migration_utils.py
    CONFLICT (content): Merge conflict in src/Products/urban/migration/update_240.py
    CONFLICT (add/add): Merge conflict in src/Products/urban/migration/update_260.py
    CONFLICT (add/add): Merge conflict in src/Products/urban/migration/update_codt_2024.py
    CONFLICT (content): Merge conflict in src/Products/urban/migration/upgrades.zcml
    CONFLICT (add/add): Merge conflict in src/Products/urban/profiles/default/contentrules.xml
    CONFLICT (content): Merge conflict in src/Products/urban/profiles/default/metadata.xml
    CONFLICT (content): Merge conflict in src/Products/urban/profiles/extra/config_default_values.py
    CONFLICT (content): Merge conflict in src/Products/urban/profiles/extra/data.py
    CONFLICT (content): Merge conflict in src/Products/urban/profiles/extra/default_objects.py
    CONFLICT (modify/delete): src/Products/urban/profiles/extra/refnis.py deleted in HEAD and modified in urban2.7.x_merge20241209.  Version urban2.7.x_merge20241209 of src/Products/urban/profiles/extra/refnis.py left in tree.
    CONFLICT (content): Merge conflict in src/Products/urban/profiles/extra/schedule_config.py
    warning: Cannot merge binary files: src/Products/urban/profiles/extra/templates/codt_ln_annexe16.odt (HEAD vs. urban2.7.x_merge20241209)
    CONFLICT (content): Merge conflict in src/Products/urban/profiles/extra/templates/codt_ln_annexe16.odt
    CONFLICT (content): Merge conflict in src/Products/urban/profiles/preinstall/metadata.xml
    CONFLICT (content): Merge conflict in src/Products/urban/profiles/preinstall/workflows.xml
    CONFLICT (content): Merge conflict in src/Products/urban/profiles/preinstall/workflows/ticket_workflow/definition.xml
    CONFLICT (content): Merge conflict in src/Products/urban/profiles/preinstall/workflows/urbanevent_workflow/definition.xml
    CONFLICT (content): Merge conflict in src/Products/urban/profiles/testsWithConfig/config_default_values.py
    CONFLICT (content): Merge conflict in src/Products/urban/profiles/testsWithConfig/data.py
    CONFLICT (content): Merge conflict in src/Products/urban/profiles/testsWithConfig/default_objects.py
    CONFLICT (modify/delete): src/Products/urban/profiles/testsWithConfig/refnis.py deleted in HEAD and modified in urban2.7.x_merge20241209.  Version urban2.7.x_merge20241209 of src/Products/urban/profiles/testsWithConfig/refnis.py left in tree.
    CONFLICT (content): Merge conflict in src/Products/urban/profiles/testsWithLicences/licences_data.py
    CONFLICT (content): Merge conflict in src/Products/urban/profiles/urban_types/types/CODT_NotaryLetter.xml
    CONFLICT (content): Merge conflict in src/Products/urban/profiles/urban_types/types/CODT_UrbanCertificateOne.xml
    CONFLICT (file location): src/Products/urban/profiles/preinstall/types/ConfigTest.xml added in HEAD inside a directory that was renamed in urban2.7.x_merge20241209, suggesting it should perhaps be moved to src/Products/urban/profiles/urban_types/types/ConfigTest.xml.
    CONFLICT (file location): src/Products/urban/profiles/preinstall/types/CorporationTenant.xml added in HEAD inside a directory that was renamed in urban2.7.x_merge20241209, suggesting it should perhaps be moved to src/Products/urban/profiles/urban_types/types/CorporationTenant.xml.
    CONFLICT (file location): src/Products/urban/profiles/preinstall/types/Couple.xml added in HEAD inside a directory that was renamed in urban2.7.x_merge20241209, suggesting it should perhaps be moved to src/Products/urban/profiles/urban_types/types/Couple.xml.
    CONFLICT (file location): src/Products/urban/profiles/preinstall/types/File.xml added in HEAD inside a directory that was renamed in urban2.7.x_merge20241209, suggesting it should perhaps be moved to src/Products/urban/profiles/urban_types/types/File.xml.
    CONFLICT (content): Merge conflict in src/Products/urban/profiles/urban_types/types/MiscDemand.xml
    CONFLICT (file location): src/Products/urban/profiles/preinstall/types/ParcellingTerm.xml added in HEAD inside a directory that was renamed in urban2.7.x_merge20241209, suggesting it should perhaps be moved to src/Products/urban/profiles/urban_types/types/ParcellingTerm.xml.
    CONFLICT (file location): src/Products/urban/profiles/preinstall/types/ProprietaryCouple.xml added in HEAD inside a directory that was renamed in urban2.7.x_merge20241209, suggesting it should perhaps be moved to src/Products/urban/profiles/urban_types/types/ProprietaryCouple.xml.
    CONFLICT (content): Merge conflict in src/Products/urban/schedule/conditions/creation.py
    CONFLICT (content): Merge conflict in src/Products/urban/schedule/conditions/generic.py
    CONFLICT (content): Merge conflict in src/Products/urban/schedule/faceted_view.py
    CONFLICT (content): Merge conflict in src/Products/urban/schedule/interfaces.py
    CONFLICT (content): Merge conflict in src/Products/urban/schedule/task_completion.py
    CONFLICT (add/add): Merge conflict in src/Products/urban/schedule/tests/test_amended_plans.py
    CONFLICT (content): Merge conflict in src/Products/urban/scripts/odtsearch.py
    CONFLICT (add/add): Merge conflict in src/Products/urban/send_mail_action/forms.py
    CONFLICT (content): Merge conflict in src/Products/urban/services/__init__.py
    CONFLICT (content): Merge conflict in src/Products/urban/services/base.py
    CONFLICT (content): Merge conflict in src/Products/urban/services/cadastral.py
    CONFLICT (content): Merge conflict in src/Products/urban/setuphandlers.py
    CONFLICT (rename/delete): src/Products/urban/skins/urban_images/Parcel.png renamed to src/Products/urban/skins/urban_images/EnvClassBordering.png in HEAD, but deleted in urban2.7.x_merge20241209.
    CONFLICT (modify/delete): src/Products/urban/skins/urban_images/EnvClassBordering.png deleted in urban2.7.x_merge20241209 and modified in HEAD.  Version HEAD of src/Products/urban/skins/urban_images/EnvClassBordering.png left in tree.
    CONFLICT (rename/delete): src/Products/urban/skins/urban_images/EventConfig.png renamed to src/Products/urban/skins/urban_images/FollowUpEventType.png in HEAD, but deleted in urban2.7.x_merge20241209.
    CONFLICT (rename/delete): src/Products/urban/skins/urban_images/copytoclaymants.png renamed to src/Products/urban/skins/urban_images/UrbanEventWithEnvironmentValidation.png in HEAD, but deleted in urban2.7.x_merge20241209.
    CONFLICT (modify/delete): src/Products/urban/skins/urban_styles/urban.css.dtml deleted in urban2.7.x_merge20241209 and modified in HEAD.  Version HEAD of src/Products/urban/skins/urban_styles/urban.css.dtml left in tree.
    CONFLICT (content): Merge conflict in src/Products/urban/testing.py
    CONFLICT (content): Merge conflict in src/Products/urban/tests/test_Base.py
    CONFLICT (content): Merge conflict in src/Products/urban/tests/test_BuildLicence.py
    CONFLICT (content): Merge conflict in src/Products/urban/tests/test_Contact.py
    CONFLICT (content): Merge conflict in src/Products/urban/tests/test_DefaultValues.py
    CONFLICT (content): Merge conflict in src/Products/urban/tests/test_EnvClassOne.py
    CONFLICT (content): Merge conflict in src/Products/urban/tests/test_EnvClassTwo.py
    CONFLICT (content): Merge conflict in src/Products/urban/tests/test_GenericLicence.py
    CONFLICT (content): Merge conflict in src/Products/urban/tests/test_Inquiries.py
    CONFLICT (content): Merge conflict in src/Products/urban/tests/test_StatsLicences.py
    CONFLICT (content): Merge conflict in src/Products/urban/tests/test_UrbanEvent.py
    CONFLICT (content): Merge conflict in src/Products/urban/tests/test_UrbanTemplate.py
    CONFLICT (content): Merge conflict in src/Products/urban/tests/test_UrbanVocabularyTerm.py
    CONFLICT (content): Merge conflict in src/Products/urban/tests/test_contactEmailExport.py
    CONFLICT (content): Merge conflict in src/Products/urban/tests/test_generatedDocuments.py
    CONFLICT (content): Merge conflict in src/Products/urban/tests/test_install.py
    CONFLICT (content): Merge conflict in src/Products/urban/tests/test_keyEvent.py
    CONFLICT (content): Merge conflict in src/Products/urban/tests/test_odtsearch.py
    CONFLICT (modify/delete): src/Products/urban/tests/test_streets.py deleted in HEAD and modified in urban2.7.x_merge20241209.  Version urban2.7.x_merge20241209 of src/Products/urban/tests/test_streets.py left in tree.
    CONFLICT (content): Merge conflict in src/Products/urban/tests/test_urbanconfig.py
    CONFLICT (content): Merge conflict in src/Products/urban/utils.py
    CONFLICT (content): Merge conflict in src/Products/urban/validators/validator.py
    CONFLICT (content): Merge conflict in src/Products/urban/viewlets/urbain_220.py
    CONFLICT (content): Merge conflict in src/Products/urban/vocabularies.py
    CONFLICT (content): Merge conflict in src/Products/urban/workflows/adapter.py
    CONFLICT (content): Merge conflict in src/Products/urban/workflows/codt_licence_workflow.py
    CONFLICT (content): Merge conflict in src/Products/urban/workflows/configure.zcml
    CONFLICT (modify/delete): src/Products/urban/workflows/division_workflow.py deleted in HEAD and modified in urban2.7.x_merge20241209.  Version urban2.7.x_merge20241209 of src/Products/urban/workflows/division_workflow.py left in tree.
    CONFLICT (content): Merge conflict in src/Products/urban/workflows/opinionsrequest_workflow.py
    CONFLICT (content): Merge conflict in src/Products/urban/workflows/suspension.py
    CONFLICT (content): Merge conflict in src/Products/urban/workflows/urbanevent_workflow.py


### Nombre de lignes en conflit de merge par fichier

```shell
git checkout liege-urban2.5.x_merge20241209
git merge --no-commit --no-ff urban2.7.x_merge20241209
grep -r -Hn '<<<<<<<' . | awk -F: '{print $1}' | sort | uniq | while read file; do
 awk '/>>>>>>>/ && prev{print NR-prev-2} /<<<<<<</{prev=NR}' "$file" | awk -v f="$file" '{s+=$1} END {printf "%s\t%s\n", s, f}';
done
```

    2   ./.gitignore
    9   ./MANIFEST.in
    60  ./bootstrap.py
    1026    ./docs/CHANGES.rst
    32  ./setup.py
    31  ./src/Products/urban/Applicant.py
    5   ./src/Products/urban/Claimant.py
    61  ./src/Products/urban/Contact.py
    94  ./src/Products/urban/Corporation.py
    74  ./src/Products/urban/Couple.py
    3   ./src/Products/urban/EnvironmentRubricTerm.py
    24  ./src/Products/urban/Extensions/fix_double_streets.py
    1   ./src/Products/urban/Extensions/fixblobs.py
    4   ./src/Products/urban/Extensions/imports.py
    31  ./src/Products/urban/Extensions/missing_events_config.py
    2   ./src/Products/urban/Extensions/reindex_object.py
    11  ./src/Products/urban/FolderManager.py
    230 ./src/Products/urban/LicenceConfig.py
    2   ./src/Products/urban/Locality.py
    3   ./src/Products/urban/OpinionRequestEventType.py
    2   ./src/Products/urban/OrganisationTerm.py
    66  ./src/Products/urban/ParcellingTerm.py
    9   ./src/Products/urban/PcaTerm.py
    1   ./src/Products/urban/PortionOut.py
    13  ./src/Products/urban/SpecificFeatureTerm.py
    5   ./src/Products/urban/Street.py
    282 ./src/Products/urban/UrbanEvent.py
    6   ./src/Products/urban/UrbanEventOpinionRequest.py
    24  ./src/Products/urban/UrbanEventType.py
    251 ./src/Products/urban/UrbanTool.py
    20  ./src/Products/urban/UrbanVocabularyTerm.py
    34  ./src/Products/urban/__init__.py
    157 ./src/Products/urban/browser/actionspanel/actionspanel.py
    2   ./src/Products/urban/browser/actionspanel/confirm.py
    80  ./src/Products/urban/browser/contactview.py
    8   ./src/Products/urban/browser/cron/inquiry.py
    75  ./src/Products/urban/browser/cron/tasks.py
    2   ./src/Products/urban/browser/default_text.py
    8   ./src/Products/urban/browser/licence/article127view.py
    8   ./src/Products/urban/browser/licence/buildlicenceview.py
    8   ./src/Products/urban/browser/licence/codt_buildlicenceview.py
    8   ./src/Products/urban/browser/licence/codt_integratedlicenceview.py
    8   ./src/Products/urban/browser/licence/codt_parceloutlicenceview.py
    8   ./src/Products/urban/browser/licence/codt_uniquelicenceview.py
    8   ./src/Products/urban/browser/licence/codt_urbancertificatetwoview.py
    8   ./src/Products/urban/browser/licence/declarationview.py
    10  ./src/Products/urban/browser/licence/divisionview.py
    8   ./src/Products/urban/browser/licence/envclassborderingview.py
    8   ./src/Products/urban/browser/licence/envclassoneview.py
    8   ./src/Products/urban/browser/licence/envclassthreeview.py
    8   ./src/Products/urban/browser/licence/envclasstwoview.py
    8   ./src/Products/urban/browser/licence/explosivespossessionview.py
    5   ./src/Products/urban/browser/licence/inspectionview.py
    197 ./src/Products/urban/browser/licence/licenceview.py
    8   ./src/Products/urban/browser/licence/miscdemandview.py
    8   ./src/Products/urban/browser/licence/notaryletterview.py
    8   ./src/Products/urban/browser/licence/parceloutlicenceview.py
    30  ./src/Products/urban/browser/licence/patrimonycertificateview.py
    8   ./src/Products/urban/browser/licence/preliminarynoticeview.py
    8   ./src/Products/urban/browser/licence/projectmeetingview.py
    8   ./src/Products/urban/browser/licence/roaddecreeview.py
    4   ./src/Products/urban/browser/licence/templates/licencemacros.pt
    18  ./src/Products/urban/browser/licence/templates/licencetabsmacros.pt
    5   ./src/Products/urban/browser/licence/ticketview.py
    8   ./src/Products/urban/browser/licence/uniquelicenceview.py
    2   ./src/Products/urban/browser/licence/urbancertificatebaseedit.py
    8   ./src/Products/urban/browser/licence/urbancertificateoneview.py
    8   ./src/Products/urban/browser/licence/urbancertificatetwoview.py
    15  ./src/Products/urban/browser/licenceconfigview.py
    2   ./src/Products/urban/browser/mapview.py
    15  ./src/Products/urban/browser/parcelrecordsview.py
    1   ./src/Products/urban/browser/parcelsinfo.py
    65  ./src/Products/urban/browser/searchparcelsview.py
    59  ./src/Products/urban/browser/table/column.py
    15  ./src/Products/urban/browser/table/urbantable.py
    2   ./src/Products/urban/browser/templates/contactmacros.pt
    26  ./src/Products/urban/browser/templates/globalmacros.pt
    17  ./src/Products/urban/browser/templates/searchparcels.pt
    6   ./src/Products/urban/browser/templates/urbaneventinquiryview.pt
    92  ./src/Products/urban/browser/urban_configfolderview.py
    2   ./src/Products/urban/browser/urban_vocabularies.py
    5   ./src/Products/urban/browser/urbanconfigview.py
    70  ./src/Products/urban/browser/urbaneventedit.py
    145 ./src/Products/urban/browser/urbaneventviews.py
    2   ./src/Products/urban/browser/views.py
    37  ./src/Products/urban/config.py
    22  ./src/Products/urban/configure.zcml
    66  ./src/Products/urban/content/CODT_Inquiry.py
    16  ./src/Products/urban/content/CODT_UniqueLicenceInquiry.py
    2   ./src/Products/urban/content/FollowUpEventType.py
    207 ./src/Products/urban/content/Inquiry.py
    31  ./src/Products/urban/content/UrbanEventInquiry.py
    44  ./src/Products/urban/content/UrbanEventInspectionReport.py
    774 ./src/Products/urban/content/licence/BaseBuildLicence.py
    4   ./src/Products/urban/content/licence/BuildLicence.py
    26  ./src/Products/urban/content/licence/CODT_Article127.py
    127 ./src/Products/urban/content/licence/CODT_BaseBuildLicence.py
    16  ./src/Products/urban/content/licence/CODT_BuildLicence.py
    47  ./src/Products/urban/content/licence/CODT_CommercialLicence.py
    21  ./src/Products/urban/content/licence/CODT_IntegratedLicence.py
    45  ./src/Products/urban/content/licence/CODT_ParcelOutLicence.py
    41  ./src/Products/urban/content/licence/CODT_UniqueLicence.py
    30  ./src/Products/urban/content/licence/CODT_UrbanCertificateTwo.py
    5   ./src/Products/urban/content/licence/Declaration.py
    302 ./src/Products/urban/content/licence/Division.py
    2   ./src/Products/urban/content/licence/EnvClassBordering.py
    2   ./src/Products/urban/content/licence/EnvClassOne.py
    5   ./src/Products/urban/content/licence/EnvClassThree.py
    2   ./src/Products/urban/content/licence/EnvClassTwo.py
    79  ./src/Products/urban/content/licence/EnvironmentBase.py
    123 ./src/Products/urban/content/licence/EnvironmentLicence.py
    5   ./src/Products/urban/content/licence/ExplosivesPossession.py
    830 ./src/Products/urban/content/licence/GenericLicence.py
    137 ./src/Products/urban/content/licence/Inspection.py
    16  ./src/Products/urban/content/licence/MiscDemand.py
    23  ./src/Products/urban/content/licence/ParcelOutLicence.py
    285 ./src/Products/urban/content/licence/PatrimonyCertificate.py
    5   ./src/Products/urban/content/licence/RoadDecree.py
    166 ./src/Products/urban/content/licence/Ticket.py
    17  ./src/Products/urban/content/licence/UniqueLicence.py
    128 ./src/Products/urban/content/licence/UrbanCertificateBase.py
    9   ./src/Products/urban/content/licence/UrbanCertificateTwo.py
    237 ./src/Products/urban/content/licence/base.py
    3   ./src/Products/urban/contentrules/configure.zcml
    4   ./src/Products/urban/contentrules/event_type.py
    5   ./src/Products/urban/contentrules/mail_with_attachment.py
    44  ./src/Products/urban/dashboard/autocomplete.py
    19  ./src/Products/urban/dashboard/columns.py
    13  ./src/Products/urban/dashboard/faceted_catalog.py
    37  ./src/Products/urban/dashboard/vocabularies.py
    8   ./src/Products/urban/dashboard/widgets/select_to_list.py
    7   ./src/Products/urban/docgen/UrbanTemplate.py
    7   ./src/Products/urban/docgen/configure.zcml
    1   ./src/Products/urban/docgen/generationview.py
    166 ./src/Products/urban/docgen/helper_view.py
    61  ./src/Products/urban/events/configuration_events.py
    40  ./src/Products/urban/events/configure.zcml
    4   ./src/Products/urban/events/dashboard_collection.py
    2   ./src/Products/urban/events/followupEvents.py
    12  ./src/Products/urban/events/inquiryEvents.py
    89  ./src/Products/urban/events/licenceEvents.py
    20  ./src/Products/urban/events/tests/test_envclassEvents.py
    6   ./src/Products/urban/events/ticketEvents.py
    21  ./src/Products/urban/events/urbanEventEvents.py
    33  ./src/Products/urban/events/urbanEventTypesEvents.py
    192 ./src/Products/urban/exportimport.py
    7   ./src/Products/urban/factory.py
    2   ./src/Products/urban/index.zcml
    55  ./src/Products/urban/indexes.py
    26  ./src/Products/urban/interfaces.py
    42  ./src/Products/urban/locales/fr/LC_MESSAGES/plone.po
    2160    ./src/Products/urban/locales/fr/LC_MESSAGES/urban.po
    38  ./src/Products/urban/locales/plone.pot
    175 ./src/Products/urban/locales/urban-manual.pot
    2331    ./src/Products/urban/locales/urban.pot
    358 ./src/Products/urban/migration/migrate_to_250.py
    139 ./src/Products/urban/migration/to_DX/migration_utils.py
    53  ./src/Products/urban/migration/update_240.py
    154 ./src/Products/urban/migration/update_260.py
    201 ./src/Products/urban/migration/update_codt_2024.py
    555 ./src/Products/urban/migration/upgrades.zcml
    2   ./src/Products/urban/profiles/default/contentrules.xml
    2   ./src/Products/urban/profiles/default/metadata.xml
    2024    ./src/Products/urban/profiles/extra/config_default_values.py
    26271   ./src/Products/urban/profiles/extra/data.py
    36  ./src/Products/urban/profiles/extra/default_objects.py
    1773    ./src/Products/urban/profiles/extra/schedule_config.py
    3   ./src/Products/urban/profiles/preinstall/metadata.xml
    3   ./src/Products/urban/profiles/preinstall/workflows.xml
    21  ./src/Products/urban/profiles/preinstall/workflows/ticket_workflow/definition.xml
    8   ./src/Products/urban/profiles/preinstall/workflows/urbanevent_workflow/definition.xml
    18  ./src/Products/urban/profiles/testsWithConfig/config_default_values.py
    699 ./src/Products/urban/profiles/testsWithConfig/data.py
    24  ./src/Products/urban/profiles/testsWithConfig/default_objects.py
    105 ./src/Products/urban/profiles/testsWithLicences/licences_data.py
    2   ./src/Products/urban/profiles/urban_types/types/CODT_NotaryLetter.xml
    3   ./src/Products/urban/profiles/urban_types/types/CODT_UrbanCertificateOne.xml
    1   ./src/Products/urban/profiles/urban_types/types/MiscDemand.xml
    119 ./src/Products/urban/schedule/conditions/creation.py
    98  ./src/Products/urban/schedule/conditions/generic.py
    2   ./src/Products/urban/schedule/faceted_view.py
    4   ./src/Products/urban/schedule/interfaces.py
    10  ./src/Products/urban/schedule/task_completion.py
    155 ./src/Products/urban/schedule/tests/test_amended_plans.py
    589 ./src/Products/urban/scripts/odtsearch.py
    5   ./src/Products/urban/send_mail_action/forms.py
    3   ./src/Products/urban/services/__init__.py
    17  ./src/Products/urban/services/base.py
    41  ./src/Products/urban/services/cadastral.py
    289 ./src/Products/urban/setuphandlers.py
    48  ./src/Products/urban/testing.py
    1   ./src/Products/urban/tests/test_Base.py
    103 ./src/Products/urban/tests/test_BuildLicence.py
    12  ./src/Products/urban/tests/test_Contact.py
    95  ./src/Products/urban/tests/test_DefaultValues.py
    10  ./src/Products/urban/tests/test_EnvClassOne.py
    10  ./src/Products/urban/tests/test_EnvClassTwo.py
    83  ./src/Products/urban/tests/test_GenericLicence.py
    121 ./src/Products/urban/tests/test_Inquiries.py
    3   ./src/Products/urban/tests/test_StatsLicences.py
    13  ./src/Products/urban/tests/test_UrbanEvent.py
    44  ./src/Products/urban/tests/test_UrbanTemplate.py
    120 ./src/Products/urban/tests/test_UrbanVocabularyTerm.py
    6   ./src/Products/urban/tests/test_contactEmailExport.py
    317 ./src/Products/urban/tests/test_generatedDocuments.py
    30  ./src/Products/urban/tests/test_install.py
    14  ./src/Products/urban/tests/test_keyEvent.py
    65  ./src/Products/urban/tests/test_odtsearch.py
    14  ./src/Products/urban/tests/test_urbanconfig.py
    9   ./src/Products/urban/utils.py
    75  ./src/Products/urban/validators/validator.py
    106 ./src/Products/urban/viewlets/urbain_220.py
    381 ./src/Products/urban/vocabularies.py
    3   ./src/Products/urban/workflows/adapter.py
    15  ./src/Products/urban/workflows/codt_licence_workflow.py
    14  ./src/Products/urban/workflows/configure.zcml
    35  ./src/Products/urban/workflows/opinionsrequest_workflow.py
    1   ./src/Products/urban/workflows/suspension.py
    14  ./src/Products/urban/workflows/urbanevent_workflow.py
