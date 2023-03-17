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

- La commune créé et clôture un événément *Dépôt de la demande* ???
- La commune transfère le dossier au {term}`DPA`
- La commune transfère le dossier à la {term}`DGO4` (si {term}`PU`)

### Informations reçues

- xxx

### Informations nécessaires

- Commentaire pour {term}`DPA`
- Référence communale (référence dossier)

## Demande irrecevable (notification à la commune - premier tour)

- **Etat(s) du dossier**: Réception du dossier
- **Evénement lié**: Dossier incomplet
- **Tâche liée**: {ref}`NoticeIncompleteTask <notice-incomplete-task>`
- **Identifiant notification entrante**: `NOTIF_COMPLETUDE1_IRRECEVABLE_COMMUNE`
- **Identifiant(s) notification(s) sortante(s)**: aucun

### Point(s) d'entrée(s)

- La commune reçoit une notification indiquant que le dossier est irrecevable (incomplet).

### Action(s) nécessaire(s)

- La commune créé et clôture un événement *Dossier incomplet*
- Changement de l'état du workflow vers *Incomplet*

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

- Changement de l'état du workflow vers *Complet*
- La commune créé un événement *Enquête publique*
- La commune créé et clôture un événément *Communication dates enquête publique*
- La comune clôture l'événement *Enquête publique*
- La commune créé et clôture un événement *Communication PV enquête publique ???*

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

- Changement de l'état du workflow vers *Complet*
- La commune créé un événement *Enquête publique*
- La commune créé et clôture un événément *Communication dates enquête publique*
- La comune clôture l'événement *Enquête publique*
- La commune créé et clôture un événement *Communication PV enquête publique ???*

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

- Changement de l'état du workflow vers *Complet*
- La commune créé un événement *Enquête publique*
- La commune créé et clôture un événément *Communication dates enquête publique*
- La comune clôture l'événement *Enquête publique*
- La commune créé et clôture un événement *Communication PV enquête publique ???*

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

- **Etat(s) du dossier**: Complet ???
- **Evénement lié**: aucun
- **Tâche liée**: {ref}`NoticeProrogationTask <notice-prorogation-task>`
- **Identifiant notification entrante**: `NOTIFICATION_PROROGATION_COMMUNE`
- **Identifiant(s) notification(s) sortante(s)**: aucun

### Point(s) d'entrée(s)

- La commune reçoit une notification de prorogation

### Action(s) nécessaire(s)

- La commune adapte de délai (+30j)

### Informations reçues

- xxx

### Informations nécessaires

- aucune