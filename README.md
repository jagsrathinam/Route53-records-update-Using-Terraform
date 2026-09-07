# Route53-records-update-Using-Terraform
A production-grade, multi-team Terraform architecture for managing AWS Route 53 DNS records across multiple domains, environments, and AWS accounts.
This repository decouples core DNS management logic into a reusable shared module (`modules/route53-dns`) while allowing engineering teams to manage their independent DNS states in isolated deployment roots (`deployments/`).

---

## Key Features

* **Multi-Account & Multi-Domain Support:** Provider settings are defined in team deployments rather than the module, allowing cross-account deployments via `assume_role`.

* **Configurable Environment Prefixing:** Accepts `env_prefix` (e.g., `prod`, `stage`, `dev`) so teams can re-use naming rules across non-production environments.

* **Dynamic Cluster Expansion:** Expands `clusters` maps into contiguous microservice endpoints (msapp1 and msapp2) using zero-padded indexing.

* **Complete DNS Type Coverage:** Manages `A`, `CNAME`, `TXT`, `MX`, `SRV`, and AWS native `ALIAS` records within a single cohesive interface.

---

## Architecture Overview

![Route53-DNS-update](Route53-DNS-update.png)
---
