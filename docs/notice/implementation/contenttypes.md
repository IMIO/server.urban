---
html_meta:
  "description": "Détails concernant les types de contenus"
  "property=og:description": "Détails concernant les types de contenus"
  "property=og:title": "Types de contenus"
  "keywords": "Urban, Notice, implementation, development"
---

# Types de contenu

- {ref}`NoticeTask <noticetask>`
  - {ref}`NoticeTransferFolderTask <notice-transfer-folder-task>`

(noticetask)=
## NoticeTask

Héritant de `imio.schedule.content.task.AutomatedTask` et implémentant des champs complémentaires.

Le type de contenu `NoticeTask` sera implémenté dans `Products.Urban`, ce nouveau type de contenu sera automatiquement créé via un processus vérifiant les nouvelles demandes en interrogeant le webservice passerelle.

### Processus de création

Pour la vérification des nouvelles demandes en provenance de {term}`Notice`, un {term}`Cron` sera mis en place, celui-ci pour des raisons de performance, ne vérifiera que les dernières demandes sur base de leurs dates.

```{note}
La date de la dernière exécution complète du {term}`Cron` sera stockée dans Plone afin de garantir qu'en cas d'erreur(s), l'ensemble des dernières demandes seront récupérées.
```

(notice-transfer-folder-task)=
## NoticeTransferFolderTask

Tâche de réception et de transfert du dossier à une autre instance (ex: {term}`DPA`)

**Notification(s) sortantes**: `TRANSFERT_DOSSIER_SORTANT`

### Actions

- Création et clôture de l'événement *Dépôt de la demande* ???
- Création et clôture de l'événement *Transfert dossier DPA / DGO4*

### Champs pour l'événement Transfert dossier DPA / DGO4

| Identifiant | Type | Description |
| ----------- | ---- | ----------- |
| comment_dpa | Text | Commentaire pour {term}`DPA` |
| reference | String | Référence communale (référence dossier) |


(notice-incomplete-task)=
## NoticeIncompleteTask

Tâche indiquant que le dossier est incomplet

**Notification(s) sortantes**: aucune

### Actions

- Création et clôture de l'événement *Dossier incomplet*
- Changer l'état du workflow vers *Incomplet*


(notice-inadmissible-task)=
## NoticeInadmissibleTask

Tâche indiquant que le dossier est irrecevable

**Notification(s) sortantes**: aucune

### Actions

- Création et clôture de l'événement *Dossier irrecevable*
- Changer l'état du workflow vers *Irrecevable*


(notice-public-investigation-task)=
## NoticePublicInvestigationTask

Tâche pour la réalisation d'une enquête publique

**Notification(s) sortantes**: `PE_DEM_COM_DATES_AVIS_AFFICHAGE`, `PE_DEM_COM_PV_EP`

### Actions

- Création de l'événement *Enquête publique*
- Création et clôture de l'événement *Communication dates enquête publique*
- Clôture de l'événement *Enquête publique*
- Création et clôture de l'événement *Communication PV enquête publique ???*


(notice-prorogation-task)=
## NoticeProrogationTask

Tâche pour adapter le délai suite à une prorogation

**Notification(s) sortantes**: aucune

### Actions

- Adaptation du délai (+30j)


(notice-syntesis-report-task)=
## NoticeSynthesisReportTask

Tâche lié au rapport de synthèse, à la décision de la commune et à son affichage.

**Notification(s) sortantes**: `PE_DEM_COM_DECISION`, `PE_DEM_COM_DATES_DEC_AFFICHAGE`

### Actions

- Création et clôture de l'événement *Rapport de synthèse* sur base des informations reçues.
- Création et clôture de l'événement *Avis préalable du collège*
- Création et clôture de l'événement *Communication décision Collège*
- Création et clôture de l'événement *Affichage de la décision*
- Création et clôture de l'événement *Communication affichage décision*