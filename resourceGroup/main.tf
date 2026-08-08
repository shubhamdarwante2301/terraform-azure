module "resource-group" {
  for_each            = var.environments
  source              = "./module"
  resource_group_name = "rg-myapp-${each.value}"
  location            = var.location
  environment         = each.value
}
