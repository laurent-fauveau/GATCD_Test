#!/bin/bash

set -e

KEY=~/github_deploy_key
USER=deployuser
IP=172.16.44.132

echo "# Test SSH"
ssh -i $KEY -o BatchMode=yes -o StrictHostKeyChecking=accept-new $USER@$IP 'echo Connexion OK'

echo "# Test sudo"
ssh -i $KEY $USER@$IP 'sudo whoami'

echo "# Création dossier app"
ssh -i $KEY $USER@$IP 'mkdir -p ~/deploy_test_app && echo "ok" > ~/deploy_test_app/status.txt'

echo "# Vérifier services système"
ssh -i $KEY $USER@$IP 'systemctl list-units --type=service | grep ssh'
