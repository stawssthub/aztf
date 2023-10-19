#!/bin/bash
az login >> /dev/null
echo "Setting backend subscription id to $TF_B_SUBSCRIPTION_ID"
az account set --subscription $TF_B_SUBSCRIPTION_ID
az account show
echo "Setting state storage account access key"
ACCOUNT_KEY=$(az storage account keys list --resource-group $TF_B_RESOURCE_GROUP --account-name $TF_B_STORAGE_ACCOUNT --query '[0].value' -o tsv)
ARM_ACCESS_KEY=$ACCOUNT_KEY
echo "ARM_ACCESS_KEY set to $ARM_ACCESS_KEY"