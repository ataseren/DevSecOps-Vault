
# ️Kubernetes Security in DevSecOps

Kubernetes has become the de facto standard for container orchestration — but with great power comes significant complexity. A misconfigured cluster, insecure workload, or overly permissive RBAC role can expose entire environments.

Kubernetes security involves multiple layers:

- Securing workload configurations (YAMLs, Helm charts)
- Enforcing policies at deploy-time (OPA, Kyverno)
- Hardening the cluster (CIS Benchmarks)
- Monitoring runtime behavior and network traffic
- Detecting risky permissions and attack vectors


## Why Kubernetes Security Matters

- Kubernetes is often deployed in **multi-tenant, production-grade** environments
- Poorly secured clusters can be **lateral movement playgrounds**
- **Misconfigured containers or services** (e.g., `hostNetwork`, `privileged`) can grant host access
- Network policies, RBAC, and admission control are often **misunderstood or underused**
- Kubernetes expands the attack surface — APIs, controllers, secrets, etc.


## Kubernetes Security Tools

| Name | URL | Description | Stars |
|------|-----|-------------|:-----:|
| **Kubeaudit** | [GitHub](https://github.com/Shopify/kubeaudit) | Audit clusters for security misconfigurations (privileged containers, capabilities, etc.) | ![Stars](https://img.shields.io/github/stars/Shopify/kubeaudit?style=for-the-badge) |
| **Kubescape** | [GitHub](https://github.com/armosec/kubescape) | Scans Kubernetes clusters against NSA-CISA and MITRE ATT&CK® frameworks | ![Stars](https://img.shields.io/github/stars/armosec/kubescape?style=for-the-badge) |
| **Kube-bench** | [GitHub](https://github.com/aquasecurity/kube-bench) | Checks your cluster against CIS Kubernetes Benchmark | ![Stars](https://img.shields.io/github/stars/aquasecurity/kube-bench?style=for-the-badge) |
| **Kube-hunter** | [GitHub](https://github.com/aquasecurity/kube-hunter) | Actively hunts for security issues in clusters (e.g., open APIs, exposed dashboards) | ![Stars](https://img.shields.io/github/stars/aquasecurity/kube-hunter?style=for-the-badge) |
| **Kubesec** | [GitHub](https://github.com/controlplaneio/kubesec) | Static analysis of Kubernetes YAMLs for security risks | ![Stars](https://img.shields.io/github/stars/controlplaneio/kubesec?style=for-the-badge) |
| **Kube-score** | [GitHub](https://github.com/zegl/kube-score) | Linter for K8s manifests focusing on best practices and security | ![Stars](https://img.shields.io/github/stars/zegl/kube-score?style=for-the-badge) |
| **Krane** | [GitHub](https://github.com/appvia/krane) | Simple static RBAC analysis tool to detect over-privileged subjects | ![Stars](https://img.shields.io/github/stars/appvia/krane?style=for-the-badge) |
| **Gatekeeper (OPA)** | [GitHub](https://github.com/open-policy-agent/gatekeeper) | Kubernetes-native policy engine using Open Policy Agent (OPA) and admission controllers | ![Stars](https://img.shields.io/github/stars/open-policy-agent/gatekeeper?style=for-the-badge) |
| **Kyverno** | [GitHub](https://github.com/kyverno/kyverno) | Kubernetes-native policy engine (alternative to OPA); easier syntax, great for devs | ![Stars](https://img.shields.io/github/stars/kyverno/kyverno?style=for-the-badge) |
| **Starboard** | [GitHub](https://github.com/aquasecurity/starboard) | Exposes security scanning results (Trivy, kube-bench) as Kubernetes CRDs | ![Stars](https://img.shields.io/github/stars/aquasecurity/starboard?style=for-the-badge) |
| **KubiScan** | [GitHub](https://github.com/cyberark/KubiScan) | Scans Kubernetes RBAC for risky permissions and service accounts | ![Stars](https://img.shields.io/github/stars/cyberark/KubiScan?style=for-the-badge) |
| **Capsule** | [GitHub](https://github.com/clastix/capsule) | Adds multi-tenancy and policy enforcement to Kubernetes clusters | ![Stars](https://img.shields.io/github/stars/clastix/capsule?style=for-the-badge) |
| **Inspektor Gadget** | [GitHub](https://github.com/kinvolk/inspektor-gadget) | eBPF-based tool collection for tracing, profiling, and auditing Kubernetes activity | ![Stars](https://img.shields.io/github/stars/kinvolk/inspektor-gadget?style=for-the-badge) |
| **kube-linter** | [GitHub](https://github.com/stackrox/kube-linter) | Static analysis of Kubernetes manifests for security and correctness issues | ![Stars](https://img.shields.io/github/stars/stackrox/kube-linter?style=for-the-badge) |
| **Mizu (API Traffic Viewer)** | [GitHub](https://github.com/up9inc/mizu) | Observes all API communication in your K8s cluster (e.g., to detect secrets or tokens) | ![Stars](https://img.shields.io/github/stars/up9inc/mizu) |
| **Helm Snyk Plugin** | [GitHub](https://github.com/snyk-labs/helm-snyk) | Helm plugin that scans chart image dependencies using Snyk | ![Stars](https://img.shields.io/github/stars/snyk-labs/helm-snyk) |
| **Kubernetes BOM** | [GitHub](https://github.com/kubernetes-sigs/bom) | Generates Software Bill of Materials (SBOM) for Kubernetes itself | ![Stars](https://img.shields.io/github/stars/kubernetes-sigs/bom) |
| **Badrobot** | [GitHub](https://github.com/controlplaneio/badrobot) | Audits Kubernetes Operators for risky access and behavior | ![Stars](https://img.shields.io/github/stars/controlplaneio/badrobot) |
| **Istio** | [Website](https://istio.io) | Service mesh with built-in mutual TLS, RBAC, and telemetry. Useful for network-level Kubernetes security. | ![Stars](https://img.shields.io/github/stars/istio/istio) |


## ️Best Practices for Kubernetes Security

1. **Scan manifests before applying** using tools like `kube-score`, `kubesec`, `kube-linter`.
2. **Audit RBAC roles** frequently with tools like `KubiScan` or `Krane`.
3. **Apply CIS Benchmarks** with `kube-bench`.
4. **Restrict Pod privileges** (no `privileged`, `hostNetwork`, etc.).
5. **Use admission controllers** with `Gatekeeper` or `Kyverno` to enforce secure policies.
6. **Isolate namespaces and workloads** using `Capsule`, network policies, and strict resource quotas.
7. **Monitor runtime behavior** using `Falco`, `Inspektor Gadget`, or `Mizu`.
8. **Integrate security findings into CRDs** via `Starboard` for native visibility.



## Further Reading

- [NSA/CISA Kubernetes Hardening Guide](https://media.defense.gov/2022/Aug/29/2003066362/-1/-1/0/CTR_KUBERNETES_HARDENING_GUIDANCE_1.2_20220829.PDF)
- [MITRE ATT&CK for Containers](https://attack.mitre.org/matrices/enterprise/containers/)
- [Kubernetes CIS Benchmark](https://www.cisecurity.org/benchmark/kubernetes)
