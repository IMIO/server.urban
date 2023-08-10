:orphan:

Changes
=======

2.6.11 (2023-08-10)
-------------------

- eea.jquery 11.3 - (2021-11-01)

    * Change: Explicitly load zcml of dependencies, instead of using includeDependencies
      [avoinea]

- eea.facetednavigation 14.8.1 (2023-08-10)

    * Fix displayed value for autocomplete widget
      [mpeeters]

- eea.facetednavigation 14.8 - (2022-09-15)

    * Change: Add support for AJAX filtering with multiselect widget
      [avoinea]
    * Cleanup: Remove hard-coded message on ajax error
      [avoinea]
    * Bug fix: SEO improvments
      [avoinea]

- eea.facetednavigation 14.7 - (2021-10-29)

    * Change: Release community contrib
      [avoinea]

- eea.facetednavigation 14.6 - (2021-07-19)

    * Change: Make Alphabetic Widget countable again
      [avoinea]

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

- imio.schedule 2.0.1 (2023-08-01)

    - Fix order of upgrade steps [URB-2627]
      [mpeeters]

- collective.documentgenerator 3.40 (2023-08-01)

    - Add `DOCUMENTGENERATOR_LOG_PARAMETERS` environment variable that can be used to log request form parameters with
      collective.fingerpointing.
      [mpeeters]

- collective.documentgenerator 3.39 (2023-06-26)

    - Removed `utils.safe_encode`, imported it from `imio.helpers.content`.
      [gbastien]


2.6.10 (2023-07-27)
-------------------

- Products.urban 2.6.5 (2023-07-27)

    Bug fixes:

    - Avoid errors on inexpected values on licences and log them
      [mpeeters] (SUP-31554)
    - Fix translation for road adaptation vocabulary values
      [mpeeters] (URB-2575)
    - Avoid an error if a vocabulary does not exist, this can happen when multiple upgrade steps interract with vocabularies
      [mpeeters] (URB-2835)

- collective.eeafaceted.collectionwidget 1.16 (2023-07-27)

    - Use default value if available and if there is no parameter in request
      [mpeeters]
    - Fix for Python 3 compatibilty
      [mpeeters]


2.6.9 (2023-07-24)
------------------

- urban.restapi 1.0.0b2 (2023-07-24)

    - Fix multiresult in street search with exact match [URB-2696]
      [jchandelle]

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

2.6.8 (2023-07-19)
------------------

- Fix an issue with standard config [INFRA-5187]
  [mpeeters]


2.6.7 (2023-07-18)
------------------

- Products.urban 2.6.3

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


2.6.6 (2023-07-11)
------------------

- Fix big.bang init with mountpoint [URB-2803]
  [mpeeters]


2.6.5 (2023-07-11)
------------------

- Include collective.big.bang [URB-2803]
  [mpeeters]

- Add experimental.gracefulblobmissing for development
  [mpeeters]

- Cleanup in buildout configuration files
  [mpeeters]


2.6.4 (2023-07-05)
------------------

- collective.faceted.task 1.0.0 (2023-07-05)

    - Do not escape z3c.table column title
      [sdelcourt, mpeeters]


2.6.3 (2023-07-04)
------------------

- Products.urban 2.6.2 (2023-07-04)

    - Explicitly include `urban.restapi` zcml dependency [URB-2790]
      [mpeeters]

- Pin appnope to `0.1.3`
  [mpeeters]

- Remove `plone.restapi` from buildout eggs
  [mpeeters]

- Add an explicit zcml dependency to `Products.urban` [URB-2790]
  [mpeeters]


2.6.2 (2023-07-04)
------------------

- Products.urban 2.6.1 (2023-07-04)

    - Fix zcml for migrations
      [mpeeters]


2.6.1 (2023-07-04)
------------------

- Fix pyrsistent version for collective.exportimport [URB-2627]
  [mpeeters]


2.6.0 (2023-07-03)
------------------

- Products.urban 2.6.0 (2023-07-03)

    - Fix `hidealloption` and `hide_category` parameters for dashboard collections
      [mpeeters]

    - Fix render of columns with escape parameter
      [mpeeters, sdelcourt]

    - Avoid a traceback if an UID was not found for inquiry cron [URB-2721]
      [mpeeters]

    - Migrate to the latest version of `imio.dashboard`
      [mpeeters]

- imio.schedule 2.0.0 (2023-07-03)

    - Migrate to use `collective.eeafaceted.collectionwidget` [URB-2627]
      [mpeeters]

- collective.eeafaceted.batchactions 1.11 (2022-05-06)

    - Avoided exception when referer url contains non ascii char.
      [sgeulette]

- collective.eeafaceted.batchactions 1.10 (2022-02-10)

    - Corrected UnicodeDecodeError on transition title.
      [sgeulette]

- collective.eeafaceted.batchactions 1.9 (2021-12-06)

    - Checked permission on context (in ContactBaseBatchActionForm).
      [sgeulette]

- collective.eeafaceted.batchactions 1.8 (2021-07-16)

    - Highlight message about number of elements that will be updated
      by the action on the popup.
      [gbastien]

- collective.eeafaceted.batchactions 1.7 (2021-07-16)

    - Adapted code to be able to display several tables on same page
      (and so several batchactions viewlets):
      - Added possibility to define the name of the `CheckBoxColumn`
        (still `select_item` by default);
      - Introduce idea of section for the viewlet and the batch actions so it is
        possible to display different actions on different viewlets or different
        views of same context.
      [gbastien]
    - Added method `BaseBatchActionForm._final_update` called when every other
      `update` methods have been called.
      [gbastien]
    - Added `BaseBatchActionForm.apply_button_title` attribute to formalize
      management of `apply` button title, that will be `Apply` by default but that
      may be changed to fit the current batch action.
      [gbastien]
    - Added `DeleteBatchActionForm` a delete elements batch action.
      [gbastien]
    - Require `plone.formwidget.masterselect<2.0.0` as it is only for `Plone5.2+/Py3`.
      [gbastien]

- collective.eeafaceted.batchactions 1.6 (2020-12-21)

    - After action applied, do not reload the entire page,
      just reload the current faceted results.
      [gbastien]
    - Use `CheckBoxFieldWidget` instead `SelectFieldWidget` to manage labels to
      (un)select in `LabelsBatchActionForm` to avoid manipulation with
      `CTRL+click` for selection. Adapted and rationalized translations.
      [gbastien]
    - Add a `collective.fingerpointing` entry when applying action to know
      which action was applied on how much elements.
      [gbastien]

- collective.eeafaceted.batchactions 1.5 (2020-04-23)

    - Make sure elements are treated in received `uids` order. Need to rely on
      `imio.helpers` to use `content.uuidsToCatalogBrains(ordered=True)`.
      [gbastien]

- collective.eeafaceted.batchactions 1.4 (2019-11-25)

    - Added view to change labels. (button is not added)
      [sgeulette]
    - Added base view to change a collective.contact.widget field.
      [sgeulette]

- collective.eeafaceted.batchactions 1.3 (2019-05-16)

    - Moved method `browser.views.brains_from_uids` to `utils`, added helper method
      `utils.listify_uids` that turns the data uids that is a string with each UID
      separated by a comma into a real python list.
      [gbastien]
    - Display number of elements affected by action in the batch action form description.
      [gbastien]

- collective.eeafaceted.batchactions 1.2 (2019-03-08)

    - Added weight attribute on batch action forms to order them.
      [sgeulette]
    - Improved brains_from_uids
      [sgeulette]
    - Added utils method
      [sgeulette]

- collective.eeafaceted.batchactions 1.1 (2018-08-31)

    - Don't apply changes if form errors
      [sgeulette]

- collective.eeafaceted.batchactions 1.0 (2018-06-20)

    - Moved js variables to `collective.eeafaceted.z3ctable`.
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

- collective.behavior.talcondition 0.14 (2021-06-29)

    - Fix pypi broken package
      [boulch]

- collective.behavior.talcondition 0.13 (2021-06-29)

    - Add uninstall profile
      [boulch]
    - Add Plone6 compatibily
      [boulch]

- collective.behavior.talcondition 0.12 (2021-04-20)

    - Add Transifex.net service integration to manage the translation process.
      [macagua]
    - Add Spanish translation
      [macagua]
    - Do not consider the `archetypes.schemaextender` on Plone5.
      [gbastien]
    - Adapted code (except, implementer) to be Python3 compatible.
      [gbastien]
    - Added parameter `trusted=False` to `utils._evaluateExpression`, this will use
      a trusted expression handler instead the restricted python default.
      [gbastien]

- collective.behavior.talcondition 0.11 (2019-05-16)

    - Added parameter `raise_on_error` to `utils.evaluateExpressionFor` to raise an
      error when an exception occurs instead returning False.
      [gbastien]
    - Added method `TALCondition.complete_extra_expr_ctx` to the behavior to
      formalize the way to get `extra_expr_ctx` to avoid the `evaluate` method
      to be overrided.
      [gbastien]

- collective.behavior.talcondition 0.10 (2018-11-20)

    - Do not break if parameter `expression` passed to
      `utils._evaluateExpression` is None.
      [gbastien]

- collective.behavior.talcondition 0.9 (2018-10-12)

    - Added new parameter `error_pattern=WRONG_TAL_CONDITION` to
      `utils.evaluateExpressionFor` and underlying `utils._evaluateExpression` to
      be able to log a custom message in case an error occurs during
      expression evaluation.
      [gbastien]

- collective.behavior.talcondition 0.8 (2018-06-12)

    - Mark elements using behavior with `ITALConditionable` interface so it behaves
      like element using the AT extender.
      [gbastien]

- collective.behavior.talcondition 0.7 (2017-03-22)

    - Use CheckBoxWidget for `ITALCondition.roles_bypassing_talcondition` to ease
      selection when displaying several elements.
      [gbastien]

- collective.behavior.talcondition 0.6 (2016-01-12)

    - Added parameter `empty_expr_is_true` to utils._evaluateExpression than may be True
      or False depending that we want an empty expression to be considered True or False.
      Previous behavior is kept in utils.evaluateExpressionFor where an empty expression
      is considered True.  This avoid managing an empty expression in the caller method
      [gbastien]

- collective.behavior.talcondition 0.5 (2015-12-17)

    - Added method utils._evaluateExpression that receives an expression
      to evaluate, it is called by utils.evaluateExpressionFor.  This way, this
      method may evaluate a TAL expression without getting it from the `tal_condition`
      attribute on the context, in case we want to evaluate arbitrary expression
      [gbastien]

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

- collective.documentgenerator 3.38 (2022-12-12)

    - Added missing upgrade step after registry modification (`force_default_page_style_for_mailing`) in 3.36.
      [sgeulette]

- collective.faceted.datewidget 1.0.0 (2023-07-03)

    - upgrade to be compatible with eea.facetednavigation 10 and above
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
