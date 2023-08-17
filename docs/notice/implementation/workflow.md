---
html_meta:
  "description": "Description des différentes échanges"
  "property=og:description": "Description des différentes échanges"
  "property=og:title": "Workflow"
  "keywords": "Urban, Notice, workflow, development"
---

# Workflow

## Nouveau dossier à destination de la commune

- **Etat(s) du dossier**: Réception du dossier
- **Evénement lié**: Dépôt de la demande
- **Tâche liée**: {ref}`NoticeTransferFolderTask <notice-transfer-folder-task>`
- **Identifiant notification entrante**: `TRANSFERT_DOSSIER`
- **Identifiant(s) notification(s) sortante(s)**: `TRANSFERT_DOSSIER_SORTANT`

### Point(s) d'entrée(s)

- La commune reçoit une notification de réception d'un nouveau dossier

### Action(s) nécessaire(s)

- La commune créé le dossier sur base des informations transmises par {term}`Notice`
- La commune créé et clôture un événément *Dépôt de la demande*
- La commune transfère le dossier au {term}`DPA`
- La commune transfère le dossier à la {term}`DGO4` (si {term}`PU`)

### Informations reçues

- `codeTypeNoticeBO`: Code du type de notification
- `sender.noticeInstanceId`: Identifiant de l'instance
- `sender.contactName`: Nom du contact
- `sender.contactMail.email._value_1`: Email du contact
- `subjectNotice`: Sujet de la demande
- `sendDate`: Date d'envoi
- `deadline`: Date limite de réponse ?
- `comment`: Commentaire
- `status.status[0].code.code`: Statut de la notification
- `noticeIdentifier.noticeId`: Identifiant de la notification
- `addresses.address`: Liste des adresses
- `addresses.address[x].country`: Pays
- `addresses.address[x].street`: Rue
- `addresses.address[x].houseNumber`: Numéro
- `addresses.address[x].boxNumber`: Boîte
- `addresses.address[x].postCode`: Code postal
- `addresses.address[x].municipality`: Commune
- `addresses.address[x].locality`: Localité
- `parcels.parcel`: Liste des parcelles
- `parcels.parcel[x].division`: Nom division
- `parcels.parcel[x].codeDivision`: Code division
- `parcels.parcel[x].section`: Section
- `parcels.parcel[x].radical`: Radical
- `parcels.parcel[x].exponent`: Exposant
- `parcels.parcel[x].power`: Puissance
- `parcels.parcel[x].part`: Partie
- `parcels.parcel[x].capakey`: Capakey
- `parties.part`: Liste des demandeurs
- `parties.part[x].enterpriseNumber`: Numéro d'entreprise
- `parties.part[x].enterprseType`: Type d'entreprise
- `parties.part[x].legalForm`: Forme juridique
- `parties.part[x].personNumber`: Numéro de registre national ?
- `parties.part[x].title`: Titre
- `parties.part[x].lastname`: Nom
- `parties.part[x].firstname`: Prénom
- `parties.part[x].language.code`: Langue (FR, ...)
- `parties.part[x].denomination`: Nom de l'entité (personne juridique)
- `parties.part[x].mailingAddresses.mailingAddress`: Liste des adresses postales
- `parties.part[x].mailingAddresses.mailingAddress[x].country`: Pays
- `parties.part[x].mailingAddresses.mailingAddress[x].street`: Rue
- `parties.part[x].mailingAddresses.mailingAddress[x].houseNumber`: Numéro
- `parties.part[x].mailingAddresses.mailingAddress[x].boxNumber`: Boîte
- `parties.part[x].mailingAddresses.mailingAddress[x].postCode`: Code postal
- `parties.part[x].mailingAddresses.mailingAddress[x].municipality`: Commune
- `parties.part[x].mailingAddresses.mailingAddress[x].locality`: Localité
- `parties.part[x].phoneNumber.phoneNumber`: Liste des numéros de téléphone
- `parties.part[x].phoneNumber.phoneNumber[x]._value_1`: Numéro de téléphone
- `parties.part[x].phoneNumber.phoneNumber[x].type`: Type
- `parties.part[x].email.email`: Liste des emails
- `parties.part[x].email.email[x]._value_1`: Adresse email
- `parties.part[x].email.email[x].type`: Type

### Informations nécessaires

- `municipalityReference`: Référence communale (référence dossier)

**Type de réponse**: `FINAL`

## Demande irrecevable (notification à la commune - premier tour)

- **Etat(s) du dossier**: Réception du dossier
- **Evénement lié**: Dossier irrecevable
- **Tâche liée**: {ref}`NoticeInadmissibleTask <notice-inadmissible-task>`
- **Identifiant notification entrante**: `NOTIF_COMPLETUDE1_IRRECEVABLE_COMMUNE`
- **Identifiant(s) notification(s) sortante(s)**: aucun

### Point(s) d'entrée(s)

- La commune reçoit une notification indiquant que le dossier est irrecevable (incomplet).

### Action(s) nécessaire(s)

- La commune créé et clôture un événement *Dossier irrecevable*
- Changement de l'état du workflow vers *Irrecevable*

### Informations reçues

- xxx

### Informations nécessaires

- aucune

## Demande incomplète (notification à la commune - premier tour)

- **Etat(s) du dossier**: Réception du dossier
- **Evénement lié**: Dossier incomplet
- **Tâche liée**: {ref}`NoticeIncompleteTask <notice-incomplete-task>`
- **Identifiant notification entrante**: `NOTIF_COMPLETUDE1_INCOMPLET_COMMUNE`
- **Identifiant(s) notification(s) sortante(s)**: aucun

### Point(s) d'entrée(s)

- La commune reçoit une notification indiquant que le dossier est incomplet.

### Action(s) nécessaire(s)

- La commune créé et clôture un événement *Dossier incomplet*
- Changement de l'état du workflow vers *Incomplet*

### Informations reçues

- xxx

### Informations nécessaires

- aucune

## Demande non recevable (notification à la commune - premier tour)

- **Etat(s) du dossier**: Réception du dossier
- **Evénement lié**: Dossier incomplet
- **Tâche liée**: {ref}`NoticeIncompleteTask <notice-incomplete-task>`
- **Identifiant notification entrante**: `NOTIF_COMPLETUDE1_NON_RECEVABLE_COMMUNE`
- **Identifiant(s) notification(s) sortante(s)**: aucun

### Point(s) d'entrée(s)

- La commune reçoit une notification indiquant que le dossier est non recevable (incomplet).

### Action(s) nécessaire(s)

- La commune créé et clôture un événement *Dossier incomplet*
- Changement de l'état du workflow vers *Incomplet*

### Informations reçues

- xxx

### Informations nécessaires

- aucune

## Demande irrecevable (notification à la commune - second tour)

- **Etat(s) du dossier**: Réception du dossier, Incomplet
- **Evénement lié**: Dossier irrecevable
- **Tâche liée**: {ref}`NoticeInadmissibleTask <notice-inadmissible-task>`
- **Identifiant notification entrante**: `NOTIF_COMPLETUDE2_IRRECEVABLE_COMMUNE`
- **Identifiant(s) notification(s) sortante(s)**: aucun

### Point(s) d'entrée(s)

- La commune reçoit une notification indiquant que le dossier est irrecevable pour la seconde fois.

### Action(s) nécessaire(s)

- La commune créé et clôture un événement *Dossier irrecevable*
- Changement de l'état du workflow vers *Irrecevable*

### Informations reçues

- xxx

### Informations nécessaires

- aucune

## Demande non recevable (notification à la commune - second tour)

- **Etat(s) du dossier**: Réception du dossier, Incomplet
- **Evénement lié**: Dossier irrecevable
- **Tâche liée**: {ref}`NoticeInadmissibleTask <notice-inadmissible-task>`
- **Identifiant notification entrante**: `NOTIF_COMPLETUDE2_NON_RECEVABLE_COMMUNE`
- **Identifiant(s) notification(s) sortante(s)**: aucun

### Point(s) d'entrée(s)

- La commune reçoit une notification indiquant que le dossier est non recevable pour la seconde fois.

### Action(s) nécessaire(s)

- La commune créé et clôture un événement *Dossier irrecevable*
- Changement de l'état du workflow vers *Irrecevable*

### Informations reçues

- xxx

### Informations nécessaires

- aucune


## Demande complète et recevable. Demande d'organisation d'une enquête publique (établissement sur le territoire de la commune)

- **Etat(s) du dossier**: Réception du dossier, Incomplet, Complet
- **Evénement lié**: Enquête publique
- **Tâche liée**: {ref}`NoticePublicInvestigationTask <notice-public-investigation-task>`
- **Identifiant notification entrante**: `DEMANDE_EP`
- **Identifiant(s) notification(s) sortante(s)**: `PE_DEM_COM_DATES_AVIS_AFFICHAGE`, `PE_DEM_COM_PV_EP`

### Point(s) d'entrée(s)

- La commune reçoit une notification indiquant que le dossier est complet et recevable et qu'il y a une demande d'enquête publique pour un établissement sur le territoire de la commune.

### Action(s) nécessaire(s)

- La commune créé et clôture un événément *Dossier complet*
- Changement de l'état du workflow vers *Complet*
- La commune créé un événement *Enquête publique*
- La commune créé et clôture un événément *Communication dates enquête publique*
- La comune clôture l'événement *Enquête publique*
- La commune créé et clôture un événement *Communication PV enquête publique*

### Informations reçues

- xxx

### Informations nécessaires

- Dates de début et de fin l'enquête publique
- Dates de début et de fin d'affichage de l'enquête publique
- Date de suspension (si suspension)
- {term}`PV` de fin de l'enquête publique (si autorité compétente = Commune)
- L'avis du collège communal (si autorité compétent = {term}`FT`)
- Commentaire et observations


## Demande complète et recevable. Demande d'organisation d'une enquête publique (établissement en dehors du territoire de la commune)

- **Etat(s) du dossier**: Réception du dossier, Incomplet, Complet
- **Evénement lié**: Enquête publique
- **Tâche liée**: {ref}`NoticePublicInvestigationTask <notice-public-investigation-task>`
- **Identifiant notification entrante**: `DEMANDE_EP_EXTRA`
- **Identifiant(s) notification(s) sortante(s)**: `PE_DEM_COM_DATES_AVIS_AFFICHAGE`, `PE_DEM_COM_PV_EP`

### Point(s) d'entrée(s)

- La commune reçoit une notification indiquant que le dossier est complet et recevable et qu'il y a une demande d'enquête publique pour un établissement en dehors du territoire de la commune.

### Action(s) nécessaire(s)

- La commune créé et clôture un événément *Dossier complet*
- Changement de l'état du workflow vers *Complet*
- La commune créé un événement *Enquête publique*
- La commune créé et clôture un événément *Communication dates enquête publique*
- La comune clôture l'événement *Enquête publique*
- La commune créé et clôture un événement *Communication PV enquête publique*

### Informations reçues

- xxx

### Informations nécessaires

- Dates de début et de fin l'enquête publique
- Dates de début et de fin d'affichage de l'enquête publique
- Date de suspension (si suspension)
- {term}`PV` de fin de l'enquête publique (si autorité compétente = Commune)
- L'avis du collège communal (si autorité compétent = {term}`FT`)
- Commentaire et observations


## Demande complète et recevable. Demande d'organisation d'une enquête publique (commune précédemment consultée)

- **Etat(s) du dossier**: Réception du dossier, Incomplet, Complet
- **Evénement lié**: Enquête publique
- **Tâche liée**: {ref}`NoticePublicInvestigationTask <notice-public-investigation-task>`
- **Identifiant notification entrante**: `DEMANDE_EP_DOSSIER_PRECEDENT`
- **Identifiant(s) notification(s) sortante(s)**: `PE_DEM_COM_DATES_AVIS_AFFICHAGE`, `PE_DEM_COM_PV_EP`

### Point(s) d'entrée(s)

- La commune reçoit une notification indiquant que le dossier est complet et recevable et qu'il y a une demande d'enquête publique et que la commune a déjà été précédemment consultée.

### Action(s) nécessaire(s)

- La commune créé et clôture un événément *Dossier complet*
- Changement de l'état du workflow vers *Complet*
- La commune créé un événement *Enquête publique*
- La commune créé et clôture un événément *Communication dates enquête publique*
- La comune clôture l'événement *Enquête publique*
- La commune créé et clôture un événement *Communication PV enquête publique*

### Informations reçues

- xxx

### Informations nécessaires

- Dates de début et de fin l'enquête publique
- Dates de début et de fin d'affichage de l'enquête publique
- Date de suspension (si suspension)
- {term}`PV` de fin de l'enquête publique (si autorité compétente = Commune)
- L'avis du collège communal (si autorité compétent = {term}`FT`)
- Commentaire et observations


## Prolongation du délai d'instruction (notification à la commune)

- **Etat(s) du dossier**: Complet
- **Evénement lié**: aucun
- **Tâche liée**: {ref}`NoticeProrogationTask <notice-prorogation-task>`
- **Identifiant notification entrante**: `NOTIFICATION_PROROGATION_COMMUNE`
- **Identifiant(s) notification(s) sortante(s)**: aucun

### Point(s) d'entrée(s)

- La commune reçoit une notification de prorogation

### Action(s) nécessaire(s)

- Cocher la case prorogation dans l'onglet "Analyse Urbanisme" ce qui adaptera automatiquement le délai (+ 30 jours). A défaut, si la case prorogation n'est pas activée dans la configuration, La commune adapte le délai manuellement.

### Informations reçues

- xxx

### Informations nécessaires

- aucune

## Transmission du rapport de synthèse

- **Etat(s) du dossier**: Complet
- **Evénement lié**: Rapport de synthèse
- **Tâche liée**: {ref}`NoticeSynthesisReportTask <notice-syntesis-report-task>`
- **Identifiant notification entrante**: `NOTIFICATION_RS_COMMUNE`
- **Identifiant(s) notification(s) sortante(s)**: `PE_DEM_COM_DECISION`, `PE_DEM_COM_DATES_DEC_AFFICHAGE`

### Point(s) d'entrée(s)

- La commune reçoit une notification de transmission du rapport de synthèse.

### Action(s) nécessaire(s)

- La commune créé et clôture un événement *Rapport de synthèse*
- La commune créé et clôture un événement *Avis préalable du collège*
- La commune créé et clôture un événement *Communication décision Collège*
- La commune créé et clôture un événement *Affichage de la décision*
- La commune créé et clôture un événement *Communication affichage décision*

### Informations reçues

- xxx

### Informations nécessaires

- Décision du collège
- Dates d'affichage de la décision

## Transmission hors délai du rapport de synthèse

- **Etat(s) du dossier**: Complet
- **Evénement lié**: Rapport de synthèse
- **Tâche liée**: {ref}`NoticeSynthesisReportTask <notice-syntesis-report-task>`
- **Identifiant notification entrante**: `NOTIFICATION_RS_COMMUNE_RETARD`
- **Identifiant(s) notification(s) sortante(s)**: `PE_DEM_COM_DECISION`, `PE_DEM_COM_DATES_DEC_AFFICHAGE`

### Point(s) d'entrée(s)

- La commune reçoit une notification de transmission du rapport de synthèse hors délai.

### Action(s) nécessaire(s)

- La commune créé et clôture un événement *Rapport de synthèse*
- La commune créé et clôture un événement *Avis préalable du collège*
- La commune créé et clôture un événement *Communication décision Collège*
- La commune créé et clôture un événement *Affichage de la décision*
- La commune créé et clôture un événement *Communication affichage décision*

### Informations reçues

- xxx

### Informations nécessaires

- Décision du collège
- Dates d'affichage de la décision

## Transmission hors délai du rapport de synthèse sans le volet urbanisme

- **Etat(s) du dossier**: Complet
- **Evénement lié**: Rapport de synthèse
- **Tâche liée**: {ref}`NoticeSynthesisReportTask <notice-syntesis-report-task>`
- **Identifiant notification entrante**: `NOTIFICATION_RS_COMMUNE_RETARD_SFD`
- **Identifiant(s) notification(s) sortante(s)**: `PE_DEM_COM_DECISION`, `PE_DEM_COM_DATES_DEC_AFFICHAGE`

### Point(s) d'entrée(s)

- La commune reçoit une notification de transmission du rapport de synthèse hors délai et sans le volet urbanisme.

### Action(s) nécessaire(s)

- La commune créé et clôture un événement *Rapport de synthèse*
- La commune créé et clôture un événement *Avis préalable du collège*
- La commune créé et clôture un événement *Communication décision Collège*
- La commune créé et clôture un événement *Affichage de la décision*
- La commune créé et clôture un événement *Communication affichage décision*

### Informations reçues

- xxx

### Informations nécessaires

- Décision du collège
- Dates d'affichage de la décision

## Impossibilité de transmettre un rapport de synthèse dans les délais impartis

- **Etat(s) du dossier**: Complet
- **Evénement lié**: Rapport de synthèse
- **Tâche liée**: {ref}`NoticeSynthesisReportTask <notice-syntesis-report-task>`
- **Identifiant notification entrante**: `NOTIFICATION_PAS_ENVOI_RS`
- **Identifiant(s) notification(s) sortante(s)**: `PE_DEM_COM_DECISION`, `PE_DEM_COM_DATES_DEC_AFFICHAGE`

### Point(s) d'entrée(s)

- La commune reçoit une notification de l'impossibilité de  transmission du rapport de synthèse dans les délais.

### Action(s) nécessaire(s)

- La commune créé et clôture un événement *Rapport de synthèse*
- La commune créé et clôture un événement *Avis préalable du collège*
- La commune créé et clôture un événement *Communication décision Collège*
- La commune créé et clôture un événement *Affichage de la décision*
- La commune créé et clôture un événement *Communication affichage décision*

### Informations reçues

- xxx

### Informations nécessaires

- Décision du collège
- Dates d'affichage de la décision

## Impossibilité de transmettre un rapport de synthèse dans les délais impartis (2)

- **Etat(s) du dossier**: Complet
- **Evénement lié**: Rapport de synthèse
- **Tâche liée**: {ref}`NoticeSynthesisReportTask <notice-syntesis-report-task>`
- **Identifiant notification entrante**: `NOTIFICATION_PAS_ENVOI_RS_SFD`
- **Identifiant(s) notification(s) sortante(s)**: `PE_DEM_COM_DECISION`, `PE_DEM_COM_DATES_DEC_AFFICHAGE`

### Point(s) d'entrée(s)

- La commune reçoit une notification de l'impossibilité de  transmission du rapport de synthèse dans les délais.

### Action(s) nécessaire(s)

- La commune créé et clôture un événement *Rapport de synthèse*
- La commune créé et clôture un événement *Avis préalable du collège*
- La commune créé et clôture un événement *Communication décision Collège*
- La commune créé et clôture un événement *Affichage de la décision*
- La commune créé et clôture un événement *Communication affichage décision*

### Informations reçues

- xxx

### Informations nécessaires

- Décision du collège
- Dates d'affichage de la décision
