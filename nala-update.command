#!/bin/zsh
cd "$HOME/NALA-doCKer"
docker compose pull
docker compose up -d
docker image prune -f || true
