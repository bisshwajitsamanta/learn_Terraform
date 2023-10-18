variable "network" {
  default = {
    "dev_vnet" = {
      address_space = ["10.0.0.0/8"]
      cost_center = "Youtube"
      subnets = {
        "subnet-01"= {
          address_prefix = ["10.0.1.0/16"],
          enable_nat_gateway = true,
          company = "Terraform"
        },
        "web" = {
          address_prefix = ["10.0.2.0/16"],
          enable_nat_gateway = false,
          company = "Google"
        },
        "data" = {
          address_prefix = ["10.0.3.0/16"],
          enable_nat_gateway = false,
          company = "Apple"

        },
        "gateway" = {
          address_prefix = ["10.0.3.0/16"],
          enable_nat_gateway = false,
          company = "Ashram"
        },
      }
    }
  }
}