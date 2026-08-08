variable "location" {
  description = "Azure Region"
  type        = string
  default     = "centralindia"
}
variable "environments" {
  description = "List of environments"
  type        = map(string)
  default = {
    dev  = "Development"
    test = "Testing"
    prod = "Production"
  }
}
