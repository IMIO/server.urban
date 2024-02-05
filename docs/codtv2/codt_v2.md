# Analyse technique de la réforme du CODT

## Préambule

La présente analyse est établie afin de définir l'analyse technique concernant la réforme du CODT et plus concrêtement les implications dans l'application Urban.

Cette analyse est globale aux deux versions d'Urban actuellement en production, à savoir :

- **Urban 2.6** déployé pour l'ensemble des communes
- **Urban 2.5-liege** qui est une version spécifique à la ville de Liège

Sauf mention spécifique dans ce document il est prévu que l'ensemble des développements sera strictement le même pour **Urban 2.6** et pour **Urban 2.5-liege**.

L'ensemble de ces développements devront pouvoir être déployé en production pour l'entrée en vigueur de la réforme le **1er avril 2024**.

## Plan directeur

Pour tenir compte du délai de réalisation relativement court, il est convenu de procéder comme suis.

1. Analyse des différentes implications pour Urban

    1.1. Mise en évidence du spécifique pour Urban 2.5-liege

    1.2. Priorisation des développements (1, 2 et 3)

2. Début du travail sur les **tâches prioritaires** (1)
3. Début du travail sur les **tâches impactantes** (2)
4. Début du travail sur les **tâches non-prioritaires** (3)

### Tâches prioritaires

Les tâches prioritaires ont été identifiées comme telles de part la complexité de leur implémentation. Cette complexité s'explique soit par le temps nécessaire à leur développement ou par le besoin d'avoir un plus grand retour de la part du métier.

### Tâches impactantes

Les tâches impactantes correspondent aux éléments qui soit sont moyennement complexes, soit qui impactent plusieurs **tâches non-prioritaires**.

### Tâches non-prioritaires

Les tâches non-prioritaires reprennent l'ensemble des éléments facilement implémentables et ne nécessitant pas ou peu de retour du métier.

## Détails d'implémentation

### Echéancier et tâches

Afin de gérer différement les tâches et délais de l'échéancier, deux nouvelles conditions seront implémentées permettant de distinguer si un dossier est sur la réforme actuelle du CODT ou sur la nouvelle réforme.

Pour chaque tâche existante il sera évalué si la tâche reste en l'état et dans ce cas aucune condition ne sera appliqué, si la tâche venait à changer ou son délai, la condition sera appliquée pour limiter cette configuration de tâche à la réforme actuelle.

Pour chaque nouvelle tâche, la condition pour la limiter à la nouvelle réforme sera appliquée.

### Vocabulaires

### Adaptation de workflows

### Evénements et avis
