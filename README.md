# Terraform/OpenTofu Infrastructure as Code Repository

Dieses Repository enthält Konfigurationen für die Verwaltung von Cloud-Infrastruktur mit Terraform oder OpenTofu. Beide Tools sind Infrastructure as Code (IaC) Lösungen, die es ermöglichen, Cloud-Ressourcen deklarativ zu definieren und zu verwalten.

## VM-ID-Struktur

Die VM-IDs sind nach folgendem Schema strukturiert:

- LXC-Container: Automatisch ab 100-299
- Demo-Server: 300-399
- Development: 400-499
- Docker-Server: 500-599
- Kubernetes-Server: 600-699
- Windows-Server: 700-799
- Sonstiges: 800-899
- Templates: 900-999

Diese Struktur hilft bei der Organisation und Identifizierung der verschiedenen VM-Typen im Proxmox VE Cluster.

## Was ist Terraform/OpenTofu?

Terraform und OpenTofu sind Tools, die es ermöglichen, Infrastruktur als Code zu definieren. Anstatt Cloud-Ressourcen manuell über Web-Interfaces zu erstellen und zu verwalten, werden diese in Konfigurationsdateien beschrieben. Dies bietet mehrere Vorteile:

- **Versionierung**: Alle Infrastrukturänderungen können nachverfolgt werden
- **Wiederholbarkeit**: Infrastruktur kann exakt reproduziert werden
- **Automatisierung**: Deployment-Prozesse können automatisiert werden
- **Konsistenz**: Vermeidung von Konfigurationsdrift zwischen Umgebungen

## Typische Anwendungsfälle

In diesem Repository findest du Konfigurationen für:

- Cloud-Provider wie AWS, Azure oder Google Cloud
- Container-Orchestrierung (z.B. Kubernetes)
- Netzwerk-Infrastruktur (VPCs, Subnetze, etc.)
- Speicherlösungen
- Datenbanken
- Sicherheitskonfigurationen

## Verwendung

1. Installiere Terraform auf deinem System
2. Konfiguriere deine Cloud-Provider-Credentials
3. Initialisiere Terraform:
   ```bash
   terraform init
   ```
4. Plane die Änderungen:
   ```bash
   terraform plan
   ```
5. Wende die Änderungen an:
   ```bash
   terraform apply
   ```

## Best Practices

- Verwende Version Control für alle Konfigurationsdateien
- Dokumentiere alle Module und Ressourcen
- Führe regelmäßig `terraform fmt` aus, um die Formatierung zu standardisieren
- Nutze Workspaces für verschiedene Umgebungen
- Implementiere State Locking für Team-Umgebungen

## Sicherheit

- Speichere keine sensiblen Daten direkt in den Konfigurationsdateien
- Verwende Environment Variables oder sichere Secrets Management Tools
- Implementiere die Principle of Least Privilege für IAM-Rollen

## Support

Bei Fragen oder Problemen, erstelle bitte ein Issue in diesem Repository.
