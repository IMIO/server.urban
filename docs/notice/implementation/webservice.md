---
html_meta:
  "description": "Détails concernant le webservice"
  "property=og:description": "Détails concernant le webservice"
  "property=og:title": "Webservice"
  "keywords": "Urban, Notice, implementation, development"
---

# Webservice

Documentation basée sur : https://api-staging.imio.be/spw/notice/v1/docs#/SPW-Notice/

## Instances

- **Url**: `/spw/notice/v1/instances`
- **Type**: `GET`

**Paramètres**

| ID | Type | Description |
| -- | ---- | ----------- |
| name | String | Nom de la commune |

**Exemple de requête**

```{code-block} bash
curl -X 'GET' \
  'https://api-staging.imio.be/spw/notice/v1/instances?name=anthisne' \
  -H 'accept: application/json'
```

**Exemple de réponse**


```{code-block} json
:linenos:

{
  "status": {
    "value": "PROCESSED",
    "code": "SOA0000000",
    "description": [
      {
        "_value_1": "Traitement correct",
        "lang": "FR"
      },
      {
        "_value_1": "Successful treatment",
        "lang": "EN"
      }
    ],
    "details": null
  },
  "instances": {
    "instance": [
      {
        "codeInstanceNOTICe": "0216.693.545",
        "labelInstanceNOTICe": [
          {
            "_value_1": "Gemeinde Anthisnes",
            "language": "de",
            "shortDescription": null
          },
          {
            "_value_1": "Commune d'Anthisnes",
            "language": "fr",
            "shortDescription": null
          }
        ],
        "status": "ACTIF"
      }
    ]
  },
  "customerTicket": null,
  "requestId": null,
  "inscriptionReference": null
}
```

## Notifications

- **Url**: `/spw/notice/v1/instances/{instance_code}/notifications`
- **Type**: `GET`

**Paramètres**

| ID | Type | Description |
| -- | ---- | ----------- |
| instance_code (path) | String | Numéro {term}`BCE` de la commune |
| status * | String | Statut de la notification |
| raw * | Boolean | Résultat bruts (False par défaut) |

`*` optionnel

**Exemple de requête**

```{code-block} bash
curl -X 'GET' \
  'https://api-staging.imio.be/spw/notice/v1/instances/0216.693.545/notifications?raw=false' \
  -H 'accept: application/json'
```

**Exemple de réponse**

```{code-block} json
:linenos:

{
  "items": [
    {
      "label": "PEPU - Demande incomplète (premier tour)",
      "status": "EN_ATTENTE_REPONSE",
      "notifications_id": "257069",
      "instance_id": "0216.693.545",
      "reception_date": "2022-02-01T10:25:49.044000"
    },
    {
      "label": "PEPU - Demande complète et recevable. Demande EP (établissement sur le territoire de la commune)",
      "status": "EN_ATTENTE_REPONSE",
      "notifications_id": "257070",
      "instance_id": "0216.693.545",
      "reception_date": "2022-02-01T10:30:52.654000"
    },
    {
      "label": "PEPU - Transmission du rapport de synthèse",
      "status": "EN_ATTENTE_REPONSE",
      "notifications_id": "257071",
      "instance_id": "0216.693.545",
      "reception_date": "2022-02-01T10:33:29.119000"
    },
    {
      "label": "PEPU - Demande complète et recevable. Demande EP (établissement sur le territoire de la commune)",
      "status": "EN_ATTENTE_REPONSE",
      "notifications_id": "257072",
      "instance_id": "0216.693.545",
      "reception_date": "2022-02-03T14:26:12.739000"
    },
    {
      "label": "PEPU - Demande complète et recevable. Demande EP (établissement sur le territoire de la commune)",
      "status": "TERMINE",
      "notifications_id": "257073",
      "instance_id": "0216.693.545",
      "reception_date": "2022-02-10T14:47:39.552000"
    },
    {
      "label": "PEPU - Demande complète et recevable. Demande EP (établissement sur le territoire de la commune)",
      "status": "EN_ATTENTE_REPONSE",
      "notifications_id": "257074",
      "instance_id": "0216.693.545",
      "reception_date": "2022-02-10T14:49:18.558000"
    }
  ],
  "items_total": 6
}
```

## Notifcation

- **Url**: `/spw/notice/v1/notifications/{notification_id}`
- **Type**: `GET`

**Paramètres**

| ID | Type | Description |
| -- | ---- | ----------- |
| notification_id (path) | String | Identifiant de la notification |

**Exemple de requête**

```{code-block} bash
curl -X 'GET' \
  'https://api-staging.imio.be/spw/notice/v1/notifications/257069' \
  -H 'accept: application/json'
```

**Exemple de réponse**

```{code-block} json
:linenos:

{
  "status": {
    "value": "PROCESSED",
    "code": "SOA0000000",
    "description": [
      {
        "_value_1": "Traitement correct",
        "lang": "FR"
      },
      {
        "_value_1": "Successful treatment",
        "lang": "EN"
      }
    ],
    "details": null
  },
  "notice": {
    "BO": {
      "idBO": "10003411",
      "typeBO": {
        "code": "PE_PU",
        "description": [
          {
            "_value_1": "DE_Permis PE/PU",
            "language": "de",
            "shortDescription": null
          },
          {
            "_value_1": "Demande PE/PU",
            "language": "fr",
            "shortDescription": null
          }
        ],
        "codeSource": null
      },
      "typeBOSubtype": null,
      "noticeIdBO": "NOTIFICATION:6103322",
      "codeTypeNoticeBO": "NOTIF_COMPLETUDE1_INCOMPLET_COMMUNE",
      "applicationCodeBO": "TWICE",
      "fileLanguage": {
        "code": "FR",
        "description": [
          {
            "_value_1": "français",
            "language": "de",
            "shortDescription": null
          },
          {
            "_value_1": "français",
            "language": "fr",
            "shortDescription": null
          }
        ]
      },
      "fileDate": "2022-02-01T00:00:00+01:00",
      "noticeLanguage": {
        "code": "FR",
        "description": [
          {
            "_value_1": "DE_Français",
            "language": "de",
            "shortDescription": null
          },
          {
            "_value_1": "Français",
            "language": "fr",
            "shortDescription": null
          }
        ]
      }
    },
    "sender": {
      "noticeInstanceId": "O3080500",
      "contactName": "Maxime SEMER",
      "contactPhone": {
        "phoneNumber": [
          {
            "_value_1": "+3281715344",
            "type": null
          }
        ]
      },
      "contactMail": {
        "email": [
          {
            "_value_1": "rgpe.namur.dpa.dgarne@spw.wallonie.be",
            "type": null
          }
        ]
      }
    },
    "receiver": {
      "noticeInstanceId": "0216.693.545"
    },
    "subjectNotice": "vcvcxv",
    "sendDate": "2022-02-01T00:00:00+01:00",
    "deadline": null,
    "dueDate": null,
    "comment": null,
    "businessReference": null,
    "addresses": null,
    "parcels": null,
    "parties": null,
    "documents": {
      "document": [
        {
          "documentData": {
            "filename": "10003411_Demande incomplète (notification à la commune - premier tour) - Commune wallonne - DEMANDE_INCOMPLETE_COMMUNE",
            "description": null,
            "type": {
              "code": "NOTIF_COMPLETUDE1_INCOMPLET_COMMUNE",
              "description": [
                {
                  "_value_1": "Notification complétude 1: incomplet, commune",
                  "language": "de",
                  "shortDescription": null
                },
                {
                  "_value_1": "Notification complétude 1: incomplet, commune",
                  "language": "fr",
                  "shortDescription": null
                }
              ]
            },
            "language": {
              "code": "FR",
              "description": [
                {
                  "_value_1": "DE_Français",
                  "language": "de",
                  "shortDescription": null
                },
                {
                  "_value_1": "Français",
                  "language": "fr",
                  "shortDescription": null
                }
              ]
            },
            "documentId": "770f00a5-9104-43b3-932c-96fac694d9c0",
            "fileSize": 150342,
            "mimeType": "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
            "confidentiality": {
              "code": "0",
              "description": [
                {
                  "_value_1": "Öffentlichkeit",
                  "language": "de",
                  "shortDescription": null
                },
                {
                  "_value_1": "public",
                  "language": "fr",
                  "shortDescription": null
                }
              ],
              "domain": "CONFIDENTIALITE"
            },
            "principal": true
          },
          "content": {
            "documentContentStorage": "TWICE"
          }
        }
      ]
    },
    "mapSpecification": {
      "mapStatus": null,
      "area": null
    },
    "specific": {
      "ns3:TwiceDefaultRequest": {
        "@xmlns": "http://soa.spw.wallonie.be/data/common/code/v1",
        "@xmlns:ns2": "http://soa.spw.wallonie.be/services/noticeExtensions/messages/v1",
        "@xmlns:ns3": "http://soa.spw.wallonie.be/services/noticeTwiceExtensions/messages/v1",
        "@xmlns:ns4": "http://soa.spw.wallonie.be/data/business/environmentalLicence/v2",
        "@xmlns:ns5": "http://soa.spw.wallonie.be/data/common/date/v1",
        "@xmlns:ns6": "http://soa.spw.wallonie.be/data/common/code/v2",
        "@xmlns:ns7": "http://soa.spw.wallonie.be/data/entity/enterprise/enterpriseBasicType/v1",
        "@xmlns:ns8": "http://soa.spw.wallonie.be/data/entity/enterprise/exOfficioExecution/v1",
        "@xmlns:ns9": "http://soa.spw.wallonie.be/data/entity/enterprise/denomination/v2",
        "@xmlns:ns10": "http://soa.spw.wallonie.be/data/entity/enterprise/enterpriseIdentification/v1",
        "ns2:acceptedResponseNoticeCodes": null,
        "ns3:timeLimits": null,
        "ns3:suspentionPeriods": null
      }
    },
    "status": {
      "status": [
        {
          "code": {
            "code": "EN_ATTENTE_REPONSE",
            "description": [
              {
                "_value_1": "DE_En attende de réponse",
                "language": "de",
                "shortDescription": null
              },
              {
                "_value_1": "En attende de réponse",
                "language": "fr",
                "shortDescription": null
              }
            ]
          },
          "date": "2022-02-01T11:25:49.236000+01:00"
        }
      ]
    },
    "noticeIdentifier": {
      "noticeId": "257069"
    },
    "receptionDate": "2022-02-01T10:25:49.044000"
  },
  "customerTicket": null,
  "requestId": null,
  "inscriptionReference": null
}
```

## Document

- **Url**: `/spw/notice/v1/instances`
- **Type**: `GET`

**Paramètres**

| ID | Type | Description |
| -- | ---- | ----------- |
| notification_id (path) | String | Identifiant de la notification |
| document_id (path) | String | Identifiant du document |

**Exemple de requête**

```{code-block} bash
```

**Exemple de réponse**

```{code-block} json
:linenos:

```

## Response

- **Url**: `/spw/notice/v1/instances`
- **Type**: `POST`

**Paramètres**

| ID | Type | Description |
| -- | ---- | ----------- |
| notification_id (path) | String | Identifiant de la notification |

**Exemple de requête**

```{code-block} bash
```

**Exemple de réponse**

```{code-block} json
:linenos:

```

## Name

- **Url**: `/spw/notice/v1/instances`
- **Type**: `GET`

**Paramètres**

| ID | Type | Description |
| -- | ---- | ----------- |
| name | String | Nom de la commune |

**Exemple de requête**

```{code-block} bash
```

**Exemple de réponse**

```{code-block} json
:linenos:

```