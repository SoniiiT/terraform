# Decisions index

No formal ADR files were present in the repository. The following observed choices are documented for navigation, not treated as explicit human-approved ADRs:

1. Keep Cloudflare, DNS, Proxmox, and Twingate as independent Terraform roots and Terraform Cloud workspaces (`*/provider.tf`).
2. Use typed maps with `for_each` for repeatable inventory and record resources (`*/variables.tf`, root resource files).
3. Gate automatic apply on `main` after a separately uploaded plan artifact (`.github/workflows/*.yml`).
