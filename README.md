# terraform-module-github-action

This repository contains a Terraform root module with network and VM submodules, environment-specific tfvars, a remote Azure backend, and a GitHub Actions workflow for Azure deployment.

## Structure

- `provider.tf` - Terraform required providers and AzureRM provider.
- `backend.tf` - Remote backend configuration using Azure Storage.
- `variables.tf` - Root module variables.
- `main.tf` - Top-level module calls and resource group creation.
- `outputs.tf` - Root outputs.
- `modules/network` - Network module for VNet, subnet, NSG, and subnet association.
- `modules/vm` - VM module for public IP, NIC, and Linux VM.
- `environments/nonprod.tfvars` - Non-prod environment variable values.
- `environments/prod.tfvars` - Prod environment variable values.
- `.github/workflows/terraform-azure-deploy.yml` - GitHub Actions workflow.

## Azure prerequisites

1. Create an Azure Storage Account and Blob Container for Terraform state.
2. Create a service principal and store credentials in GitHub Secrets as `AZURE_CREDENTIALS`.
3. Store VM admin passwords in GitHub Secrets as `VM_ADMIN_PASSWORD_NONPROD` and `VM_ADMIN_PASSWORD_PROD`.

## GitHub workflow inputs

- `environment`: `nonprod` or `prod`

The workflow runs on manual dispatch and executes:
- `validate` job: `terraform init` and `terraform validate`
- `plan` job: `terraform plan` using environment-specific tfvars
- `apply` job: `terraform apply` when running on `main`

## Backend notes

Update `backend.tf` if your storage resource group, storage account, container, or key differs.

## Manual local execution

```powershell
cd terraform-module-github-action
terraform init -backend-config=backend.tf
terraform plan -var-file=environments/nonprod.tfvars -out=nonprod.tfplan
terraform apply -auto-approve nonprod.tfplan
```

## Secrets required in GitHub

- `AZURE_CREDENTIALS`
- `VM_ADMIN_PASSWORD_NONPROD`
- `VM_ADMIN_PASSWORD_PROD`
