#!/bin/bash

echo "Début de la vérification de l'application..."

if [ -f "app/index.html" ]; then
  echo "Fichier index.html trouvé. Vérification réussie."
  echo "Fin de la vérification."
  exit 0
else
  echo "Erreur : le fichier index.html est manquant."
  echo "Fin de la vérification."
  exit 1
fi
