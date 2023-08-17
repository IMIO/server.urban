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

**Exemple de réponse (TRANSFERT_DOSSIER)**

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
      "idBO": "10010643",
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
      "typeBOSubtype": {
        "code": "PE",
        "description": [
          {
            "_value_1": "PE",
            "language": "de",
            "shortDescription": null
          },
          {
            "_value_1": "PE",
            "language": "fr",
            "shortDescription": null
          }
        ],
        "codeSource": null
      },
      "noticeIdBO": "TRANSFERT_DOSSIER:32714501:10010643",
      "codeTypeNoticeBO": "TRANSFERT_DOSSIER",
      "applicationCodeBO": "TWICE",
      "fileLanguage": {
        "code": "FR",
        "description": [
          {
            "_value_1": "FR",
            "language": "de",
            "shortDescription": null
          },
          {
            "_value_1": "FR",
            "language": "fr",
            "shortDescription": null
          }
        ]
      },
      "fileDate": "2023-06-21T00:00:00+02:00",
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
      "contactName": "Giuseppe MONACHINO",
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
            "_value_1": "permis.environnement.namur@spw.wallonie.be",
            "type": null
          }
        ]
      }
    },
    "receiver": {
      "noticeInstanceId": "0206.524.876"
    },
    "subjectNotice": "Renouvellement du permis d'exploiter la station d'épuration de Fouches.",
    "sendDate": "2023-06-21T00:00:00+02:00",
    "deadline": 3,
    "dueDate": null,
    "comment": null,
    "businessReference": null,
    "addresses": {
      "address": [
        {
          "country": "BE",
          "addressId": {
            "_value_1": null,
            "source": null
          },
          "street": "CHAUSSÉE ROMAINE",
          "houseNumber": null,
          "boxNumber": null,
          "postCode": "6700",
          "municipality": "ARLON",
          "state": null,
          "plainText": null,
          "locality": null,
          "inceptionDate": null,
          "modificationDate": null,
          "addressType": null
        }
      ]
    },
    "parcels": {
      "parcel": [
        {
          "identifier": "P001",
          "municipality": {
            "code": "81001",
            "description": [
              {
                "_value_1": "81001",
                "language": "de",
                "shortDescription": null
              },
              {
                "_value_1": "81001",
                "language": "fr",
                "shortDescription": null
              }
            ],
            "codeSource": null
          },
          "division": "ARLON 8 DIV/HACHY/",
          "codeDivision": "81408",
          "section": "D",
          "radical": "0338",
          "bisTer": "00",
          "exponent": "C",
          "power": "000",
          "part": false,
          "right": true,
          "capakey": "81408D0338/00C000"
        }
      ]
    },
    "parties": {
      "part": [
        {
          "enterpriseNumber": 204359994,
          "enterpriseType": "personneMorale",
          "legalForm": "Société coopérative",
          "personNumber": null,
          "title": null,
          "lastname": null,
          "firstname": null,
          "language": {
            "code": "FR",
            "description": [
              {
                "_value_1": "FR",
                "language": "de",
                "shortDescription": null
              },
              {
                "_value_1": "FR",
                "language": "fr",
                "shortDescription": null
              }
            ]
          },
          "denomination": "IDELUX Eau  ",
          "mailingAddresses": {
            "mailingAddress": [
              {
                "country": "BE",
                "addressId": {
                  "_value_1": null,
                  "source": null
                },
                "street": "Schoppach,drève de l'Arc-en-Ciel",
                "houseNumber": "98",
                "boxNumber": null,
                "postCode": "6700",
                "municipality": "Arlon",
                "state": null,
                "plainText": null,
                "locality": null,
                "inceptionDate": null,
                "modificationDate": null,
                "addressType": null
              }
            ]
          },
          "phoneNumber": {
            "phoneNumber": [
              {
                "_value_1": "+3263000000",
                "type": null
              }
            ]
          },
          "email": {
            "email": [
              {
                "_value_1": "maxime.semer@spw.wallonie.be",
                "type": null
              }
            ]
          }
        }
      ]
    },
    "documents": {
      "document": [
        {
          "documentData": {
            "filename": "1654644-390124_Permisdenvironnement",
            "description": null,
            "type": {
              "code": "PJ_FORMULAIRE",
              "description": [
                {
                  "_value_1": "Pièces-jointes du formulaire",
                  "language": "de",
                  "shortDescription": null
                },
                {
                  "_value_1": "Pièces-jointes du formulaire",
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
            "documentId": "d8cd78f1-a385-45d8-a626-1b48c9e6cf35",
            "fileSize": 189024,
            "mimeType": "application/xml",
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
            "principal": false
          },
          "content": {
            "documentContentStorage": "TWICE"
          }
        },
        {
          "documentData": {
            "filename": "1654644-390124_Permisdenvironnement",
            "description": null,
            "type": {
              "code": "FORMULAIRE",
              "description": [
                {
                  "_value_1": "Formulaire principal",
                  "language": "de",
                  "shortDescription": null
                },
                {
                  "_value_1": "Formulaire principal",
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
            "documentId": "cc8d5a94-c7e5-4d06-b908-521deecb74cf",
            "fileSize": 1009911,
            "mimeType": "application/pdf",
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
            "principal": false
          },
          "content": {
            "documentContentStorage": "TWICE"
          }
        },
        {
          "documentData": {
            "filename": "Annexe 12 Carto reseau degouttage",
            "description": "2.3.2 - Schéma des écoulements des eaux jusqu'à leurs rejets",
            "type": {
              "code": "E_SCHEMA_ECOULEMENT_EAUX",
              "description": [
                {
                  "_value_1": "Schéma d'écoulement des eaux",
                  "language": "de",
                  "shortDescription": null
                },
                {
                  "_value_1": "Schéma d'écoulement des eaux",
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
            "documentId": "b93fdccd-e205-4e76-bee1-943f15f03d5f",
            "fileSize": 1187969,
            "mimeType": "application/pdf",
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
            "principal": false
          },
          "content": {
            "documentContentStorage": "TWICE"
          }
        },
        {
          "documentData": {
            "filename": "Annexe 10 Extrait conforme BDES ",
            "description": "2.5.2 - Extrait conforme de la Banque de Données de l'État des Sols",
            "type": {
              "code": "E_SOL_EXTRAIT_BES",
              "description": [
                {
                  "_value_1": "Extrait BDES",
                  "language": "de",
                  "shortDescription": null
                },
                {
                  "_value_1": "Extrait BDES",
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
            "documentId": "78ef4248-82c5-4bcd-b163-b068a64ae37f",
            "fileSize": 128158,
            "mimeType": "application/pdf",
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
            "principal": false
          },
          "content": {
            "documentContentStorage": "TWICE"
          }
        },
        {
          "documentData": {
            "filename": "1-06-FormulaireRisquesIndustriels",
            "description": "1.3.5 - Schéma de procédé",
            "type": {
              "code": "SCHEMA_PROCEDE",
              "description": [
                {
                  "_value_1": "Schéma de procédé",
                  "language": "de",
                  "shortDescription": null
                },
                {
                  "_value_1": "Schéma de procédé",
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
            "documentId": "48484e93-c370-4487-ac33-cf6b32899b57",
            "fileSize": 464914,
            "mimeType": "application/pdf",
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
            "principal": false
          },
          "content": {
            "documentContentStorage": "TWICE"
          }
        },
        {
          "documentData": {
            "filename": "Annexe 8 Localisation du rejet",
            "description": "1.4.4 - Plan descriptif de l'établissement",
            "type": {
              "code": "PLAN_DESCRIPTIF",
              "description": [
                {
                  "_value_1": "Plan descriptif",
                  "language": "de",
                  "shortDescription": null
                },
                {
                  "_value_1": "Plan descriptif",
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
            "documentId": "e18e9e23-b873-46ce-a24a-33ab801bcb68",
            "fileSize": 644668,
            "mimeType": "application/pdf",
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
            "principal": false
          },
          "content": {
            "documentContentStorage": "TWICE"
          }
        },
        {
          "documentData": {
            "filename": "1-14-FormulaireEfficaciteEnergetique(1)",
            "description": "1.4.3 - Documents officiels liés à l'établissement",
            "type": {
              "code": "DOCUMENTS_OFFICIELS",
              "description": [
                {
                  "_value_1": "Permis et Autorisations",
                  "language": "de",
                  "shortDescription": null
                },
                {
                  "_value_1": "Permis et Autorisations",
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
            "documentId": "081a828c-1010-45e7-bee3-bd3974a6c811",
            "fileSize": 238621,
            "mimeType": "application/pdf",
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
            "principal": false
          },
          "content": {
            "documentContentStorage": "TWICE"
          }
        }
      ]
    },
    "mapSpecification": {
      "mapStatus": null,
      "area": "[{\"type\":\"FeatureCollection\",\"layer\":\"perimeter\",\"crs\":{\"type\":\"EPSG\",\"properties\":{\"code\":31370}},\"features\":[{\"type\":\"Feature\",\"geometry\":{\"type\":\"MultiPolygon\",\"crs\":{\"type\":\"EPSG\",\"properties\":{\"code\":31370}},\"coordinates\":[[[[246266.21909999847,42500.799400001764],[246243.36240000278,42489.49920000136],[246203.07069999725,42484.87260000035],[246200.7520999983,42484.606800001115],[246204.33799999952,42494.30680000037],[246198.6400000006,42504.45670000091],[246196.13599999994,42518.434799999],[246194.56289999932,42524.518399998546],[246305.51410000026,42576.87249999866],[246277.31759999692,42527.49120000005],[246269.22450000048,42510.577300000936],[246266.21909999847,42500.799400001764]]]],\"bbox\":[246194.56289999932,42484.606800001115,246305.51410000026,42576.87249999866]},\"properties\":{\"cadastre\":\"2018\"},\"crs\":{\"type\":\"EPSG\",\"properties\":{\"code\":31370}}}]}]"
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
          "date": "2023-06-21T13:15:56.739000+02:00"
        }
      ]
    },
    "noticeIdentifier": {
      "noticeId": "933311"
    },
    "receptionDate": "2023-06-21T11:15:56.302440"
  },
  "customerTicket": null,
  "requestId": null,
  "inscriptionReference": null
}
```

**Exemple de réponse (NOTIF_COMPLETUDE1_INCOMPLET_COMMUNE)**

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

- **Url**: `/spw/notice/v1/notifications/{notification_id}/documents/{document_id}`
- **Type**: `GET`

**Paramètres**

| ID | Type | Description |
| -- | ---- | ----------- |
| notification_id (path) | String | Identifiant de la notification |
| document_id (path) | String | Identifiant du document |

**Exemple de requête**

```{code-block} bash
curl -X 'GET' \
  'https://api-staging.imio.be/spw/notice/v1/notifications/933311/documents/cc8d5a94-c7e5-4d06-b908-521deecb74cf' \
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
  "document": {
    "documentData": {
      "filename": "1654644-390124_Permisdenvironnement",
      "description": null,
      "type": {
        "code": "FORMULAIRE",
        "description": []
      },
      "language": {
        "code": "FR",
        "description": []
      },
      "documentId": "cc8d5a94-c7e5-4d06-b908-521deecb74cf",
      "fileSize": 1009911,
      "mimeType": "application/pdf",
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
      "principal": null
    },
    "content": {
      "documentContent": "JVBERi0xLjQKJeLjz9MK..."
    }
  },
  "customerTicket": null,
  "requestId": null,
  "inscriptionReference": null
}
```

## Response

- **Url**: `/spw/notice/v1/notifications/{notification_id}/responses`
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