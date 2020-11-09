#!/bin/bash

# Exit if any of the intermediate steps fail
set -e

# Parse input to bash vars
eval "$(jq -r '@sh "HM_MD_BQ_PROJECT=\(.metadata_project) HM_MD_BQ_DATASET=\(.metadata_dataset) HM_ENTITY=\(.entity) HM_ENTERPRISE_PLATFORM=\(.enterprise_platform) HM_BU_FLEX=\(.bu_flex) HM_COST_CENTER=\(.cost_center) HM_COST_CODE=\(.cost_code) HM_PROJECT=\(.project) HM_ENVIRONMENT=\(.environment)"')"

# Validate entries exist in BQ

# Any relational validation

# Add result code to return (IVV, IVR, GCE, VLV)
RESULT_CODE="VLV"

# Add additional info
RESULT_INFO=""

# Return result

jq -n --arg rcode "$RESULT_CODE" --arg rinfo "$RESULT_INFO" '{"code":$rcode, "info":$rinfo}'