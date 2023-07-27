:orphan:

Changes
=======

2.5.12 (unreleased)
-------------------

- Products.urban 2.5.10 (2023-07-27)

    Bug fixes:

    - Avoid an error if a vocabulary does not exist, this can happen when multiple upgrade steps interract with vocabularies
      [mpeeters] (URB-2835)


2.5.11 (2023-07-26)
-------------------

- Products.urban 2.5.9 (2023-07-26)

    Bug fixes:

    - Avoid errors on inexpected values on licences and log them
      [mpeeters] (SUP-31554)
    - Fix translation for road adaptation vocabulary values
      [mpeeters] (URB-2575)


2.5.10 (2023-07-24)
-------------------

- Products.urban 2.5.8 (2023-07-24)

    Bug fixes:

    - Fix an issue with some urban instances with lists that contains empty strings or `None`
      [mpeeters] (URB-2575)
    - Add an external method to set profile version for Products.urban
      [mpeeters] (URB-2835)

- Fix an issue with standard config [INFRA-5187]
  [mpeeters]


2.5.9 (2023-07-18)
------------------

- Products.urban 2.5.7 (2023-07-18)

    - Add missing translations [URB-2823]
      [mpeeters, anagant]

    - Fix different type of vocabulary [URB-2575]
      [jchandelle]

    - Change NN field position [SUP-27165]
      [jchandelle]

    - Add Couple to Preliminary Notice [URB-2824]
      [ndemonte]

    - Fix Select2 view display [URB-2575]
      [jchandelle]

    - Provide getLastAcknowledgment method for all urbancertificates [SUP-30852]
      [fngaha]

    - Fix encoding error [URB-2805]
      [fngaha]

    - Add a explicit dependency to collective.exportimport
      [mpeeters]

    - Cadastral historic memory error [SUP-30310]
      [sdelcourt]


2.5.8 (2023-07-11)
------------------

- Include collective.big.bang [URB-2803]
  [mpeeters]

- Cleanup in buildout configuration files
  [mpeeters]


2.5.7 (2023-07-10)
------------------

- Products.urban 2.5.6 (2023-07-10)

    - Fix zcml for migrations
      [mpeeters] Nothing changed yet.


2.5.6 (2023-07-04)
------------------

- Products.urban 2.5.5 (2023-07-04)

    - Explicitly include `urban.restapi` zcml dependency [URB-2790]
      [mpeeters]

- Pin appnope to `0.1.3`
  [mpeeters]

- Remove `plone.restapi` from buildout eggs
  [mpeeters]

- Add an explicit zcml dependency to `Products.urban` [URB-2790]
  [mpeeters]


2.5.5 (2023-07-03)
------------------

- Products.urban 2.5.4 (2023-07-03)

    - Change collection column name [URB-1537]
      [jchandelle]

    - Fix class name in external method fix_labruyere_envclassthrees [SUP-29587]
      [ndemonte]

- imio.schedule 1.9.0 (2023-07-03)

    - URB-1537 - Change collection column name
      [jchandelle]


2.5.4 (2023-06-29)
------------------

- urban.restapi 1.0.0b1 (2023-06-29)

    - Fix POST endpoint for event creation [URB-2730]
      [jchandelle]

    - Add utils for getting config object from a path
      [jchandelle]

    - Fix address query with parenthesis [URB-2696]
      [jchandelle]


2.5.3 (2023-06-26)
------------------

- Products.urban 2.5.3 (2023-06-23)

    - Add parcel and applicants contents to export content [URB-2733]
      [jchandelle]


2.5.2 (2023-06-22)
------------------

- Remove duplicated version for Products.urban
  [mpeeters]


2.5.1 (2023-06-15)
------------------

- Products.urban 2.5.2 (2023-06-15)

    - Fix tests and update package metadata
      [sdelcourt, mpeeters]

    - Add CSV import of recipients to an inquiry [URB-2573]
      [ndemonte]

    - Fix bound licence allowed type [SUP-27062]
      [jchandelle]

    - Add vat field to notary [SUP-29450]
      [jchandelle]

    - Change MultiSelectionWidget to MultiSelect2Widget [URB-2575]
      [jchandelle]

    - Add fields to legal aspect of generic licence [SUP-22944]
      [jchandelle]

    - Add national register number to corporation form [SUP-27165]
      [jchandelle]

    - Add an external method to update task delay [SUP-28870]
      [jchandelle]

    - Add external method to fix broken environmental declarations [SUP-29587]
      [ndemonte]

    - Fix export data with c.exportimport [URB-2733]
      [jchandelle]

- plonetheme.imioapps 2.40 (2023-06-15)

    - Add a red color to the denied status of divisions
      [fngaha]

- plonetheme.imioapps 2.39 (2023-03-29)

    - Fixed css to align multi select2 widget to the left.
      [sgeulette]

- URB-2733 add c.exportimport
  [jchandelle]
- Upgraded appy 1.0.15
  [fngaha]
- Use the Appy master while waiting for a new version to fix a mailing problem URB-2692
  [fngaha]
- Used appy 1.0.13 URB-2714
  [fngaha]
- Used collective.archetypes.select2 1.0a1 URB-2713
  [fngaha]
- Used collective.faceted.task 0.5 URB-2712
  [fngaha]
- Used collective.wfadaptations 1.1 URB-2711
  [fngaha]
- Used collective.z3cform.select2 1.4.1 URB-2710
  [fngaha]
- Used imio.dashboard 0.29 URB-2709
  [fngaha]
- Used imio.history 1.24 URB-2708
  [fngaha]
- Used imio.pm.locales 4.2b11 URB-2707
  [fngaha]
- Used imio.schedule 1.8 URB-2706
  [fngaha]
- Used imio.urban.core 0.1 URB-2705
  [fngaha]
- Used plone.app.contenttypes 1.1.9 URB-2704
  [fngaha]
- Used plonetheme.imioapps 2.38 URB-2703
  [fngaha]
- Used urban.restapi 1.0a1 URB-2702
  [fngaha]
- Used urban.vocabulary 1.0a2 URB-2700
  [fngaha]
- Updated Products.urban : Added 'retired' transition to 'deposit' and 'incomplete' states for codt_buildlicence_workflow
  [fngaha]
- Updated imio.urban.core : Improved the parcel rendering
  [fngaha]
- Updated Products.urban : Manage the display of licences linked to several applicants
  [fngaha]
- Updated Products.urban : Add an import step to activate 'announcementArticlesText' optional field
  [fngaha]
- Updated Products.urban : Allow to encode dates going back to 1930
  [fngaha]
