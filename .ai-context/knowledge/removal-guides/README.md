# Removal guidance

1. Identify the root and exact map key or resource address; map keys are Terraform resource identity.
2. Search all four roots for the hostname, DNS name, VM ID, or environment label before removing it. This is a repository search, not proof of live dependency.
3. Remove the input entry first, run a targeted plan in the affected root, and review whether the action is a record deletion, VM/LXC destruction, or access revocation.
4. For Proxmox resources, confirm disks, pools, templates, backups, DNS records, and Twingate resources are no longer needed before apply.
5. For DNS and Twingate changes, confirm consumers and access owners; for Cloudflare changes, confirm public DNS ownership and propagation expectations.
6. Preserve Terraform state and plan artifacts according to the Terraform Cloud workspace policy. No migration or rollback procedure is explicitly documented in the repository.
