:orphan:

Changes
=======

3.0.0b2 (unreleased)
--------------------

- Nothing changed yet.


3.0.0b1 (2026-03-14)
--------------------

- Products.urban 3.0.0b12 (2026-03-14)

    Bug fixes:

    - Fix minimumLegalConditions link display
      [jchandelle] (SUP-51225)
    - Add upgrade step to fix parcel street_number
      [jchandelle] (SUP-51288)


3.0.0a14 (2026-03-12)
---------------------

- Products.urban 3.0.0b11 (2026-03-12)

    Bug fixes:

    - Add external methods to add missing `Manage properties` permission to reorder uploaded files
      [mpeeters] (SUP-51291)


3.0.0a13 (2026-03-09)
---------------------

- Products.urban 3.0.0b10 (2026-03-09)

    Bug fixes:

    - SUP-51291: Fix typo in zcml
      [mpeeters] (SUP-51291)


3.0.0a12 (2026-03-09)
---------------------

- Products.urban 3.0.0b9 (2026-03-09)

    Bug fixes:

    - Fix an issue with local role adapter when a method was overriding previous roles
      [mpeeters] (SUP-51146)
    - Add missing `Manage properties` permission to reorder uploaded files
      [mpeeters] (SUP-51291)

- liege.urban 2.0.8 (2026-03-09)

    Bug fixes:

    - Add missing `Manage properties` permission to reorder uploaded files
      [mpeeters] (SUP-51291)

    Internal:

    - Add a test for road editors permissions on licence
      [mpeeters] (SUP-51128)


3.0.0a11 (2026-03-06)
---------------------

- Products.urban 3.0.0b8 (2026-03-06)

    Bug fixes:

    - Add `allow_duplicate` parameter for parcel creation to ensure that
      multiple parcels can be created for the same capakey
      [mpeeters] (SUP-51199)

- liege.urban 2.0.7 (2026-03-06)

    Bug fixes:

    - Adapt upgrade step to include more workflows and reduce memory usage
      [mpeeters] (SUP-51128)
    - Use `allow_duplicate` parameter for parcel creation to allow
      multiple addresses with the same parcel
      [mpeeters] (SUP-51199)
    - Fix encoding for env bordering title
      [jchandelle] (SUP-51482)


3.0.0a10 (2026-03-05)
---------------------

- liege.urban 2.0.6 (2026-03-05)

    Bug fixes:

    - Add an upgrade step to reindex security for more objects with some workflows
      [mpeeters] (SUP-51128)


3.0.0a9 (2026-03-04)
--------------------

- liege.urban 2.0.5 (2026-03-04)

    Bug fixes:

    - Add missing french translations
      [mpeeters] (SUP-51304)
    - Add an upgrade step to reindex security for objects with some workflows
      [mpeeters] (SUP-51308)


3.0.0a8 (2026-03-02)
--------------------

- Products.urban 3.0.0b7 (2026-03-02)

    Bug fixes:

    - Add `CorporationTenant` in Inspection `allowed_content_types`
      [jchandelle] (SUP-51237)
    - Add an external method to reindex all licences dates that come from events
      [mpeeters] (SUP-51321)


3.0.0a7 (2026-03-02)
--------------------

- liege.urban 2.0.4 (2026-03-02)

    Bug fixes:

    - Adapt permissions to add `Parcel` content type
      [mpeeters] (SUP-51228)

    Internal:

    - Fix folder manager title for tests
      [mpeeters] (SUP-51197)


3.0.0a6 (2026-02-26)
--------------------

- Products.urban 3.0.0b6 (2026-02-26)

    Bug fixes:

    - Fix merge field dor document
      [jchandelle] (SUP-51121)

- liege.urban 2.0.3 (2026-02-26)

    Bug fixes:

    - Fix missing access to voirie tab by voirie group
      [jchandelle] (SUP-51146)


3.0.0a5 (2026-02-24)
--------------------

- Products.urban 3.0.0b5 (2026-02-24)

    New features:

    - Change couple title format to the one from liege
      [jchandelle] (SUP-51121)

    Bug fixes:

    - Add upgrade step and External method for fixing missing architect
      [jchandelle] (SUP-51119)

- liege.urban 2.0.2 (2026-02-24)

    Bug fixes:

    - Fix a display issue when address does not have a street number
      [mpeeters] (SUP-51118)


3.0.0a4 (2026-02-23)
--------------------

- Products.urban 3.0.0b4 (2026-02-23)

    Bug fixes:

    - Avoid rendering errors if some informations from applicant are missing
      [mpeeters] (SUP-51108)
    - Avoid a `NotFound` error on licence view if there is no condition to evaluate for warnings
      [mpeeters] (SUP-51134)

- liege.urban 2.0.1 (2026-02-23)

    Bug fixes:

    - Ensure that `address_point` value is always an integer as expected by behavior schema
      [mpeeters] (SUP-51112)

    Internal:

    - Cleanup content factory module and remove unused imports
      [mpeeters] (SUP-51112)


3.0.0a3 (2026-02-22)
--------------------

- Products.urban 3.0.0b3 (2026-02-22)

    Bug fixes:

    - Revert `Add missing environement procedure in config list`
      [mpeeters] (SUP-50356)


3.0.0a2 (2026-02-20)
--------------------

- Products.urban 3.0.0b2 (2026-02-20)

    New features:

    - Add view to generate PortionOut plain file list
      Change rebuild catalog upgrade to update catalog
      [jchandelle] (URBBDC-3205)


3.0.0a1 (2026-02-18)
--------------------

- Products.urban 3.0.0b1 (2026-02-18)

    New features:

    - URBBDC-3204: Make field `additionalReference` optional
      [mpeeters] (SUP-47891)
    - Add Upgrade step to set select_all_attachments_by_default to false
      [jchandelle] (SUP-49033)
    - Add option to in get_readers to add opinion editor
      [jchandelle] (SUP-49445)
    - Allow more values for the type of claim and an extra "Numérotation" column
      [mpeeters] (SUP-49898)
    - Change `derogationDetails` widget to RichWidget
      [jchandelle] (SUP-50509)
    - Add view to generate PortionOut plain file list
      [jchandelle] (URBBDC-3205)

    Bug fixes:

    - Fix missing interface import
      [jchandelle] (SUP-49326)
    - Add new urban event from liege in config
      [jchandelle] (SUP-49334)
    - Fix urban vocabulary validity check
      [jchandelle] (SUP-49339)
    - Fix upgrade step for Parcel and Parcelling
      [jchandelle] (SUP-49359)
    - Fix inspection and ticket followup event vocabularies
      [jchandelle] (SUP-49368)
    - Fix MultiSelect2Widget list display
      [jchandelle] (SUP-49483)
    - Add `s` tags to filter html
      [jchandelle] (SUP-49595)
    - Fix field order and set delay field as a default field on inspection report event
      [mpeeters] (SUP-49605)
    - Add `@@reindex-contenttype` view for administrator to reindex specific content types
      [mpeeters] (SUP-49632)
    - Remove locationTechnicalAdvice field from EnvironmentBase in CODT_UniqueLicence to avoid conflict with BaseBuildLicence
      [jchandelle] (SUP-49634)
    - Fix csv claimant import and add an upgrade step for missing registry record
      [jchandelle, mpeeters] (SUP-49898)
    - Fix missing icon
      [jchandelle] (SUP-49910)
    - Fix history view with missing `site_url` required parameter
      [jchandelle] (SUP-50324)
    - Add missing translations for flood zone vocabulary values
      [mpeeters] (SUP-50328)
    - Add missing environement procedure in config list
      [jchandelle] (SUP-50356)
    - Add a missing translation for schedule tasks condition
      [mpeeters] (SUP-50453)
    - Add condition for Roaddecree for inquiry delay compute
      [jchandelle] (SUP-50904)
    - Fix allowed type for field `derogationDetails`
      [mpeeters] (URB-3462)
    - Fix an issue with voirie group in config
      [mpeeters] (URB-3489)
    - Ensure that if we have datetime they are converted to Zope DateTime before comparison
      [mpeeters] (URB-3495)
    - Add new fields for vocabulary term in AT to DX migration
      [jchandelle] (URBBDC-3205)
    - Remove a duplicate class on "go back" link
      [mpeeters] (URBBDC-3217)

    Internal:

    - Add `set_default_optional_field` function to add a field to the activated field list on licence config
      Make `additionalReference` field activated by default on every licence type config for Urban Classic
      [mpeeters] (SUP-47891)
    - Add an upgrade step to fix incorrect tal expressions for yellow highlights
      [mpeeters] (SUP-49440)
    - Fix dashboard configs that are required to run tests
      [mpeeters] (SUP-49445)
    - Black & isort
      [mpeeters] (URB-2652)
    - Fix initialization of tests
      [mpeeters] (URB-3522)
    - Make dependency for numpy optional before a replacement
      [mpeeters] (URBBDC-3257)

- Products.urban 2.8.0b1 (2025-10-27)

    New features:

    - Activate `RoadDecree` in config.py.
      [aduchene] (URB-3151)

- Products.urban 2.8.0a5 (2025-09-23)

    New features:

    - [WBoudabous]
      Add translation for the buildingType field in the housing procedure.
      Fix setuphandler to return the existing config folder instead of None. (URBBDC-3142)

- Products.urban 2.8.0a4 (2025-09-22)

    New features:

    - Use imio.pm.wsclient 2.x version (REST).
      [aduchene]
      Add `get_last_plonemeeting_date`, `get_last_college_date` and `get_last_college_date` to CODT_BaseBuildLicence.
      [aduchene]
      Refactor PloneMeeting WS methods to use imio.pm.wsclient 2.x version.
      [aduchene] (URB-3151)
    - Add building procedure's
      [WBoudabous, aduchene] (URBBDC-3142)

- Products.urban 2.8.0a3 (2025-08-27)

    New features:

    - Added buildingType attribute to the housing procedure.
      [WBoudabous] (URBBDC-3221)
    - Added buildingPart attribute to the housing procedure.
      [WBoudabous] (URBBDC-3222)
    - Updated translations for workflow states in the housing procedure.
      [WBoudabous] (URBBDC-3229)

- Products.urban 2.8.0a2 (2025-08-07)

    New features:

    - Added a taxation field.
      [WBoudabous] (URBBDC-3223)

- Products.urban 2.8.0a1 (2025-08-03)

    New features:

    - Add translation for nonapplicable state in Division
      [jchandelle] (SUP-39760)
    - Added merge fields for observation and Vocabulary events.
      Added merge fields for dimension.
      Deactivated the "Road Decree" licence type.
      [WBoudabous] (URBBDC-3218)
    - Add nature of the building vocabulary.
      [WBoudabous] (URBBDC-3221)
    - Add part of the building vocabulary.
      [WBoudabous] (URBBDC-3222)
    - Remove the fields "usage", "policeTicketReference", and "referenceProsecution" from the Housing schema.
      [WBoudabous] (URBBDC-3224)
    - Reorder fields description, use_bound_licence_infos in the housing shema.
      [WBoudabous] (URBBDC-3226)
    - Updated the "inspection_context" field for the Housing procedure:
      Moved it to the "urban_inspection" schemata.
      Switched to a new dynamic vocabulary: "inspectioncontexts".
      [WBoudabous] (URBBDC-3227)
    - Update housing workflow.
      [WBoudabous] (URBBDC-3229)

    Bug fixes:

    - Add RoadDecree to URBAN_TYPES to be able to use it in the tests.
      [aduchene] (URB-3293)

    Internal:

    - Black
      [mpeeters] (URBBDC-3142)

- Products.urban 2.7.43 (2025-08-12)

    Bug fixes:

    - Fix patrimony certificates interface
      [jchandelle] (SUP-46330)

- Products.urban 2.7.42 (2025-07-08)

    New features:

    - Add option to add complementary delay to task
      Add value for SPW cyberattack
      [jchandelle] (URB-3337)

    Bug fixes:

    - Revert: Add building procedure's
      [WBoudabous, aduchene] (URBBDC-3142)

- Products.urban 2.7.41 (2025-06-18)

    New features:

    - Add translation for nonapplicable state in Division
      [jchandelle] (SUP-39760)
    - Add building procedure's
      [WBoudabous, aduchene] (URBBDC-3142)

- Products.urban 2.7.40 (2025-06-10)

    Bug fixes:

    - Revert "URB-3293 - Add RoadDecree to URBAN_TYPES (#340)"
      [mpeeters] (URB-3293)

- Products.urban 2.7.39 (2025-06-07)

    New features:

    - Add way to easily hide licence type
      [jchandelle] (SUP-33793)
    - Change display of inquiry view
      [jchandelle] (SUP-44199)
    - Add a message in case we can't link pod template
      [jchandelle] (SUP-44861)

    Bug fixes:

    - Fix history parcel view when missing capakey
      [jchandelle] (SUP-36370)
    - Fix filename encoding in mail sending
      [jchandelle] (SUP-43946)
    - Fix recipient import in inquiry event
      [jchandelle] (SUP-44583)
    - Fix 220 viewlet house number encoding
      jchandelle (SUP-44642)
    - Fix link pod template in import config
      [jchandelle] (SUP-44861)

- Products.urban 2.7.38 (2025-05-27)

    New features:

    - Add debug functionality for schedule task
      [mpeeters] (URB-3070)

    Bug fixes:

    - Add RoadDecree to URBAN_TYPES so it can be used in the tests.
      [aduchene] (URB-3293)

    Internal:

    - Move `urban.schedule.condition.deposit_past_20days` into urban.schedule package
      [mpeeters] (URB-3154)

- Products.urban 2.7.37 (2025-04-29)

    Bug fixes:

    - Fix encoding in mail send notification
      [jchandelle] (SUP-43917)

- Products.urban 2.7.36 (2025-04-24)

    Bug fixes:

    - Fix logging syntax error
      [jchandelle] (SUP-44123)
    - Disable getProxy function behind a env var
      [jchandelle] (URB-3230)

- Products.urban 2.7.35 (2025-04-03)

    New features:

    - Add environment fieldset to every licence type
      Add habitation fieldset to `MiscDemand`, `PreliminaryNotice` and `ProjectMeeting`
      [daggelpop] (SUP-33774)
    - Add message explaining how to format CSV for inquiry
      [jchandelle] (URB-2876)
    - Move centrality in first position in the fieldset
      [daggelpop] (URB-3017)
    - Add patrimony fieldset to multiple licence types
      [daggelpop] (URB-3121)
    - Add stringinterp to get foldermanager email
      [jchandelle] (URB-3283)
    - Add button to inquiry to get neighbors address
      [jchandelle] (URB-3286)

    Bug fixes:

    - Fix handling EnvironmentRubricTerm in import config
      [jchandelle] (URB-3296)

- Products.urban 2.7.34 (2025-03-27)

    Bug fixes:

    - Fix licence type condition in content rules
      [jchandelle] (SUP-43534)

- Products.urban 2.7.33 (2025-03-27)

    Bug fixes:

    - Fix event send mail notification title encoding
      [jchandelle] (SUP-43533)

- Products.urban 2.7.32 (2025-03-24)

    Bug fixes:

    - Fix view for fixing task uid and add possiblity to call on licence folder
      [jchandelle] (SUP-43189)

- Products.urban 2.7.31 (2025-03-12)

    New features:

    - Add possibility to get template merged when import
      [jchandelle] (SUP-39711)

    Bug fixes:

    - Ensure 'in_progress'state covers 'complete' and 'deposit' states in statistics calculation.
      [WBoudabous] (SUP-42045)
    - Fix lost value in licence duplication
      [jchandelle] (SUP-42578)
    - Clarify `Copy to claimant`
      [daggelpop] (SUP-42931)
    - Add External method to fix annoncements tasks
      [jchandelle] (URB-2680)

    Internal:

    - Fix ViewPageTemplateFile import
      [jchandelle] (SUP-41619, URB-3237)

- Products.urban 2.7.30 (2025-02-07)

    New features:

    - Add utility view to fix task_config_UID on task
      [jchandelle] (SUP-41619)
    - Add utils view to closed task depending filter
      [jchandelle] (URB-3237)
    - Add reorder to event attachment
      [jchandelle] (URBBDC-1111)

    Bug fixes:

    - Fix external decision values
      [daggelpop]
      Handle default vocabulary values for a non-array field
      [daggelpop] (SUP-40288)
    - Fix urban vocabularies following configuration order
      [WBoudabous] (SUP-41929)
    - Add missing translation in schedule config
      [WBoudabous] (URB-3142)

- Products.urban 2.7.29 (2025-02-04)

    Bug fixes:

    - Fix encoding in error message for import csv from carto
      Fix logic and pattern for import csv from carto
      [jchandelle] (URB-3250)

- Products.urban 2.7.28 (2025-02-02)

    Bug fixes:

    - Fix missing indentation
      [jchandelle] (URB-3250)

- Products.urban 2.7.27 (2025-01-31)

    New features:

    - Add compatibility with csv from carto to inquiry event
      [jchandelle] (URB-3250)

    Bug fixes:

    - Fix sending zem document by mail
      [jchandelle] (SUP-40979)
    - Revert "URB-3151 - imio.pm.wsclient 2.x + roaddecree (classic) (#258)"
      [daggelpop] (SUP-42300)

- Products.urban 2.7.26 (2025-01-23)

    Bug fixes:

    - Fix retrieval vocabulary in upgrade step
      [jchandelle] (URB-2680)

- Products.urban 2.7.25 (2025-01-21)

    Bug fixes:

    - Fix upgrade step
      [jchandelle] (URB-2680)

- Products.urban 2.7.24 (2024-12-03)

    New features:

    - Add merge field for rubric description
      [jchandelle] (SUP-38659)
    - Create new trigger for decision date reindex
      [jchandelle] (URB-2366)
    - Add bound licences field to patrimony certificates
      [daggelpop] (URB-3046)
    - Add latest new vocabulary terms for form_composition
      [dmshd] (URB-3126)
    - Use imio.pm.wsclient 2.x version (REST).
      [aduchene]
      Add `get_last_plonemeeting_date`, `get_last_college_date` and `get_last_college_date` to CODT_BaseBuildLicence.
      [aduchene] (URB-3151)
    - Implement `.getSecondDeposit()`
      [dmshd] (URB-3152)
    - Remove permission to create integrated licences
      [daggelpop] (URB-3165)

    Bug fixes:

    - Allow corporate tenant in inspections
      [daggelpop] (SUP-33621)
    - Fix follup event creation in ticket
      [jchandelle] (SUP-36493)
    - Fix missing getLastAcknowledgment for division
      [jchandelle] (SUP-37911)
    - Add centrality to every licence & make it a multiselect
      [daggelpop] (URB-3017)
    - Add patrimony fieldset to patrimony certificate
      [daggelpop]
      Migrate patrimony certificates to their correct object class (instead of misc demand)
      [daggelpop] (URB-3121)

- Products.urban 2.7.23 (2024-11-15)

    Bug fixes:

    - Fix frozen_suspension state
      [jchandelle] (SUP-39511)
    - Fix Task config
      [jchandelle] (URB-2680)
    - Fix existing c13 title upgrade
      [daggelpop] (URB-3090)
    - Fix import pod templates
      [jchandelle] (URB-3190)

- Products.urban 2.7.22 (2024-10-25)

    New features:

    - Add new condition in content rules for licence type
      [jchandelle] (URB-3020)
    - Add banner on top of event after mail send
      [jchandelle] (URB-3204)

    Bug fixes:

    - Fix comment retrieval in transition form
      [daggelpop] (SUP-35563)
    - Fix address comparison in _areSameAdresses
      [dmshd] (SUP-39098)
    - Fix an issue when there was too many connection open that raised a SQLAlchemy error
      [laulaz] (SUP-39919)
    - Fix content rules for event type
      [jchandelle] (SUP-40117)
    - Translate `suspension` terms in French
      [daggelpop] (URB-3007)
    - Fix opinion condition text
      [jchandelle] (URB-3020)
    - Fix missing function to have multiple inquiry on CODT commercial licence
      [jchandelle] (URB-3130)
    - Fix export import des config
      [jchandelle] (URB-3190)

- Products.urban 2.7.21 (2024-10-09)

    Bug fixes:

    - Handle null value in `EventTypeConditionExecutor`
      [daggelpop] (SUP-39901)
    - Translate `suspend` in French
      [daggelpop] (URB-3007)
    - Update content rule title
      [dmshd] (URB-3198)

- Products.urban 2.7.19 (2024-10-04)

    Bug fixes:

    - Fix getInquiryRadius method
      [jchandelle] (URB-2983)

- Products.urban 2.7.18 (2024-10-04)

    New features:

    - Add translation and add contextual title to the form from send email action
      [jchandelle] (URB-3020)

    Bug fixes:

    - Fix missing extending validity date
      [jchandelle] (URB-3153)

    Internal:

    - Add a new field "additional reference" and configure faceteed navigation
      [fngaha] (URB-2595)
    - improve the functionality of searching for owners within a defined radius.
      [fngaha] (URB-2983)

- Products.urban 2.7.17 (2024-10-01)

    New features:

    - Translate all untranslated & empty msgtr

      While working on URB-2503 and while I was there, I took the opportunity to translate all untranslated and empty msgtr in the urban.po file. [dmshd] (URB-2503-Fill_all_untranslated_msgtr)
    - Replace None occurences by "Aucun(e)"

      I replaced all "None" occurences and set "Aucun(e)" as the default value for translations instead of None or "-" for improved readability / accessibility / ux.

      [dmshd] · URB-2503 (URB-2503-Replace_None_by_Aucun-e)
    - Improve / translate "See more..." link text

      I had to translate "See more..." and decided that "Lire les textes" would be a better translation for better readability and accessibility.
      The context is a link that follows "Textes du point Délib: See more...".
      Now it reads "Textes du point Délib: Lire les textes".

      [dmshd] · URB-2503 (URB-2503-Replace_See_more_dotdotdot_link_by_Lire_les_textes)
    - Improve truncated "Voir..." link text

      While I had to translate the untranslated "See more..." link. I spotted that truncated long text had "Voir..." as a link text. I replaced it with "Lire la suite" for better readability and accessibility.

      [dmshd] · URB-2503 (URB-2503-Replace_Voir_plus_dotdotdot_by_Lire_la_suite)
    - Add centrality to commercial licence
      [daggelpop] (URB-3017)
    - Add 3 surface fields to commercial licence
      [daggelpop] (URB-3117)
    - Add field `D.67 CoPat` to patrimony fieldset
      daggelpop (URB-3167)

    Bug fixes:

    - Fix merge field getStreetAndNumber
      [jchandelle] (SUP-38082)
    - Fix mail message encoding
      [jchandelle] (SUP-39227)
    - Fix space causing bug
      [dmshd] (URB-2676)
    - Fix typo in french translation

      This is a bugfix for URB-3128. "Cessastion" -> "Cessation".

      [dmshd] (URB-3128-Fix_typo_in_french_translation)
    - Fix event_type condition for content rules
      [jchandelle] (URB-3182)

    Internal:

    - Set buildout cache directories.

      I had a network problem and I had to rerun from the beginning. Took a long time. I searched for a way to fasten and discovered that I could set the cache directories. I set the cache directories as the iA.Delib team does it at iMio.

      [dmshd] (URB-3135-define_buildout_cache_directories)
    - Ignore .python-version (pyenv file) and sort lines in .gitignore file.
      [dmshd] (URB-3135-ignore-python-version-file-and-sort-lines)

- Products.urban 2.7.16 (2024-07-25)

    Bug fixes:

    - Fix faceted widget id collision
      [daggelpop] (URB-3090)

- Products.urban 2.7.15 (2024-07-05)

    New features:

    - Add rule action for sending mail with attachments
      Add rule condition for corresponding event type and opinion to ask
      Add action for sending mail from event context with document in attachement
      [jchandelle] (URB-3020)
    - Change limit year of date widget to current year + 25
      [jchandelle] (URB-3153)

    Bug fixes:

    - Fix getValidityDate indexation
      [jchandelle]
      Fix validity filter title
      [jchandelle] (URB-3090)
    - Give dynamic group reader roles for obsolete licences
      [daggelpop] (URB-3131)

- Products.urban 2.7.14 (2024-06-27)

    New features:

    - Adapt vocabulary default config values for 2024 CODT reform
      [daggelpop] (URB-3003)
    - Add frozen state
      [jchandelle] (URB-3007)
    - Allow linking to patrimony certificates
      [daggelpop] (URB-3063)
    - Add validity date filter and index
      [jchandelle] (URB-3090)
    - Add new terms to foldercategories vocabulary
      [daggelpop] (URB-3096)
    - Rename Patrimony certificate
      [daggelpop] (URB-3116)
    - Add `get_bound_licences` and `get_bound_patrimonies` to CODT_BaseBuildLicence
      [daggelpop] (URB-3125)

    Bug fixes:

    - Mark PatrimonyCertificate as allowed type for bound_licences field in CODT build licences
      [daggelpop] (URB-3046)

- Products.urban 2.7.13 (2024-05-28)

    New features:

    - Add external method to add back deleted licence folder
      [jchandelle] (URB-3086)

    Bug fixes:

    - Fix unicode error on street name merge field
      [fngaha] (SUP-34184)
    - Avoid to display disabled vocabulary entries with no start or end validity date
      [mpeeters] (SUP-36742)
    - Fix error at EnvClassBordering creation
      [jchandelle] (URB-3108)

- Products.urban 2.7.12 (2024-04-25)

    Bug fixes:

    - Fix wrong files export
      [jchandelle] (MURBMONA-48)

- Products.urban 2.7.11 (2024-04-25)

    Bug fixes:

    - Add event sub file in export content
      Add missing portal_type to export sub content
      [jchandelle] (MURBMONA-48)

    Internal:

    - Add `withtitle` parameter to the getApplicantsSignaletic method
      [fngaha] (SUP-33759)
    - Improve merge fields
      Provide a merge field that only returns streets
      Adapt the getStreetAndNumber method field to be able to receive a separation parameter between the street and the number
      [fngaha] (SUP-34184)
    - Update the translation of empty fields
      [fngaha] (URB-3079)

- Products.urban 2.7.10 (2024-04-10)

    New features:

    - Add view for import urban config
      [jchandelle] (SUP-36419)

- Products.urban 2.7.9 (2024-04-07)

    Bug fixes:

    - Avoid an error if a vocabulary term was removed
      [mpeeters] (SUP-36403,SUP-36406)
    - Fix logic on some methods to exclude invalid vocabulary entries
      [mpeeters] (URB-3002)

    Internal:

    - Add tests for new vocabulary logic (start and end validity)
      [mpeeters] (URB-3002)

- Products.urban 2.7.8 (2024-04-02)

    Bug fixes:

    - Add `state` optional parameter to `getLastAcknowledgment` method to fix an issue with schedule start date
      [mpeeters] (SUP-36274)
    - Avoid an error if an advice was not defined
      [mpeeters] (SUP-36276)

- Products.urban 2.7.7 (2024-04-01)

    Bug fixes:

    - Fix an error in calculation of prorogated delays
      [mpeeters] (URB-3008)

    Internal:

    - Add tests for buildlicence and CU2 completion schedule
      [mpeeters] (URB-3005)

- Products.urban 2.7.6 (2024-03-25)

    Bug fixes:

    - Fix an issue with upgrade step numbers
      [mpeeters] (URB-3002)

- Products.urban 2.7.5 (2024-03-24)

    New features:

    - Add caduc workflow state
      [jchandelle] (URB-3007)
    - Add `getIntentionToSubmitAmendedPlans` method for documents
      [mpeeters] (URB-3008)
    - Add a link field on CODT build licences
      [mpeeters] (URB-3046)

    Bug fixes:

    - Move methods to be available for every events.
      Change `is_CODT2024` to be true if there is no deposit but current date is greater than 2024-03-31.
      [mpeeters] (URB-3008)

- Products.urban 2.7.4 (2024-03-20)

    Bug fixes:

    - Invert Refer FD delay 30 <-> 40 days
      [mpeeters] (URB-3008)

- Products.urban 2.7.3 (2024-03-20)

    New features:

    - Add `is_not_CODT2024` method that can be used in templates
      [mpeeters] (URB-3008)

    Bug fixes:

    - Fix update of vocabularies
      [mpeeters] (URB-3002)

- Products.urban 2.7.2 (2024-03-18)

    New features:

    - Add `getCompletenessDelay`, `getReferFDDelay` and `getFDAdviceDelay` methods that can be used in templates
      [mpeeters] (URB-3008)

- Products.urban 2.7.1 (2024-03-14)

    Bug fixes:

    - Fix delay vocabularies value order
      [mpeeters] (URB-3003)

- Products.urban 2.7.0 (2024-03-14)

    New features:

    - Add `is_CODT2024` and `getProrogationDelay` methods that can be used in template
      [mpeeters] (URB-2956)
    - Adapt vocabulary logic to include start and end validity dates
      [mpeeters] (URB-3002)
    - Adapt vocabulary terms for 2024 CODT reform
      [daggelpop] (URB-3003)
    - Add `urban.schedule` dependency
      [mpeeters] (URB-3005)
    - Add event fields `videoConferenceDate`, `validityEndDate` & marker `IIntentionToSubmitAmendedPlans`
      [daggelpop] (URB-3006)

    Bug fixes:

    - Avoid an error if the closing state is not a valid transition
      [mpeeters] (SUP-35736)

    Internal:

    - Provided prorogation field for environment license
      [fngaha] (URB-2924)
    - Update applicant mailing codes :
      Replace mailed_data.getPersonTitleValue(short=True), mailed_data.name1, mailed_data.name2 by mailed_data.getSignaletic()
      [fngaha] (URB-2947)

- Products.urban 2.6.25 (2024-02-13)

    Bug fixes:

    - Fix an issue with installation through collective.bigbang
      [mpeeters] (URB-3016)

- Products.urban 2.6.24 (2024-02-13)

    Bug fixes:

    - Add upgrade step to reindex uid catalog
      [jchandelle] (URB-3015)

- Products.urban 2.6.23 (2024-02-09)

    Bug fixes:

    - Fix reference validator for similar ref
      [jchandelle] (URB-3012)

- Products.urban 2.6.22 (2024-02-05)

    New features:

    - Add index for street code
      [jchandelle] (MURBFMAA-20)

- Products.urban 2.6.21 (2023-12-26)

    New features:

    - Add prosecution ref and ticket ref to Inspection
      [ndemonte] (SUP-27127)
    - Underline close due dates
      [ndemonte] (URB-2515)
    - Add stop worksite option to inspection report
      [jchandelle] (URB-2827)
    - Remove reference FD field from preliminary notice
      [jchandelle] (URB-2831)

    Bug fixes:

    - Validate CSV before claimant import
      [daggelpop] (SUP-33538)
    - Fix an issue with Postgis `ST_MemUnion` by using `ST_Union` instead that also improve performances
      [mpeeters] (SUP-34226)
    - Fix integrated licence creation by using unicode for regional authorities vocabulary
      [jchandelle] (URB-2869)

- Products.urban 2.6.20 (2023-12-12)

    Bug fixes:

    - Fix street number with specia character in unicode
      [jchandelle] (URB-2948)

- Products.urban 2.6.19 (2023-12-04)

    Bug fixes:

    - Fix an issue with Products.ZCTextIndex that was interpreting `NOT` as token instead of a word for notary letter references
      [mpeeters] (MURBARLA-25)

- Products.urban 2.6.18 (2023-11-23)

    Bug fixes:

    - Add `fix_schedule_config` external method ta fix class of condition objects
      [mpeeters] (SUP-33739)

- Products.urban 2.6.17 (2023-11-16)

    Bug fixes:

    - Adapt opinion request worklflow to bypass guard check for managers
      [mpeeters] (SUP-33308)

    Internal:

    - Provide getFirstAcknowledgment method
      [fngaha] (SUP-32215)

- Products.urban 2.6.16 (2023-11-06)

    Bug fixes:

    - Fix serializer to include disable street in uid resolver
      [jchandelle] (MURBMSGA-37)
    - Fix street search to include disable street
      [jchandelle] (URB-2696)

- Products.urban 2.6.15 (2023-10-12)

    Internal:

    - Fix tests
      [mpeeters] (URB-2855)
    - Improve performances for add views
      [mpeeters] (URB-2903)

- Products.urban 2.6.14 (2023-09-13)

    Bug fixes:

    - Avoid an error if a vocabulary value was removed, instead log the removed value and display the key to the user
      [mpeeters] (SUP-32338)

    Internal:

    - Reduce logging for sql queries
      [mpeeters] (URB-2788)
    - Fix tests
      [mpeeters] (URB-2855)

- Products.urban 2.6.13 (2023-09-05)

    Bug fixes:

    - Move catalog import in urban type profile
      [jchandelle] (URB-2868)
    - Fix facet config xml
      [jchandelle] (URB-2870)

- Products.urban 2.6.12 (2023-09-01)

    Bug fixes:

    - Fix new urban instance install
      [jchandelle] (URB-2868)
    - Fix facet xml configuration
      [jchandelle] (URB-2870)

- Products.urban 2.6.11 (2023-08-29)

    Bug fixes:

    - Fix icon tag in table
      [jchandelle] (SUP-31983)

- Products.urban 2.6.10 (2023-08-28)

    Bug fixes:

    - Avoid an error if a task was not correctly removed from catalog
      [mpeeters] (URB-2873)

- Products.urban 2.6.9 (2023-08-27)

    Bug fixes:

    - Fix UnicodeDecodeError on getFolderManagersSignaletic(withGrade=True)
      [fngaha] (URB-2871)

- Products.urban 2.6.8 (2023-08-24)

    Bug fixes:

    - fix select2 widget on folder manager
      [jchandelle] (SUP-31898)
    - Fix opinion schedules assigned user column
      [mpeeters] (URB-2819)

- Products.urban 2.6.7 (2023-08-14)

    Bug fixes:

    - Hide old document generation links viewlet
      [mpeeters] (URB-2864)

- Products.urban 2.6.6 (2023-08-10)

    Bug fixes:

    - Fix an issue with autocomplete view results format that was generating javascript errors
      [mpeeters] (SUP-31682)

- Products.urban 2.6.5 (2023-07-27)

    Bug fixes:

    - Avoid errors on inexpected values on licences and log them
      [mpeeters] (SUP-31554)
    - Fix translation for road adaptation vocabulary values
      [mpeeters] (URB-2575)
    - Avoid an error if a vocabulary does not exist, this can happen when multiple upgrade steps interract with vocabularies
      [mpeeters] (URB-2835)

- Products.urban 2.6.4 (2023-07-24)

    New features:

    - Add parameter to autocomplete to search with exact match
      [jchandelle] (URB-2696)

    Bug fixes:

    - Fix an issue with some urban instances with lists that contains empty strings or `None`
      [mpeeters] (URB-2575)
    - Fix inspection title
      [jchandelle] (URB-2830)
    - Add an external method to set profile version for Products.urban
      [mpeeters] (URB-2835)

- Products.urban 2.6.3 (2023-07-18)

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
    - Add option to POST endpoint when creating a licence to disable check ref format [SUP-31043]
      [jchandelle]

- Products.urban 2.6.2 (2023-07-04)

    - Explicitly include `urban.restapi` zcml dependency [URB-2790]
      [mpeeters]

- Products.urban 2.6.1 (2023-07-04)

    - Fix zcml for migrations
      [mpeeters]

- Products.urban 2.6.0 (2023-07-03)

    - Fix `hidealloption` and `hide_category` parameters for dashboard collections
      [mpeeters]
    - Fix render of columns with escape parameter
      [mpeeters, sdelcourt]
    - Avoid a traceback if an UID was not found for inquiry cron [URB-2721]
      [mpeeters]
    - Migrate to the latest version of `imio.dashboard`
      [mpeeters]

- Products.urban 2.5.4 (2023-07-03)

    - Change collection column name [URB-1537]
      [jchandelle]
    - Fix class name in external method fix_labruyere_envclassthrees [SUP-29587]
      [ndemonte]

- Products.urban 2.5.3 (2023-06-23)

    - Add parcel and applicants contents to export content [URB-2733]
      [jchandelle]

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

- Products.urban 2.5.1 (2023-04-06)

    - Add logo urban to the tab, overriding the favicon.ico viewlet. [URB-2209]
      [mdhyne]
    - Add all applicants to licence title. [URB-2298]
      [mdhyne]
    - Add mailing loop for geometricians. [URB-2327]
      [mdhyne]
    - Add parcel address to parcel's identity card.[SUP-20438]
      [mdhyne]
    - Adapt ComputeInquiryDelay for EnvClassOne licences and Announcements events.[SUP20443]
      [mdhyne]
    - Include parcels owners partner in cadastral queries.[SUP-20092]
      [sdelcourt]
    - Add fields trail, watercourse, trailDetails, watercourseCategory and add vocabulary in global config for the fields.[MURBECAA-51]
      [mdhyne]
    - To use 50m radius in announcement : changes setLinkedInquiry getAllInquiries() call by getAllInquiriesAndAnnouncements() and changes condition in template urbaneventinquiryview.pt. [MURBWANAA-23]
      [mdhyne]
    - add new 'other' tax vocabulary entry and new linked TextField taxDetails
      [jjaumotte]
    - Add contact couples.
      [sdelcourt]

- collective.big.bang 1.0.4 (2025-10-29)

    - Compatible with Python 2.7 and Plone 4.3 in setup.py.
      [aduchene]

- imio.schedule 3.0.4 (2026-01-22)

    Bug fixes:

    - Move create dashboard collection function in utils
      Add way to force dashboard creation
      Change dashboard collection function
      [jchandelle] (URBBDC-3205)

- liege.urban 2.0.0 (2026-02-17)

    New features:

    - Change back key dates display from liege
      [jchandelle] (SUP-49630)

    Bug fixes:

    - Fix string encoding worklocation signaletic
      [jchandelle] (SUP-49356)
    - Fix CODT_UniqueLicence title encoding
      [jchandelle] (SUP-49359)
    - Fix OpinionsRequest local role adapter
      Fix local role order
      Add test
      [jchandelle] (SUP-49445)
    - Fix table encoding
      [jchandelle] (SUP-49474)
    - Fix an issue with `address` indexed values where street numbers were missing
      [mpeeters] (SUP-49602)
    - Fix list220 code ins getter
      [jchandelle] (SUP-49906)
    - Add domain value in field to be translated in Product.urban
      [jchandelle] (SUP-49912)
    - Fix possible infinite recursion with foldermanagers title
      [mpeeters] (SUP-50466)
    - Avoid errors if there is no zip code, street or street number
      [mpeeters] (URB-3523)

    Internal:

    - Fix dashboard configs that are required to run tests
      [mpeeters] (SUP-49445)
    - Fix initialization of tests
      [mpeeters] (URB-3522)

- plonetheme.imioapps 2.56 (2026-01-23)

    - SUP-36249 Change state color for inspection in urban
      [jchandelle
    - SUP-49910: Fix missing icon
      [jchandelle]

- plonetheme.imioapps 2.55 (2025-12-22)

    - Add missing CKEditor style from liege
      [jchandelle]
    - Fixed `skin.js` that was not setting correct CSS `top` value for faceted table
      sticky behavior, the faceted table header was no more sticky.
      [gbastien]
    - Added some padding top before `Forgot password?` sentence on login form.
      [gbastien]

- plonetheme.imioapps 2.54 (2025-12-01)

    - Make sure large images do not add horizontal scroll in tooltipsters.
      [gbastien]
    - Fixed not used and mismatch use of `evenRowBackgroundColor` and
      `oddRowBackgroundColor`.
      [gbastien]

- plonetheme.imioapps 2.53 (2025-08-21)

    - URBBDC-3142: Change icon for Housing procedure.
      [aduchene, WBoudabous]

- plonetheme.imioapps 2.52 (2025-06-25)

    - URBBDC-3142: Add icon for EmptyBuildings procedure.
      [aduchene]
    - SUP-44304. Change current state style in urban.
      [jchandelle]
    - Fixed edit bar height some times smaller than buttons.
      [gbastien]

- plonetheme.imioapps 2.51 (2025-03-11)

    - If current URL contains `imio-acceptation`,
      highlight `portal-header` (turn it red).
      [gbastien]

- plonetheme.imioapps 2.50 (2024-09-25)

    - Fixed faceted dashboard header height to avoid 1px blank space between
      global header and dashboard table header when scrolling
      (sticky dashboard table header).
      [gbastien]

- plonetheme.imioapps 2.49 (2024-06-07)

    - Use horizontal scroll when tooltipster is too large.
      [gbastien]

- plonetheme.imioapps 2.48 (2024-05-27)

    - Be more defensive when changing header color to red for test instances
      to avoid elements containing imio-test in id url being wrongly skinned.
      [gbastien]

- plonetheme.imioapps 2.47 (2024-04-10)

    - URB-3007. Make caduc and abandoned workflow state grey in urban
      [jchandelle]
    - Add justice contact icon
      [ndemonte]
    - Added style for `concatenate-annexes` batch action button icon.
      [gbastien]
    - Avoid `'NoneType' object has no attribute 'get'` in `ImioSearch.filter_query`
      if `query` is `None`.
      [gbastien]

- plonetheme.imioapps 2.46 (2024-03-01)

    - Added .apButtonAction_download background image.
      [sgeulette]

- plonetheme.imioapps 2.45 (2024-01-02)

    - Fixed change introduced in release `2.44` with tag `h1` in overlays that
      was impacting other overlays.
      Moreover removed border bottom of `History` title in history overlay.
      [gbastien]

- plonetheme.imioapps 2.44 (2023-11-27)

    - Now that element's title (pretty link) is displayed in `@@historyview`,
      display `h1` in overlay the same size it is display out of an overlay.
      [gbastien]

- urban.events 1.0.1 (2026-01-22)

    Bug fixes:

    - Fix python requirement
      [mpeeters] (URB-3482)

- urban.events 1.0.0 (2026-01-22)

    New features:

    - Add event config and upgrade step for roaddecree and housing
      [jchandelle] (URBBDC-3142)

- urban.schedule 1.0.2 (2026-01-22)

    Bug fixes:

    - Fix python requirement
      [mpeeters] (URB-3482)

- urban.schedule 1.0.1 (2026-01-22)

    Bug fixes:

    - Add task config and fix upgrade step for roaddecree
      [jchandelle] (URBBDC-3142)

- urban.schedule 1.0.0 (2025-05-27)

    New features:

    - Add creation conditions `deposit_past_20days`, `deposit_under_20days` and `deposit_number_match`.
      Add ending condition `is_suspended_ending`.
      Update recurrence conditions for amended plans.
      [mpeeters] (URB-3154)
    - Add possiblity to specify key to update when updating config
      [jchandelle] (URB-3331)

    Internal:

    - Do not import file that are not JSON
      [mpeeters] (URB-3154)

- urban.schedule 1.0.0a8 (2024-12-03)

    New features:

    - Add two new creation conditions `IsPloneMeetingCollegeDone` and `IsPloneMeetingCouncilDone`.
      [aduchene]
      Add two new start dates `PloneMeetingCollegeDecidedDate` and `PloneMeetingCouncilDecidedDate`.
      [aduchene]
      Add roaddecree tasks for liege.
      [aduchene] (URB-3150)
    - Add roaddecree tasks for classic.
      [aduchene] (URB-3151)

- urban.schedule 1.0.0a7 (2024-10-25)

    Bug fixes:

    - Update schedule config for reception (skip existing)
      [daggelpop] (URB-3005)

- Pin package `imio.urban.core` to `0.5`


2.5.12-liege (2026-02-10)
-------------------------

- Products.urban 2.5.0.dev26 (2026-02-09)

    Bug fixes:

    - Fix history view with missing `site_url` required parameter
      [jchandelle] (SUP-50324)


2.5.11-liege (2026-02-04)
-------------------------

- imio.pm.wsclient 2.0.7 (2026-02-03)

    - SUP-50498: Fix an issue in `PloneMeetingInfosViewlet.getPloneMeetingLinkedInfos`
      when there is no userInNameOF.
      [aduchene]


2.5.10-liege (2026-01-29)
-------------------------

- imio.pm.wsclient 2.0.6 (2026-01-16)

    - SUP-49033: Add option to choose to select by default all annexes (default behavior)
      [jchandelle]
    - Updated translations
      [sgeulette]


2.5.9-liege (2025-12-15)
------------------------

- Products.urban 2.5.0.dev25 (2025-12-15)

    Bug fixes:

    - Fix comment retrieval in transition form
      [daggelpop] (SUP-35563)


2.5.8-liege (2025-11-25)
------------------------

- Products.urban 2.5.0.dev24 (2025-11-25)

    Bug fixes:

    - Fix an error with actions on vocabulary terms
      [mpeeters] (SUP-48930)
    - Migrate patrimony certificates to their correct object class (instead of misc demand)
      [daggelpop] (URB-3121)

- imio.schedule 3.0.3 (2025-11-25)

    Bug fixes:

    - Fix a possible issue while comparing `datetime.date` and `datetime.datetime`
      [mpeeters] (SUP-48926)


2.5.7-liege (2025-11-24)
------------------------

- imio.pm.wsclient 2.0.5 (2025-11-24)

    - SUP-48907: Add an upgrade step to force the refresh of js registry
      [mpeeters]

- imio.pm.wsclient 2.0.4 (2025-11-24)

    - SUP-48907: Fix overlay for send to plone meeting combined with imio.actionspanel
      [mpeeters]


2.5.6-liege (2025-11-23)
------------------------

- imio.pm.wsclient 2.0.3 (2025-08-07)

    - Fixed generated actions translations.
      [chris-adam]
    - Fixed permissions in `upgrade_to_200`.
      [WBoudabous]

- imio.pm.wsclient 2.0.2 (2025-06-03)

    - Fixed annexes with invalid characters in title.
      [chris-adam]

- imio.pm.wsclient 2.0.1 (2025-05-26)

    - Improve `_rest_getDecidedMeetingDate` to make only one request.
      [aduchene]
    - Include some metadata_fields in `PloneMeetingInfosViewlet` to have proper translations.
      [aduchene]
    - Updated upgrade step 2.0.0 to include rolemap.xml.
      [chris-adam]
    - Remove "ignore_validation_for" and "ignore_not_used_data" field display from form.
      [chris-adam]
    - By default, send all annexes to plone meeting.
      [chris-adam]

- imio.pm.wsclient 2.0.0 (2025-03-27)

    - Used UID key in `vocabularies.proposing_groups_for_user_vocabulary`.
      [sgeulette]
    - Fixed categories for user vocabulary after REST api migration and meeting dates vocabulary display.
      [chris-adam]
    - Use IMIO/gha actions and our own runners for the CI.
      [aduchene]
    - Fixed meeting dates vocabulary cache.
      [chris-adam]


2.5.5-liege (2025-11-21)
------------------------

- Add `eggs.imio.be` to find links for eea.facetednavigation `14.8.1`
  [mpeeters]


2.5.4-liege (2025-11-08)
------------------------

- Upgrade to zc.buildout `3.4` and setuptools `44.0.0` to be compatible with PEP-625
  [mpeeters]

- Products.urban 2.5.0.dev23 (2025-11-08)

    New features:

    - URBBDC-3204: Make field `additionalReference` optional
      [mpeeters] (SUP-47891)

    Bug fixes:

    - URBBDC-3204: Add config for underlined schedule displayed delay date (orange / red)
      [mpeeters] (SUP-48210)
    - Fix interface for subscriber that set columns for dashboard
      [mpeeters] (URBBDC-3204)


2.5.3-liege (2025-10-15)
------------------------

- liege.urban 1.0.10 (2025-10-15)

    Bug fixes:

    - Fix adapter for schedule collection icons
      [mpeeters] (URBBDC-3204)


2.5.2-liege (2025-10-13)
------------------------

- Products.urban 2.5.0.dev22 (2025-10-13)

    Bug fixes:

    - Fix an issue with translation for Road adaptation vocabulary
      [mpeeters] (URBBDC-3204)

- imio.pm.wsclient 2.0.3 (2025-08-07)

    - Fixed generated actions translations.
      [chris-adam]
    - Fixed permissions in `upgrade_to_200`.
      [WBoudabous]

- imio.pm.wsclient 2.0.2 (2025-06-03)

    - Fixed annexes with invalid characters in title.
      [chris-adam]

- imio.pm.wsclient 2.0.1 (2025-05-26)

    - Improve `_rest_getDecidedMeetingDate` to make only one request.
      [aduchene]
    - Include some metadata_fields in `PloneMeetingInfosViewlet` to have proper translations.
      [aduchene]
    - Updated upgrade step 2.0.0 to include rolemap.xml.
      [chris-adam]
    - Remove "ignore_validation_for" and "ignore_not_used_data" field display from form.
      [chris-adam]
    - By default, send all annexes to plone meeting.
      [chris-adam]

- imio.pm.wsclient 2.0.0 (2025-03-27)

    - Used UID key in `vocabularies.proposing_groups_for_user_vocabulary`.
      [sgeulette]
    - Fixed categories for user vocabulary after REST api migration and meeting dates vocabulary display.
      [chris-adam]
    - Use IMIO/gha actions and our own runners for the CI.
      [aduchene]
    - Fixed meeting dates vocabulary cache.
      [chris-adam]

- imio.pm.wsclient 2.0.0b2 (2024-10-16)

    - Fix translation of overlay title
      [mpeeters]
    - Avoid an error if the user can not access to meetings
      [mpeeters]
    - Upgrade config for REST api
      [mpeeters]
    - Fixed all unit tests.
      [aduchene]
    - Add a new helper method `_rest_getDecidedMeetingDate` to get the actual decided meeting date.
      [aduchene]

- imio.pm.wsclient 2.0.0b1 (2022-11-18)

    - Migrate to REST api
      [mpeeters]


2.5.1-liege (2025-10-10)
------------------------

- Products.urban 2.5.0.dev21 (2025-10-10)

    Bug fixes:

    - Fix default content type for modified plans details
      Fix a edge case with validation of reference number
      [mpeeters] (URBBDC-3204)


2.5.0-liege (2025-10-08)
------------------------

- Products.urban 2.5.0.dev20 (2025-10-08)

    New features:

    - Decode to `UTF-8` for `getSociety`
      URB-2595: Add a new field "additional reference"
      Add JSON Serializer and Deserializer for REST API
      MURBARLA-25: Fix an issue with Products.ZCTextIndex that was interpreting `NOT` as token instead of a word for notary letter references
      SUP-6566: Adapt validator for value "simple" for procedure choice of CODT_Buildlicence
      Fix Exposant validator length
      Update dashboard xml config
      [mpeeters, jchandelle] (URBBDC-3204)
    - Add function to have multiple dashbaord config
      [jchandelle] (URBBDC-3231)

- collective.archetypes.select2 1.0a2 (2023-09-19)

    - Fix an issue when some data are encoded in utf8 [SUP-32523]
      [mpeeters]

- collective.compoundcriterion 0.6 (2023-02-13)

    - Added `negative-previous-index` and `negative-personal-labels` default adapters.
      Rely on `imio.helpers`. Removed dependency on `unittest2`.
      [gbastien]

- collective.compoundcriterion 0.5 (2021-04-20)

    - Add Transifex.net service integration to manage the translation process.
      [macagua]
    - Add Spanish translation
      [macagua]

- collective.compoundcriterion 0.4 (2018-08-31)

    - When getting the adapter, if context is not the Collection, try to get real context
      following various cases.  This is the case when using Collection
      from plone.app.contenttypes.
      [gbastien]
    - Do not use a SelectionWidget to render the querystring widget as it does not
      exist anymore for plone.app.contenttypes Collection.
      Use the MultipleSelectionWidget.  This way finally we may select several
      filters to build the query.
      [gbastien]
    - When using 'not' in queries for ZCatalog 3, 'query' level must be replaced by 'not' in query dictionary.
      [sgeulette]

- collective.compoundcriterion 0.3 (2016-12-08)

    - Return clear message when a query format is not plone.app.querystring compliant.
      [gbastien]

- collective.eeafaceted.collectionwidget 1.16 (2023-07-27)

    - Use default value if available and if there is no parameter in request
      [mpeeters]
    - Fix for Python 3 compatibilty
      [mpeeters]

- collective.eeafaceted.collectionwidget 1.15 (2023-07-03)

    - Ensure that parent can be displayed if `hide_category` is True and without category
      [mpeeters]
    - Add `hide_category` option (False by default) to add the possibility to hide category titles
      [mpeeters]

- collective.eeafaceted.collectionwidget 1.14 (2022-01-10)

    - Fixed `utils.getCurrentCollection`, when `collectionUID` retrieved from
      `facetedQuery` form value, we have a list of values.
      [gbastien]

- collective.eeafaceted.collectionwidget 1.13 (2022-01-03)

    - Use an alias for `__call__` methods that use `ram.cache` in `vocabulary.py`
      this way, the key generated for the `ram.cache` storage is different.
      [gbastien]

- collective.eeafaceted.collectionwidget 1.12 (2021-12-06)

    - Added `ram.cache` for `CollectionCategoryVocabulary` to avoid query at each
      request as query is using a `sort_on=getObjPositionInParent` which is very slow.
      [gbastien]
    - Override `DashboardCollection` query computation that by default in
      `plone.app.contenttypes` and `plone.app.querystring` will arbitrary add a `path`
      index in the query, and again, the `path` index is very slow and just not necessary.
      [gbastien]
    - Use unrestricted catalog query when possible.
      [gbastien]
    - Optimized the catalog query that compute the `number_of_items` counters.
      [gbastien]

- collective.eeafaceted.collectionwidget 1.11 (2020-05-28)

    - Added `real_context` parameter to `CollectionVocabulary`.
      [sgeulette]
    - Use `ITALCondition` behavior to evaluate the `tal_condition` expression so
      `ITALCondition.complete_extra_expr_ctx` is taken into account.
      [gbastien]

- collective.eeafaceted.collectionwidget 1.10 (2019-09-12)

    - Invalidate `collective.eeafaceted.collectionwidget.cachedcollectionvocabulary`
      if `portal_url` changed, this can be the case when application is accessed
      by same user from different URi.
      [gbastien]

- collective.eeafaceted.collectionwidget 1.9 (2019-08-23)

    - Added parameter `raise_on_error=True` to `utils._get_criterion` so it will
      return `None` in case passed context is not a faceted context instead
      raising an error.
      [gbastien]

- collective.eeafaceted.collectionwidget 1.8 (2019-08-13)

    - Do not store the collection object in `term.value` of vocabulary
      `CollectionVocabulary` because it can be ram cached
      (in `CachedCollectionVocabulary` for example) and ram caching methods
      returning objects is a bad idea.
      [gbastien]
    - Added `caching=True` parameter to `utils.getCurrentCollection` so it is
      computed one time by request for a given `faceted_context`.
      [gbastien]

- collective.eeafaceted.collectionwidget 1.7 (2019-03-28)

    - Added parameter RenderTermView.compute_count_on_init, True by default that
      will do the collections count be computed when the widget is rendered. This
      makes it possible to disable it.
      [gbastien]
    - Fix an issue with the widget used in combination with collective.solr
      [mpeeters]
    - In `utils._updateDefaultCollectionFor` use `ICriteria.edit` to change value
      as it handles persistence instead doing it ourselves.
      After value is changed, trigger `FacetedGlobalSettingsChangedEvent`.
      [gbastien]

- collective.eeafaceted.collectionwidget 1.6 (2019-01-03)

    - Avoid error when deleting site.
      [sgeulette]
    - Factorized code called in `widget.__call__` in `widget._initialize_widget`
      method so it is easy to call from outside.
      [gbastien]

- collective.eeafaceted.collectionwidget 1.5 (2018-12-18)

    - Temporary fix to not crash in `KeptCriteria` adapter when managing daterange
      widget.  For now, if index is a `DateIndex` and values is a `list`,
      we do not keep criteria for it.
      [gbastien]

- collective.eeafaceted.collectionwidget 1.4 (2018-11-29)

    - Migrate IFacetedNavigable criterias, replacing old vocabulary by
      `cachedcollectionvocabulary`.
      [sgeulette]
    - Added method `RenderCategoryView._get_category_template` to formalize how to
      get template used to display a term category.
      [gbastien]

- collective.eeafaceted.collectionwidget 1.3 (2018-11-20)

    - Removed AT Collection creation from tests as it is not used and it fails
      because of a bug in plone.api==1.8.4.
      See https://github.com/plone/plone.api/pull/414
      [gbastien]
    - Define a `csscompilation` name for collection widget own CSS ressource.
      Do redefine as little as possible when including widget view/edit css/js into
      eea.facetednavigation existing bundles.
      [gbastien]
    - Moved CachedCollectionVocabulary from imio.dashboard, now named
      `collective.eeafaceted.collectionwidget.cachedcollectionvocabulary`.
      Moved dashboard collection related events.
      [sgeulette]

- collective.eeafaceted.collectionwidget 1.2 (2018-09-04)

    - Added translations for `Enabled?`.
      [gbastien]

- collective.eeafaceted.collectionwidget 1.1 (2018-06-22)

    - Corrected bad release, include last code.
      [gbastien]

- collective.eeafaceted.collectionwidget 1.0 (2018-06-20)

    - Make widget compatible with `eea.facetednavigation >= 10.0`.
      This makes it no more compatible with older version.
      [gbastien]
    - Make package installable on both Plone4 and Plone5.
      [gbastien]
    - Rely on `plone.app.contenttypes` instead `plone.app.collection`.
      [gbastien]
    - Do not break to display the facetednavigation_view if no collection widget
      defined, it is the case when just enabling the faceted navigation on a new
      folder.
      [gbastien]
    - Added field `enabled` (default=True) on a DashboardCollection make it possible
      to disable it so it is no more displayed in the collection widget (portlet).
      We specifically do not use a workflow for DashboardCollection.
      [gbastien]

- collective.eeafaceted.collectionwidget 0.9 (2018-05-25)

    - Moved here some methods from imio.dashboard:
      _get_criterion, getCollectionLinkCriterion, getCurrentCollection
      [sgeulette]
    - facetednavigation_view override to manage default collection widget redirection
      [sgeulette]
    - Added portal attribute on category view.
      [sgeulette]

- collective.eeafaceted.collectionwidget 0.8 (2018-05-03)

    - Fix wrong release version 0.7.
      [gbastien]

- collective.eeafaceted.collectionwidget 0.7 (2018-05-03)

    - Removed useless parameter `query` from `CollectionVocabulary.__call__`.
      [gbastien]
    - Use `zope.globalrequest.getRequest` and not `context.REQUEST`
      to get the REQUEST.
      [gbastien]

- collective.eeafaceted.z3ctable 2.19 (2023-02-27)

    - Extended JS function `toggleCheckboxes` to pass the select/unselect checkbox
      as first parameter and trigger the click event when checkboxes checked or unchecked.
      This changes nothing here but makes this function more useable in other contexts.
      [gbastien]
    - JS function `preventDefaultClickTransition` was renamed to
      `preventDefaultClick` in `imio.actionspanel>=1.62`.
      [gbastien]
    - Do not break in `I18nColumn` when translating a string with special chars.
      [gbastien]

- collective.eeafaceted.z3ctable 2.18 (2022-06-14)

    - Added `BaseColumn.escape = True` so content is escaped.
      Manage escape manually for the `TitleColumn`,  `VocabularyColumn` and the
      `AbbrColumn`, set it to `False` for `CheckBoxColumn`, `ElementNumberColumn`
      and `ActionsColumn` that are entirely generated, set it to `False` for
      `PrettyLinkColumnNothing` as `imio.prettylink` manages it itself.
      [gbastien]

- collective.eeafaceted.z3ctable 2.17 (2022-05-13)

    - Doing an unrestricted object get to increase performance.
      [sgeulette]

- collective.eeafaceted.z3ctable 2.16 (2022-01-03)

    - Added debug mode when displaying results, this will display the time to
      render each cell, each column (total of every cells) and a global table total.
      Just add `debug=true` to the URL
      [gbastien]

- collective.eeafaceted.z3ctable 2.15 (2021-11-08)

    - Renamed parameter passed to `PrettyLinkWithAdditionalInfosColumn.getPrettyLink`
      from `item` to `obj` as it is actually the `obj` that is received and not the `item`.
      [gbastien]
    - Added attribute `PrettyLinkWithAdditionalInfosColumn.ai_included_fields`,
      by default it displayed every non empty fields, with this parameter it is
      possible to select which fields to display.
      [gbastien]

- collective.eeafaceted.z3ctable 2.14 (2021-07-16)

    - Fixed the `CheckBoxColumn`, add a name to the select all/nothing checkbox so
      it is possible to have several checkbox columns (on same table or when
      displaying several tables on same page).
      [gbastien]

- collective.eeafaceted.z3ctable 2.13 (2021-01-06)

    - Added possibility to define a `header_help` message that will be displayed
      when hovering header title.
      [gbastien]
    - Added `<label>` tag around input for the `CheckBoxColumn` so it can be syled
      to ease checkbox selection on click.
      [gbastien]

- collective.eeafaceted.z3ctable 2.12 (2020-10-02)

    - In `PrettyLinkWithAdditionalInfosColumn`, use IDataManager to get widget value.
      [gbastien]

- collective.eeafaceted.z3ctable 2.11 (2020-08-18)

    - Render `DataGridField` in `PrettyLinkWithAdditionalInfosColumn` vertically.
      [gbastien]
    - Bugfix in `PrettyLinkWithAdditionalInfosColumn`, sometimes the widget's
      context was the previous row object.
      [gbastien]
    - Added parameter `PrettyLinkWithAdditionalInfosColumn.simplified_datagridfield`
      and set it to `False` by default.
      [gbastien]
    - Moved `MemberIdColumn.get_user_fullname` out of `MemberIdColumn` so it can be
      easily used from outside.
      [gbastien]
    - Added `PrettyLinkWithAdditionalInfosColumn.ai_extra_fields`, that
      let's include extra data not present in schema, by default this will include
      `id`, `UID` and `description`.
      [gbastien]

- collective.eeafaceted.z3ctable 2.10 (2020-05-08)

    - In `PrettyLinkWithAdditionalInfosColumn`, removed to setup around current URL
      that was necessary for displaying image and files correctly but instead,
      require `plone.formwidget.namedfile>=2.0.2` that solves the problem.
      [gbastien]

- collective.eeafaceted.z3ctable 2.9 (2020-02-25)

    - Ignored EMPTY_STRING in VocabularyColumn
      [sgeulette]

- collective.eeafaceted.z3ctable 2.8 (2020-02-06)

    - Managed correctly a field not yet set.
      [sgeulette]
    - In the `PrettyLinkWithAdditionalInfosColumn`, manage `description` manually
      as it is not present in the `@@view` widgets.
      Display it as any other fields if not empty.
      [gbastien]
    - Added IconsColumn
      [sgeulette]

- collective.eeafaceted.z3ctable 2.7 (2019-09-13)

    - In `columns.AbbrColumn`, make sure there is no `'` in tag title or it is not
      rendered correctly in the browser.
      [gbastien]

- collective.eeafaceted.z3ctable 2.6 (2019-09-12)

    - Fixed translation of `Please select at least one element.` msgid, it was
      still using the old domain `collective.eeafaceted.batchactions` from which
      the `select_row` column was reintegrated.
      [gbastien]
    - Optimized the `PrettyLinkWithAdditionalInfosColumn` speed :

      - the `view.update` is called one time and we store the view in the column
        so next rows may use it;
      - use `collective.excelexport` datagridfield exportable to render a
        `datagridfield` because widget rendering is way too slow...
      - added `collective.excelexport` as a dependency.

      [gbastien]
    - the `view.update` is called one time and we store the view in the column
      so next rows may use it;
    - use `collective.excelexport` datagridfield exportable to render a
      `datagridfield` because widget rendering is way too slow...
    - added `collective.excelexport` as a dependency.

- collective.eeafaceted.z3ctable 2.5 (2019-08-02)

    - In `VocabularyColumn` and `AbbrColumn`, store the vocabularies instances
      under `_cached_vocab_instance` to avoid doing a lookup for each row.
      This does speed rendering a lot.
      [gbastien]

- collective.eeafaceted.z3ctable 2.4 (2019-03-28)

    - Fix Date column with SolR result
      [mpeeters]
    - Added `ExtendedCSSTable.table_id` and `ExtendedCSSTable.row_id_prefix` making
      it possible to have a CSS id on the table and for each rows.
      By default, we defined it for `FacetedTableView`, `table_id = 'faceted_table'`
      and `row_id_prefix = 'row_'`.
      [gbastien]
    - For `ColorColumn`, do not redefine the `renderHeadCell` method but use the
      `header` attribute as we return static content.
      [gbastien]
    - Added `BaseColumn.use_caching` attribute set to `True` by default that will
      avoid recomputing a value if it was already computed for a previous row.
      This needs to be managed by column and base `_get_cached_result` and
      `_store_cached_result` are defined on `BaseColumn`.
      Implementations are done for `DateColumn`, `VocabularyColumn` and `AbbrColumn`.
      [gbastien]

- collective.eeafaceted.z3ctable 2.3 (2018-12-18)

    - In `faceted-table-items.pt`, group `<span>` displaying number of results or
      no results under same `<div>` so it is easy to style.
      [gbastien]

- collective.eeafaceted.z3ctable 2.2 (2018-11-20)

    - Added `PrettyLinkWithAdditionalInfosColumn.ai_generate_css_class_fields`
      attribute to make it possible to specify fields we want to generate a
      CSS class for, depending on field name and value.  This is useful for
      applying custom CSS to a particular additional info field having a
      specific value.
      [gbastien]

- collective.eeafaceted.z3ctable 2.1 (2018-09-04)

    - Added `BooleanColumn` based on the `I18nColumn` that displays `Yes` or `No`
      depending on fact that value is `True` or `False`.
      [gbastien]
    - Added `PrettyLinkColumn` and `PrettyLinkWithAdditionalInfosColumn` columns
      based on soft dependency to `imio.prettylink`.
      [gbastien]
    - Added `ActionsColumn` column based on soft dependency to `imio.actionspanel`.
      [gbastien]
    - Added `RelationPrettyLinkColumn` column displaying a relation as a
      pretty link.
      [gbastien]
    - Moved overrides of `SequenceTable.renderRow` and `SequenceTable.renderCell`
      relative to being able to define CSS classes by `<td>` tag and depending on
      item value to a separated `ExtendedCSSTable class` so it can be reused by
      other packages.
      [gbastien]

- collective.eeafaceted.z3ctable 2.0 (2018-06-20)

    - Make widget compatible with `eea.facetednavigation >= 10.0`.
      This makes it no more compatible with older version.
      [gbastien]
    - Make package installable on both Plone4 and Plone5.
      [gbastien]
    - Reintegrated the `select_row` column from `collective.eeafaceted.batchactions`
      as it is useable by other Faceted packages.
      [gbastien]
    - Reintegrated js variables view that manages `no selected elements` message.
      [gbastien]

- collective.excelexport 1.8 (2019-09-12)

    - Explicit inclusion of plone.restapi zcml
      [thomasdesvenain]
    - Exclude dexterity 'allow discussion' and 'exclude_from_nav' fields
      (previously, only archetypes fields were excluded)
      [thomasdesvenain]
    - Fix error when referenced object value has no Title method.
      [thomasdesvenain]
    - Fix: Don't ommit fields that are in the default fieldset if there is one
      [petchesi-iulian]
    - Fix error on eea.faceted when there is a widget operator.
      [thomasdesvenain]
    - Archetypes support,
      Products.ATExtensions support (RecordField, RecordsField, FormattableNamesField).
      [thomasdesvenain]
    - Fix encoding issue.

- collective.excelexport 1.7 (2018-06-22)

    - Added plone.restapi service.
      [thomasdesvenain]
    - Fixed csv export mimetype.
    - Added helper method get_exportable_for_fieldname.
      [gbastien]

- collective.excelexport 1.6 (2018-01-05)

    - Fix: no limit for number of results in eeafaceted datasource.
      [cedricmessiant]

- collective.excelexport 1.5 (2017-11-28)

    - Upgrade bootstrap.
      [sgeulette]
    - Fix: render choice field with source vocabulary
      [sgeulette]

- collective.excelexport 1.4 (2017-05-31)

    - Prevent removal of exportables with similar names when ordering them
      [thomasdesvenain]
    - Refactor: view exposes method that creates data buffer from sheet data.
      [thomasdesvenain]
    - Made correct release
      [sgeulette]

- collective.excelexport 1.3 (2016-11-28)

    - Fix: check if value_type is empty for collection field render.
      [bsuttor]
    - Fix: try to get the value of a method if the field is a method and translate
      DateTime results to a unicode, this fixes the export for objects with the IPublication
      Behavior.
      [pcdummy]
    - Fix: be sure to not retrieve an attribute on an object by acquisition.
      [vincentfretin]
    - Feature: render_style can now return a Style object with content and headers
      attribute to be able to customise the header style per exportable.
      [vincentfretin]
    - Feature: the passed obj to render_value is now
      exportable.field.bind(obj).context to make it easier to get data from
      parent or grandparent.
      [vincentfretin]
    - Feature: BaseFieldRenderer.render_header method returns now the translated field
      title instead of the Message object.
      [vincentfretin]
    - Fix: Ignore reverse parameter when creating export url.
      [cedricmessiant]
    - Feature: Add sort exportables feature using exportables_order list.
      Works with field and non-field exportables.
      [cedricmessiant, ebrehault, thomasdevenain]

- collective.faceted.task 1.0.2 (2023-09-05)

    - Fix facet config xml on new urban install [URB-2870]
      [jchandelle]

- collective.faceted.task 1.0.1 (2023-09-01)

    - Fix new urban instance install [URB-2868, URB-2870]
      [jchandelle]

- collective.faceted.task 1.0.0 (2023-07-05)

    - Do not escape z3c.table column title
      [sdelcourt, mpeeters]

- collective.fingerpointing 1.8.2 (2020-03-16)

    - Fix typo in French translation.
      [laulaz]
    - In ``workflow_logger`` display full path of object instead just object id.
      [gbastien]

- collective.fingerpointing 1.8.1 (2019-11-22)

    - Do not fail running ``plone-compile-resources`` together with fingerpointing installed in Plone 5.2.
      [jensens]
    - Completed french translations.
      [gbastien]

- collective.fingerpointing 1.8 (2018-10-11)

    - Avoid ``TypeError`` when View Audit Log (fixes `#91 <https://github.com/collective/collective.fingerpointing/issues/91>`_).
      [jianaijun]
    - Update Chinese Simplified translation.
      [jianaijun]

- collective.fingerpointing 1.7 (2018-04-23)

    - Drop support for Plone 5.0.
      [hvelarde]
    - Avoid ``ComponentLookupError`` when adding a Plone site (fixes `#85 <https://github.com/collective/collective.fingerpointing/issues/85>`_).
      [hvelarde]
    - Do not fail while logging uninstall profile information.
      [hvelarde]
    - Fix uninstall of control panel configlet under Plone 5.1.
      [hvelarde]

- collective.fingerpointing 1.6 (2018-03-28)

    - Avoid ``TypeError`` on PAS events (fixes `#78 <https://github.com/collective/collective.fingerpointing/issues/78>`_).
      [hvelarde]

- collective.fingerpointing 1.6rc2 (2018-03-22)

    - Fix profile version number.
      [hvelarde]

- collective.fingerpointing 1.6rc1 (2018-03-22)

    - Update i18n, Brazilian Portuguese and Spanish translations.
      [hvelarde]
    - Code clean up and refactor, avoid ``UnicodeEncodeError`` on registry subscriber (refs. `#74 <https://github.com/collective/collective.fingerpointing/issues/74>`_).
      [hvelarde]
    - Log Generic Setup profile imports; this is useful to audit add-on installs/uninstalls (implements `#32 <https://github.com/collective/collective.fingerpointing/issues/32>`_).
      [hvelarde]
    - Do label `Size` translatable, completed french translations.
      [gbastien]

- collective.fingerpointing 1.5rc1 (2017-11-24)

    - Update i18n, Brazilian Portuguese, German and Spanish translations.
      [hvelarde, jensens]
    - Lock-file is now container save and it's close more robust.
      [jensens]
    - Refactor logger module in order to improve testability.
      [jensens]
    - Add search on audit logs and pagination (implements `#17 <https://github.com/collective/collective.fingerpointing/issues/17>`_).
      [jensens]

- collective.messagesviewlet 1.0b2 (2022-12-26)

    - Fix bundle registry upgrade step
      [laulaz]

- collective.messagesviewlet 1.0b1 (2022-12-22)

    - Migrate to Plone 6.0.0: remove dexteritytextindexer, use new simplified
      resources registry, fix styles, fix icons, ...
      [boulch, laulaz]
    - Add local messages feature. Local messages can be added in any folderish
      content types and you can choose if / on which levels they display.
      [boulch]
    - Protect messages-config folder with one-state private workflow.
      [boulch]
    - Add control panel (with messages-config folder link).
      [boulch]
    - Use JS to show/hide messages when closed, to avoid caching problems (#12).
      [laulaz]
    - Update / improve translations.
      [boulch, laulaz]

- collective.messagesviewlet 0.23 (2020-04-17)

    - Fix tests & travis build (#8).
      [laulaz]
    - Prevent a bug when compare 2 dates with different timezone format.
      [boulch]

- collective.messagesviewlet 0.22 (2020-01-15)

    - Fix bug when message configuration don't permit to hide this message (close button stayed).
      [boulch]
    - Adapted code for Plone5.2/Py3.
      [gbastien]

- collective.messagesviewlet 0.21 (2019-10-14)

    - Bypass allowed content types contraint when (post)install messagesConfig container
      [boulch]

- collective.messagesviewlet 0.20 (2019-08-23)

    - Added parameter `caching=True` to `utils.get_messages_to_show`, if `True`,
      the method result is cached in the request for given `context`.
      [gbastien]

- collective.messagesviewlet 0.19 (2019-07-15)

    - Added PseudoMessage class that be be used in viewlet template.
      [sgeulette]

- collective.messagesviewlet 0.18 (2019-05-27)

    - Define version to `2000` in `metadata.xml` of plone4 profile or upgrade step
      to 2000 is always displayed.
      [gbastien]

- collective.messagesviewlet 0.17 (2019-04-23)

    - Evaluate TAL condition using behavior `evaluate` method instead calling
      directly submethod `utils.evaluateExpressionFor` so behavior method
      `complete_extra_expr_ctx` is called.
      [gbastien]
    - Call JS on portal_url so it can be cached by the browser.
      [gbastien]
    - Tests on Plone5 and Plone4.
      [bsuttor]
    - Manage profiles differently
      [sgeulette]
    - Moved `MessagesViewlet.getAllMessages` code to `utils.get_messages_to_show`
      so it is easily callable from outside.
      [gbastien]
    - Be defensive while managing TZ of message dates : do not set it if already
      set, it fails, moreover, indexing a metadata from a date attribute that had
      no TZ to one having TZ fails so undindex/reindex the entire message.
      [gbastien]

- collective.messagesviewlet 0.16 (2018-10-18)

    - Corrected import step dependencies to avoid unresolved warning. Save really changes !
      [sgeulette]

- collective.messagesviewlet 0.15 (2018-10-11)

    - Corrected import step dependencies to avoid unresolved warning.
      [sgeulette]

- collective.messagesviewlet 0.14 (2018-07-23)

    - Generate new uid when message is activated or re-activated.
      [sgeulette]

- collective.messagesviewlet 0.13 (2018-06-13)

    - Add <span> around cross <img> to ease override.
      [mgennart]

- collective.messagesviewlet 0.12 (2017-05-30)

    - Corrected image path.
      [sgeulette]
    - Decrease space between messages
      [sgeulette]

- collective.messagesviewlet 0.11 (2017-03-16)

    - Added default message to warn that application only runs correctly on Firefox
      and Chrome, in addition to the already existing message that warned about the
      application only running correctly on Firefox.
      [gbastien]
    - Use CheckBoxWidget for IMessage.required_roles` to ease selection when
      displaying several elements.
      [gbastien]
    - Use RadioFieldWidget for Bool fields `IMessage.can_hide` and
      `IMessage.use_local_roles` so it is displayed correctly on the view,
      especially when it is False.
      [gbastien]

- collective.messagesviewlet 0.10 (2017-02-06)

    - Use INavigationRoot instead of IPloneSiteRoot to check if context is homepage.
      [bsuttor]

- collective.messagesviewlet 0.9 (2016-03-30)

    - Increased coverage by using vocabulary methods instead of redefining it in tests.
      [gbastien]
    - Added new example message: bad browser (not Firefox) warning
      [sgeulette]
    - Use plone.formwidget.datetime to have hour at 0 by default.
      [sgeulette]
    - CSS fix : display 'cursor: pointer;' when hovering the close button.
      [gbastien]
    - Added 'MessagesConfig' to site_properties.types_not_searched.
      [gbastien]

- collective.messagesviewlet 0.8 (2016-01-18)

    - Added parameter 'activate' to utils.add_message that makes it possible to create
      an 'activated' message directly.
      [gbastien]
    - Adapted tests to use utils.add_message instead of duplicating this code.
      [gbastien]

- collective.messagesviewlet 0.7 (2015-11-17)

    - Do not pass a default 'context' in utils._ to avoid strange ConnectionStateError.
      [gbastien]
    - Give context to translate method.
      [sgeulette]
    - Corrected and added icon type images.
      [sgeulette]

- collective.messagesviewlet 0.6 (2015-09-18)

    - Simplify workflow. Only one activated state. Unrestricted search results before filtering.
      Added 'use local role' boolean attribute.
      [sgeulette]
    - Updated default messages
      [sgeulette]
    - Added local roles test
      [sgeulette]
    - Renamed bad transition name
      [sgeulette]

- collective.wfadaptations 1.1 (2021-04-20)

    - Added reapply adaptation parameter to differentiate a reapply after a workflow reset.
      [sgeulette]
    - Kept keys as unicode in `get_applied_adaptations`
      [sgeulette]

- collective.z3cform.select2 2.0.1 (2018-08-27)

    - Do not replace z3cform default widget for List/Set of Choice by
      select2 widget by default.  The widget/adapters.zcml will need to be included
      manually so this behavior is applied.
      [gbastien]

- collective.z3cform.select2 2.0.0 (2018-06-20)

    - Make faceted widget compatible with eea.facetednavigation 10+.
      This makes it no more compatible with eea.facetednavigation<10.
      [gbastien]

- imio.actionspanel 1.63 (2023-08-24)

    - Use `uid_catalog` if available for delete by uid view [SUP-31827]
      [mpeeters]

- imio.actionspanel 1.62 (2023-02-27)

    - Fixed rendering of error message when an exception occurs during a transition.
      [gbastien]
    - Added new action `renderOwnDeleteWithComments=False` when deleting an element
      a comment may be entered, the deletion including comment will appear in the
      history of the parent of the element that was deleted.
      [gbastien]
    - In JS function `deleteElement`, call event `ap_delete_givenuid` also when
      parameter `redirect=0`.
      [gbastien]

- imio.actionspanel 1.61 (2022-10-14)

    - Force by default redirect after transition just when use icons
      [fngaha]

- imio.actionspanel 1.60 (2022-02-04)

    - Added possibility to force refresh the page after a WF transition even if on a faceted.
      [gbastien]

- imio.actionspanel 1.59 (2022-01-24)

    - In `actions_panel_actions` displaying `object_buttons`, use the link_target
      defined on the action, only set it to `target="_parent"` if nothing defined
      on the action.
      [gbastien]

- imio.actionspanel 1.58 (2022-01-14)

    - Avoid init `member` in `__init__`, that can lead to member being `Anonymous`.
      [gbastien]
    - Fixed detection if transition triggered from faceted, use `has_faceted`
      from `imio.helpers`.
      [gbastien]
    - Define a with/height in CSS for icons so it can be reused by
      `collective.js.tooltipster` when it computes the size of the tooltipster.
      [gbastien]
    - Added CSS id with context `UID` to the `actions_panel` table.
      [gbastien]

- imio.actionspanel 1.57 (2021-11-08)

    - Whenever an error occurs in `ActionsPanelView.triggerTransition`, make sure
      we get the error in the returned portal message and log the full traceback
      in the Zope log.
      [gbastien]

- imio.actionspanel 1.56 (2021-09-09)

    - Fixed arrow used in message explaining when a transition is not triggerable.
      [gbastien]
    - Prevent double clicks when triggering a WF transition by disabling
      the link for 2 seconds.
      [gbastien]

- imio.actionspanel 1.55 (2021-06-04)

    - Implement method `show` when using async like it is already the case when not
      using async to know if viewlet must be shown.
      [gbastien]
    - Added `saveHasActions` call in actions_panel_add_content.pt.
      [sgeulette]
    - Fixed `actions_panel_arrows.pt` to display the arrows in a table so we avoid
      icons being one under others when there is not enough place to display it,
      actions have to be always on the same line.
      [gbastien]

- imio.actionspanel 1.54 (2021-04-26)

    - Fixed broken JS event on comment popup `Confirm` button to prevent default behavior,
      this probably leads to action not triggered from time to time on `Firefox`.
      [gbastien]

- imio.actionspanel 1.53 (2021-04-21)

    - Fixed `ActionsPanelView.getTransitions` check on transitions to confirm
      informations, do not consider that prefix of given transition to confirm is a
      `meta_type` but consider it as a `class name` as with `dexterity`, the
      `meta_type` is always the same an no more useable to discriminate content.
      [gbastien]
    - Added parameter `forceRedirectOnOwnDelete=False` to `ActionsPanelView.__call__`,
      when deleting an element, by default if current context is a faceted,
      the user is not redirected but the page is reloaded, if we are removing the
      page that holds the faceted then we need to redirect.
      [gbastien]
    - In JS function `deleteElement`, set `async:true` for the XHR request.
      [gbastien]
    - Fixed bug in Firefox not executing the JS `triggerTransition` XHR request when
      `async:true`, this was due to `preventDefaultClickTransition` not applied when
      using the `@@async_actions_panel` in the viewlet displaying actions,
      it was producing a `NS_BINDING_ERROR` because 2 click events were triggered.
      [gbastien]
    - When not using the `useIcons` mode (so when using viewlet displaying buttons),
      if no action at all, do not return an empty HTML table, just return nothing.
      This let's hide the entire viewlet when using the `@@async_actions_panel`.
      [gbastien]

- imio.actionspanel 1.52 (2021-01-26)

    - Fixed behavior of just reloading the faceted when deleting an element,
      this was broken because behavior between JS and python code changed and the
      user was redirected to the default dashboard.
      [gbastien]

- imio.actionspanel 1.51 (2020-12-07)

    - Added parameter `view_name="@@delete_givenuid"` to JS functions
      `confirmDeleteObject` and `deleteElement` so it is possible to call another
      view when deleting an element.
      It is also possible to avoid refresh and manage it manually.
      [gbastien]
    - Make sure table containing actions does not have any border especially on `<tr>`.
      [gbastien]

- imio.actionspanel 1.50 (2020-08-18)

    - Make CSS rule for `input[type="button"].notTriggerableTransitionButton` more
      specific so it is taken into account.
      [gbastien]
    - Fix message (tag title) displayed on a not triggerable WF transition when
      displayed as a button, the transition title was not included in the message.
      [gbastien]

- imio.actionspanel 1.49 (2020-06-24)

    - Fixed broken functionnality, when an action url was a `javascript` action,
      it was not always taken into account because tag <a> `href` was not disabled
      using `event.preventDefault()`.
      [gbastien]

- imio.actionspanel 1.48.1 (2020-05-26)

    - Requires `imio.helpers`.
      [gbastien]

- imio.actionspanel 1.48 (2020-05-26)

    - In `DeleteGivenUidView.__call__`, use `imio.helpers.content.uuidsToObjects`
      with parameter `check_contained_uids=True` to get the object to delete,
      so if not found querying with `UID` index, it will use the `contained_uids`
      index if it exists in the `portal_catalog`.
      [gbastien]

- imio.actionspanel 1.47 (2020-04-29)

    - Add Transifex.net service integration to manage the translation process.
      [macagua]
    - Add Spanish translation
      [macagua]
    - In `actions_panel_actions.pt`, added `<form>` around `<input>`
      to be able to use `overlays`.
      [gbastien]

- imio.actionspanel 1.46 (2020-02-18)

    - Added renderFolderContents section, rendered following flag and/or interface.
      [sgeulette]
    - In `views.AsyncActionsPanelView.__call__`, remove random value `'_' (ajax_load)`
      from `**kwargs` before calling the `@@actions_panel` or `ram_cached`
      `@@actions_panel.__call__` never work as kwargs are always different.
      [gbastien]

- imio.actionspanel 1.45 (2019-11-25)

    - Changed sections order.
      [sgeulette]

- imio.actionspanel 1.44 (2019-09-13)

    - By default, do not display the `Edit` action when calling
      `@@async_actions_panel`.
      [gbastien]

- imio.actionspanel 1.43 (2019-09-12)

    - Disabled first option of add content button list.
      [sgeulette]
    - Added apButtonSelect class on select button
      [sgeulette]
    - Do not link anymore showEdit to showIcons.
      Disabled by default showEdit in viewlet.
      Render edit as button too.
      [sgeulette]

- imio.actionspanel 1.42 (2019-06-28)

    - Store result of `ActionsPanelView.getTransitions` in `self._transitions` as
      it is called several times to make sure transitions are computed only one time.
      [gbastien]
    - In `ConfirmTransitionView`, store the actionspanel view instead instanciating
      it several times as call to `actionspanel.getTransitions` is cached on the
      actionspanel view.
      [gbastien]

- imio.actionspanel 1.41 (2019-06-07)

    - In `load_actions_panel JS function`, do not reload in case of error or the
      page is reloaded ad vitam.  Display an error message instead.
      [gbastien]
    - When using `string:` expressions, do not insert a blank space like
      `string: `` or it is kept once rendered.
      [gbastien]
    - Manage `IGNORABLE_ACTIONS` the same way `ACCEPTABLE_ACTIONS` so we filter out
      first every non relevant actions then we evaluate it.
      Removed management of `IGNORABLE_CATEGORIES` and `IGNORABLE_PROVIDERS`, we
      only keep `object_buttons` and providers `portal_actions/portal_types`.
      [gbastien]

- imio.actionspanel 1.40 (2019-05-16)

    - Fixed message `KeyError: 'confirm'` in Zope log when a transition is
      triggered on an element for which it is not available anymore
      (already triggered in another browser tab for example).  In this case,
      we just refresh the page.
      [gbastien]
    - Fix `saveHasActions` is not called when only untriggerable transitions.
      [gbastien]

- imio.actionspanel 1.39 (2019-03-27)

    - When showing actions and ACCEPTABLE_ACTIONS is defined, directly worked
      with those restricted set. Faster method.
      [sgeulette]
    - Added parameter ActionsPanelViewlet.async (set to False by default) to be
      able to render the actions panel viewlet asynchronously using a JS Ajax
      request.  Set every JS ajax request with async:false to be sure that screen
      is refreshed when state changed.
      [gbastien]
    - Disabled showOwnDelete when 'delete' is in acceptable actions
      [sgeulette]

- imio.actionspanel 1.38 (2019-01-31)

    - Install `collective.fingerpointing` as we rely on it.
      [gbastien]
    - By default, do not render the viewlet in overlays.
      [gbastien]

- imio.actionspanel 1.37 (2018-11-06)

    - Use safely unicoded transition title.
      [sgeulette]

- imio.actionspanel 1.36 (2018-08-22)

    - Moved `views._redirectToViewableUrl` logic to `utils.findViewableURL` so it
      can be used by external code.
      [gbastien]
    - Don't nullify margin of actionspanel-no-style-table.
      [sgeulette]

- imio.actionspanel 1.35 (2018-05-22)

    - In `triggerTransition`, do not only catch `WorkflowException` as raised error
      could be of another type.
      [gbastien]
    - When an error occurs during a workflow transition, make sure we
      `transaction.abort()` or `review_state` is changed nevertheless.
      [gbastien]

- imio.actionspanel 1.34 (2018-04-20)

    - Use a real arrow character `🡒` instead `->` when building the transition not
      triggerable icon help message.
      [gbastien]
    - Fixed call to unexisting method `actionspanel_view._gotoReferer()` when
      cancelling transition confirmation popup (only happens if popup is not
      correctly opened as an overlay).
      [gbastien]

- imio.actionspanel 1.33 (2018-03-19)

    - Rely on imio.history IHContentHistoryView.show_history to know if the history
      icon must be shown.  We need imio.history >= 1.17.
      [gbastien]

- imio.dashboard 2.12 (2023-07-07)

    - `get_transitions` was moved from `imio.helpers.content` to `imio.helpers.workflow`.
      [gbastien]

- imio.dashboard 2.11 (2023-03-22)

    - Changes for WCA compatibility.
      [odelaere]

- imio.dashboard 2.10 (2022-10-25)

    - Adapts generationlink viewlet to last `collective.documentgenerator` last changes.
      [sdelcourt]

- imio.dashboard 2.9 (2022-01-07)

    - Fixed setup functions changing state of created elements, use
      `imio.helpers.content.get_transitions` instead `portal_workflow.getTransitionsFor`.
      [gbastien]

- imio.dashboard 2.8 (2020-08-18)

    - Enable `PloneGroupUsersGroupsColumn` in dashboards displaying organizations.
      [gbastien]

- imio.dashboard 2.7 (2020-05-08)

    - Use `OrgaPrettyLinkWithAdditionalInfosColumn` instead `PrettyLinkColumn`
      in dashboards displaying persons and held_positions.
      [gbastien]

- imio.dashboard 2.6 (2019-05-16)

    - Use `OrgaPrettyLinkWithAdditionalInfosColumn` and `SelectedInPlonegroupColumn`
      in dashboards displaying organizations.
      [gbastien]

- imio.dashboard 2.5 (2019-03-28)

    - Fix an issue with SolR and combined indexes
      [mpeeters]
    - For `imio.dashboard.ContactsReviewStatesVocabulary`, take into account
      workflow of each contact portal_types (organization, person, held_position)
      as it can be different for each.
      [gbastien]
    - Add CSS class to `ContactPrettyLinkColumn` if content is an organization,
      so we have a different class for every elements and we can style specific
      content.  This needed to add soft dependency to `collective.contact.core`.
      [gbastien]
    - Corrected typo
      [sgeulette]

- imio.dashboard 2.4 (2019-01-25)

    - Keep order of migrated portlet
      [sgeulette]
    - Added projectspace type in migration.
      [sgeulette]
    - Pinned products
      [sgeulette]
    - Fixed test for fingerpointing
      [sgeulette]

- imio.dashboard 2.3 (2018-12-04)

    - Added translations for `Add contacts` icons.
      [gbastien]

- imio.dashboard 2.2 (2018-11-29)

    - Fixed failing migration because unexisting attribute `exclude_from_nav`
      was migrated with the parent's value that is an instancemethod and it crashed
      the transaction during commit because it can not be serialized.
      [gbastien]
    - Completelly removed ActionsColumn as it was moved to
      `collective.eeafaceted.z3ctable` previously.
      [gbastien]
    - Moved CachedCollectionVocabulary to collective.eeafaceted.collectionwidget, now named
      `collective.eeafaceted.collectionwidget.cachedcollectionvocabulary`.
      Moved also dashboard collection related events.
      [sgeulette]
    - Migration: secure attribute get in DashboardPODTemplateMigrator.
      Include portal portlet migration.
      [sgeulette]
    - Added `setuphandlers.add_orgs_searches` that adds dashboards for
      `collective.contact.core` on the `/contacts directory`.
      [gbastien]

- imio.dashboard 2.1 (2018-09-04)

    - Added back imio.dashboard.js file to remove faceted spinner
      and speed up faceted fade speed.
      [gbastien]
    - Added migrator `DashboardPODTemplateMigratorWithDashboardPODTemplateMetaType`
      as due to missing migration to 0.28 where `DashboardPODTemplate meta_type`
      was changed from `DashboardPODTemplate` to `Dexterity Item`, we may have
      `DashboardPODTemplate` created with different meta_types that is still
      cataloged.  This way we manage both cases.
      [gbastien]
    - The `actions` column was moved to `collective.eeafaceted.z3ctable`.
      [gbastien]

- imio.dashboard 2.0 (2018-06-21)

    - Change JS `Faceted` options in the `ready` function so we are sure that
      Faceted exists.
      [gbastien]
    - Rely on `collective.eeafaceted.dashboard` to move to Plone5.  Dashboard
      functionnalities working on Plone5 are now moved to this package we are
      relying on.  Needs `eea.facetednavigation` >= 10.0.
      [gbastien]

- imio.dashboard 1.7 (2018-05-25)

    - Moved some methods to collective.eeafaceted.collectionwidget:
      _get_criterion, getCollectionLinkCriterion, getCurrentCollection
      [sgeulette]
    - Consider other view than "facetednavigation_view" as outside faceted.
      [sgeulette]

- imio.dashboard 1.6 (2018-05-03)

    - Do not rely on the `context.REQUEST` to get the `REQUEST` because context is a
      `ram.cached DashboardCollection` and `REQUEST` is not reliable.
      Use `getRequest` from `zope.globalrequest` to get the `REQUEST`.
      The `REQUEST` is set in `term.request` so it is directly available.
      [gbastien]

- imio.dashboard 1.5 (2018-04-23)

    - Invalidate `imio.dashboard.conditionawarecollectionvocabulary` vocabulary
      cache when a WF transition is triggered on a `DashboardCollection`.
      [gbastien]

- imio.dashboard 1.4 (2018-04-20)

    - Use `ram.cache` for the `imio.dashboard.conditionawarecollectionvocabulary`
      vocabulary.  This is user and closest faceted context relative and is
      invalidated when a `DashboardCollection` is modified.
      [gbastien]

- imio.dashboard 1.3 (2018-01-06)

    - Do not use CSS to manage contenttype icon,
      we have an icon_epxr on the portal_types.
      [gbastien]

- imio.dashboard 1.2 (2017-12-01)

    - Removed 'imiodashboard_js_variables.js' as it just translated the
      'no_selected_items' message and it is now in
      'collective.eeafaceted.batchactions' this package is relying on.
      [gbastien]

- imio.dashboard 1.1 (2017-11-24)

    - Added upgrade step that installs 'collective.eeafaceted.batchactions'.
      [gbastien]

- imio.dashboard 1.0 (2017-11-23)

    - Corrected icon path and added contenttype-dashboardpodtemplate style.
      [sgeulette]
    - Rely on 'collective.eeafaceted.batchactions', removed 'select_row' column
      that is already defined in 'collective.eeafaceted.batchactions'.
      [gbastien]

- imio.helpers 0.74 (2023-08-24)

    - Fixed `cache.obj_modified` when checking annotations, take care that `_p_mtime`
      is not changed on `__annotations__` when a value changes in a stored annotation
      that is a `PersistentMapping`.
      Also removed parameter `asstring=False`, when `asdatetime=False`, returned
      value is float which is convenient to be used in a cachekey.
      [gbastien]
    - Add `catalog` parameter on `content.uuidsToObjects`, `content.uuidsToObject`,
      `content.uuidsToCatalogBrains` and `uuidsToCatalogBrain` to allow query on
      other catalogs (e.g. uid_catalog)
      [mpeeters]

- imio.helpers 0.73 (2023-07-20)

    - Be more defensive in `content.get_user_fullname`, in some case, a userid
      is found in `mutable_properties` but there is no properties associated with it.
      [gbastien]
    - Improved `transmogrifier.clean_value` giving a replacement value
      [sgeulette]

- imio.helpers 0.72 (2023-07-12)

    - In `submitFormHelperOnsuccessDefault` JS function, only manage `blob` if
      `content-type` is `application/xxx`.
      [gbastien]
    - Added `content.sort_on_vocab_order` that will sort a list of `values`
      respecting a given `vocabulary` terms order. This relies on `sort_by_indexes`
      from `imio.pyutils` that is now a dependency.
      [gbastien]

- imio.helpers 0.71 (2023-07-07)

    - Modified `transmogrifier.relative_path` to add option to keep leading slash
      (True by default).
      [sgeulette]
    - In `content.get_user_fullname`, if `fullname` not found at the end,
      finally fallback to `portal_membership.getMemberInfo`, this is sometimes
      necessary when using LDAP.
      [gbastien]
    - Removed backward compatible imports for `get_state_infos`, `get_transitions`
      and `do_transitions` moved from `content` to `workflow`.
      [gbastien]

- imio.helpers 0.70 (2023-06-21)

    - Added `security.check_zope_admin` (moved from `Products.CPUtils`).
      [gbastien]
    - Improved `transmogrifier.filter_keys`
      [sgeulette]
    - Added `workflow.update_role_mappings_for` helper to update WF role mappings
      for a given object.
      [gbastien]

- imio.helpers 0.69 (2023-05-31)

    - Monkeypatch `CatalogTool._listAllowedRolesAndUsers` to add `ram.cache` decorator.
      [gbastien]

- imio.helpers 0.68 (2023-05-12)

    - Added `split_text` in transmogrifier module.
      [sgeulette]
    - Added `workflow.get_leading_transitions` that will return every WF transitions
      leading to a given `state_id`.
      [gbastien]

- imio.helpers 0.67 (2023-03-29)

    - Added `clean_value`, `correct_path`, `filter_keys`, `get_obj_from_path` in transmogrifier module.
      [sgeulette]
    - Added `key_val`, `pool_tuples`, `str_to_date` in transmogrifier module.
      [sgeulette]
    - Renamed `text_int_to_bool` to `str_to_bool`
      [sgeulette]

- imio.helpers 0.66 (2023-02-13)

    - Added `transmogrifier` module with `get_main_path`, `relative_path` and
      `text_int_to_bool` functions.
      [sgeulette]
    - Added `none_if_unfound` parameter in `get_user_fullname` function
      [sgeulette]
    - Added parameter `onsuccess=false` to JS function `callViewAndReload` so it is
      possible to trigger custom JS code after a success.
      [gbastien]
    - Added `xhtml.is_html` that will return True or False if given text is HTML or not.
      [gbastien]
    - Raised validation error when email realname contains an accented character
      [sgeulette]

- imio.helpers 0.65 (2022-12-07)

    - Return new date when `cache.invalidate_cachekey_volatile_for` is called with
      `get_again=True`.
      [gbastien]
    - Use `dict.items` instead `dict.iteritems` for Py2/Py3 compatibility.
      [gbastien]

- imio.helpers 0.64 (2022-10-28)

    - Added `workflow.remove_state_transitions` function do remove transitions on a state and clean duplicates
      [sgeulette]
    - Added more tests on cached methods.
      [sgeulette]

- imio.helpers 0.63 (2022-09-01)

    - Invalidated '_users_groups_value' volatile after a call of `GroupAwareRoleManager.assignRolesToPrincipal`,
      `ZODBRoleManager.assignRoleToPrincipal` and `ZODBRoleManager.removeRoleFromPrincipal`
      [sgeulette]
    - Removed duplicated classifiers.
      [sgeulette]

- imio.helpers 0.62 (2022-08-19)

    - Added `IMIORAMCache` using `IMIOStorage` to extend used cache duration and
      improve displayed statistics
      [gbastien]
    - Added cache on various acl methods following `decorate_acl_methods` env variable
      [gbastien, sgeulette]
    - Added IIMIOLayer BrowserLayer (need to execute upgrade step to 2).
      [gbastien]
    - Override `caching-controlpanel-ramcache` to compute totals for `Hits`, `Misses`,
      `Size` and `Entries`, display `Older entry`, do not break to display statistics
      when a pickle error occurs but add a portal message.
      [gbastien]
    - Added parameter `ttl=0` to `cache.get_cachekey_volatile` this way a date older
      than given `ttl` (in seconds) will be recomputed.
    - Added 'none_if_no_user' param in `content.get_user_fullname`.
      [sgeulette]
    - Always return unicode in `content.get_user_fullname`.
      [sgeulette]
    - Added `test_helpers.ImioTestHelpers` class with useful methods from iA.delib
      [sgeulette]
    - Added `vocabularies.SimplySortedUsers` and modified `vocabularies.SortedUsers`
      [sgeulette]
    - Added `cache.get_users_in_plone_groups`
      [sgeulette]
    - Added `setup.load_type_from_package` to reload a single type.
      Moved `workflow.load_workflow_from_package` to `setup.load_workflow_from_package`.
      [gbastien]

- imio.helpers 0.61 (2022-07-01)

    - Moved workflow related functions from content to workflow module.
      [sgeulette]
    - Added `workflow.load_workflow_from_package` to reload a single workflow.
      [sgeulette]
    - Be defensive in JS function `toggleDetails` if tag is not available.
      [gbastien]

- imio.helpers 0.60 (2022-06-24)

    - Handled unfound site in `set_site_from_package_config`.
      [sgeulette]

- imio.helpers 0.59 (2022-06-21)

    - Added `escaped=True` param on `xhtml.object_link`.
      [sgeulette]
    - Require a version of `future` recent enough so `html.escape` is available.
      [gbastien]
    - Added parameter `replace_not_found_image=True` to `xhtml.storeImagesLocally`,
      when `True` (default) and an image could not be retrieved,
      a `Not found` image will be used. This solves problem when copy/paste a private
      image from another site, available in the browser because of shared
      authentication but not retrievable.
      [gbastien]

- imio.helpers 0.58 (2022-06-14)

    - Added `get_zope_root` to get zope app.
      [sgeulette]
    - Added `zope_app` parameter in `set_site_from_package_config`.
      [sgeulette]
    - Fixed `xhtml.replace_content`, make sure the entire content is replaced
      including sub tags.
      [gbastien]

- imio.history 1.28 (2023-02-27)

    - Added possibility to display an event preview under the comment
      in the `@@contenthistory` view.
      [gbastien]
    - Make the `highlight_last_comment` functionnality generic, it was only used
      with WF history but now any history may be set `highlight_last_comment=True`.
      [gbastien]

- imio.history 1.27 (2022-06-14)

    - Added `safe_utils.py` that will only include safe utils.
      [gbastien]

- imio.history 1.26 (2022-03-08)

    - Fixed display of actor fullname in `@@historyview`.
      [gbastien]

- imio.history 1.25 (2022-03-07)

    - Optimized `@@contenthistory` view.
      [gbastien]

- imio.history 1.24 (2022-02-25)

    - In `content_history` template, only fix date column width,
      for other columns, let the browser optimize it.
      [gbastien]

- imio.history 1.23 (2021-04-21)

    - Add Transifex.net service integration to manage the translation process.
      [macagua]
    - Add Spanish translation
      [macagua]

- imio.history 1.22 (2021-03-04)

    - Changed default to `False` for parameters `checkMayViewEvent=False` and
      `checkMayViewComment=False` of `utils.getLastAction`, this way, we get last
      action even if current user may not, and it is quicker.
      This fix a performance issue in `ImioWfHistoryAdapter.historyLastEventHasComments`
      when called several times.
      [gbastien]
    - In `utils.getLastAction`, parameter `action` may be `before_last` and will
      return the before last action if it exists.
      [gbastien]

- imio.migrator 1.32 (2022-07-01)

    - Added `utils.ensure_upgraded` that will make sure a given `package_name` is upgraded,
      this is useful when some content or registry records need to be present to handle some code.
      Here the usecase is a Zope starting handler needing a registry record that may not be present
      if package not upgraded.
      [gbastien]

- imio.migrator 1.31 (2022-05-16)

    - Added `is_in_part` function to run partially a migration with imio.updates. (See
      FUNC_PARTS in https://github.com/IMIO/imio.updates/blob/master/README.rst)
      [sgeulette]

- imio.migrator 1.30 (2021-11-15)

    - Modified `runProfileSteps` method by changing default value of parameter `run_dependencies`.
      Now it's False by default !!
      [sgeulette]
    - Added `runProfileSteps` docstring.
      [sgeulette]

- imio.migrator 1.29 (2021-07-16)

    - Log more infos when updating workflows in `Migrator.refreshDatabase(workflows=True)`.
      [gbastien]

- imio.migrator 1.28 (2021-06-04)

    - Added parameter `total_number=None` to `utils.end_time`, when an integer
      is given, the generated message will include info about number of elements
      processed per second.
      [gbastien]

- imio.migrator 1.27 (2021-03-24)

    - Moved end time computation and display to `utils.end_time` so it is easy to
      reuse in other contexts.
      Display `days/hours/minutes` only if relevant.
      [gbastien]

- imio.migrator 1.26 (2020-09-07)

    - Log every 1000 elements instead 100 in `Migrator.reindexIndexes` and
      `Migrator.reindexIndexesFor`.
      [gbastien]

- imio.migrator 1.25 (2020-08-18)

    - In `Migrator.removeUnusedPortalTypes`, remove also `portal_types` from
      `site_properties.types_not_searched`.
      [gbastien]

- imio.migrator 1.24 (2020-06-29)

    - Fix python 3.8 synthax error.
      [odelaere]

- imio.prettylink 1.21 (2023-08-24)

    - Adapted call to `imio.helpers.cache.obj_modified` as parameter `asstring=False`
      was removed, we just use the default result type that is `float`.
      [gbastien]

- imio.prettylink 1.20 (2022-06-14)

    - Escape link content to avoid malicious behaviour.
      [gbastien]

- imio.prettylink 1.19 (2022-01-12)

    - Used now `imio.helpers.cache.obj_modified` in `getLink_cachekey` to include
      annotation change in modification date.
      [sgeulette]
    - Updated git fetch url
      [sgeulette]

- imio.prettylink 1.18 (2021-03-08)

    - Improve check for file when adding `@@download` in url.
      [laz, boulch]

- imio.schedule 3.0.2 (2025-10-06)

    Bug fixes:

    - Fix an issue where images were escaped for assign user column
      [mpeeters] (URBBDC-3204)

- imio.schedule 3.0.1 (2025-10-01)

    Bug fixes:

    - Avoid an error during upgrade steps with collections recreated after a move or a delete
      [mpeeters] (URBBDC-3204)

- imio.schedule 3.0.0 (2025-05-27)

    Breaking changes:

    - Fix interpretation logic of conditions that was wrong in few case (e.g. AND, OR, AND) (URB-3154)

    New features:

    - Allow additional delay to be a TAL expression
      [mpeeters] (URB-3005)
    - Add debug functionality
      [mpeeters] (URB-3070)

    Internal:

    - Black
      [mpeeters] (SUP-27104)
    - Fix tests
      [mpeeters] (URB-3005)

- imio.schedule 2.2.2 (2024-04-25)

    New features:

    - Allow additional delay to be a TAL expression
      [mpeeters] (URB-3005)

    Internal:

    - Black
      [mpeeters] (SUP-27104)
    - Fix tests
      [mpeeters] (URB-3005)

- imio.schedule 2.2.1 (2024-04-10)

    - Fix object deserializer
      [jchandelle]

- imio.schedule 2.2.0 (2024-03-30)

    - URB-3005: Add a deserializer for objects that also handle vocabulary specificities
      [mpeeters]
    - URB-3005: Add converters for schedule objects
      [mpeeters]

- imio.schedule 2.1.0 (2023-12-26)

    - Underline close due dates [URB-2515]
      [ndemonte]

- imio.schedule 2.0.2 (2023-09-01)

    - Add specificity to upgradestep check [URB-2868]
      [jchandelle]

- imio.schedule 2.0.1 (2023-08-01)

    - Fix order of upgrade steps [URB-2627]
      [mpeeters]

- imio.schedule 2.0.0 (2023-07-03)

    - Migrate to use `collective.eeafaceted.collectionwidget` [URB-2627]
      [mpeeters]

- imio.schedule 1.9.0 (2023-07-03)

    - URB-1537 - Change collection column name
      [jchandelle]

- plonetheme.imioapps 2.43 (2023-08-24)

    - Fix document generation actions on dashboard for urban [URB-2863]
      [mpeeters]
    - Fix faceted autocomplete widget width in urban [URB-2866]
      [jchandelle]
    - Removed styling rule for `.tooltipster-base img` as image `height/width`
      is now forced to `16px` in `collective.iconifiedcategory`.
      [gbastien]

- plonetheme.imioapps 2.42 (2023-07-07)

    - `get_state_infos` was moved from `imio.helpers.content` to
      `imio.helpers.workflow`, adapted import accordingly.
      [gbastien]

- plonetheme.imioapps 2.41 (2023-06-27)

    - Style table header the same way for HTML tables and DX/AT datagrid fields.
      [gbastien]

- plonetheme.imioapps 2.40 (2023-06-15)

    - Add a red color to the denied status of divisions
      [fngaha]

- plonetheme.imioapps 2.39 (2023-03-29)

    - Fixed css to align multi select2 widget to the left.
      [sgeulette]

- plonetheme.imioapps 2.38 (2023-02-13)

    - Added `.no-style-table tr.hide-bottom-border` that will remove
      the bottom border when displaying fields in a table.
      [gbastien]
    - Avoid large image breaking the advice tooltipster.
      [gbastien]
    - Style results displayed in `referencebrowserwidget`.
      [gbastien]
    - Adapted override of `collective.messagesviewet` viewlet manager as base class
      and definition were changed since integration of global/local messages.
      [gbastien]
    - Make `ftw.labels` configuration label edit overlay larger.
      [gbastien]

- plonetheme.imioapps 2.37 (2022-08-26)

    - CSS for `generationlinks` from `collective.documentgenerator` now that templates
      are grouped by title, the title is no more clickable so make the icon larger,
      make the icons look like buttons.
      [gbastien]
    - On hover of `prettylink` in `#portal-column-one`, apply same styles as in `#content`.
      [gbastien]
    - Removed rule `vertical-align: bottom;` for `#content input`.
      [gbastien]
    - Fixed contenttype icon `max-width` to 16px, necessary when the img is a svg.
      [gbastien]

- plonetheme.imioapps 2.36 (2022-06-17)

    - Do not force an height for img or it hides broken images.
      [gbastien]

- plonetheme.imioapps 2.35 (2022-05-17)

    - Completed CSS for `livesearch`, make it looks correctly in Chrome too.
      [gbastien]

- plonetheme.imioapps 2.34 (2022-05-16)

    - Fixed the default Plone `@@search`:

      - Hide the wildcard search madness, do not display a `*`, every searches are
        done wildcard like it is the case in dashboards;
      - Only display link to `Advanced search` in the livesearch response,
        hide the `Show all results`.

      [gbastien]
    - Hide the wildcard search madness, do not display a `*`, every searches are
      done wildcard like it is the case in dashboards;
    - Only display link to `Advanced search` in the livesearch response,
      hide the `Show all results`.

- plonetheme.imioapps 2.33 (2022-04-26)

    - Added some margin at right of a tooltipster so it is never sticked to the screen edge.
      [gbastien]
    - Make sure very long words are splitted, this is necessary for Firefox where
      a very long word (or a sentence made of words separated by `-` withtout `blank`)
      was not splitted, making a long horizontal scroll appear.
      [gbastien]

- plonetheme.imioapps 2.32 (2022-03-22)

    - Fix, add margin under a `tooltipster` only if it is not displayed `top`
      or there is space between tooltipster and origin.
      [gbastien]

- plonetheme.imioapps 2.31 (2022-03-22)

    - Added some margin under a tooltipster so it is never sticked to the screen edge.
      [gbastien]

- plonetheme.imioapps 2.30 (2022-03-07)

    - If current URL contains `preprod`, highlight `portal-header` (turn it red).
      [jjaumotte]
    - Reduce size of `h1 title`, in view mode as well as in edit mode (input).
      [gbastien]

- plonetheme.imioapps 2.29 (2021-11-08)

    - Make abbr/acronym tag display better (space between text and dotted border).
      [gbastien]

- plonetheme.imioapps 2.28 (2021-10-13)

    - Set size of svg content icon in `folder_factories`.
      [gbastien]

- plonetheme.imioapps 2.27 (2021-08-27)

    - Added some space between input of an AT multiselection widget.
      [gbastien]
    - Added borders on fieldset tabs to distinguish them clearlier.
      [sgeulette]
    - Removed icons used to manage "More/Less filters" on the faceted search,
      replace it with an "Advanced search" link and a "Search" icon.
      We rely on collective.fontawesome for the "Search" icon.
      [gbastien]
    - Removed styles about `enableFormTabbing` displayed on view, this interacts
      when editing an element in an overlay (because parent frame is a view)
      and does not seem used anywhere?
      [gbastien]

- plonetheme.imioapps 2.26 (2021-07-16)

    - imioapps : avoid empty blank space at bottom of tooltipster by using
      `height:auto` on tooltispter container.
      [gbastien]

- plonetheme.imioapps 2.25 (2021-07-16)

    - imioapps : harmonize input border color with `select2` input (a bit darker).
      [gbastien]
    - plonemeetingskin : remove defined height for `viewlet-below-content-title`.
      [gbastien]
    - imioapps : added delete icon on delete batch action button and
      download icon on download annexes batch action button.
      [gbastien]
    - Limit `select_row` column with as much as possible.
      [gbastien]
    - imioapps : increased a bit padding bottom between fields on edit forms.
      [gbastien]

- plonetheme.imioapps 2.24 (2021-04-21)

    - Fixed problems with too high `tooltipster` overflowing the screen,
      fixed a `max-height` so we have a vertical scroll when necessary.
      [gbastien]
    - Changed ia.docs footer viewlets
      [sgeulette]

- plonetheme.imioapps 2.23 (2021-03-12)

    - Display `cursor: pointer;` when hovering a button or a checkbox.
      [gbastien]
    - Resized svg documentgenerator icons
      [sgeulette]
    - Avoid tooltipster of more than 80% width.
      [gbastien]
    - Move urban css and icons to plonetheme.imioapps.
      [sdelcourt]

- plonetheme.imioapps 2.22 (2021-01-06)

    - imioapps : use `width:auto` for overlay popups and set `max-height: 800px`
      to avoid vertical scroll as much as possible.
      [gbastien]
    - imioapps : fix `referencebrowserwidget` batching hover and search button size.
      [gbastien]
    - imioapps : make the `hover` on pretty links work again.
      [gbastien]
    - imioapps : specifically do not add bottom border on `<tr>` of `<table>` using
      `no-style-table` when class `no-border` is applied on `<tr>` tag.
      [gbastien]
    - imioapps : in styles defined to avoid using Firefox default (see version 2.19),
      set a lighter border for input/textarea/...
      [gbastien]
    - imioapps : make sure the ajax spinner is displayed hover overlays.
      [gbastien]
    - imioapps : make the checkboxes displayed in dashboard `CheckBoxColumn`
      column easier to click.
      [gbastien]
    - imioapps : add a specific CSS class on body using JS function when brower is
      using `Chrome/Chromium/Safari` (`using-chrome`) or
      when it is using `Firefox` (`using-firefox`).
      [gbastien]
    - imioapps : make the faceted result table header sticky.
      [gbastien]

- plonetheme.imioapps 2.21 (2020-10-07)

    - imioapps : skin data displayed in `PrettyLinkWithAdditionalInfosColumn` column,
      add some margin between data.
      [gbastien]

- z3c.table 2.2 (2022-02-11)

    - Add support for Python 3.8, 3.9 and 3.10.

- z3c.table 2.1.1 (2019-03-26)

    - Fix: escape special HTML characters at ``Column.renderHeadCell``,
      ``NameColumn.getName``, ``CheckBoxColumn`` name and value,
      ``RadioColumn`` name and value, ``LinkColumn`` href and link content.

- z3c.table 2.1 (2019-01-27)

    - Added support for Python 3.7 and PyPy3.
    - Dropped support for running the tests using `python setup.py test`.
    - Reformatted the code using black and flake8.

- z3c.table 2.0.1 (2017-04-19)

    - Required future>=0.14.0 so `html` package is available in Python 2.7.

- z3c.table 2.0.0 (2017-04-17)

    - Updated to support Python 2.7, 3.5, and 3.6 only.
    - Added html title attribute on LinkColumn

- z3c.table 2.0.0a1 (2013-02-26)

    - Added support for Python 3.3, dropped support for Python 2.5 and below.
    - Got rid of testing dependencies on z3.testing and zope.app.testing.

- Pin package `defusedxml` to `0.7.1`

- Pin package `plone.formwidget.namedfile` to `2.0.5`

- Pin package `collective.upgrade` to `1.3`

- Pin package `collective.eeafaceted.dashboard` to `0.20`

- Pin package `isodate` to `0.6.1`

- Pin package `cached-property` to `1.5.2`

- Pin package `appdirs` to `1.4.4`

- Pin package `zodbupdate` to `0.5`

- Pin package `collective.big.bang` to `1.0.3`

- Pin package `imio.pyutils` to `0.30`

- Pin package `zeep` to `3.4.0`

- Pin package `file-read-backwards` to `1.2.2`

- Pin package `plone.app.contenttypes` to `1.1.9`

- Pin package `Products.PloneHotfix20210518` to `1.5`

- Pin package `xmlsec` to `1.3.12`

- Remove pinned packages that are direct plone dependencies


2.4.34-liege (2025-07-27)
-------------------------

- liege.urban 1.0.9 (2025-07-27)

    Bug fixes:

    - Add an upgrade step for workflows, permissions and allowed content types
      [mpeeters] (SUP-45220)


2.4.33-liege (2025-07-22)
-------------------------

- Products.urban 2.5.0.dev19 (2025-07-22)

    New features:

    - Add merge field for getting first or last opinion request event
      [jchandelle] (SUP-45220)
    - Add option to add complementary delay to task
      Add value for SPW cyberattack
      [jchandelle] (URB-3337)

    Bug fixes:

    - Fix date format in claimant import
      [jchandelle] (SUP-41210)


2.4.32-liege (2025-07-14)
-------------------------

- Products.urban 2.5.0.dev18 (2025-07-14)

    Internal:

    - Improve performances for add views
      [mpeeters] (URB-2903)


2.4.31-liege (2025-07-01)
-------------------------

- Products.urban 2.5.0.dev17 (2025-07-01)

    New features:

    - Give opinion editor roles on road decree's bound licence
      [daggelpop] (SUP-29258)
    - Add way to easily hide licence type
      [jchandelle] (SUP-33793)
    - Add centrality to every licence & make it a multiselect
      [daggelpop]
      Move centrality in first position in the fieldset
      [daggelpop] (URB-3017)
    - Add bound licences field to patrimony certificates
      [daggelpop] (URB-3046)
    - Add 3 surface fields to commercial licence
      [daggelpop] (URB-3117)

    Bug fixes:

    - Fix history parcel view when missing capakey
      [jchandelle] (SUP-36370)
    - Fix encoding in mail send notification
      [jchandelle] (SUP-43917)


2.4.30-liege (2025-06-05)
-------------------------

- Add environnment-vars URBAN_SCHEDULE_CONFIGS
  [aduchene] (URB-3210)


- Products.urban 2.5.0.dev16 (2025-06-05)

    New features:

    - Change limit year of date widget to current year + 25 (liege)
      [jchandelle] (URB-3153)
    - Add stringinterp to get foldermanager email
      [jchandelle] (URB-3283)

    Bug fixes:

    - Migrate patrimony certificates to their correct object class (instead of misc demand)
      [daggelpop] (URB-3121)
    - Fixed `get_ws_meetingitem_infos` and `_get_wspm_text_field`.
      [aduchene] (URB-3211)
    - Add missing method for schedule calculation
      [daggelpop] (URBBDC-3192)


- liege.urban 1.0.8 (2025-06-05)

    Bug fixes:

    - Fix catalog query path for form_address in report
      [jchandelle] (SUP-45007)
    - Fix missing import
      [aduchene] (URB-3258)


2.4.29-liege (2025-02-14)
-------------------------

- Products.urban 2.5.0.dev15 (2025-02-14)

    Bug fixes:

    - Fix sort transition function logic
      [jchandelle] (SUP-42697)


2.4.28-liege (2025-02-13)
-------------------------

- Products.urban 2.5.0.dev14 (2025-02-13)

    New features:

    - Add external method to delete duplicate task
      [jchandelle] (SUP-42085)


2.4.27-liege (2025-02-07)
-------------------------

- Products.urban 2.5.0.dev13 (2025-02-07)

    New features:

    - Modify obsolete state display order
      [jchandelle] (SUP-36697)

    Bug fixes:

    - Fix sending zem document by mail
      [jchandelle] (SUP-40979)
    - Add missing translation in schedule config
      [WBoudabous] (URB-3277)


- liege.urban 1.0.7 (2025-02-07)

    New features:

    - Modify obsolete state workflow and display order
      [jchandelle] (SUP-36697)


2.4.26-liege (2025-01-16)
-------------------------

- Products.urban 2.5.0.dev12 (2025-01-16)

    New features:

    - Add interval commit to update_licences_open_tasks cron
      [jchandelle] (SUP-41904)
    - Add action for sending mail from event context with document in attachement
      [jchandelle] (URB-3020)
    - Add a link field on CODT build licences
      [mpeeters, daggelpop] (URB-3063)

    Bug fixes:

    - Allow corporate tenant in inspections
      [daggelpop] (SUP-33621)


- liege.urban 1.0.6 (2025-01-16)

    New features:

    - Adjust permissions on `codt_buildlicence_workflow` to handle `RoadReader` role.
      [aduchene]
      Add a new group `Voirie_readers` that can read all road decrees.
      [aduchene] (URBLIE-446)

    Bug fixes:

    - Don't dispatch on async instance in `MonthlyActivityReport`.
      [aduchene] (URB-3225)


2.4.25-liege (2024-10-17)
-------------------------

- liege.urban 1.0.5 (2024-10-17)

    New features:

    - Compatible with imio.pm.wsclient 2.x.
      [aduchene] (URB-3148)


2.4.24-liege (2024-10-16)
-------------------------

- Fix versions for `imio.pm.wsclient` & `imio.ws.register`


2.4.23-liege (2024-10-16)
-------------------------

- urban.schedule 1.0.0a6 (2024-10-16)

    New features:

    - Add two new creation conditions `IsPloneMeetingCollegeDone` and `IsPloneMeetingCouncilDone`.
      [aduchene]
      Add two new start dates `PloneMeetingCollegeDecidedDate` and `PloneMeetingCouncilDecidedDate`.
      [aduchene]
      Add roaddecree tasks for liege.
      [aduchene] (URB-3150)

- Products.urban 2.5.0.dev11 (2024-10-16)

    New features:

    - Use imio.pm.wsclient 2.x version (REST).
      [aduchene]
      Add `get_last_plonemeeting_date`, `get_last_college_date` and `get_last_college_date` to CODT_BaseBuildLicence.
      [aduchene] (URB-3148)

- imio.pm.wsclient 2.0.0b2 (2024-10-16)

    - Fix translation of overlay title
      [mpeeters]
    - Avoid an error if the user can not access to meetings
      [mpeeters]
    - Upgrade config for REST api
      [mpeeters]
    - Fixed all unit tests.
      [aduchene]
    - Add a new helper method `_rest_getDecidedMeetingDate` to get the actual decided meeting date.
      [aduchene]

2.4.22-liege (2024-10-04)
-------------------------

- urban.schedule 1.0.0a5 (2024-10-01)

    Bug fixes:


    - Add amended plans translations
      [daggelpop] (URB-3005)


2.4.21-liege (2024-10-01)
-------------------------

- Products.urban 2.5.0.dev10 (2024-10-01)

    New features:

    - Add validity date filter and index
      [jchandelle] (URB-3090)
    - Add field `D.67 CoPat` to patrimony fieldset
      daggelpop (URB-3167)


2.4.20-liege (2024-10-01)
-------------------------

- liege.urban 1.0.4 (2024-10-01)

    New features:

    - Add form_composition field to the export in `activity_report.py`.
      [aduchene] (SUP-37960)

    Bug fixes:

    - Fix performance issue with `activity_report.py`.
      [aduchene] (URB-3102)


2.4.19-liege (2024-07-04)
-------------------------

- imio.schedule 1.8.4 (2024-07-04)

    Bug fixes:

    - Fix duplicate serializer
      [jchandelle] (URB-3005)


2.4.18-liege (2024-06-27)
-------------------------

- Products.urban 2.5.0.dev9 (2024-06-27)

    New features:

    - Add recipient import to inquiries
      [daggelpop] (SUP-36417)

    Internal:

    - Test checking opnion FD delay
      [jchandelle]
      Test completion due dates after amending plans
      [daggelpop] (URB-3005)

- imio.schedule 1.8.3 (2024-06-27)

    New features:

    - Add deserializer for condition objects
      [jchandelle] (URB-3005)

- urban.events 1.0.0a5 (2024-06-27)

    New features:

    - URB-3005: Add `recepisse-de-plans-modificatifs` to standard config
      [daggelpop]
      URB-3005: Move `recepisse-de-plans-modificatifs` config to appropriate package
      [daggelpop] (URB-3005)

- urban.schedule 1.0.0a4 (2024-06-27)

    New features:

    - Add start_date and conditional adapter for amended plans
      [daggelpop]
      Add task config for amended plans
      [daggelpop]
      Add config for `recepisse-de-plans-modificatifs` event
      [daggelpop]
      Adapt `AcknowledgmentLimitDate` for `IntentionToSubmitAmendedPlans`
      [daggelpop]
      Change opinion FD delay for codt 2024 change
      [jchandelle] (URB-3005)


2.4.17-liege (2024-04-22)
-------------------------

- imio.schedule 1.8.2 (2024-04-22)

    New features:

    - Allow additional delay to be a TAL expression
      [mpeeters] (URB-3005)

    Internal:

    - Black
      [mpeeters] (SUP-27104)
    - Fix tests
      [mpeeters] (URB-3005)


2.4.16-liege (2024-04-21)
-------------------------

- Products.urban 2.5.0.dev8 (2024-04-21)

    Bug fixes:

    - Avoid to display disabled vocabulary entries with no start or end validity date
      [mpeeters] (SUP-36742)
    - Fix logic on some methods to exclude invalid vocabulary entries
      [mpeeters] (URB-3002)


2.4.15-liege (2024-04-07)
-------------------------

- Products.urban 2.5.0.dev7 (2024-04-07)

    Bug fixes:

    - Avoid an error if an advice was not defined
      [mpeeters] (SUP-36385)


2.4.14-liege (2024-04-01)
-------------------------

- liege.urban 1.0.3 (2024-04-01)

    New features:

    - Add caduc workflow state
      [jchandelle,mpeeters] (URB-3007)
    - Add frozen workflow state to article127, inspection and ticket
      [jchandelle] (URB-3023)

    Bug fixes:

    - Fix an issue with zope users on urban homepage
      [mpeeters] (URB-2956)


2.4.13-liege (2024-04-01)
-------------------------

- Products.urban 2.5.0.dev6 (2024-04-01)

    Bug fixes:

    - Move method methods to be available for every events.
      Change `is_CODT2024` to be true if there is no deposit but current date is greater than 2024-03-31.
      [mpeeters] (URB-3008)

    Internal:

    - Update setup for tests
      [mpeeters]
      Test checking completion task
      [daggelpop] (URB-3005)

- urban.schedule 1.0.0a3 (2024-03-30)

    New features:

    - Store checking completion task config for liege.
      Store reception task config for CODT Buildlicence and CU on Urban classic.
      [daggelpop, mpeeters] (URB-3005)

    Internal:

    - Add french translations for conditions.
      Handle specific configuration for Liege and Urban classic.
      Improve import of config by adding `match_filename` optional parameter to only import one config filename.
      [mpeeters] (URB-3005)

- imio.schedule 1.8.1 (2024-04-01)

    - URB-3005: Add a deserializer for objects that also handle vocabulary specificities
      [mpeeters]
    - URB-3005: Add converters for schedule objects
      [mpeeters]

- urban.events 1.0.0a4 (2024-03-23)

    New features:

    - Update or fix TAL Condition on CODT 2024 new events.
      Fix `eventType` attribute on Urban classic.
      [mpeeters] (URB-3006)

- urban.events 1.0.0a3 (2024-03-18)

    Bug fixes:

    - Fix an error with event config on Urban Classic
      [mpeeters] (URB-3006)

- Add `liege.urban` to test dependencies
  [mpeeters]

- Add `URBAN_SCHEDULE_CONFIGS` env variable (URB-3005)
  [mpeeters]


2.4.12-liege (2024-03-20)
-------------------------

- Products.urban 2.5.0.dev5 (2024-03-20)

    New features:

    - Make caduc and abandoned workflow state grey
      [jchandelle] (URB-3007)
    - Add `is_not_CODT2024` method that can be used in templates
      [mpeeters] (URB-3008)

    Bug fixes:

    - Fix update of vocabularies
      [mpeeters] (URB-3002)
    - Invert Refer FD delay 30 <-> 40 days
      [mpeeters] (URB-3008)


2.4.11-liege (2024-03-18)
-------------------------

- Remove Products.urban from auto-checkout
  [mpeeters]


2.4.10-liege (2024-03-18)
-------------------------

- Products.urban 2.5.0.dev4 (2024-03-18)

    New features:

    - Add `getCompletenessDelay`, `getCompletenessDelay` and `getFDAdviceDelay` methods that can be used in templates
      [mpeeters] (URB-3008)

- Products.urban 2.5.0.dev3 (2024-03-16)

    New features:

    - Add `is_CODT2024` and `getProrogationDelay` methods that can be used in template
      [mpeeters] (URB-2956)
    - Adapt vocabulary logic to include start and end validity dates
      [mpeeters] (URB-3002)
    - Adapt vocabulary terms for 2024 CODT reform
      [daggelpop] (URB-3003)
    - Add `urban.schedule` dependency
      [mpeeters] (URB-3005)
    - Add event fields `videoConferenceDate`, `validityEndDate` & marker `IIntentionToSubmitAmendedPlans`
      [daggelpop] (URB-3006)

    Bug fixes:

    - Fix delay vocabularies value order
      [mpeeters] (URB-3003)
    - Fix an issue with zope users on urban homepage
      [mpeeters] (URB-3004)
    - Remove broken Liege browser layer
      [daggelpop] (URB-3006)

    Internal:

    - Provided prorogation field for environment license
      [fngaha] (URB-2924)
    - Move some schedule logic into `urban.schedule`
      [mpeeters] (URB-3005)

- urban.events 1.0.0a2 (2024-03-14)

    Bug fixes:

    - Fix enum dependency
      [jchandelle] (URB-3006)

- urban.events 1.0.0a1 (2024-03-13)

    New features:

    - Add function to import event config and create
      new CODT reform events at profile import.
      Split configuration files between urban classic and liege.
      [jchandelle, daggelpop, mpeeters] (URB-3006)

- urban.schedule 1.0.0a2 (2024-03-14)

    Bug fixes:

    - Fix import uid and @id and fix existing content handling
      Fix enum dependency
      [jchandelle] (URB-3005)

- urban.schedule 1.0.0a1 (2024-03-12)

    New features:

    - Add conditions to determine if the current content is under the new reform or not
      [mpeeters] (URB-3004)
    - Add upgrade step to import schedule config
      Adapt `urban.schedule.start_date.acknowledgment_limit_date` to handle the new rules of the CODT reform
      [jchandelle, mpeeters] (URB-3005)

- Add collective.exportimport
  [mpeeters]


2.4.9-liege (2024-01-11)
------------------------

- Products.urban 2.5.0.dev2 (2024-01-11)

    Bug fixes:

    - Validate CSV before claimant import
      [daggelpop] (SUP-33538)
    - Fix a silent error with portlet on overlays
      [mpeeters] (URB-2926)


2.4.8-liege (2023-11-21)
------------------------

- liege.urban 1.0.2 (2023-11-21)

    Bug fixes:

    - Ensure that every licence types can add `UrbanEventMayor` and `UrbanEventAcknowledgment`
      [mpeeters] (SUP-33677)

- Products.urban 2.5.0.dev1 (2023-11-21)

    Bug fixes:

    - Restore commented out URBAN_TYPES elements in config (most likely an error)
      [daggelpop] (SUP-28903)
    - Fix url for exploitation conditions, `getRaw` is no longer accessible through urls
      [mpeeters] (SUP-33698)

    Internal:

    - Reduce logging for sql queries
      [mpeeters] (URB-2926)


2.4.7-liege (2023-11-16)
------------------------

- imio.pm.wsclient 1.20 (2023-11-16)

    - Fix encoding for displayed values [URB-2930]
      [mpeeters]

- liege.urban 1.0.1 (2023-11-16)

    - Fix template for worklocation [URB-2930]
      [mpeeters]


2.4.6-liege (2023-11-10)
------------------------

- imio.helpers 0.57 (2022-06-10)

    - Added `NoEscapeLinkColumn` as base for link column rendering html.
      Escape must be done in inherited column.
      [sgeulette]
    - `content.uuidToObject` will now return `None` instead an empty list if uuid not found.
      [gbastien]
    - Remove zope.app.publication dependency in `security.set_site_from_package_config` as it is now
      removed since Plone >= 5.2.6
      [aduchene]

- imio.helpers 0.56 (2022-05-13)

    - Added `setup_ram_cache` method.
      [sgeulette]
    - Added `set_site_from_package_config` method
      [sgeulette]

- imio.helpers 0.55 (2022-05-06)

    - Improved `get_relations` to get optionally referenced objects.
      [sgeulette]

- imio.helpers 0.54 (2022-03-25)

    - Added `content.get_vocab_value` based on `content.get_vocab` but returns
      the values (`attr_name='token'` by default, may also be `value` or `title`).
      [gbastien]
    - Added `EnhancedTerm` based on `SimpleTerm` providing `attrs` dict on term
      [sgeulette]
    - Added `cache.cleanForeverCache` that will clear cache of functions using the
      `@forever.memoize` decorator.
      [gbastien]

- imio.helpers 0.53 (2022-03-17)

    - Refactored `get_object`
      [sgeulette]

- imio.helpers 0.52 (2022-01-12)

    - Added `cache.obj_modified` function that returns max value between
      obj.modified(), obj._p_mtime and __anotations__._p_mtime
      [sgeulette]
    - Added `cache.extract_wrapped` function that returns original decorated function.
      Useful to compare cached and non cached results in tests.
      [sgeulette]
    - Updated git fetch url
      [sgeulette]

- imio.helpers 0.51 (2022-01-03)

    - Added monkey patch to handle SSL mailer on port 465.
      [sgeulette]
    - Added `content.base_getattr` method that will `getattr` without acquisition.
      [gbastien]

- collective.faceted.task 0.5 (2023-04-06)

    - add translations
      [MagDhyIm]

- imio.history 0.29 (2023-04-06)

    - Swallow all exceptions when trying to renderding the portlet title.
      [sdelcourt]
    - Adapts generation link override to last versions of documentgenerator.
      [sdelcourt]
    - Use icons.
      [sdelcourt]
    - Docgen icons are now svg.
      [sdelcourt]


2.4.5-liege (2023-11-09)
------------------------

- Pin liege.urban to `1.0.0` and Prodcuts.urban to `2.5.0.dev0` [URB-2926]
  [mpeeters]

- imio.pm.wsclient 1.19 (2023-11-09)

    - Fix encoding of values [URB-2785]
      [mpeeters]

- imio.pm.wsclient 1.18 (2023-08-14)

    - Fix an issue when there is a form instead of `onclick` attribute on input buttons
      [mpeeters]

- imio.pm.locales 4.2b9 (2021-07-16)

    - Added translations for `Not completed votes` and `Completed votes`.
      [gbastien]
    - Removed single quotes for `meeting_state_changed_default_mail_body`.
      [aduchene]
    - Added translations now that `Preferred meeting date` column is abbreviated.
      [gbastien]
    - Renamed msgid `You cannot delete the default item template, but you can deactivate it if necessary!` to
      `You cannot delete or move the default item template, but you can deactivate it if necessary!`.
      [gbastien]
    - Added translations for `copy_groups_help_msg`.
      [gbastien]
    - Adapted translations now that Meeting was moved from AT to DX.
      [gbastien]
    - Added translations regarding the `Committees` management.
      [gbastien]
    - Changed default translation for `move_item_to_given_position`.
      [gbastien]
    - Added translations for annexes faceted filter vocabulary.
      [gbastien]
    - Added translation for `required_groupsInCharge_ko`.
      [gbastien]
    - Include `item_url` in `holidays_removed_date_in_use_error` translation.
      [gbastien]
    - Added translation related to advice behavior that changed (delay no more reinitialized for a given advice).
      [gbastien]
    - Removed msgids beginning with `list_type_` in the `PloneMeeting` domain, seem no more used.
      [gbastien]
    - Added translations related to `Redefine attendee position on item`.
      [gbastien]
    - Changed translation for `no_shown_items` from `No visible item for now.`
      to `You do not have access to these items.`.
      [gbastien]
    - Added translation for warning displayed on the meeting view when `assembly/signatures` are not correct.
      [gbastien]
    - More accurate translation for `Meeting.meeting_number` and `Meeting.first_item_number`
      description, explaining it is managed by the application.
      [gbastien]
    - Added translations for new static columns selectable in `MeetingConfig.meetingColumns`.
      [gbastien]
    - Added translations for `not_confidential_annexes`.
      [gbastien]
    - Added translations for `Read more/Read less`, removed useless translation
      `This is an extract of the comment, access full comment if necessary...`.
      [gbastien]
    - Added translation for `marginal_notes_column`.
      [gbastien]
    - Added translation for `not_able_to_find_meeting_to_present_item_into`.
      [gbastien]
    - Added translations for `error_default_poll_type_must_be_among_used_poll_types`,
      `error_first_linked_vote_used_vote_values_must_be_among_used_vote_values` and
      `error_next_linked_votes_used_vote_values_must_be_among_used_vote_values`.
      [gbastien]
    - Added translation for `title_meetingmanagers_notes`.
      [gbastien]
    - Added translation for `MeetingConfig.enabledAnnexesBatchActions`.
      [gbastien]
    - Adapted translations for `MeetingConfig.includeGroupsInChargeDefinedOnProposingGroup`
      and `MeetingConfig.includeGroupsInChargeDefinedOnCategory` fields description
      now that, when enabled, selected `groupsInCharge` will be stored on the item.
      [gbastien]
    - Completed french translation for the help message about copy groups on the item view.
      [gbastien]
    - Added translations for `MeetingConfig.selectableRedefinedPositionTypes` and
      `directory.position_types` invariant `removed_redefined_position_type_in_use_error` error message.
      [gbastien]

- Upgrade appy from `1.0.11` to `1.0.15`
  [mpeeters]

- collective.documentgenerator 3.40 (2023-08-01)

    - Add `DOCUMENTGENERATOR_LOG_PARAMETERS` environment variable that can be used to log request form parameters with
      collective.fingerpointing.
      [mpeeters]


- collective.documentgenerator 3.39 (2023-06-26)

    - Removed `utils.safe_encode`, imported it from `imio.helpers.content`.
      [gbastien]

- collective.documentgenerator 3.38 (2022-12-12)

    - Added missing upgrade step after registry modification (`force_default_page_style_for_mailing`) in 3.36.
      [sgeulette]

- collective.documentgenerator 3.37 (2022-10-27)

    - Bugfix: page style check now handle case of POD template without mailing template
      attribute.
      [sdelcourt]

- collective.documentgenerator 3.36 (2022-10-21)

    - Add a new parameter `force_default_page_style_for_mailing` to the registry.
      If set to True, apply automatically a default page style to mailing templates.
      [sdelcourt]
    - Order templates directories by title in `dg-templates-listing` view.
      [sgeulette]
    - Improved `DXDocumentGenerationHelperView.get_value` by adding optional obj parameter.
      [sgeulette]

- collective.documentgenerator 3.35 (2022-08-26)

    - Group link by template title.
      [odelaere]
    - Added 'title' attribute to generation link.
      [odelaere]
    - Aliased import to avoid confusion.
      [sgeulette]
    - CSS for generationlinks so it may be adapted more easily.
      [gbastien]

- collective.documentgenerator 3.34 (2022-06-21)

    - Stored `template_uid` on a persistent generated document to know which template has been used.
      [sgeulette]

- collective.documentgenerator 3.33 (2022-06-14)

    - Added character escaping to avoid xss in `TemplatesTable`
      [sgeulette]
    - In `utils.update_oo_config_after_bigbang` don't fail instance start up if
      `update_oo_config` raises an exception.
      [odelaere]

- collective.documentgenerator 3.32 (2022-06-02)

    - Added upgrade step to `14` that will add the `oo_port_list` parameter to the registry.
      [gbastien]

- collective.documentgenerator 3.31 (2022-06-01)

    - Use appy to load balance on multiple LO server.
      [odelaere]

- collective.documentgenerator 3.30 (2022-05-06)

    - Added `iterable_in_columns` (for labels document).
      [sgeulette]
    - Added `get_relations` in dexterity
      [sgeulette]
    - Use Appy to search and replace in POD templates pod expressions.
      [aduchene]
    - .ods POD Templates are now usable with search and replace.
      [aduchene]
    - Make sure tmp directory is unique when searching and replacing.
      [aduchene]
    - Updated readme
      [Arhell]

- collective.documentgenerator 3.29 (2022-04-15)

    - Method update_oo_config updates all the registry entries for libreoffice server.
      [odelaere]
    - Added subscriber to update oo config on process start.
      [odelaere]

- collective.documentgenerator 3.28 (2022-01-14)

    - Added helper `ConfigurablePODTemplate.get_filename` to easily get file filename.
      [gbastien]


2.4.4-liege (2023-06-27)
------------------------

- Downgrade Twisted to `15.5.0` to match Urban 2.5 version
  [mpeeters]


2.4.3-liege (2023-06-26)
------------------------

- Upgrade to Plone 4.3.20
  [mpeeters]

- Cleanup checkout packages
  [mpeeters]

- imio.dashboard 0.29 (2023-04-06)

    - Swallow all exceptions when trying to renderding the portlet title.
      [sdelcourt]
    - Adapts generation link override to last versions of documentgenerator.
      [sdelcourt]
    - Use icons.
      [sdelcourt]
    - Docgen icons are now svg.
      [sdelcourt]


2.4.2-liege (2023-06-22)
------------------------

- Fix virtualenv in makefile for python2
  [mpeeters]


2.4.1-liege (2023-06-22)
------------------------

- added bistats.py script
  [odeleare]

- Upgrade requests and dependencies to fix an issue with SSL certificates
  [mpeeters]

- Use quickupload for urban
  [sdelcourt]


2.4.0-liege (2022-06-22)
------------------------

- Initial release
