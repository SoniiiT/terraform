# Project map

## Shape

This is a Terraform/OpenTofu repository with four independent root modules. Each root has its own Terraform Cloud workspace and CI workflow:

| Root | Purpose | Workspace | Provider |
|---|---|---|---|
| `cloudflare/` | Public Cloudflare A and SRV records | `cloudflare` | `cloudflare/cloudflare` 5.25.0 |
| `dns/` | Internal BIND9 A and PTR records | `dns` | `hashicorp/dns` 3.6.2 |
| `pve-srv-01/` | Proxmox pools, VMs, and LXC containers | `pve-srv-01` | `Telmate/proxmox` 3.0.2-rc10 |
| `twingate/` | Twingate remote networks, groups, and resources | `twingate` | `Twingate/twingate` 5.0.2 |

There is no shared Terraform module, root-level Terraform configuration, application runtime, or test suite. Root `README.md` documents the repository purpose and VM-ID ranges.

## Navigation

- `*/provider.tf`: Terraform Cloud workspace and provider configuration.
- `*/variables.tf`: typed input contracts and defaults.
- `*.auto.tfvars`: committed per-root inventory and record data; values are intentionally not copied into this context.
- `pve-srv-01/*-srv.tf`: VM resource families; `lxc.tf` defines LXC containers; `pool.tf` creates Proxmox pools; `outputs.tf` exposes discovered and configured IPs.
- `dns/*.tf`: one resource family per DNS record category.
- `cloudflare/a-record.tf` and `gameserver.tf`: Cloudflare A and SRV record resources.
- `twingate/net-*.tf`: one remote network, access group, and resource family per environment; `users.tf` resolves the Twingate user.
- `.github/workflows/*.yml`: root-specific validate, plan, artifact, and main-branch apply pipelines.

## Safe entry points

For a change, start in the affected root's `variables.tf`, the matching resource file, and its `.auto.tfvars` input. Then inspect the matching workflow path filter and any same-name records in the other roots. Run `terraform fmt` and `terraform validate` only in the affected root; CI also runs `terraform providers lock` during planning.
