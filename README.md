# AWS Bakup

Creates and manages AWS Backup resources.

Note that all resources are created by submodules. This module is a wrapper around those submodules to make it easier to create and manage AWS Backup resources.

WIP
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

Auto-generated technical documentation is created using [`terraform-docs`](https://terraform-docs.io/)
## Examples

```hcl
# See examples under the top level examples directory for more information on how to use this module.
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vault"></a> [vault](#module\_vault) | ./modules/backup-vault | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_force_destroy"></a> [force\_destroy](#input\_force\_destroy) | A boolean that indicates that all recovery points stored in the vault are deleted so that the vault can be destroyed without error. | `bool` | `false` | no |
| <a name="input_kms_key_arn"></a> [kms\_key\_arn](#input\_kms\_key\_arn) | The server-side encryption key that is used to protect your backups. If none is provided, the vault will be encrypted using the default `aws/backkup` key in your account. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Short, descriptive name of the environment. All resources will be named using this value as a prefix. Either this variable, or `vault_name_override` must be set. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tag names and values for tags to apply to all taggable resources created by the module. Default value is a blank map to allow for using Default Tags in the provider. | `map(string)` | `{}` | no |
| <a name="input_vault_name_override"></a> [vault\_name\_override](#input\_vault\_name\_override) | Used if there is a need to specify a vault name outside of the module's standardized nomenclature. For example, if importing a topic that doesn't follow the standard naming formats. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vault-module"></a> [vault-module](#output\_vault-module) | A map of properties for the created AWS Backup Vault. |


<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
