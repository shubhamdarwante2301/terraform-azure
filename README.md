# terraform-azure
Terraform Infrastructure as Code (IaC) for provisioning and managing Microsoft Azure resources.

## Project Structure

```text
terraform-azure-infra
│
├── environments
│   └── dev
│       ├── main.tf
│       ├── provider.tf
│       ├── variables.tf
│       ├── outputs.tf
│       ├── versions.tf
│       ├── terraform.tfvars.example
│       └── terraform.tfvars     (ignored by Git)
│
├── modules
│   ├── resource-group
│   └── vnet
│
├── README.md
└── .gitignore
```