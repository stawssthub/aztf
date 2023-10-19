#!/bin/bash
echo "Initializing local state"
echo "Setting backend subscription id to $TF_B_SUBSCRIPTION_ID"
az account set --subscription $TF_B_SUBSCRIPTION_ID
az account show
terraform init --backend-config=$TF_B_CONFIG_FILE_PATH --migrate-state
echo "Terraform ready to provision."