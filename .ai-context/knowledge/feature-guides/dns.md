# Internal DNS feature guide

- **Exposed:** Category-specific `dns/*.auto.tfvars` inventories and the `dns` workflow.
- **Implemented:** `dns/*.tf` contains category-specific `dns_a_record_set` resources and `dns/reverse.tf` contains the PTR resource.
- **Configured:** `dns/variables.tf` defines four zones, default TTL 3600, ten A-record maps, and a PTR map. `dns/provider.tf` targets BIND9 at `192.168.178.3` using a sensitive TSIG key.
- **Dependencies:** Terraform Cloud workspace `dns`, `hashicorp/dns` 3.6.2, self-hosted runners, and CI secret `BIND9_TSIG_KEY`.
- **Change obligations:** Match each inventory variable to its resource file, preserve zone selection and `coalesce` TTL behavior, and account for live internal DNS consumers. Validate in `dns/`; the workflow supports manual dispatch.
- **Removal:** Remove records from the relevant map and apply a reviewed plan before deleting category resources or variables. Confirm reverse records and inferred links to Proxmox/Twingate inventories before cleanup.
