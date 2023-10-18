variable "products" {
  type = list(object({
    productName = string
    createStorageAccount = bool
  }))
    default = [{
      productName = "pesteam"
      createStorageAccount = true
    }]
}