#!/bin/zsh
cd "$HOME/NALA-doCKer"
docker compose up -d dashy portainer
open "http://127.0.0.1:8085"
