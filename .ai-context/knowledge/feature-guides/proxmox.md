# Proxmox feature guide

- **Exposed:** `pve-srv-01/*.auto.tfvars` inventories and the `pve-srv-01` workflow.
- **Implemented:** `pool.tf` creates pools; VM family files create `proxmox_vm_qemu`; `lxc.tf` creates `proxmox_lxc`; `outputs.tf` exports provider-reported and configured IPs.
- **Configured:** `variables.tf` defines typed maps for application, demo, development, Docker, K3s, Windows, and LXC inventories plus SSH/API/password inputs.
- **Dependencies:** Terraform Cloud workspace `pve-srv-01`, Telmate/proxmox 3.0.2-rc07, Proxmox API credentials, Ubuntu clone/template names, storage names, and self-hosted CI.
- **Change obligations:** Preserve VM-ID ranges from `README.md`, pool names, target node `pve-srv-01`, network gateway/subnet assumptions, and output address maps. Validate in `pve-srv-01/`; inspect the plan for replacement-prone VM changes.
- **Removal:** Remove an inventory key only after reviewing the plan and downstream DNS/Twingate references. Do not delete pools, templates, disks, or state without confirming live ownership and rollback requirements.
