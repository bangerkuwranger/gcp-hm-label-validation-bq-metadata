#!/bin/bash

# Exit if any of the intermediate steps fail
set -e

# Parse input to bash vars
eval "$(jq -r '@sh "HM_ENTITY=\(.entity) HM_ENTERPRISE_PLATFORM=\(.enterprise_platform) HM_BU_FLEX=\(.bu_flex) HM_COST_CENTER=\(.cost_center) HM_COST_CODE=\(.cost_code) HM_PROJECT=\(.project) HM_ENVIRONMENT=\(.environment)"')"