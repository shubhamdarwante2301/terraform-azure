# terraform-azure
Terraform Infrastructure as Code (IaC) for provisioning and managing Microsoft Azure resources.

## Project Structure

```text
terraform-azure-infra
│
├── environments
│   ├── dev
│   ├── test
│   ├── uat
│   └── prod
│
├── modules
│   ├── resource-group
│   ├── vnet
│   ├── subnet
│   ├── nsg
│   ├── route-table
│   ├── key-vault
│   ├── storage-account
│   ├── vm
│   ├── app-service
│   ├── aks
│   ├── sql
│   └── private-endpoint
│
├── scripts
├── docs
├── README.md
├── .gitignore
└── versions.tf
```