:orphan:

Changes
=======

2.4.11-liege (unreleased)
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
