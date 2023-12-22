# DIO BOOTCAMP
In this project, we will create the infrastructure using Terraform.

## Pre-requirements

- install terraform
- install azurecli
- create an Azure account
- Create an Azure DevOps account

### Step 1: Authenticate your command line
```bash
   az login
```
    
### Step 2 : Create a Resource Group

![rg-terraform](images/pic_001.jpg)

### Step 3: Create a storage account and a container  for your terraform state

![Storage account](images/pic_002.jpg)

![Container](images/pic_003.jpg)

![Storage account and Container details using VSCode](images/pic_004.jpg)

### Step 4: Create a service principal
```powershell
    subscriptionName=$(az account show --query name --output tsv)
    subscriptionId=$(az account show --query id --output tsv)
    echo $subscriptionName
    echo $subscriptionId
    az ad sp create-for-rbac --name sp-terraform-az --role contributor --scopes /subscriptions/$subscriptionId
```


![service connection](images/pic_005.jpg)



### Step 5 : Create an AzureDevops project
``` 
    project              : AulaDevOps001
    service connection   : sp-terraform-az
```


### Step 6 : Create resource groups using a pipeline

![pipeline](images/pic_006.jpg)
</br>
</br>
![rg-commercial](images/pic_007.jpg)
</br>
</br>

![rg-marketing](images/pic_008.jpg)
</br>
</br>
![rg-operations](images/pic_009.jpg)
