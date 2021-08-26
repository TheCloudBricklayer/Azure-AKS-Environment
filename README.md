# Azure-AKS-Environment

Generate Azure AKS environments automatic

## Create permissions

```bash
#Azure portal login
az login
#If you have more than 2 subscriptions you could select a specific subscription
az account list
#Select a specific subscription where you will deploy the Azure AKS cluster
az account set --subscription="89a01690-9fb1-4d4c-847b-111e4fa57e59"

az ad sp create-for-rbac --name "GitHub" --role contributor --scopes /subscriptions/89a01690-9fb1-4d4c-847b-111e4fa57e59/resourceGroups/GitHub-RG --sdk-auth
```

