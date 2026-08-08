variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
}
variable "address_space" {
  description = "The address space of the virtual network."
  type        = list(string)
}
variable "location" {
  description = "The location of the virtual network."
  type        = string
}
variable "resource_group_name" {
  description = "The name of the resource group in which to create the virtual network."
  type        = string
}
variable "subnets" {
  description = "A list of subnets to create within the virtual network."
  type        = map(string)
}
