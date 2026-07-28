# Infrastructure invariants

- VM IDs are categorized by range in `README.md`: LXC 100-199, persistent LXC 200-299, application 300-399, demo 400-449, development 450-499, Docker 500-599, Kubernetes 600-699, Windows 700-799, other 800-899, and templates 900-999.
- Each Terraform root is scoped to one Terraform Cloud workspace in the `soniiit-net` organization.
- Repeatable root resources are keyed by map entries, so changing a map key changes the Terraform resource address.
- DNS A records use the root default TTL when an item TTL is absent; PTR records use the same optional TTL pattern.
- Twingate resources with `ALLOW_ALL` TCP/UDP policy omit the corresponding port list; other policies use the configured ports.

The VM-ID and Terraform-address rules are directly observed. The operational meaning of the Twingate policy behavior is observed from expressions, while its product intent is not documented.
