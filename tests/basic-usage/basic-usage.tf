provider "aws" {
  default_tags {
    tags = {
      environment = "dev"
      terraform   = "true"
    }
  }
}

data "aws_caller_identity" "current" {}
data "aws_region" "current" {}
variable "name" {
  default = "tf-basic-usage-vault"
}

variable "tags" {
  default = {
    example = "true"
  }
}

module "backup_vault" {
  source = "../.."

  name = var.name
  tags = var.tags
}
output "backup_vault" { value = module.backup_vault }
