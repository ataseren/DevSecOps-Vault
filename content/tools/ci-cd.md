# CI/CD Security

In DevSecOps, securing the Continuous Integration and Continuous Deployment (CI/CD) pipeline is crucial. While CI/CD accelerates software delivery, it also introduces new **attack surfaces** such as:

- Insecure environment variables
- Leaked credentials or secrets in workflows
- Misconfigured runner permissions
- Untrusted third-party actions or plugins
- Insecure artifact storage or build caching
- Dependency injection or path traversal in build scripts

An insecure CI/CD setup can result in **complete compromise of your source code, cloud credentials, production systems**, or supply chain integrity.



## Why Securing CI/CD Matters

- CI/CD systems often hold **the keys to the kingdom** (deploy credentials, secrets, access tokens).
- They run with high privileges and can modify or deploy infrastructure and application code.
- Attackers actively target build pipelines (e.g., SolarWinds, CodeCov, CircleCI breaches).
- Ensuring pipeline security is essential to the trustworthiness of software supply chains.



## Tools for CI/CD Hardening and Monitoring

### GitHub Actions Security

| Name | URL | Description | Stars |
|------|-----|-------------|:-----:|
| **Security Hardening Guide (GitHub)** | [Docs](https://docs.github.com/en/actions/security-guides/security-hardening-for-github-actions) | Official GitHub guide covering isolation, permissions, and secrets handling best practices. | – |
| **GitHub Actions Security Best Practices (Salesforce)** | [Blog](https://engineering.salesforce.com/github-actions-security-best-practices-b8f9df5c75f5) | Practical strategies from Salesforce for securing workflows. | – |
| **GitGuardian GitHub Actions Cheat Sheet** | [Blog](https://blog.gitguardian.com/github-actions-security-cheat-sheet/) | A summarized, visual checklist of secure actions usage, tokens, and more. | – |

### Jenkins Security

| Name | URL | Description | Stars |
|------|-----|-------------|:-----:|
| **Securing Jenkins (Official)** | [Docs](https://www.jenkins.io/doc/book/security/) | Covers user access control, CSRF protection, agent security, etc. | – |
| **SANS Whitepaper – Securing Jenkins CI Systems** | [PDF](https://www.sans.org/white-papers/36872/) | A thorough breakdown of Jenkins security threats and defense mechanisms. | – |
| **chef-jenkins-hardening** | [GitHub](https://github.com/dev-sec/chef-jenkins-hardening) | (Deprecated) Infrastructure-as-code module to apply security best practices in Jenkins deployments. | ![Stars](https://img.shields.io/github/stars/dev-sec/chef-jenkins-hardening?style=for-the-badge) |


## Security Considerations for CI/CD Systems

| Aspect | Best Practices |
|--------|----------------|
| **Secrets Management** | Use secret stores (Vault, GitHub/AWS Secrets Manager); never store in plain text or hardcode in workflows |
| **Runner Security** | Prefer isolated runners (ephemeral or containerized); avoid untrusted community-run agents |
| **Permissions** | Use the principle of least privilege for workflow tokens and jobs (`permissions:` block in GitHub Actions) |
| **Third-Party Actions/Plugins** | Pin versions and validate sources; audit dependencies |
| **Build Artifacts** | Store signed artifacts and verify integrity (use tools like Cosign, SLSA provenance) |
| **Logging & Auditing** | Enable build logs, audit trails, and monitor environment variable usage or secrets access |
| **Branch Protections** | Enforce signed commits, status checks, and PR reviews before deployments |
| **Secrets Scanning** | Integrate tools like `detect-secrets`, `gitleaks`, or `ggshield` directly into pipelines |


## Integrating Security into CI/CD Workflows

- **Before Commit**: Use `pre-commit`, `detect-secrets`, `talisman`, `semgrep` locally
- **On Push**: Trigger full SAST/DAST scans, SBOM generation, dependency checks
- **Before Deploy**: Validate secrets, enforce policy-as-code (e.g., OPA), verify image signatures
- **Post Deploy**: Monitor system logs, validate health, send alerts on anomalies


## Further Reading

- [GitHub Actions Hardening Guide (GitHub Docs)](https://docs.github.com/en/actions/security-guides/security-hardening-for-github-actions)
- [GitHub Actions Security Cheat Sheet (GitGuardian)](https://blog.gitguardian.com/github-actions-security-cheat-sheet/)
- [Jenkins Security Best Practices](https://www.jenkins.io/doc/book/security/)
- [SANS Whitepaper – Securing Jenkins CI Systems](https://www.sans.org/white-papers/36872/)
