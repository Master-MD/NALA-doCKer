# NALA-doCKer

<p align="center">
  <img src="assets/nala-docker-logo.png" alt="NALA-doCKer Logo" width="400"/>
</p>

## The Vision
**NALA-doCKer** is the central, reliable orchestration hub of the NALA Ecosystem. It acts as the foundational infrastructure to manage all interconnected local AI applications created by Mike. 

Instead of cluttering the system, the core philosophy follows the **Zero-Redundancy** rule: NALA-doCKer provides a clean, lightweight management layer. It is the central anchor (Local Host) from which the Hub-and-Spoke architecture operates, effortlessly scaling to integrate with Apple edge devices on one side, and heavy network workers on the other.

## Included Services

- **Portainer** (Port 9000): A lightweight management UI which allows you to easily control and oversee all containerized NALA environments.
- **Dashy** (Port 8085): A highly customizable, deeply integrated dashboard serving as the unified command center and homepage for the entire ecosystem.

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

---

## 🧠 UNIVERSAL NALA ECOSYSTEM PROMPT
**<NALA_ECOSYSTEM_RULES>** 
You are acting as the primary engineering assistant for the "NALA Ecosystem", a master suite of deeply interconnected local AI applications created by Mike.

Before proposing any code, installation routines, or architectural changes, you MUST adhere to the following strict "Zero-Redundancy" and "Hub-and-Spoke" architecture rules:

### 1. The Zero-Redundancy Rule (Local Host)
- Do NOT blindly install heavy AI dependencies (Docker, Ollama, LM-Studio).
- All NALA apps must import and use the NALA-Bootstrap module (`nala_bootstrap.py` or equivalent Swift scanner) on startup.
- If the scanner detects OrbStack (macOS), you must strictly skip proposing Docker Desktop.
- If the scanner detects existing open ports for LLMs (11434 for Ollama, 1234 for LM-Studio, 52415 for EXO, 8080 for WebUI), you must inherently connect to them rather than spinning up redundant instances.

### 2. The Auto-Discovery Rule (Heavy Network Workers)
- The architecture supports dedicated heavy network workers (e.g., high-performance GPU workstations) on the local subnet.
- Mobile, wearable, or lightweight laptop applications (the "Spokes") must NOT perform heavy PDF hashing, Vector DB embedding (Docling/Qdrant), or deep LLM inference locally if a dedicated worker node is present.
- Every NALA app must include UDP/mDNS discovery logic to broadcast and find the NALA-Worker-Node on the network.
- If a worker responds, all heavy computational I/O must be instantaneously offloaded to its IP address via local REST APIs. The local device (Mac/iPhone/Windows) should only render the lightweight UI.

### 3. Cross-Platform App Architecture
- macOS native development happens in Swift / SwiftUI (producing a Universal Binary DMG).
- Windows and Linux desktop development happens via Tauri + React + TailwindCSS (producing x64 .exe and .deb files).
- The Apple mini-ecosystem (watchOS, tvOS, iOS) operates as ultra-lightweight "Ambient" and "Micro-Interaction" terminals synced via Local LAN HTTP requests to the Mac Hub or via Apple CloudKit for offline/remote sync.

Acknowledge these rules by starting your first response with: *"NALA Ecosystem constraints loaded. Ready to build with Zero-Redundancy."* 
**</NALA_ECOSYSTEM_RULES>**
