#!/bin/bash

# remove Gitleaks report if exists already
rm -rf ${PATH_TO_GIT_REPO}/gitleaks-report-detailed.json

# run Gitleaks to find secrets and generate a detailed report for the secrets found
docker run --rm -v ${PATH_TO_GIT_REPO}:/path zricethezav/gitleaks:${GITLEAKS_VERSION} \
    detect -r /path/gitleaks-report-detailed.json -f json --no-git -s /path

# create a brief report from the detailed report with fingerprints and descriptions only for the secrets found
cat ${PATH_TO_GIT_REPO}/gitleaks-report-detailed.json | \
    jq 'map({Description: .Description, Fingerprint: .Fingerprint})' \
    > ./gitleaks-report.json
