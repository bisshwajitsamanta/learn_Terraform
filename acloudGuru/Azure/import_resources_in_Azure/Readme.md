## Steps to Import Resource in Azure

* Terraform init 
* Create an empty networking.tf file with 
    ```
  resource "azurerm_resource_group" "guru" {}
  ```
* Next is to get subscription ID 
  ``` 
  az group list
  ```
  Which brings output like below 
  ```
   [
     {
    "id": "/subscriptions/28e1e42a-4438-4c30-9a5f-7d7b488fd883/resourceGroups/625-12133f3c-import-existing-resources-into-terraf",
    "location": "southcentralus",
    "managedBy": null,
    "name": "625-12133f3c-import-existing-resources-into-terraf",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
   }
  ]
  ```
*   Next step is to import the resource group
    ``` 
    terraform import azurerm_resource_group.guru /subscriptions/28e1e42a-4438-4c30-9a5f-7d7b488fd883/resourceGroups/625-12133f3c-import-existing-resources-into-terraf
    ```
*  Next step is to make some change we want to the tf file
*  Finally apply those terraform changes
*  To check if the Terraform state file is getting managed or not 
   ```
   terraform state list
   ```
   Which will give some output like this 
   ```
    cloud [ ~/terraformguru ]$ terraform state list
    azurerm_resource_group.guru
   ```
  