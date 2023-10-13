## Migrate State to Terraform Cloud

* Add the cloud Provider section in Terraform cloud
    ```
      cloud {
        organization = "test"
        workspaces {
          name = "pes-team"
         }
     }
  ```
* Next Step is to reconfigure terraform again
  ```
    terraform init 
    [PN] This will ask to migrate the terraform state to terraform cloud
     Press yes to migrate the state
    ```
* Navigate to workspace and select state we should be seeing our state got migrated
* Cleanup Old tfstate files
