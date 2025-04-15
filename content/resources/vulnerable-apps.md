# 💥 Vulnerable Applications for DevSecOps Practice

Vulnerable applications are intentionally insecure systems built for learning. They’re essential for DevSecOps teams to test scanners, perform code analysis, validate threat models, and train developers and security engineers.

These apps simulate common web, cloud, mobile, and serverless vulnerabilities — including the OWASP Top 10.

---

## 🧱 Web Applications

| Name | Stack | Link | Description |
|------|-------|------|-------------|
| **OWASP Juice Shop** | NodeJS / Angular | [GitHub](https://github.com/OWASP/juice-shop) | One of the most modern and feature-rich vulnerable web apps. Covers entire OWASP Top 10. |
| **DVWA (Damn Vulnerable Web App)** | PHP / MySQL | [GitHub](https://github.com/digininja/DVWA) | Classic vulnerable app with login flaws, SQLi, XSS, command injection, and more. |
| **Mutillidae** | PHP | [Irongeek](http://www.irongeek.com/i.php?page=mutillidae/mutillidae-deliberately-vulnerable-php-owasp-top-10) | Another OWASP-focused PHP app with broken auth, injection, and session bugs. |
| **WebGoat** | Java | [GitHub](https://github.com/WebGoat/WebGoat) | OWASP learning platform designed to teach secure coding through vulnerabilities. |
| **WebGoat.NET** | .NET | [GitHub](https://github.com/OWASP/WebGoat.NET) | ASP.NET version of WebGoat. Great for Windows developers. |
| **RailsGoat** | Ruby on Rails | [GitHub](https://github.com/OWASP/railsgoat) | Vulnerable Rails app focusing on OWASP risks in modern Ruby web apps. |
| **NodeGoat** | Node.js | [GitHub](https://github.com/owasp/nodegoat) | Teaches security through insecure Node.js-based app — includes source and walkthroughs. |
| **OWASP WebGoatPHP** | PHP | [GitHub](https://github.com/OWASP/OWASPWebGoatPHP) | PHP version of WebGoat, focused on insecure PHP practices. |

---

## ☁️ Serverless / Cloud

| Name | Stack | Link | Description |
|------|-------|------|-------------|
| **OWASP DVSA (Damn Vulnerable Serverless App)** | AWS Lambda | [GitHub](https://github.com/owasp/dvsa) | Insecure serverless functions to demonstrate attacks like insecure IAM, SSRF, broken auth. |
| **LambHack** | AWS Lambda | [GitHub](https://github.com/wickett/lambhack) | Serverless CTF-style lab to explore the unique risks in AWS Lambda apps. |

---

## 🐧 OS & Infrastructure

| Name | Stack | Link | Description |
|------|-------|------|-------------|
| **Metasploitable** | Linux | [Rapid7 Docs](https://docs.rapid7.com/metasploit/metasploitable/) | Insecure virtual machine full of remote service flaws, perfect for internal testing and exploitation. |

---

## 🧪 How to Use These Apps

1. **Test SAST, DAST, and SCA tools** (e.g., Semgrep, Nuclei, OWASP ZAP) against these apps
2. Use them as targets in **CI/CD security pipelines** (e.g., GitHub Actions, Jenkins)
3. Perform **manual testing and fuzzing**
4. Practice **threat modeling**, identify flaws, and implement remediations
5. Train developers with hands-on **secure coding walkthroughs**


