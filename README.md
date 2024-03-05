# Find secrets in code to alert on Slack and track on Confluence

- Founder: Abdullah Khawer (LinkedIn: https://www.linkedin.com/in/abdullah-khawer/)

## Introduction

This repository has a Python script and a Shell script. The Shell script can be used to find secrets in a git repository using Gitleaks. It generates a detailed report as well as a report with fingerprints and descriptions only. A fingerprint is a path to a secret found in the code defined in the following format: `[Path to file]:[Secret Type]:[Line No.]`. The Python script can be used after that Shell script to add the fingerprints and descriptions of the found secrets on an Atlassian Confluence page. It can also be used to send alerts on Slack.

## Usage Notes

### Prerequisites

Following are the prerequisites to be met once before you begin:

- Following packages are installed on your system:
   - In case of Linux, install the following packages using either `./installation/linux_install_packages.sh` script or manually:
      - `git`
      - `jq`
      - `python3-pip`
      - `python3`
      - `make`
      - `wget`
      - `golang`
      - `gitleaks`
      - `atlassian-python-api`
         - Using `pip`
   - In case of macOS, install the following packages using either `./installation/macos_install_packages.sh` script or manually:
      - `git`
      - `jq`
      - `python`
      - `python@3`
      - `gitleaks`
      - `atlassian-python-api`
         - Using `pip`

### Execution Instructions

Once all the prerequisites are met, set the following environment variables:
   - `PATH_TO_GIT_REPO`
      - Example: `/Users/Abdullah.Khawer/Desktop/myrepo`
   - `CONFLUENCE_SITE`
      - Example: `https://mydomain.atlassian.net`
   - `CONFLUENCE_USER_EMAIL_ID`
      - Example: `myname@mydomain.com`
   - `CONFLUENCE_USER_TOKEN`
      - Example: `__REDACTED__`
   - `CONFLUENCE_PAGE_TITLE`
      - Example: `Secrets Detected`
   - `CONFLUENCE_PAGE_SPACE`
      - Example: `docs`

And then simply run the following 2 commands in the correct order:
- `bash gitleaks.sh`
- `python3.10 main.py [BRANCH NAME]`
   - Example: `python main.py master`

*Notes:*
- *A sample Gitleaks configuration file can be found here if interested in using it: `.gitleaks.toml`*
- *The Atlassian user should have access to the Confluence app, the `View` and `Add` permissions in the space on it and the `Can edit` permission on the page in that space. Also, you need to create an API token as the password won't work.*

### References

A list of useful references can be found below:
- https://gitleaks.io/index.html
- https://docs.gitlab.com/ee/user/application_security/secret_detection/
- https://github.com/gitleaks/gitleaks#configuration
- https://github.com/gitleaks/gitleaks/blob/master/config/gitleaks.toml
- https://docs.python.org/3/
- https://atlassian-python-api.readthedocs.io/
- https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html
- https://docs.gitlab.com/ee/ci/

##### Any contributions, improvements and suggestions will be highly appreciated. 😊
