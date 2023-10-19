#!/bin/bash
echo "Setting provisioning subscription id to $TF_PROVISION_SUBSCRIPTION_ID"
#az account set --subscription "baa4ddad-a723-40a0-929d-0c7bc9f2a3f5"
az account set --subscription  $TF_PR_SUBSCRIPTION_ID
az account show
terraform plan --var-file=$TF_PLAN_VARIABLES_FILE_PATH --out tfplan