# 📋 resume + CV + Coverletter
A repository containing the LaTeX source of Pierce Jorgensen's resume. Tested and deployed with GitHub Actions.

---
[![resume last release](https://img.shields.io/github/release-date/pjorgen1/resume?logo=github&label=Last%20Release)](https://github.com/phjorgen/resume/releases)
[![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/pjorgen1/resume/ci.yml?logo=github&label=CI)](https://github.com/phjorgen/resume/actions/workflows/ci.yml)

# 🤖 Deployment
Deployment is automated by [GitHub Actions](https://github.com/pjorgen1/resume/actions).
- Pushes to `main` trigger a new release of the [latest resume ](https://github.com/pjorgen1/resume/releases/tag/latest), available in several formats.
  | Artifact               | Link                                                                          | Mirror                                         |
  | ---------------------- | ----------------------------------------------------------------------------- | ---------------------------------------------- |
  | resume                 | <https://pjorgen1.github.io/resume/resume.html>                               | <https://pjorgen1.github.io/resume/>           |
  | resume, Embedded       | <https://pjorgen1.github.io/resume/resume-embed.html>                         | <https://pjorgen1.github.io/resume/embed.html> |
  | resume, Download       | <https://github.com/pjorgen1/resume/releases/download/latest/resume.pdf>      |                                                |
- Manually pushed [releases](https://github.com/phjorgen/resume/releases) also trigger workflows to upload artifacts.

# 🔧 Building
## Dependencies
- [TeXLive, full](https://www.tug.org/texlive/)
- [TeXLive, fonts-extra](https://packages.debian.org/sid/texlive-fonts-extra)
- [Make](https://www.gnu.org/software/make/)
- [j2cli](https://github.com/kolypto/j2cli)
## Commands
- **Build the resume**:
  ```bash
  make resume
  ```
- **Build all**:
  ```bash
  make all
  ```
- **Purge all**:
  ```bash
  make clean
  ```
- **Open PDFs**:
  ```bash
  make open
  ```

# 🔏 License
This project is [MIT](./LICENSE) licensed. You are within your rights to fork my resume and use it as your own, although you should probably change my name to yours!
