#!/bin/bash

echo "============================"

NOM="check-security - Audit basique"

echo "$NOM"

echo "============================"

PROBLEMES=0

echo "1/3 - Recherche de fichiers .env..."

if [ -f ".env" ]; then
	echo "le fichier env existe"
	PROBLEMES=$((PROBLEMES + 1))
else
	echo "le fichier env existe pas"
fi

if [ -f ".gitignore" ]; then
	echo "le fichier gitignore existe"
else 
	echo "le fichier gitignore existe pas"
	 PROBLEMES=$((PROBLEMES + 1))
fi

echo "===================="

echo "3/3 - Recherche de mot  de passe"

RESULTAT=$(grep -r "password" . --exclude="check.sh")

if [ -n "$RESULTAT" ]; then
	echo "mot de passe trouver"
	 PROBLEMES=$((PROBLEMES + 1))
else 
	echo "acun mot de passe"
fi 

echo "voici le nombre de problémes $PROBLEMES"
echo "======================================="

