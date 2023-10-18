
## Experimenting For Loop

locals {
  sample_network = [
    for key, val in var.network : [
      for snet_key, snet_value in val.subnets :
        merge({
        vnetName = key,
        subnet_name = snet_key,
        vnet_address_space = val.address_space,
        vnet_cost_center = val.cost_center
      }, snet_value)
      if snet_value.enable_nat_gateway == false && snet_value.company == "Google"
    ]
  ]
}



## Print out Variable Value

output "print_network" {
  value = local.sample_network
}