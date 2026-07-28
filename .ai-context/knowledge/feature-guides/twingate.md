# Twingate access feature guide

- **Exposed:** Environment-specific `twingate/*.auto.tfvars` inventories and the `twingate` workflow.
- **Implemented:** Each `net-*.tf` file creates a security-policy lookup, on-premise remote network, authoritative group, and resources with TCP/UDP policies and a 30-day usage-based autolock.
- **Configured:** `variables.tf` defines eleven resource maps and a sensitive API token. `users.tf` resolves the user used by access groups.
- **Dependencies:** Terraform Cloud workspace `twingate`, Twingate provider 3.0.19, network `soniiit`, and CI secret `TWINGATE_API_TOKEN`.
- **Change obligations:** Preserve environment-to-variable alignment, the resolved user lookup, remote-network IDs, policy IDs, and port behavior. Validate in `twingate/`; confirm access impact before apply.
- **Removal:** Remove resource inventory entries and review access revocation first. Remove groups/networks only when no resources or users depend on them; explicit cross-root dependencies are absent, but shared host names make DNS/Proxmox relationships possible.
