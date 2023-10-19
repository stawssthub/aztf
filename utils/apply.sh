#!/bin/bash
echo "Setting provisioning subscription id to $TF_PR_SUBSCRIPTION_ID"
az account set --subscription $TF_PR_SUBSCRIPTION_ID
az account show
terraform apply tfplan