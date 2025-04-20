# Dependency and SBOM Management

Modern applications rely heavily on third-party libraries, frameworks, and open-source components. While these speed up development, they also introduce risks from outdated, vulnerable, or even malicious packages — often referred to as **supply chain risks**.

Open Source Software (OSS) and Dependency Management are two critical areas that intersect with Dependency Security Testing and Analysis in discovering supply chain attacks. Dependency management is the practice of managing and tracking the libraries, frameworks, and other components that are used to build software applications. Open Source Software (OSS) refers to software that is developed and distributed under a license that allows developers to freely modify and distribute the source code.

Dependency management in DevSecOps includes:
- Tracking dependencies (direct and transitive)
- Scanning for known vulnerabilities (CVE databases, advisories)
- Creating and maintaining **Software Bill of Materials (SBOMs)**
- Detecting tampering or dependency confusion attacks
- Ensuring compliance with open-source licenses


## Why It's Important

- **Visibility**: Know exactly what your application is built with — including all third-party code.
- **Security**: Identify vulnerable components before they are exploited.
- **Compliance**: Demonstrate awareness of licensing and security standards (e.g., NIST 800-218 / SSDF).
- **Traceability**: SBOMs help in incident response, legal inquiries, and operational auditing.


## Dependency Management & SBOM Tools

| Name | URL | Description | Stars |
|------|-----|-------------|:-----:|
| **CycloneDX** | [GitHub](https://github.com/orgs/CycloneDX/repositories) | A lightweight SBOM format supported by many tools. Ideal for generating and sharing software component inventories. | ![Stars](https://img.shields.io/github/stars/CycloneDX/cyclonedx-cli?style=for-the-badge) |
| **cdxgen** | [GitHub](https://github.com/AppThreat/cdxgen) | SBOM generator supporting multiple languages and build systems. Outputs CycloneDX format. | ![Stars](https://img.shields.io/github/stars/AppThreat/cdxgen?style=for-the-badge) |
| **SPDX** | [GitHub](https://github.com/spdx/spdx-spec) | The SPDX format (by the Linux Foundation) defines a standardized way to describe software components, licenses, and security metadata. | ![Stars](https://img.shields.io/github/stars/spdx/spdx-spec?style=for-the-badge) |
| **Snyk** | [GitHub](https://github.com/snyk/snyk) | Developer-first SCA and container vulnerability scanner. CLI and IDE integration available. | ![Stars](https://img.shields.io/github/stars/snyk/snyk?style=for-the-badge) |
| **vulncost** | [GitHub](https://github.com/snyk/vulncost) | Snyk-powered VS Code extension to show security issues inline with your code’s dependencies. | ![Stars](https://img.shields.io/github/stars/snyk/vulncost?style=for-the-badge) |
| **Dependency Combobulator** | [GitHub](https://github.com/apiiro/combobulator) | Detects dependency confusion and other supply chain attacks using behavioral heuristics. | ![Stars](https://img.shields.io/github/stars/apiiro/combobulator?style=for-the-badge) |
| **DependencyTrack** | [GitHub](https://github.com/DependencyTrack/dependency-track) | Vulnerability tracking system that ingests SBOMs and continuously monitors project risk. | ![Stars](https://img.shields.io/github/stars/DependencyTrack/dependency-track?style=for-the-badge) |
| **DependencyCheck** | [GitHub](https://github.com/jeremylong/DependencyCheck) | OWASP's Java-based CLI and Jenkins plugin for detecting known vulnerabilities in software dependencies. | ![Stars](https://img.shields.io/github/stars/jeremylong/DependencyCheck?style=for-the-badge) |
| **Retire.js** | [GitHub](https://github.com/retirejs/retire.js) | Scans JavaScript libraries for known vulnerabilities. Supports CLI, browser plugin, and CI integrations. | ![Stars](https://img.shields.io/github/stars/retirejs/retire.js?style=for-the-badge) |
| **PHP Security Checker** | [GitHub](https://github.com/fabpot/local-php-security-checker) | Checks PHP dependencies using `composer.lock` against vulnerability databases. | ![Stars](https://img.shields.io/github/stars/fabpot/local-php-security-checker?style=for-the-badge) |
| **bundler-audit** | [GitHub](https://github.com/rubysec/bundler-audit) | Scans Ruby’s `Gemfile.lock` against known vulnerabilities from the rubysec advisory DB. | ![Stars](https://img.shields.io/github/stars/rubysec/bundler-audit?style=for-the-badge) |
| **Gemnasium Analyzer (GitLab)** | [GitLab](https://gitlab.com/gitlab-org/security-products/analyzers/gemnasium) | Analyzer engine used by GitLab for SCA in CI pipelines. Supports Java, Node, Python, and more. | – |
| **Dependabot** | [GitHub](https://github.com/dependabot/dependabot-core) | GitHub-native tool for dependency updates and alerts. Generates automatic pull requests. | ![Stars](https://img.shields.io/github/stars/dependabot/dependabot-core?style=for-the-badge) |
| **Renovatebot** | [GitHub](https://github.com/renovatebot/renovate) | Dependency update bot supporting a wide range of ecosystems. Supports auto-merging and changelog creation. | ![Stars](https://img.shields.io/github/stars/renovatebot/renovate?style=for-the-badge) |
| **npm-check** | [NPM](https://www.npmjs.com/package/npm-check) | CLI for checking outdated, unused, or incorrect packages in Node.js projects. | ![Stars](https://img.shields.io/github/stars/dylang/npm-check?style=for-the-badge) |
| **Security Scorecards** | [Website](https://securityscorecards.dev) | Scorecard of open-source repos using metrics like branch protection, dependency update automation, and security posture. | ![Stars](https://img.shields.io/github/stars/ossf/scorecard?style=for-the-badge) |
| **Syft** | [GitHub](https://github.com/anchore/syft) | Generates SBOMs for container images, filesystems, and codebases. Outputs CycloneDX, SPDX, etc. | ![Stars](https://img.shields.io/github/stars/anchore/syft?style=for-the-badge) |


## ️Best Practices for Dependency & SBOM Security

1. **Always scan third-party libraries** as part of your CI/CD process using SCA tools like `DependencyCheck`, `Snyk`, or `Retire.js`.

2. **Generate SBOMs** during build time using `cdxgen`, `Syft`, or `CycloneDX`. Include them in your release artifacts.

3. **Monitor SBOMs continuously** with tools like `DependencyTrack`, so you are alerted when a new CVE affects one of your components.

4. **Automate updates** using bots like `Dependabot` or `Renovate` and review dependency diffs.

5. **Pin versions** and avoid version drift. Use `package-lock.json`, `poetry.lock`, `Pipfile.lock`, etc.

6. **Track trends over time** — monitor the number of dependencies, vulnerabilities, and resolution time.

7. **Include license checks** in your dependency scans to maintain legal compliance.


## Further Reading

- [CycloneDX Specification](https://cyclonedx.org/specification/overview/)
- [SPDX – The Software Package Data Exchange](https://spdx.dev)
- [OpenSSF Scorecards](https://securityscorecards.dev/)
- [NIST Guidelines on SBOMs](https://www.nist.gov/itl/executive-order-14028-improving-nations-cybersecurity/software-security-supply-chains-software-1)
