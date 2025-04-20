# Supply Chain Security in DevSecOps

Software supply chain security focuses on ensuring the **integrity, authenticity, and trustworthiness** of the components, tools, and workflows used to build and deploy software. This includes:

- Source code
- Third-party dependencies
- Build tools and compilers
- CI/CD pipelines and artifacts
- Container images
- Deployment infrastructure

Recent attacks (SolarWinds, CodeCov, dependency confusion) have demonstrated how attackers target the software supply chain rather than just the application itself.


## Why Supply Chain Security Matters

- Modern software is **assembled, not written from scratch** — much of the code is external
- **CI/CD pipelines are privileged environments** and attractive targets for attackers
- **A compromised package or build step can poison downstream consumers**
- Compliance standards like SLSA and NIST SSDF now require attestations and provenance

Supply chain security is not just about protecting your software — it's about protecting your users, customers, and everyone who depends on what you ship.


## Key Concepts

| Concept | Description |
|--------|-------------|
| **SBOM (Software Bill of Materials)** | A detailed list of all components in your software, similar to an ingredients label |
| **Attestation** | Metadata that proves a build was created in a specific environment, from specific inputs |
| **Provenance** | The complete trace of a software artifact’s origin, including who built it, how, and with what tools |
| **Tamper Evidence** | Mechanisms (e.g., signatures, hashes) that reveal if any component has been modified |


## Tools for Supply Chain Security

| Name | URL | Description | Stars |
|------|-----|-------------|:-----:|
| **Tekton Chains** | [GitHub](https://github.com/tektoncd/chains) | Generates cryptographically signed provenance (in-toto/SLSA) from Tekton pipelines | ![Stars](https://img.shields.io/github/stars/tektoncd/chains?style=for-the-badge) |
| **in-toto** | [GitHub](https://github.com/in-toto/attestation/tree/v0.1.0/spec) | Framework for creating and verifying provenance metadata during CI/CD execution | ![Stars](https://img.shields.io/github/stars/in-toto/attestation?style=for-the-badge) |
| **SLSA (Supply-chain Levels for Software Artifacts)** | [Docs](https://slsa.dev/spec/v1.0/) | A framework for achieving and measuring software build integrity. Backed by OpenSSF and Google. | ![Stars](https://img.shields.io/github/stars/slsa-framework/slsa?style=for-the-badge) |
| **kritis** | [GitHub](https://github.com/grafeas/kritis) | Policy engine for enforcing image signatures and metadata in Kubernetes clusters | ![Stars](https://img.shields.io/github/stars/grafeas/kritis?style=for-the-badge) |
| **Ratify** | [GitHub](https://github.com/deislabs/ratify) | Extensible framework for verifying container artifact signatures, attestations, and policies | ![Stars](https://img.shields.io/github/stars/deislabs/ratify?style=for-the-badge) |


## ️Best Practices

1. **Generate SBOMs at build time**  
   Use tools like `Syft` or `cdxgen` to produce SBOMs and include them in your build artifacts.

2. **Adopt SLSA framework**  
   Aim for SLSA level 2+ to ensure builds are reproducible, verifiable, and traceable.

3. **Use signed artifacts**  
   Sign container images, binaries, and packages with tools like `Cosign` or Notary.

4. **Validate artifact integrity**  
   Enforce checks at deployment using admission controllers (`Ratify`, `Kritis`).

5. **Treat CI/CD as code**  
   Version control your pipeline configs and scan them just like app code.

6. **Isolate build environments**  
   Avoid sharing build infrastructure across untrusted code. Use ephemeral runners.

7. **Continuously monitor dependencies**  
   Combine SCA + SBOM ingestion (e.g., via `DependencyTrack`) to detect downstream impact from known CVEs.


## Further Reading

- [SLSA Levels (Official Site)](https://slsa.dev/spec/v1.0/)
- [in-toto Project Overview](https://in-toto.io/)
- [OpenSSF Supply Chain Security Whitepaper](https://openssf.org/blog/2023/05/31/openssf-supply-chain-integrity-working-group-provides-security-guidance-practical-frameworks-and-tools/)
- [Mitigating Supply Chain Attacks with Attestation (Tekton Blog)](https://www.ozone.one/supply-chain-security-with-tekton-chains)
