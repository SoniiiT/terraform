# anatomy.md

> Auto-maintained by OpenWolf. Last scanned: 2026-09-21T16:32:36.994Z
> Files: 103 tracked | Anatomy hits: 0 | Misses: 0

> Project structure index. Auto-maintained by OpenWolf hooks and daemon.
> Run `openwolf scan` to generate, or wait for the first Claude Code session.
> Status: Pending initial scan

## ./

- `.gitignore` — Git ignore rules (~6 tok)
- `AGENTS.md` — Agent context (~181 tok)
- `CLAUDE.md` — OpenWolf (~176 tok)
- `README.md` — Project documentation (~631 tok)
- `renovate.json` (~33 tok)

## .ai-context/

- `architecture.md` — Architecture (~684 tok)
- `conventions.md` — Conventions (~491 tok)
- `dependencies.md` — Dependencies (~371 tok)
- `manifest.json` (~373 tok)
- `project-map.md` — Project map (~493 tok)

## .ai-context/indexes/

- `files.json` (~1738 tok)
- `symbols.json` (~783 tok)

## .ai-context/knowledge/

- `README.md` — Project documentation (~221 tok)

## .ai-context/knowledge/business-rules/

- `infrastructure-invariants.md` — Infrastructure invariants (~229 tok)

## .ai-context/knowledge/decisions/

- `README.md` — Project documentation (~134 tok)

## .ai-context/knowledge/feature-guides/

- `cloudflare.md` — Cloudflare DNS feature guide (~236 tok)
- `dns.md` — Internal DNS feature guide (~256 tok)
- `proxmox.md` — Proxmox feature guide (~272 tok)
- `twingate.md` — Twingate access feature guide (~270 tok)

## .ai-context/knowledge/removal-guides/

- `README.md` — Project documentation (~230 tok)

## .ai-context/knowledge/risks/

- `README.md` — Project documentation (~283 tok)

## .github/

- `copilot-instructions.md` — Copilot project context (~78 tok)

## .github/workflows/

- `cloudflare.yml` — CI: Cloudflare Terraform (~727 tok)
- `dns.yml` — CI: DNS Terraform (~837 tok)
- `pve-srv-01.yml` — CI: PVE-SRV-01 Terraform (~1090 tok)
- `twingate.yml` — CI: Twingate Terraform (~711 tok)

## cloudflare/

- `a-record.tf` (~81 tok)
- `a-records.auto.tfvars` (~245 tok)
- `common.auto.tfvars` (~18 tok)
- `gameserver.tf` (~143 tok)
- `provider.tf` (~79 tok)
- `srv-records.auto.tfvars` (~56 tok)
- `variables.tf` (~171 tok)

## dns/

- `applications.auto.tfvars` (~61 tok)
- `applications.tf` (~57 tok)
- `demo.auto.tfvars` (~5 tok)
- `demo.tf` (~59 tok)
- `dev.auto.tfvars` (~52 tok)
- `dev.tf` (~58 tok)
- `docker.auto.tfvars` (~172 tok)
- `docker.tf` (~59 tok)
- `home.auto.tfvars` (~86 tok)
- `home.tf` (~58 tok)
- `lxc.auto.tfvars` (~422 tok)
- `lxc.tf` (~57 tok)
- `mcp.auto.tfvars` (~35 tok)
- `mcp.tf` (~59 tok)
- `nas.auto.tfvars` (~36 tok)
- `nas.tf` (~57 tok)
- `provider.tf` (~137 tok)
- `proxy.auto.tfvars` (~887 tok)
- `proxy.tf` (~58 tok)
- `reverse.auto.tfvars` — PTR Records definition (~582 tok)
- `reverse.tf` (~52 tok)
- `runners.auto.tfvars` (~63 tok)
- `runners.tf` (~59 tok)
- `variables.tf` (~805 tok)
- `windows.auto.tfvars` (~15 tok)
- `windows.tf` (~59 tok)

## pve-srv-01/

- `app-srv.tf` — Declares Settings (~468 tok)
- `app.auto.tfvars` — VMID: 300-399 (~92 tok)
- `common.auto.tfvars` (~200 tok)
- `demo-srv.tf` (~0 tok)
- `demo.auto.tfvars` — VMID: 400-449 (~8 tok)
- `dev-srv.tf` — Declares Settings (~508 tok)
- `dev.auto.tfvars` — VMID: 450-499 (~164 tok)
- `docker-srv.tf` — Declares Settings (~566 tok)
- `docker.auto.tfvars` — VMID: 500 - 599 (~243 tok)
- `k3s.auto.tfvars` — VMID: 600 - 699 (~547 tok)
- `k3s.tf` — Declares Settings (~534 tok)
- `lxc.auto.tfvars` — VMID: 100 - 199 (~175 tok)
- `lxc.tf` (~307 tok)
- `outputs.tf` (~408 tok)
- `pool.tf` (~245 tok)
- `provider.tf` (~123 tok)
- `variables.tf` (~1004 tok)
- `windows-srv.tf` (~398 tok)
- `windows.auto.tfvars` — VMID: 700-799 (~88 tok)

## twingate/

- `app.auto.tfvars` (~42 tok)
- `demo.auto.tfvars` (~52 tok)
- `desktop.auto.tfvars` (~54 tok)
- `development.auto.tfvars` (~55 tok)
- `docker.auto.tfvars` (~98 tok)
- `home.auto.tfvars` (~96 tok)
- `kubernetes.auto.tfvars` (~112 tok)
- `lxc.auto.tfvars` (~67 tok)
- `nas.auto.tfvars` (~45 tok)
- `net-app.tf` — Security Policy für Applications (~339 tok)
- `net-demo.tf` — Security Policy für Demo (~336 tok)
- `net-desktop.tf` — Security Policy für Desktop (~348 tok)
- `net-development.tf` — Security Policy für Development (~362 tok)
- `net-docker.tf` — Security Policy für Docker (~332 tok)
- `net-home.tf` — Security Policy für Home (~336 tok)
- `net-kubernetes.tf` — Security Policy für Kubernetes (~358 tok)
- `net-lxc.tf` — Security Policy für LXC (~332 tok)
- `net-nas.tf` — Security Policy für NAS (~332 tok)
- `net-runners.tf` — Security Policy für Runners (~348 tok)
- `net-windows.tf` — Security Policy für Windows (~348 tok)
- `provider.tf` (~80 tok)
- `runners.auto.tfvars` (~56 tok)
- `users.tf` — Datenquelle für den User (~25 tok)
- `variables.tf` (~1151 tok)
- `windows.auto.tfvars` (~51 tok)
