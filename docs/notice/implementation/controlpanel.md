---
html_meta:
  "description": "Détails concernant la configuration"
  "property=og:description": "Détails concernant la configuration"
  "property=og:title": "Configuration"
  "keywords": "Urban, Notice, implementation, development"
---

# Configuration

Un nouveau control panel sera développé spécifiquement pour Notice, celui-ci permettra d'y renseigner les différentes informations nécessaires pour la récupération d'informations via le webservice passerelle.

**Informations**

| Nom | Type | Informations |
| --- | ---- | ------------ |
| Url | String | Url du webservice passerelle |
| Identifiant Commune | String | Numéro {term}`BCE` de la Commune |
| Dernier import | Datetime | Date de dernier import des notifications de Notice (uniquement en lecture) |