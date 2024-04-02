locals {
  account_id = data.aws_caller_identity.current.account_id
  region     = data.aws_region.current.id

  name = var.vault_name_override != null ? var.vault_name_override : format("%s-%s-%s", var.name, local.account_id, local.region)

  tags = var.tags
}
