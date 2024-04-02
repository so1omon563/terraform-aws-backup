/**
* Auto-generated technical documentation is created using [`terraform-docs`](https://terraform-docs.io/)
*/
terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
}

module "vault" {
  source              = "./modules/backup-vault"
  name                = var.name
  tags                = var.tags
  force_destroy       = var.force_destroy
  kms_key_arn         = var.kms_key_arn
  vault_name_override = var.vault_name_override
}
