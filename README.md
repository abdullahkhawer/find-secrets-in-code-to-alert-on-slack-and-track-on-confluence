# Find secrets in code to alert on Slack and track on Confluence

- Founder: Abdullah Khawer (LinkedIn: https://www.linkedin.com/in/abdullah-khawer/)

## Introduction

This repository has a Python script and a Shell script. The Shell script can be used to find secrets in a git repository using Gitleaks. It generates a detailed report as well as a report with fingerprints and descriptions only. A fingerprint is a path to a secret found in the code defined in the following format: `[Path to file]:[Secret Type]:[Line No.]`. The Python script can be used after that Shell script to add the fingerprints and descriptions of the found secrets on an Atlassian Confluence page. It can also be used to send alerts on Slack.

## Usage Notes

### Prerequisites

Following are the prerequisites to be met before you begin:

- Following libraries are installed on your system:
   - `git`
   - `jq`
   - `pip`
   - `python3`
   - `make`
   - `wget`
   - `golang`
- Following Python library is installed using `pip`:
   - `atlassian-python-api`
- Following environment variables are set:
   - `GITLEAKS_VERSION`
      - Example: `v8.18.2`
   - `PATH_TO_GIT_REPO`
      - Example: `/Users/Abdullah.Khawer/Desktop//myrepo`
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

### Execution Instructions

Once all the prerequisites are met, simply run the following 2 commands in the correct order:
- `bash gitleaks.sh`
- `python3.10 main.py [BRANCH NAME]`
   - Example: `python main.py master`

##### Any contributions, improvements and suggestions will be highly appreciated. 😊
