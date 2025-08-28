*** Settings ***
Library           Selenium2Library
Library           Collections
Library           String
Suite Teardown    Close All Browsers
Suite Setup       Suite Setup

*** Variables ***
${DOMAIN}         https://localhost:8081/liege/liege/
${LOGIN}          admin
${PASSWORD}       admin

*** Test Cases ***
Test Buildlicences Faceted
    ${reference}=         Set Variable  94700
    ${state}=             Set Variable  abandoned
    ${agent_id}=          Set Variable  8314a0e3532d47f3a603d6474b3b87a1
    ${shore}=             Set Variable  C
    ${expected_title}=    Set Variable  PU/${reference} ${shore} - régulariser la création d'un 5è étage
    ${start_date}=        Set Variable  2015-08-01
    ${end_date}=          Set Variable  2025-12-31

    Go To  ${DOMAIN}urban/codt_buildlicences
    # c3 : State
    Select Faceted List Widget  c3  ${state}
    # c5 : Shore (C, D, G)
    Select Faceted Checkbox Widget  c5  ${shore}
    # c6 : Agent
    Select Faceted List Widget  c6  ${agent_id}
    # c15 : Reference
    Select Faceted Search Widget  c15  ${reference}
    # c13 : Date
    Select Faceted Date Range Widget  c13  ${start_date}  ${end_date}

    Assert Faceted Result  ${expected_title}  1

    # c13 : Date without results
    ${start_date}=  Set Variable  2025-12-31
    Select Faceted Date Range Widget  c13  ${start_date}  ${end_date}

    Assert Faceted No Result

Test Article127 Faceted
    ${reference}=         Set Variable  94218
    ${state}=             Set Variable  accepted
    ${agent_id}=          Set Variable  8314a0e3532d47f3a603d6474b3b87a1
    ${shore}=             Set Variable  C
    ${expected_title}=    Set Variable  M/${reference} ${shore} - isoler le bâtiment dit "ancien internat"

    Go To  ${DOMAIN}urban/codt_article127s
    # c3 : State
    Select Faceted List Widget  c3  ${state}
    # c5 : Shore (C, D, G)
    Select Faceted Checkbox Widget  c5  ${shore}
    # c6 : Agent
    Select Faceted List Widget  c6  ${agent_id}
    # c12 : Reference
    Select Faceted Search Widget  c12  ${reference}

    Assert Faceted Result  ${expected_title}  1

Test IntegratedLicences Faceted
    ${reference}=         Set Variable  93092
    ${state}=             Set Variable  accepted
    ${agent_id}=          Set Variable  e286d7d9925f483497fb8bd92aa21eb8
    ${shore}=             Set Variable  D
    ${expected_title}=    Set Variable  PI/${reference} ${shore} - PI/3 - construire un ensemble immobilier avec modification de voirie
    ${start_date}=        Set Variable  2015-08-01
    ${end_date}=          Set Variable  2025-12-31

    Go To  ${DOMAIN}urban/codt_integratedlicences
    # c3 : State
    Select Faceted List Widget  c3  ${state}
    # c15 : Shore (C, D, G)
    Select Faceted Checkbox Widget  c15  ${shore}
    # c6 : Agent
    Select Faceted List Widget  c6  ${agent_id}
    # c5 : Reference
    Select Faceted Search Widget  c5  ${reference}
    # c13 : Date
    Select Faceted Date Range Widget  c13  ${start_date}  ${end_date}

    Assert Faceted Result  ${expected_title}  1

    # c13 : Date without results 
    ${start_date}=  Set Variable  2025-12-31
    Select Faceted Date Range Widget  c13  ${start_date}  ${end_date}

    Assert Faceted No Result

Test UniqueLicences Faceted
    ${reference}=         Set Variable  90276
    ${state}=             Set Variable  inacceptable
    ${agent_id}=          Set Variable  37fb5fc00a024830b4db441f44ab7b7c
    ${shore}=             Set Variable  D
    ${expected_title}=    Set Variable  U/${reference} ${shore} - PU/2/70 - Etendre les installations par l'ajout d'une cuve de 2770 m³
    ${start_date}=        Set Variable  2015-08-01
    ${end_date}=          Set Variable  2025-12-31

    Go To  ${DOMAIN}urban/codt_uniquelicences
    # c3 : State
    Select Faceted List Widget  c3  ${state}
    # c15 : Shore (C, D, G)
    Select Faceted Checkbox Widget  c15  ${shore}
    # c6 : Agent
    Select Faceted List Widget  c6  ${agent_id}
    # c11 : Reference
    Select Faceted Search Widget  c11  ${reference}
    # c5 : Date
    Select Faceted Date Range Widget  c5  ${start_date}  ${end_date}

    Assert Faceted Result  ${expected_title}  1

    # c5 : Date without results
    ${start_date}=  Set Variable  2025-12-31
    Select Faceted Date Range Widget  c5  ${start_date}  ${end_date}

    Assert Faceted No Result

Test UrbanCertificateOnes Faceted
    ${reference}=         Set Variable  21
    ${state}=             Set Variable  accepted
    ${agent_id}=          Set Variable  6203cd7df29841f2999e2032896874d6
    ${shore}=             Set Variable  G
    ${expected_title}=    Set Variable  CU1/${reference} - M. DAWIR Yann
    ${start_date}=        Set Variable  2015-08-01
    ${end_date}=          Set Variable  2025-12-31

    Go To  ${DOMAIN}urban/codt_urbancertificateones
    # c3 : State
    Select Faceted List Widget  c3  ${state}
    # c5 : Shore
    Select Faceted Checkbox Widget  c5  ${shore}
    # c6 : Agent
    Select Faceted List Widget  c6  ${agent_id}
    # c11 : Reference
    Select Faceted Search Widget  c11  ${reference}
    # c13 : Date
    Select Faceted Date Range Widget  c13  ${start_date}  ${end_date}

    Assert Faceted Result  ${expected_title}  1

    # c13 : Date without results
    ${start_date}=  Set Variable  2025-12-31
    Select Faceted Date Range Widget  c13  ${start_date}  ${end_date}

    Assert Faceted No Result

Test UrbanCertificateTwos Faceted
    ${reference}=         Set Variable  30993
    ${agent_id}=          Set Variable  e0b15e3fda9d4857bece9f9c9713a9cd
    ${shore}=             Set Variable  D
    ${expected_title}=    Set Variable  CU/${reference} ${shore} - construire quarante-sept appartements et un bureau
    ${start_date}=        Set Variable  2015-08-01
    ${end_date}=          Set Variable  2025-12-31

    Go To  ${DOMAIN}urban/codt_urbancertificatetwos
    # c17 : Shore (D)
    Select Faceted Checkbox Widget  c17  ${shore}
    # c6 : Agent
    Select Faceted List Widget  c6  ${agent_id}
    # c5 : Reference (full reference including prefix)
    Select Faceted Autocomplete Widget  c5  CU/${reference}
    # c13 : Date
    Select Faceted Date Range Widget  c13  ${start_date}  ${end_date}

    Assert Faceted Result  ${expected_title}  1

    # c13 : Date without results
    ${start_date}=  Set Variable  2025-12-31
    Select Faceted Date Range Widget  c13  ${start_date}  ${end_date}

    Assert Faceted No Result

Test PreliminaryNotices Faceted
    ${reference}=         Set Variable  151
    ${state}=             Set Variable  favorable
    ${agent_id}=          Set Variable  4e50c9390af24bf4b94e92f827eea8ac
    ${shore}=             Set Variable  C
    ${expected_title}=    Set Variable  AP/${reference} ${shore} - transformer un bâtiment afin de créer des logements supplémentaires
    ${start_date}=        Set Variable  2015-08-01
    ${end_date}=          Set Variable  2025-12-31

    Go To  ${DOMAIN}urban/preliminarynotices
    # c3 : state
    Select Faceted List Widget  c3  ${state}
    # c17 : Shore (C)
    Select Faceted Checkbox Widget  c17  ${shore}
    # c6 : Agent
    Select Faceted List Widget  c6  ${agent_id}
    # c10 : Reference
    Select Faceted Search Widget  c10  ${reference}
    # c13 : Date
    Select Faceted Date Range Widget  c13  ${start_date}  ${end_date}

    Assert Faceted Result  ${expected_title}  1

    # c13 : Date without results
    ${start_date}=  Set Variable  2025-12-31
    Select Faceted Date Range Widget  c13  ${start_date}  ${end_date}

    Assert Faceted No Result

Test Patrimonycertificates Faceted
    ${reference}=         Set Variable  27180
    ${state}=             Set Variable  accepted
    ${agent_id}=          Set Variable  f743df9e135e4047bdb7cd6f5911a479
    ${shore}=             Set Variable  C
    ${expected_title}=    Set Variable  PAT/${reference} ${shore} - Création d'un vitrail dans le porche d'entrée ainsi que la conception

    Go To  ${DOMAIN}urban/patrimonycertificates
    # c3 : state
    Select Faceted List Widget  c3  ${state}
    # c11 : Shore (C)
    Select Faceted Checkbox Widget  c11  ${shore}
    # c6 : Agent
    Select Faceted List Widget  c6  ${agent_id}
    # c13 : Reference
    Select Faceted Search Widget  c13  ${reference}

    Assert Faceted Result  ${expected_title}  1

Test EnvClassTwos Faceted
    ${reference}=         Set Variable  2/318
    ${state}=             Set Variable  refused
    ${agent_id}=          Set Variable  7c1724fd110148fbbda13285c5db3335
    ${shore}=             Set Variable  D
    ${expected_title}=    Set Variable  PE/${reference} - forer et exploiter un puits à des fins de jardinage
    ${start_date}=        Set Variable  2015-08-01
    ${end_date}=          Set Variable  2025-12-31

    Go To  ${DOMAIN}urban/envclasstwos
    # c3 : state
    Select Faceted List Widget  c3  ${state}
    # c15 : Shore (D)
    Select Faceted Checkbox Widget  c15  ${shore}
    # c6 : Agent
    Select Faceted List Widget  c6  ${agent_id}
    # c9 : Reference
    Select Faceted Search Widget  c9  ${reference}
    # c13 : Date
    Select Faceted Date Range Widget  c13  ${start_date}  ${end_date}

    Assert Faceted Result  ${expected_title}  1

    # c13 : Date without results
    ${start_date}=  Set Variable  2025-12-31
    Select Faceted Date Range Widget  c13  ${start_date}  ${end_date}

    Assert Faceted No Result

Test EnvClassThrees Faceted
    ${reference}=         Set Variable  2438
    ${state}=             Set Variable  acceptable
    ${agent_id}=          Set Variable  772f86790ab74def8e917e3e1213f564
    ${shore}=             Set Variable  G
    ${expected_title}=    Set Variable  D/${reference} ${shore} - la transformation d'une station relais pour l'opérateur Orange
    ${start_date}=        Set Variable  2015-08-01
    ${end_date}=          Set Variable  2025-12-31

    Go To  ${DOMAIN}urban/envclassthrees
    # c3 : state
    Select Faceted List Widget  c3  ${state}
    # c15 : Shore (G)
    Select Faceted Checkbox Widget  c15  ${shore}
    # c6 : Agent
    Select Faceted List Widget  c6  ${agent_id}
    # c9 : Reference
    Select Faceted Search Widget  c9  ${reference}
    # c13 : Date
    Select Faceted Date Range Widget  c13  ${start_date}  ${end_date}

    Assert Faceted Result  ${expected_title}  1

    # c13 : Date without results
    ${start_date}=  Set Variable  2025-12-31
    Select Faceted Date Range Widget  c13  ${start_date}  ${end_date}

    Assert Faceted No Result

Test EnvClassBorderings Faceted
    ${reference}=         Set Variable  4/534
    ${state}=             Set Variable  accepted
    ${agent_id}=          Set Variable  d57f2678b25040f3a649ce1723699aa1
    ${expected_title}=    Set Variable  1/${reference} - ARCELOR MITTAL - ARCELOR MITTAL S.A.

    Go To  ${DOMAIN}urban/envclassborderings
    # c3 : state
    Select Faceted Checkbox Widget  c3  ${state}
    # c6 : Agent
    Select Faceted List Widget  c6  ${agent_id}
    # c5 : Reference
    Select Faceted Search Widget  c5  ${reference}

    Assert Faceted Result  ${expected_title}  1

Test NotaryLetters Faceted
    ${reference}=         Set Variable  143179
    ${state}=             Set Variable  accepted
    ${agent_id}=          Set Variable  11dd414b3e5b4d36a39610f6aca26d0f
    ${shore}=             Set Variable  G
    ${expected_title}=    Set Variable  NOT/${reference} - M. et Mme LUKUSA et BOURNONVILLE - VANESSE Immobilière

    Go To  ${DOMAIN}urban/codt_notaryletters
    # c3 : state
    Select Faceted List Widget  c3  ${state}
    # c15 : Shore (G)
    Select Faceted Checkbox Widget  c15  ${shore}
    # c6 : Agent
    Select Faceted List Widget  c6  ${agent_id}
    # c5 : Reference
    Select Faceted Search Widget  c5  ${reference}

    Assert Faceted Result  ${expected_title}  1

Test ExplosivesPossessions Faceted
    ${reference}=         Set Variable  EXP/7
    ${state}=             Set Variable  accepted
    ${agent_id}=          Set Variable  772f86790ab74def8e917e3e1213f564
    ${shore}=             Set Variable  G
    ${expected_title}=    Set Variable  EXP/7 - dépôt de 2e classe d'artifices de divertissement - SA CORA
    ${start_date}=        Set Variable  2015-08-01
    ${end_date}=          Set Variable  2025-12-31

    Go To  ${DOMAIN}urban/explosivespossessions
    # c3 : state
    Select Faceted Checkbox Widget  c3  ${state}
    # c15 : Shore (G)
    Select Faceted Checkbox Widget  c15  ${shore}
    # c6 : Agent
    Select Faceted List Widget  c6  ${agent_id}
    # c5 : Reference
    Select Faceted Search Widget  c5  ${reference}
    # c13 : Date
    Select Faceted Date Range Widget  c13  ${start_date}  ${end_date}

    Assert Faceted Result  ${expected_title}  1

    # c13 : Date without results
    ${start_date}=  Set Variable  2025-12-31
    Select Faceted Date Range Widget  c13  ${start_date}  ${end_date}

    Assert Faceted No Result

Test RoadDecrees Faceted
    ${reference}=         Set Variable  VOI/37
    ${state}=             Set Variable  authorized
    ${agent_id}=          Set Variable  202b63d9ff314258bc127b0292714161
    ${shore}=             Set Variable  G
    ${expected_title}=    Set Variable  ${reference} ${shore} - Modification de la voirie pour construire un immeuble mixte - S.A. Ardent

    Go To  ${DOMAIN}urban/roaddecrees
    # c15 : Shore (G)
    Select Faceted Checkbox Widget  c15  ${shore}
    # c3 : state
    Select Faceted Checkbox Widget  c3  ${state}
    # c6 : Agent
    Select Faceted List Widget  c6  ${agent_id}
    # c5 : Reference
    Select Faceted Search Widget  c5  ${reference}

    Assert Faceted Result  ${expected_title}  1

Test Inspections Faceted
    ${reference}=         Set Variable  10131
    ${state}=             Set Variable  ended
    ${agent_id}=          Set Variable  6a63b3ae3aa1420288c53cd336e456fb
    ${shore}=             Set Variable  G
    ${expected_title}=    Set Variable  IB/${reference} - M. LEBRUN Thomas - construire un volume secondaire

    Go To  ${DOMAIN}urban/inspections
    # c14 : Shore (G)
    Select Faceted Checkbox Widget  c14  ${shore}
    # c3 : state
    Select Faceted Checkbox Widget  c3  ${state}
    # c6 : Agent
    Select Faceted List Widget  c6  ${agent_id}
    # c5 : Reference
    Select Faceted Search Widget  c5  ${reference}

    Assert Faceted Result  ${expected_title}  1

Test Tickets Faceted
    ${reference}=         Set Variable  v2007022
    ${state}=             Set Variable  ended
    ${agent_id}=          Set Variable  ebf423a1101c47d0a20e0a81047440f4
    ${shore}=             Set Variable  D
    ${expected_title}=    Set Variable  V2007022 - créer des logements - rue de Cornillon 40 à 4020 Liège

    Go To  ${DOMAIN}urban/tickets
    # c15 : Shore (D)
    Select Faceted Checkbox Widget  c15  ${shore}
    # c3 : state
    Select Faceted Checkbox Widget  c3  ${state}
    # c6 : Agent
    Select Faceted List Widget  c6  ${agent_id}
    # c5 : Reference
    Select Faceted Search Widget  c5  ${reference}

    Assert Faceted Result  ${expected_title}  1

Test Buildlicence Schedule
    ${reference}=         Set Variable  90578
    ${shore}=             Set Variable  G
    ${expected_title}=    Set Variable  PU/${reference} ${shore} - aménager des abords - PV 1809050 - M. FORNIERI Francesco
    ${expected_count}=    Set Variable  5
    ${assignee}=          Set Variable  

    Go To  ${DOMAIN}urban/schedule/codt_buildlicence
    # c7 : Shore (G)
    Select Faceted Checkbox Widget  c7  ${shore}
    # c2 : Reference
    Select Faceted Search Widget  c2  ${reference}
    # c5 : Assignee
    Select Faceted List Widget  c5  ${assignee}

    Assert Faceted Result  ${expected_title}  ${expected_count}

*** Keywords ***

Suite Setup
    Open Browser  ${DOMAIN}login_form
    Set Selenium Timeout  60 seconds
    Wait Until Element is Visible  id=__ac_name
    Input Text  id=__ac_name  ${LOGIN}
    Input Text  id=__ac_password  ${PASSWORD}
    Click Button  css=input.context
    Wait Until Element is Visible  css=h1.documentFirstHeading
    ${title}=  Get Text  css=h1.documentFirstHeading
    Should Contain  ${title}  Votre session est maintenant ouverte
    Set Selenium Timeout  300 seconds

Select Faceted Search Widget
    [Arguments]  ${widget_id}  ${value}
    Wait Until Element Is Visible  id=${widget_id}
    Wait Until Page Does Not Contain Element  css=.faceted-lock-overlay
    Input Text  id=${widget_id}  ${value}
    Click Button  id=${widget_id}_button

Select Faceted Autocomplete Widget
    [Arguments]  ${widget_id}  ${value}
    Wait Until Element Is Visible  id=${widget_id}
    Wait Until Page Does Not Contain Element  css=.faceted-lock-overlay
    Input Text  id=${widget_id}  ${value}
    Wait Until Element Is Visible  xpath=/html/body/ul[contains(@class, 'ui-autocomplete') and last()]/li[2]/a
    Click Element  xpath=/html/body/ul[contains(@class, 'ui-autocomplete') and last()]/li[2]/a
    Click Button  id=${widget_id}_button

Select Faceted Text Widget
    [Arguments]  ${widget_id}  ${value}
    Wait Until Element Is Visible  id=${widget_id}
    Wait Until Page Does Not Contain Element  css=.faceted-lock-overlay
    Input Text  id=${widget_id}  ${value}

Select Faceted List Widget
    [Arguments]  ${widget_id}  ${value}
    Wait Until Element Is Visible  id=${widget_id}
    Wait Until Page Does Not Contain Element  css=.faceted-lock-overlay
    Select From List By Value  id=${widget_id}  ${value}

Select Faceted Checkbox Widget
    [Arguments]  ${widget_id}  ${value}
    Wait Until Element Is Visible  id=${widget_id}_${value}
    Wait Until Page Does Not Contain Element  css=.faceted-lock-overlay
    Wait Until Element Is Not Visible  id=ajax-spinner
    Click Element  id=${widget_id}_${value}

Select Faceted Date Range Widget
    [Arguments]  ${widget_id}  ${value_start}  ${value_end}
    Wait Until Element Is Visible  id=${widget_id}-start-input
    Wait Until Page Does Not Contain Element  css=.faceted-lock-overlay
    Input Text  id=${widget_id}-start-input  ${value_start}
    Wait Until Element is Visible  css=table.ui-datepicker-calendar a.ui-state-active
    Wait Until Page Does Not Contain Element  css=.faceted-lock-overlay
    Wait Until Element Is Not Visible  id=ajax-spinner
    Click Link  css=table.ui-datepicker-calendar a.ui-state-active
    Wait Until Element Is Visible  id=${widget_id}-end-input
    Input Text  id=${widget_id}-end-input  ${value_end}
    Wait Until Element is Visible  css=table.ui-datepicker-calendar a.ui-state-active
    Wait Until Page Does Not Contain Element  css=.faceted-lock-overlay
    Wait Until Element Is Not Visible  id=ajax-spinner
    Click Link  css=table.ui-datepicker-calendar a.ui-state-active

Assert Faceted Result
    [Arguments]  ${licence_title}  ${results_nbr}
    Wait Until Page Does Not Contain Element  css=.faceted-lock-overlay
    Wait Until Element Is Visible  id=faceted-results

    # Validate number of results
    ${results}=  Get Text  css=div.table_faceted_results span
    ${expected_results}  Set Variable  Il y a ${results_nbr} éléments
    Should Contain  ${results}  ${expected_results}

    # Validate result title
    ${title}=  Get Text  css=td.td_cell_sortable_title a
    Should Contain  ${title}  ${licence_title}

Assert Faceted No Result
    Wait Until Page Does Not Contain Element  css=.faceted-lock-overlay
    Wait Until Element Is Visible  id=faceted-results

    # Validate number of results
    ${results}=  Get Text  css=div.table_faceted_no_results
    Should Contain  ${results}  La recherche n'a donné aucun résultat
