# Some basic unit testing to verify that selected outputs of the main module return expected results.
# In order to reduce testing cost, only items that can be verified via a `terraform plan` are being tested here.

run "verify_vault_outputs_plan" {
  command = plan
  assert {
    condition     = module.backup_vault.vault-module.vault.tags_all.Name == format("%s-%s-%s", var.name, data.aws_caller_identity.current.account_id, data.aws_region.current.id)
    error_message = "Name Tag did not match expected result."
  }
  assert {
    condition     = module.backup_vault.vault-module.vault.tags_all.example == "true" && module.backup_vault.vault-module.vault.tags_all.environment == "dev" && module.backup_vault.vault-module.vault.tags_all.terraform == "true"
    error_message = "One or more tags did not match expected result."
  }
}
