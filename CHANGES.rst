:orphan:

Changes
=======

2.5.6 (unreleased)
------------------

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
