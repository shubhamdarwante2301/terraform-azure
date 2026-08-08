variable "location" {
  description = "Azure Region"
  type        = string
  default     = "centralindia"
}
variable "environments" {
  description = "List of environments"
  type = map(object({
    display_name = string
    vnet_cidr    = string
    subnets      = map(string)
  }))
  default = {
    dev = {
      display_name = "Development"
      vnet_cidr    = "10.0.0.0/16"
      subnets = {
        app = "10.0.1.0/24"
        db  = "10.0.2.0/24"
      }
    }
    test = {
      display_name = "Testing"
      vnet_cidr    = "10.1.0.0/16"
      subnets = {
        app = "10.1.1.0/24"
        db  = "10.1.2.0/24"
      }
    }
    prod = {
      display_name = "Production"
      vnet_cidr    = "10.2.0.0/16"
      subnets = {
        app = "10.2.1.0/24"
        db  = "10.2.2.0/24"
      }
    }
  }
}

