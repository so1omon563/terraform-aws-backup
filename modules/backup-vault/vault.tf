resource "aws_backup_vault" "vault" {
  name          = var.name
  kms_key_arn   = var.kms_key_arn
  force_destroy = var.force_destroy

  tags = merge({ "Name" = local.name }, local.tags)

}
