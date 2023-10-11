resource "azurerm_resource_group" "guru" {
  name = "625-12133f3c-import-existing-resources-into-terraf"
  location = "southcentralus"
  tags = {
    environment = "dev"
  }
}