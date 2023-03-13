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
| reference | String | Référence communale |


(notice-incomplete-task)=
## NoticeIncompleteTask

Tâche indiquant que le dossier est incomplet

**Notification(s) sortantes**: aucune

### Actions

- Création et clôture de l'événement *1er dossier incomplet*
- Changer l'état du workflow vers *Incomplet*


(notice-inadmissible-task)=
## NoticeInadmissibleTask

Tâche indiquant que le dossier est irrecevable

**Notification(s) sortantes**: aucune

### Actions

- Création et clôture de l'événement *2ème dossier incomplet (irrecevable)*
- Changer l'état du workflow vers *Irrecevable*