# 🧨 Chaos Engineering in DevSecOps

Chaos Engineering is the discipline of experimenting on systems in production-like environments to build **confidence in their resilience**. The goal is to proactively identify weaknesses before they become incidents.

While traditional security practices focus on **preventing attacks**, Chaos Engineering ensures your systems can **recover from failures and attacks** gracefully — including downtime, latency spikes, DNS misroutes, resource exhaustion, and compromised containers.

---

## 🎯 Why Chaos Engineering for DevSecOps?

- Proves the reliability of **redundancy, failover, and detection** mechanisms
- Simulates real-world disruptions — including security incidents (e.g., node isolation, pod compromise)
- Helps security teams evaluate **incident response processes**
- Identifies **hidden dependencies** and brittle configurations
- Strengthens CI/CD pipelines by **integrating chaos as a test phase**

---

## 🧰 Chaos Engineering Tools

| Name | URL | Description | Stars |
|------|-----|-------------|:-----:|
| **Chaos Mesh** | [GitHub](https://github.com/chaos-mesh/chaos-mesh) | Kubernetes-native chaos platform supporting pod failures, network anomalies, time skew, and more | ![Stars](https://img.shields.io/github/stars/chaos-mesh/chaos-mesh?style=for-the-badge) |
| **Litmus Chaos** | [Website](https://litmuschaos.io/) | End-to-end chaos engineering for Kubernetes, supports GitOps, observability, workflows | ![Stars](https://img.shields.io/github/stars/litmuschaos/litmus?style=for-the-badge) |
| **Chaos Monkey** | [GitHub](https://github.com/Netflix/chaosmonkey) | Netflix's tool for randomly terminating instances in production to test auto-healing | ![Stars](https://img.shields.io/github/stars/Netflix/chaosmonkey?style=for-the-badge) |
| **chaoskube** | [GitHub](https://github.com/linki/chaoskube) | Randomly deletes Kubernetes pods to test recovery behaviors | ![Stars](https://img.shields.io/github/stars/linki/chaoskube?style=for-the-badge) |
| **Kube-Invaders** | [GitHub](https://github.com/lucky-sideburn/KubeInvaders) | Gamified chaos testing interface for Kubernetes (Space Invaders style!) | ![Stars](https://img.shields.io/github/stars/lucky-sideburn/KubeInvaders?style=for-the-badge) |
| **kube-monkey** | [GitHub](https://github.com/asobti/kube-monkey) | Scheduled pod termination to test deployment resilience in Kubernetes | ![Stars](https://img.shields.io/github/stars/asobti/kube-monkey?style=for-the-badge) |
| **Chaos Engine (Thales)** | [Website](https://thalesgroup.github.io/chaos-engine/) | Intermittently destroys or degrades cloud-based app resources to test resiliency | ![Stars](https://img.shields.io/github/stars/thalesgroup/chaos-engine?style=for-the-badge) |
| **Gremlin** | [Website](https://www.gremlin.com/) | Enterprise SaaS chaos platform with fault injection, security, and compliance capabilities | ![Stars](https://img.shields.io/github/stars/gremlin/gremlin-python?style=for-the-badge) |
| **AWS FIS Samples** | [GitHub](https://github.com/aws-samples/aws-fault-injection-simulator-samples) | Fault Injection Simulator templates for AWS workloads (e.g., EC2, ECS, RDS chaos) | ![Stars](https://img.shields.io/github/stars/aws-samples/aws-fault-injection-simulator-samples?style=for-the-badge) |
| **CloudNuke** | [GitHub](https://github.com/gruntwork-io/cloud-nuke) | CLI tool to destroy all cloud resources in a test environment — extreme chaos testing | ![Stars](https://img.shields.io/github/stars/gruntwork-io/cloud-nuke?style=for-the-badge) |

---

## ⚙️ Best Practices for Chaos Engineering

1. **Run chaos in staging first**, but strive for production readiness
2. **Monitor during experiments** — ensure metrics, alerts, and dashboards are informative
3. **Use hypothesis-driven experiments** — define expected outcomes before injecting failure
4. **Limit blast radius** using namespaces, filters, or targeting non-critical workloads
5. **Automate in CI/CD pipelines** — test resilience per commit or release
6. **Chaos ≠ Randomness** — the goal is controlled failure, not unpredictability

---

## 📚 Further Reading

- [Principles of Chaos Engineering](https://principlesofchaos.org/)
- [Litmus Chaos Documentation](https://docs.litmuschaos.io/)
- [Gremlin Free Resources](https://www.gremlin.com/resources/)
