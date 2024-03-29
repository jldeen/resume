#!/bin/bash

# example command:
# sh scripts/get-secrets.sh

set -e

# Set the following
spName=resume
subName="jdc"
project="resume"
location="eastus2"

# set the subscription
az account set --subscription "$subName" && echo "Your default subscription has been set to: $subName"

# Get Subscription ID
subscriptionId=$(az account show --query id -o tsv)

# Create Resource group
az group create --name $project --location $location

# Create a service principal
    echo "Creating service principal..."
    spInfo=$(az ad sp create-for-rbac --name $spName \
            --role owner \
            --sdk-auth \
            --scopes /subscriptions/$subscriptionId/resourceGroups/$project)

    # save spInfo locally
    echo $spInfo > auth.json

    #ensure role assignment is created
    clientId=$(echo $spInfo | jq -r '.clientId')
    az role assignment create --role "Owner" --assignee $clientId --scope /subscriptions/$subscriptionId/resourceGroups/$project && echo "Owner role assignment created for $clientId"       

    if [ $? == 0 ]; then
        
        echo '========================================================='
        echo 'GitHub secrets for configuring GitHub workflow'
        echo '========================================================='
        echo "AZURE_CREDENTIALS: $spInfo"
        echo '========================================================='
    else
        "An error occurred. Please try again."
         exit 1
    fi





  
