output "vault" {
  value       = { for key, value in aws_backup_vault.vault : key => value }
  description = "A map of properties for the created AWS Backup Vault."
}
