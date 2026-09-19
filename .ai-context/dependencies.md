# Dependencies

## Runtime and infrastructure providers

| Dependency | Version | Root | Role |
|---|---:|---|---|
| Terraform CLI | 1.16.3 in CI | all | init, validate, provider lock, plan, apply |
| `cloudflare/cloudflare` | 5.25.0 | `cloudflare` | Public DNS records |
| `hashicorp/dns` | 3.6.2 | `dns` | Internal BIND9 records |
| `Telmate/proxmox` | 3.0.2-rc10 | `pve-srv-01` | Proxmox pools, VMs, and LXC |
| `Twingate/twingate` | 5.0.2 | `twingate` | Remote networks, groups, and resources |

## CI and automation

- `actions/checkout@v7` checks out source in every workflow.
- `hashicorp/setup-terraform@v4` installs Terraform 1.16.3.
- `actions/upload-artifact@v7` and `actions/download-artifact@v8` transfer one-day plan artifacts.
- The DNS and Proxmox workflows use Docker on self-hosted runners to repair workspace ownership.
- Renovate uses `config:recommended` from `renovate.json`.

## External systems and required configuration

- Terraform Cloud organization `soniiit-net` with workspaces `cloudflare`, `dns`, `pve-srv-01`, and `twingate`.
- Cloudflare zone ID and API token.
- Internal BIND9 server at `192.168.178.3` and a sensitive `tsig_key`.
- Proxmox API URL, token ID, token secret, and LXC password; a public SSH key is also required for Cloud-Init/LXC access.
- Twingate API token and the `soniiit` network; the configured user lookup is in `twingate/users.tf`.

Secret values are not recorded. Only variable names and their operational role are retained.

## Upgrade notes

- Twingate provider v4+ removed `usage_based_autolock_duration_days`; access groups use an `access_policy` block (`mode = "AUTO_LOCK"`, `approval_mode = "AUTOMATIC"`, `duration = "30d"`).
- `actions/checkout@v7`, `actions/upload-artifact@v7`, `actions/download-artifact@v8`, and `hashicorp/setup-terraform@v4` run on Node 24. Self-hosted runners (`dns`, `pve-srv-01`) need Actions Runner 2.327.1 or newer.
