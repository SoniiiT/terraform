# Project knowledge

`.ai-context/` contains generated, evidence-linked summaries for agent navigation. Source code, Terraform state, live provider state, and explicit project rules remain authoritative.

- `knowledge/decisions/` records observed architectural choices and their evidence.
- `knowledge/business-rules/` records confirmed invariants from repository documentation or configuration.
- `knowledge/feature-guides/` records change surfaces and lifecycle obligations for significant roots.
- `knowledge/removal-guides/` records cautious removal procedures; it does not authorize state destruction.
- `knowledge/risks/` records observed risks, inferred links, and items needing human review.

Generated facts are marked `observed`; relationships not expressed in Terraform are marked `inferred`. Human-authored guidance must be preserved rather than replaced by a refresh.
