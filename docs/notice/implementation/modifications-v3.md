---
html_meta:
  "description": "Listing des modifications liés à la V2"
  "property=og:description": "Listing des modifications liés à la V2"
  "property=og:title": "Modifications V2"
  "keywords": "Urban, Notice, implementation, development"
---

# Modifications v2

Ci-dessous les différentes modifications liés à la v2 des webservices.

## Nouveaux webservices

Les webservices suivants ont été ajoutés

### getDocumentLink

Ce nouveau webservice vient remplacer le webservice `getDocument`, son fonctionnement est quelque peu différement, précédemment le webservice permettait de récupérer le contenu d'un document alors que désormais ce webservice renvoit une URL à usage unique permettant de récupérer le dit document.

L'impact technique est mineur, ainsi au lieu d'avoir directement le document, il faudra désormais faire une requête supplémentaire.

### giveUpNotification

Ce nouveau webservice permet d'informer Notice qu'une notification est abandonnée par un back office pilote ???.

Paramètres :

    - noticeid (str) : Le numéro de la notification Notice impactée
    - instanceId (str) : Instance liée à la notification
    - comment (str) : Commentaire explicatif de l'abandon de la notification (facultatif)

### extendDeadline

Ce nouveau webservice permet à un back office pilote afin de mettre à jour le délai et la date d'échéance d'une notification.

Paramètres :

    - noticeid (str) : Le numéro de la notification Notice impactée
    - instanceId (str) : Instance liée à la notification
    - deadline (long) : Nouveau délai pour traiter la notification en jours calendrier
    - duedate (datetime) : Nouvelle date d'échéance de réponse de la notification

## Webservices supprimés

Les webservices suivants ont été supprimés :

    - getDocument

## Autres changements

### Nouveaux codes d'erreurs SOAP

De nouveaux codes spécifiques pour les erreurs SOAP ont été ajoutés, ceux-ci sont consultables à la page 71 du document "Services « Notification » et « RequêteNotification » V1.0"
