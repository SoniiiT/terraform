# Risks and uncertainties

- `pve-srv-01/provider.tf` sets `pm_tls_insecure = true` (observed); changing it may require certificate or endpoint work.
- CI workflows grant `contents: write` and automatically apply plans on `main` (observed); review whether these permissions and gates match the desired change-control policy.
- DNS and Proxmox workflows use self-hosted runners plus a Docker ownership-fix step (observed); runner trust and Docker availability are operational prerequisites.
- `.auto.tfvars` files are tracked and contain infrastructure inventory/address data (observed); keep secrets out of them and review repository access.
- `.gitignore` only contains a VS Code setting path; no state, plan, or `.terraform` ignore entries were observed. Confirm Terraform Cloud usage and local workflow hygiene before generating local artifacts.
- No `.terraform.lock.hcl` was tracked; CI regenerates provider locks during planning, which may reduce provider reproducibility.
- Cross-root dependencies among Proxmox, DNS, Cloudflare, and Twingate are inferred from names and addresses, not expressed as Terraform dependencies.
