# Static Application Security Testing (SAST)

Static Application Security Testing (SAST) is a fundamental part of DevSecOps pipelines, enabling early detection of vulnerabilities by analyzing the source code, bytecode, or binaries **without executing the program**. Unlike DAST (Dynamic Application Security Testing), which simulates real-world attacks on running applications, SAST tools scan code to identify security flaws such as:

- Input validation issues
- Insecure function usage
- Hardcoded secrets
- Insecure configurations
- Potential injection points (SQL, XSS, etc.)

SAST tools are ideal for **"shift-left"** security — identifying vulnerabilities before the code is even compiled, and integrating these checks into IDEs or CI pipelines ensures fast feedback loops and secure-by-design coding practices.

---

## Why SAST Matters in DevSecOps

- **Prevents security debt** by catching issues before code reaches production
- **Automates code reviews** for security anti-patterns and risky behaviors
- **Integrates seamlessly** into developer workflows (e.g., Git hooks, IDEs, CI/CD)
- **Provides education**: highlights insecure patterns and recommends best practices

---

## SAST Tooling Landscape

| Name | URL | Description | Stars |
|------|-----|-------------|:-----:|
| **Semgrep** | [Website](https://semgrep.dev/) / [GitHub](https://github.com/returntocorp/semgrep) | Lightweight, open-source static analyzer supporting 17+ languages. Custom rules can be written with ease. Free and commercial rulepacks available. | ![Stars](https://img.shields.io/github/stars/returntocorp/semgrep?style=for-the-badge) |
| **Bandit** | [GitHub](https://github.com/PyCQA/bandit) | Python-specific static analyzer that checks for common security issues (e.g., `eval`, subprocess usage). | ![Stars](https://img.shields.io/github/stars/PyCQA/bandit?style=for-the-badge) |
| **gosec** | [GitHub](https://github.com/securego/gosec) | Scans Go source code using AST to identify common coding mistakes that lead to vulnerabilities. | ![Stars](https://img.shields.io/github/stars/securego/gosec?style=for-the-badge) |
| **Brakeman** | [GitHub](https://github.com/presidentbeef/brakeman) | Security scanner specifically for Ruby on Rails applications. Fast, powerful, and framework-aware. | ![Stars](https://img.shields.io/github/stars/presidentbeef/brakeman?style=for-the-badge) |
| **SonarQube (Community)** | [GitHub](https://github.com/SonarSource/sonarqube) | Widely adopted tool for static analysis and code quality with built-in security rulesets for multiple languages. | ![Stars](https://img.shields.io/github/stars/SonarSource/sonarqube?style=for-the-badge) |
| **FindSecurityBugs** | [Website](https://find-sec-bugs.github.io/) | A SpotBugs plugin for identifying security vulnerabilities in Java codebases. | ![Stars](https://img.shields.io/github/stars/find-sec-bugs/find-sec-bugs?style=for-the-badge) |
| **libsast** | [GitHub](https://github.com/ajinabraham/libsast) | SAST toolkit for security engineers; uses regex + semantic scanning via Semgrep. Language-agnostic. | ![Stars](https://img.shields.io/github/stars/ajinabraham/libsast?style=for-the-badge) |
| **nodejsscan** | [GitHub](https://github.com/ajinabraham/nodejsscan) | Node.js and JavaScript static analyzer with a web UI. Targets OWASP Top 10 issues. | ![Stars](https://img.shields.io/github/stars/ajinabraham/nodejsscan?style=for-the-badge) |
| **Safety** | [GitHub](https://github.com/pyupio/safety) | Checks Python dependencies (from `requirements.txt`) for known vulnerabilities using a vulnerability DB. | ![Stars](https://img.shields.io/github/stars/pyupio/safety?style=for-the-badge) |
| **ESLint** | [Website](https://eslint.org/) | Widely used JavaScript/TypeScript linter. Security rules can be added via plugins like `eslint-plugin-security`. | – |

---

## Best Practices for Using SAST in DevSecOps

1. **Integrate into CI/CD Pipelines**  
   Run SAST tools automatically on pull requests and merges. Tools like `Semgrep`, `Bandit`, and `gosec` can be run as GitHub Actions, GitLab CI jobs, or Jenkins stages.

2. **Use Language-Specific Tools**  
   Choose tools optimized for the tech stack you're using. e.g., `Bandit` for Python, `Brakeman` for Rails, `gosec` for Go, `nodejsscan` for JavaScript.

3. **Create Custom Rules**  
   Tools like `Semgrep` or `libsast` allow writing organization-specific rules to detect insecure patterns unique to your codebase or threat model.

4. **Scan Early, Often, and Automatically**  
   Embed SAST in your developers' IDE (e.g., via `SonarLint`, `Semgrep LSP`, or `eslint`) to provide real-time feedback while coding.

5. **Review and Prioritize Results**  
   Not all findings are equal. Establish severity thresholds (e.g., block builds only on high/critical issues) and use suppressions where necessary.

6. **Train Developers with Contextual Feedback**  
   Use SAST reports to teach secure coding practices. Many tools offer links to CWE/OWASP references and remediation steps.

---

## Licensing Note for Semgrep Users

While the **Semgrep CLI and core ruleset** are open source and free to use, some advanced or commercial rules require a license. You can browse available rules and their licenses here: [https://semgrep.dev/r](https://semgrep.dev/r)

---

## Further Reading

- [OWASP Source Code Analysis Tools](https://owasp.org/www-community/Source_Code_Analysis_Tools)
- [Scan Source Code using SonarQube (Medium Guide)](https://medium.com/nycdev/scan-your-source-code-for-vulnerabilities-using-static-application-security-testing-sast-with-5f8ee1fdf9aa)
- [GitHub Code Scanning Blog Post](https://github.blog/2020-10-05-announcing-third-party-code-scanning-tools-static-analysis-and-developer-security-training/)
