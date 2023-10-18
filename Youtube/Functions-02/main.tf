locals {
  Storage_accounts_to_create = [
      for resource in var.products: resource.productName if resource.createStorageAccount
  ]
}

output "print_accounts" {
  value = local.Storage_accounts_to_create
}