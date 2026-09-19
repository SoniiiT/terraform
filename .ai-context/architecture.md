# Architecture

## Deployment shape

The repository models infrastructure as four isolated Terraform root modules. Each root uses Terraform Cloud remote workspaces in the `soniiit-net` organization. Inputs come from committed `*.auto.tfvars` inventory files plus environment variables supplied by GitHub Actions for credentials and sensitive values.

```text
committed *.auto.tfvars + CI TF_VAR_* secrets
                    |
                    v
       independent Terraform root module
                    |
        +-----------+-----------+-----------+
        v                       v           v
   Cloudflare DNS           BIND9 DNS    Proxmox VE
        |                       |           |
   public zone             192.168.178.3  pve-srv-01

       Twingate root -> remote networks -> groups -> protected resources
```

## Root boundaries

- **Cloudflare** uses `for_each` over `a_records` and `srv_records`, writing A and SRV records into the configured zone. SRV names are composed from service, protocol, and record name.
- **DNS** uses typed maps for application, Docker, LXC, proxy, home, MCP, runner, Windows, NAS, development, demo, and reverse records. A and PTR resource files consume the corresponding map and use a default TTL when an item does not specify one. The provider targets the internal BIND9 server `192.168.178.3` with a sensitive TSIG key.
- **Proxmox** creates pools plus `for_each`-driven VM families (application, demo, development, Docker, K3s, Windows) and LXC containers. App VMs use a shared Ubuntu cloud-init clone; LXC containers use an Ubuntu 24.04 template. Outputs expose provider-reported and configured IP maps.
- **Twingate** creates a repeated environment topology: security policy lookup, on-premise remote network, group containing the resolved user, and protected resources with TCP/UDP policy and access-group settings. The provider uses the `soniiit` network.

## CI control flow

Each workflow is path-filtered to one root and runs `validate -> plan -> apply`. The plan is uploaded as a one-day artifact and then applied automatically only when the ref is `main`. Cloudflare and Twingate use GitHub-hosted runners; DNS and Proxmox use self-hosted runners and a Docker permissions-fix step. CI uses Terraform 1.16.3 and Terraform Cloud credentials from GitHub secrets.

## Boundaries and inferred links

There are no Terraform module calls or explicit cross-root dependencies. Shared names, private addresses, and environment categories suggest an operational relationship between Proxmox inventory, internal DNS, Cloudflare records, and Twingate resources, but that relationship is inferred and must be checked against live state or inventory before changing multiple roots.
