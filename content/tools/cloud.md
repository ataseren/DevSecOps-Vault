# ☁️ Cloud Security in DevSecOps

In DevSecOps, securing cloud infrastructure is just as critical as securing application code. With the rise of Infrastructure as Code and automated CI/CD, cloud environments can change rapidly — and security needs to keep up.

Misconfigured services, overly permissive IAM roles, exposed S3 buckets, and untagged resources are among the **most common sources of cloud breaches**. The tools below help identify, remediate, and enforce secure cloud posture across AWS, GCP, and Azure.

---

## 🌐 Multi-Cloud Security Tools

| Name | URL | Description | Stars |
|------|-----|-------------|:-----:|
| **Cloudsploit** | [GitHub](https://github.com/aquasecurity/cloudsploit) | Open-source scanner that detects misconfigurations in AWS, GCP, and Azure services | ![Stars](https://img.shields.io/github/stars/aquasecurity/cloudsploit?style=for-the-badge) |
| **ScoutSuite** | [GitHub](https://github.com/nccgroup/ScoutSuite) | Multi-cloud security auditing tool by NCC Group (supports AWS, Azure, GCP) | ![Stars](https://img.shields.io/github/stars/nccgroup/ScoutSuite?style=for-the-badge) |
| **CloudCustodian** | [GitHub](https://github.com/cloud-custodian/cloud-custodian/) | Policy-as-code engine to manage cloud governance rules across providers | ![Stars](https://img.shields.io/github/stars/cloud-custodian/cloud-custodian?style=for-the-badge) |
| **CloudGraph** | [GitHub](https://github.com/cloudgraphdev/cli) | GraphQL-based security visualization engine for AWS, Azure, GCP, and K8s | ![Stars](https://img.shields.io/github/stars/cloudgraphdev/cli?style=for-the-badge) |

---

## 🟡 AWS Security Tools

| Name | URL | Description | Stars |
|------|-----|-------------|:-----:|
| **Prowler** | [GitHub](https://github.com/toniblyx/prowler) | CLI tool for AWS security auditing, compliance (CIS, GDPR, PCI-DSS) | ![Stars](https://img.shields.io/github/stars/toniblyx/prowler?style=for-the-badge) |
| **Dragoneye** | [GitHub](https://github.com/indeni/dragoneye) | Detects exposed AWS resources and compliance violations | ![Stars](https://img.shields.io/github/stars/indeni/dragoneye?style=for-the-badge) |
| **aws-inventory** | [GitHub](https://github.com/nccgroup/aws-inventory) | Discovers and lists all AWS resources across accounts | ![Stars](https://img.shields.io/github/stars/nccgroup/aws-inventory?style=for-the-badge) |
| **PacBot** | [GitHub](https://github.com/tmobile/pacbot) | Policy-as-code bot by T-Mobile, manages security and compliance in AWS | ![Stars](https://img.shields.io/github/stars/tmobile/pacbot?style=for-the-badge) |
| **Komiser** | [GitHub](https://github.com/mlabouardy/komiser) | AWS inventory and cost visualization dashboard with security insights | ![Stars](https://img.shields.io/github/stars/mlabouardy/komiser?style=for-the-badge) |
| **Cloudsplaining** | [GitHub](https://github.com/salesforce/cloudsplaining) | IAM policy analysis tool for detecting privilege escalations and misuse | ![Stars](https://img.shields.io/github/stars/salesforce/cloudsplaining?style=for-the-badge) |
| **ElectricEye** | [GitHub](https://github.com/jonrau1/ElectricEye) | Continuous AWS misconfiguration monitoring using security standards | ![Stars](https://img.shields.io/github/stars/jonrau1/ElectricEye?style=for-the-badge) |
| **CloudMapper** | [GitHub](https://github.com/duo-labs/cloudmapper) | Visualizes AWS accounts and detects network misconfigurations | ![Stars](https://img.shields.io/github/stars/duo-labs/cloudmapper?style=for-the-badge) |
| **Cartography** | [GitHub](https://github.com/lyft/cartography) | Graph-based visualization of cloud and infrastructure assets (AWS-focused) | ![Stars](https://img.shields.io/github/stars/lyft/cartography?style=for-the-badge) |
| **policy_sentry** | [GitHub](https://github.com/salesforce/policy_sentry) | Least-privilege IAM policy generator using CRUD actions | ![Stars](https://img.shields.io/github/stars/salesforce/policy_sentry?style=for-the-badge) |
| **AirIAM** | [GitHub](https://github.com/bridgecrewio/AirIAM) | Audit and reduce AWS IAM permissions and create Terraform output | ![Stars](https://img.shields.io/github/stars/bridgecrewio/AirIAM?style=for-the-badge) |
| **StreamAlert** | [GitHub](https://github.com/airbnb/streamalert) | Real-time, serverless alerting framework for AWS logs and data streams | ![Stars](https://img.shields.io/github/stars/airbnb/streamalert?style=for-the-badge) |
| **CloudQuery** | [GitHub](https://github.com/cloudquery/cloudquery) | SQL-like querying and security analysis over AWS infrastructure | ![Stars](https://img.shields.io/github/stars/cloudquery/cloudquery?style=for-the-badge) |
| **S3Scanner** | [GitHub](https://github.com/sa7mon/S3Scanner/) | Tool to find open S3 buckets and dump contents | ![Stars](https://img.shields.io/github/stars/sa7mon/S3Scanner?style=for-the-badge) |
| **Parliament** | [GitHub](https://github.com/duo-labs/parliament) | AWS IAM policy linting library | ![Stars](https://img.shields.io/github/stars/duo-labs/parliament?style=for-the-badge) |
| **Yor** | [GitHub](https://github.com/bridgecrewio/yor) | Adds tags to IaC (Terraform, CloudFormation) for traceability and ownership | ![Stars](https://img.shields.io/github/stars/bridgecrewio/yor?style=for-the-badge) |
| **aws-firewall-factory** | [GitHub](https://github.com/globaldatanet/aws-firewall-factory) | Automates deployment and management of AWS WAF across accounts | ![Stars](https://img.shields.io/github/stars/globaldatanet/aws-firewall-factory?style=for-the-badge) |

---

## 🔵 GCP-Specific Tool

| Name | URL | Description | Stars |
|------|-----|-------------|:-----:|
| **Forseti Security** | [GitHub](https://github.com/forseti-security/forseti-security) | Suite of tools for auditing and securing Google Cloud Platform environments | ![Stars](https://img.shields.io/github/stars/forseti-security/forseti-security?style=for-the-badge) |

---

## ⚙️ Best Practices for Cloud Security

1. Continuously scan for **resource misconfigurations** and open attack surfaces
2. Enforce **least privilege IAM policies** with tools like `policy_sentry`, `AirIAM`
3. **Tag all resources** for accountability and visibility (automate with Yor)
4. Monitor **configuration drift** using real-time frameworks (e.g., ElectricEye)
5. Enable **cross-account and multi-region visibility**
6. Integrate **compliance scans** into CI/CD and infrastructure provisioning steps

---

## 📚 Further Reading

- [AWS Security Best Practices](https://docs.aws.amazon.com/wellarchitected/latest/security-pillar/welcome.html)
- [GCP Security Foundations Guide](https://cloud.google.com/architecture/security-foundations)
- [Cloud Custodian Use Cases](https://cloudcustodian.io/docs/)

