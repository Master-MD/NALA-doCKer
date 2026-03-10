# NALA-doCKer

This is the central Docker-based orchestration stack for the NALA ecosystem components.

## Included Services

- **Portainer** (Port 9000): A lightweight management UI which allows you to easily manage your different Docker environments.
- **Dashy** (Port 8085): A highly customizable dashboard, which provides an easy-to-use homepage for your server or local setup.

## Getting Started

### Prerequisites
- Docker & Docker Compose installed

### Launching the Stack

You can manage the stack using the provided command scripts:

- **Start:** Execute `./nala-start.command` to bring up the environment in detached mode.
- **Stop:** Execute `./nala-stop.command` to safely stop the containers.
- **Update:** Execute `./nala-update.command` to pull the latest images and restart the containers if needed.

Alternatively, you can just use standard Docker Compose commands:
```bash
docker-compose up -d
```

## Directory Structure
- `dashy/`: Contains configuration files and custom public assets for Dashy.
- `docker-compose.yml`: Main configuration file for the Docker stack.

## Note
This repository was automatically pushed and configured as a private repository.
