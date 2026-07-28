# Conventions

## Implementation

- Use Terraform HCL with two-space indentation in most roots; the DNS provider file has legacy four-space indentation.
- Keep each root self-contained and place provider/workspace configuration in `provider.tf`.
- Represent repeatable infrastructure as typed maps and use `for_each` rather than positional lists.
- Put inventory and record data in root-local `*.auto.tfvars` files; do not move secret values into source.
- Use explicit descriptions, typed object attributes, `optional(...)` defaults, and empty-map defaults for optional families.
- Name resources after the domain category or environment (`app`, `docker`, `net_app`, `app_srv`).
- Add short comments for important Terraform/provider constraints; existing comments are mostly English with some German descriptions.

## Security and operations

- Mark API tokens, passwords, TSIG keys, and similar values `sensitive = true`.
- Supply secrets through `TF_VAR_*` environment variables in CI; GitHub Actions references secret names but does not persist their values in this context.
- Proxmox intentionally sets `pm_tls_insecure = true`; treat any provider security change as an operational decision.
- Workflows use Terraform Cloud remote workspaces, `terraform validate`, `terraform plan -out=tfplan`, short-lived plan artifacts, and automatic apply on `main`.
- Never index or copy values from `*.auto.tfvars`, even when the files are tracked. Record only their names, shape, and role.

## Validation and documentation

- The repository documents `terraform init`, `plan`, `apply`, and `fmt` in `README.md`.
- CI validation is the only observed automated test/check surface; no unit or integration test files were found.
- Provider lock generation happens during CI planning, but no tracked `.terraform.lock.hcl` file was observed.
- Keep context claims evidence-based and label cross-root dependencies as inferred unless an explicit Terraform reference exists.
