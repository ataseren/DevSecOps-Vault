# DevSecOps Security Checklist

This checklist outlines key practices across the software development lifecycle to embed security into DevOps processes.

[Here is a link for example checklist by Sqreen](./devsecops-security-checklist.pdf)

**The example checklist below provides more solid steps and resources, allowing adjustments to tailor a DevSecOps checklist specific to your project's needs and yours.**

## 1. Design

### Secure Development Lifecycles

- [Microsoft SDL (Secure Development Lifecycle)](https://www.microsoft.com/en-us/securityengineering/sdl/practices)
- [OWASP SAMM (Software Assurance Maturity Model)](https://github.com/OWASP/samm)
- [BSIMM (Building Security In Maturity Model)](https://www.bsimm.com/framework.html)
- [NIST SSDF (Secure Software Development Framework)](https://csrc.nist.gov/CSRC/media/Publications/white-paper/2019/06/07/mitigating-risk-of-software-vulnerabilities-with-ssdf/draft/documents/ssdf-for-mitigating-risk-of-software-vulns-draft.pdf)
- [GitLab - 9 Tips for Shifting Left](https://about.gitlab.com/blog/2020/06/23/efficient-devsecops-nine-tips-shift-left/)
- [GitLab - Speed and Security](https://about.gitlab.com/blog/2019/10/31/speed-security-devops/)

### Threat Modeling

- [Wikipedia: Threat Modeling](https://en.wikipedia.org/wiki/Threat_model)
- [OWASP: Threat Modeling](https://owasp.org/www-community/Threat_Modeling)
- [OWASP: Application Threat Modeling](https://owasp.org/www-community/Application_Threat_Modeling)
- [Threagile - Agile Threat Modeling Toolkit](https://threagile.io)
- [OWASP Threat Dragon](https://threatdragon.github.io)

## 2. Develop

### Secure Coding Standards

- [Apple Secure Coding Guide](https://developer.apple.com/library/archive/documentation/Security/Conceptual/SecureCodingGuide/Introduction.html)
- [Secure Coding Guidelines for Java SE (Oracle)](https://www.oracle.com/java/technologies/javase/seccodeguide.html)
- [Go-SCP: Secure Coding in Go (OWASP)](https://github.com/OWASP/Go-SCP)
- [Android App Security Best Practices (Google)](https://developer.android.com/topic/security/best-practices)
- [Securing Rails Applications](https://guides.rubyonrails.org/security.html)


## 3. Build

### SAST (Static Application Security Testing)

- [SAST with SonarQube – Part 1](https://medium.com/nycdev/scan-your-source-code-for-vulnerabilities-using-static-application-security-testing-sast-with-5f8ee1fdf9aa)
- [GitHub Blog: Code Scanning Tools](https://github.blog/2020-10-05-announcing-third-party-code-scanning-tools-static-analysis-and-developer-security-training/)


## 4. Test

### DAST (Dynamic Application Security Testing)

- [ZAP + GitHub Actions](https://www.zaproxy.org/blog/2020-05-15-dynamic-application-security-testing-with-zap-and-github-actions/)
- [GitLab DAST Docs](https://docs.gitlab.com/ee/user/application_security/dast/)
- [Nuclei GitHub Action](https://github.com/secopslab/nuclei-action)
- [ZAPCon 2021 – Democratizing ZAP](https://youtu.be/jimW-R6_F4U)

### Penetration Testing

- [Penetration Testing at DevSecOps Speed](https://securityboulevard.com/2019/04/penetration-testing-at-devsecops-speed/)


## 5. Deploy

### Hardening & Configuration

- [CIS Benchmarks](https://www.cisecurity.org/cis-benchmarks/)
- [DevSecOps in Kubernetes (Microsoft)](https://cloudblogs.microsoft.com/opensource/2019/07/22/devsecops-in-kubernetes/)

### Image Scanning

- [Best Practices for Scanning Docker Images](https://docs.docker.com/develop/scan-images/)


## 6. Operate and Monitor

### Runtime Protection

- [RASP by Rapid7](https://www.rapid7.com/fundamentals/runtime-application-self-protection/)
- [DevSecOps with IAST and RASP (OWASP EU 2018)](https://2018.appsec.eu/presos/DevOps_Jumpstarting-Your-DevSecOps_Jeff-Williams_AppSecEU2018.pdf)

### Patch and Audit

- Integrate RASP and IAST tools for runtime protection and feedback.
- Conduct regular security audits and reviews.

### Monitoring & Metrics

- Use SIEMs and runtime metrics to monitor app health and anomalies.
- [OWASP Attack Surface Analysis Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Attack_Surface_Analysis_Cheat_Sheet.html)
