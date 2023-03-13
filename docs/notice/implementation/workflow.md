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
- Référence communale (référence dossier ???)

## Demande irrecevable (notification à la commune - premier tour)

- **Etat(s) du dossier**: Réception du dossier
- **Evénement lié**: aucun
- **Tâche liée**: {ref}`NoticeIncompleteTask <notice-incomplete-task>`
- **Identifiant notification entrante**: `NOTIF_COMPLETUDE1_IRRECEVABLE_COMMUNE`
- **Identifiant(s) notification(s) sortante(s)**: aucune

### Point(s) d'entrée(s)

- La commune reçoit une notification indiquant que le dossier est irrecevable (incomplet).

### Action(s) nécessaire(s)

- La commune créé et clôture un événement *1er dossier incomplet*
- Changement de l'état du workflow vers *Incomplet*

### Informations reçues

- xxx

### Informations nécessaires

- aucune

## Demande incomplète (notification à la commune - premier tour)

- **Etat(s) du dossier**: Réception du dossier
- **Evénement lié**: aucun
- **Tâche liée**: {ref}`NoticeIncompleteTask <notice-incomplete-task>`
- **Identifiant notification entrante**: `NOTIF_COMPLETUDE1_INCOMPLET_COMMUNE`
- **Identifiant(s) notification(s) sortante(s)**: aucune

### Point(s) d'entrée(s)

- La commune reçoit une notification indiquant que le dossier est incomplet.

### Action(s) nécessaire(s)

- La commune créé et clôture un événement *1er dossier incomplet*
- Changement de l'état du workflow vers *Incomplet*

### Informations reçues

- xxx

### Informations nécessaires

- aucune

## Demande non recevable (notification à la commune - premier tour)

- **Etat(s) du dossier**: Réception du dossier
- **Evénement lié**: aucun
- **Tâche liée**: {ref}`NoticeIncompleteTask <notice-incomplete-task>`
- **Identifiant notification entrante**: `NOTIF_COMPLETUDE1_NON_RECEVABLE_COMMUNE`
- **Identifiant(s) notification(s) sortante(s)**: aucune

### Point(s) d'entrée(s)

- La commune reçoit une notification indiquant que le dossier est non recevable (incomplet).

### Action(s) nécessaire(s)

- La commune créé et clôture un événement *1er dossier incomplet*
- Changement de l'état du workflow vers *Incomplet*

### Informations reçues

- xxx

### Informations nécessaires

- aucune

## Demande irrecevable (notification à la commune - second tour)

- **Etat(s) du dossier**: Réception du dossier, Incomplet
- **Evénement lié**: aucun
- **Tâche liée**: {ref}`NoticeInadmissibleTask <notice-inadmissible-task>`
- **Identifiant notification entrante**: `NOTIF_COMPLETUDE2_IRRECEVABLE_COMMUNE`
- **Identifiant(s) notification(s) sortante(s)**: aucune

### Point(s) d'entrée(s)

- La commune reçoit une notification indiquant que le dossier est irrecevable pour la seconde fois.

### Action(s) nécessaire(s)

- La commune créé et clôture un événement *2ème dossier incomplet (irrecevable)*
- Changement de l'état du workflow vers *Irrecevable*

### Informations reçues

- xxx

### Informations nécessaires

- aucune

## Demande non recevable (notification à la commune - second tour)

- **Etat(s) du dossier**: Réception du dossier, Incomplet
- **Evénement lié**: aucun
- **Tâche liée**: {ref}`NoticeInadmissibleTask <notice-inadmissible-task>`
- **Identifiant notification entrante**: `NOTIF_COMPLETUDE2_NON_RECEVABLE_COMMUNE`
- **Identifiant(s) notification(s) sortante(s)**: aucune

### Point(s) d'entrée(s)

- La commune reçoit une notification indiquant que le dossier est non recevable pour la seconde fois.

### Action(s) nécessaire(s)

- La commune créé et clôture un événement *2ème dossier incomplet (irrecevable)*
- Changement de l'état du workflow vers *Irrecevable*

### Informations reçues

- xxx

### Informations nécessaires

- aucune