# Cloudflare DNS feature guide

- **Exposed:** `cloudflare/*.auto.tfvars` and the `cloudflare` workflow.
- **Implemented:** `cloudflare/a-record.tf` and `cloudflare/gameserver.tf` create `cloudflare_dns_record` resources with `for_each`.
- **Configured:** `cloudflare/variables.tf` defines the zone ID, sensitive API token, A-record object, and SRV-record object.
- **Dependencies:** Terraform Cloud workspace `cloudflare`, Cloudflare provider 5.25.0, and CI secret `CLOUDFLARE_API_TOKEN`.
- **Change obligations:** Preserve the object shapes, zone ID wiring, SRV name/data composition, and workflow path filter. Validate in `cloudflare/`; check public DNS impact before apply.
- **Removal:** Remove inventory entries first, plan the resulting record deletions, then remove resource/configuration only after state and DNS ownership are understood. No cross-root dependency is explicit; same-name internal records are an inferred relationship.
