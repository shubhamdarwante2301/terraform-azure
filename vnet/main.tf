module "resource-group" {
  for_each            = var.environments
  source              = "./module/resource-group"
  resource_group_name = "rg-myapp-${each.key}"
  location            = var.location
  environment         = each.value.display_name
}

module "vnets" {
  for_each            = var.environments
  source              = "./module/vnet"
  vnet_name           = "vnet-myapp-${each.key}"
  location            = var.location
  resource_group_name = module.resource-group[each.key].name
  address_space       = [each.value.vnet_cidr]
  subnets             = each.value.subnets
}
