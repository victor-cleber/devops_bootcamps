# DIO BOOTCAMP
In this project, we will create the infrastructure using Terraform.

## Pre-requirements

- install terraform
- install azurecli
- create an Azure account
- Create an Azure DevOps account

### Step 1: Authentication
```bash
   az login
```
    
### Step 2 : Create a Resource Group and identify it with tags
```
    Resource Group  : rg-terraform
    environment     : Production
    team            : Infrastructure
    owner           : Victor Cleber
    contact         : victor@cleber.com
```

[pic1]

#### Step 3: Create a storage account and a container
```
    Storage account : st-terraform
    Container       : cont-terraform
```
[pic3]

### Step 4: Create a service principal
```powershell
    subscriptionName=$(az account show --query name --output tsv)
    subscriptionId=$(az account show --query id --output tsv)
    echo $subscriptionName
    echo $subscriptionId
    az ad sp create-for-rbac --name sp-terraform-az --role contributor --scopes /subscriptions/$subscriptionId
```
[pic2] service principal 
[pic3] certificado


### Step 4 : AzureDevops
```    project              : AulaDevOps001
       service connection   : sp-terraform-az
```
[pic4]

### Step 5 : Create a pipeline

```
        Get sources
        Agent Job1
            Zip Arquivos
            Publicar artefato        
```